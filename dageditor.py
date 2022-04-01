
import os
# import sys
import PySide.QtGui as QtGui
import PySide.QtGui as QtWidgets
import PySide.QtCore as QtCore
import PySide.QtWebKit as QtWebKit
import json
import core
import math
from PySide.QtCore import QPoint
from PySide.QtGui import QPolygon, QPixmap, QImage
import PySide

_f=0
global _idet
_idet=0
# 
# def ienc(s,k):
#     r=[]
#     l=len(k)
#     for i in range(0,len(s)):
#         c=(ord(s[i])+ord(k[i%l]))
#         r.append(c)
#     return r

def idec(ls,k):
    rstr=''
    l=len(k)
    for i in range(0,len(ls)):
        c=ls[i]-ord(k[i%l])
        rstr=rstr+chr(c)
    global _idet
    _idet=_idet+1
    return rstr


def getnodeiconpath(iconname):
    exepath=core.getexecpath()
#     print path
    path = os.path.join(exepath,"plugins")
    path = os.path.join(path, iconname.lower()+'.png')
    if not os.path.exists(path):
        path = os.path.join(exepath,"userplugins")
        path = os.path.join(path, iconname.lower()+'.png')
    return path

def geticonpath(iconname):
    path=core.getexecpath()
#     print path
    path = os.path.join(path,"icons")
    path = os.path.join(path, iconname.lower()+'.png')
    return path

def geticon(iconname):
    path=geticonpath(iconname)
    return QtGui.QIcon(path)

def getnodeicon(iconname):
    path=getnodeiconpath(iconname)
    return QtGui.QIcon(path)

def altkeypressed():
    mods = QtWidgets.QApplication.keyboardModifiers()
    pressed = (mods & QtCore.Qt.AltModifier)
    return pressed

def ctrlkeypressed():
    mods = QtWidgets.QApplication.keyboardModifiers()
    pressed = mods & QtCore.Qt.ControlModifier
    return pressed

def shiftkeypressed():
    mods = QtWidgets.QApplication.keyboardModifiers()
    pressed = mods & QtCore.Qt.ShiftModifier
    return pressed

def leftmousebuttonpressed():
    mods = QtWidgets.QApplication.mouseButtons()
    pressed = mods & QtCore.Qt.LeftButton
    return pressed

def rightmousebuttonpressed():
    mods = QtWidgets.QApplication.mouseButtons()
    pressed = mods & QtCore.Qt.RightButton
    return pressed

class QGDiagramconnection(QtWidgets.QGraphicsPathItem):

    def __init__(self, fromplug, toplug, qgdiagramscene):
        super(QGDiagramconnection, self).__init__()
        self.fromplug = fromplug
        self.toplug = toplug
        self.frompos = None
        self.topos = None
        self.qgdiagramscene = qgdiagramscene
        if fromplug:
            self.frompos = fromplug.scenePos()
            fromplug.posCallbacks.append(self.setfrompos)
        self.toplug = toplug
        if toplug:
            self.topos = toplug.scenePos()
            toplug.posCallbacks.append(self.settopos)
        if (self.fromplug is not None) and (self.toplug is not None):
            self.refreshdagwidget()

    def getqgdiagramscene(self):
        return self.qgdiagramscene

    def getqgdiagrameditor(self):
        return self.getqgdiagramscene().getqgdiagrameditor()

    def setfromplug(self, fromplug):
        self.fromplug = fromplug
        if self.fromplug:
            self.frompos = fromplug.scenePos()
            self.fromplug.posCallbacks.append(self.setfrompos)
            self.fromplug.refreshdagwidget()

    def settoplug(self, toplug):
        self.toplug = toplug
        if self.toplug:
            self.topos = toplug.scenePos()
            self.toplug.posCallbacks.append(self.settopos)
            self.toplug.refreshdagwidget()

    def getfromplug(self):
        return self.fromplug

    def gettoplug(self):
        return self.toplug

    def settopos(self, topos):
        self.topos = topos
        self.refreshdagwidget()

    def setfrompos(self, frompos):
        self.frompos = frompos
        self.refreshdagwidget()


    def isconnectedtoqgdiagramnode(self, qgdiagramnode):
        if self.fromplug is not None:
            if self.fromplug.getqgdiagramnode() == qgdiagramnode:
                return True
        if self.toplug is not None:
            if self.toplug.getqgdiagramnode() == qgdiagramnode:
                return True
        return False

    def isconnectedtoinputofqgdiagramnode(self, qgdiagramnode):
        if self.toplug is not None:
            if self.toplug.getqgdiagramnode() == qgdiagramnode:
                return True
        return False
        
    def refreshdagwidget(self):
        if (self.frompos is None) or (self.topos is None):
            return
        p0 = self.frompos
        p3 = self.topos
        outtoin=False
        if self.fromplug is not None:
            if not self.fromplug.isinput:
                outtoin=True
        if not outtoin:
            p0 = self.topos
            p3 = self.frompos
        ml = (p3.x() - p0.x())
        p1=p0
        p2=p3
        if ml>0:
            ml=ml*0.5
        else:
            ml=-ml*1.5
            p1=p3
            p2=p0
        p1 = p1 + QtCore.QPoint(ml, 0)
        p2 = p2 - QtCore.QPoint(ml, 0)
        pen = QtGui.QPen(QtGui.QColor(self.fromplug.getcolor()), 2)
        pen.setCosmetic(False)
        self.setPen(pen)
        path = QtGui.QPainterPath()
        path.moveTo(p0)
        path.cubicTo(p1, p2, p3)
        pt0=path.pointAtPercent(0.495)
        pt1=path.pointAtPercent(0.505)
        vdir=pt1-pt0
        l=math.sqrt(vdir.x()*vdir.x()+vdir.y()*vdir.y())
        if l>0:
            vdir.setX(vdir.x()*(5/l))
            vdir.setY(vdir.y()*(5/l))
            ndir=QtCore.QPoint(-vdir.y(),vdir.x())
            path.moveTo(pt0+ndir)
            path.lineTo(pt0+vdir)
            path.lineTo(pt0-ndir)
        self.setPath(path)

class QGDiagramplugcombo(QtWidgets.QGraphicsProxyWidget):
    
    def adjustpos(self):
        vw = self.boundingRect().width()
#         p=self.pos()
        self.setPos(-vw-10,-self.parentplug.height/2-3)

    def getqgdiagrameditor(self):
        return self.parentplug.getqgdiagrameditor()

    def __init__(self,combolist,parentplug):
        self.parentplug=parentplug
        QtWidgets.QGraphicsProxyWidget.__init__(self,parentplug)
        self.combobox=QtWidgets.QComboBox()
#         font=self.combobox.font()
#         font.setPixelSize(8)
#         self.combobox.setFont(font)
#         self.combobox.setBaseSize(QtCore.QSize(2,2))
        m=5
        for combotext in combolist:
            self.combobox.addItem(combotext)
            m=max(m,len(combotext))
        self.combobox.setMinimumContentsLength(m+2)
        self.combobox.setSizeAdjustPolicy(QtGui.QComboBox.AdjustToContents)
        self.combobox.setMaxVisibleItems(10)
        self.setWidget(self.combobox)
        if 'value' in self.parentplug.inputplug.keys():
            index=self.combobox.findText(self.parentplug.inputplug['value'])
            if index>=0:
                self.combobox.setCurrentIndex(index)
        self.combobox.currentIndexChanged.connect(self.indexchanged)
        self.adjustpos()
        
    def indexchanged(self):
        if 'value' in self.parentplug.inputplug.keys():
            self.parentplug.inputplug['value']=self.combobox.currentText()
            self.getqgdiagrameditor().addundo()
            self.getqgdiagrameditor().refreshopenscad()
        return



color_wheel = [
  [0xff, 0x00, 0xff], 
  [0xff, 0x00, 0x00], 
  [0xff, 0xff, 0x00], 
  [0x00, 0xff, 0x00], 
  [0x00, 0xff, 0xff], 
  [0x00, 0x00, 0xff], 
  [0xff, 0x00, 0xff]]

def makecolorfromcircle(base, adj, ratio, shade):
    output = 0x0
    bit = 0
    for pos in xrange(3):
        base_chan = color_wheel[base][pos]
        adj_chan = color_wheel[adj][pos]
        new_chan =  int(round(base_chan * (1 - ratio) + adj_chan * ratio))
        # now alter the channel by the shade
        if shade < 1:
            new_chan = new_chan * shade
        elif shade > 1:
            shade_ratio = shade - 1
            new_chan = (0xff * shade_ratio) + (new_chan * (1 - shade_ratio))
        output = output + (int(new_chan) << bit)
        bit = bit + 8
    return output+(255<<24)

def gencolorcircleimage(s):
    radius=s/2
    im = QtGui.QImage(radius*2,radius*2,QtGui.QImage.Format_ARGB32)
    for x in range(0,radius*2):
        for y in range(0,radius*2):
            dist = math.sqrt((x - radius) ** 2 + (y - radius) ** 2)
            if dist>radius:
                color=0
            else:
                shade = 2 - dist/radius * 2
                angle = math.atan2((y - radius), (x - radius)) * 180 / math.pi
                idx = angle/60
                if idx < 0: 
                    idx = 6 + idx
                base = int(round(idx))
                adj = (6 + base + (-1 if base > idx else 1)) % 6
                ratio = max(idx, base) - min(idx, base)
                color = makecolorfromcircle(base, adj, ratio, shade)
            im.setPixel(x, y, color)
    return im

class QGDiagramplugcolor(QtWidgets.QGraphicsEllipseItem):


    def getqgdiagrameditor(self):
        return self.parentplug.getqgdiagrameditor()

    def getqgdiagramscene(self):
        return self.getqgdiagrameditor().getqgdiagramscene()

    def adjustpos(self):
        self.setPos(0,0)

    def __init__(self,parentplug,size):
        self.parentplug=parentplug
        self.size=size
        self.scale=2
        QtWidgets.QGraphicsEllipseItem.__init__(
            self,
            QtCore.QRectF(-self.size/2,-self.size/2, self.size,self.size),
            self.parentplug)
        self.setPen(QtGui.QPen(QtCore.Qt.black, 2))
        
        imagepath=geticonpath('circleimage'+str(self.size*self.scale))
        if not os.path.exists(imagepath):
            print 'generating ',imagepath
            self.image=gencolorcircleimage(self.size*self.scale)
            self.image.save(imagepath)
        else:
            self.image=QImage()
            self.image.load(imagepath)
        
        self.pixmap=QPixmap.fromImage(self.image)
        self.adjustpos()
        self.pm = QtWidgets.QGraphicsPixmapItem(self.pixmap, self)
        self.pm.setTransformationMode(QtCore.Qt.SmoothTransformation)
        self.pm.scale(1.0/self.scale,1.0/self.scale)        
        self.pm.setPos(-self.size/2,-self.size/2)

        node=self.parentplug.getqgdiagramnode().node
        inputplug=node.findinputplugbyname('r')
        r=int(round(float(inputplug['value'])))
        inputplug=node.findinputplugbyname('g')
        g=int(round(float(inputplug['value'])))
        inputplug=node.findinputplugbyname('b')
        b=int(round(float(inputplug['value'])))
        col=(255<<24)+(r<<16)+(g<<8)+b
        sx=0
        sy=0
        for x in range(0,self.size*self.scale):
            for y in range(0,self.size*self.scale):
                if col==self.image.pixel(x,y):
                    print 'found',x,y
                    sx=float(x)/(self.size*self.scale)
                    sy=float(y)/(self.size*self.scale)
                    break

        self.el=QtWidgets.QGraphicsEllipseItem(
            QtCore.QRectF(-self.size/8,-self.size/8,self.size/4,self.size/4),
            self.pm)
        self.el.setPen(QtGui.QPen(QtCore.Qt.black, 2))
        self.el.setBrush(QtGui.QColor(col))
        self.el.setPos(sx*self.size*self.scale,sy*self.size*self.scale)

    def mousePressEvent(self, event):
        pos=event.scenePos()
        br=self.sceneBoundingRect()
        x=(pos.x()-br.left())/(br.right()-br.left())
        y=(pos.y()-br.top())/(br.bottom()-br.top())
        
        y=1-y
        
        x=x*self.size*self.scale
        y=y*self.size*self.scale
        color=self.image.pixel(x,y)
        
        r=((color      ) & 0xFF)
        g=((color >> 8 ) & 0xFF)
        b=((color >> 16) & 0xFF)
        
        print r,g,b
        
        node=self.parentplug.getqgdiagramnode().node
        
        inputplug=node.findinputplugbyname('r')
        if inputplug is not None:
            inputplug['value']=str(r)
        inputplug=node.findinputplugbyname('g')
        if inputplug is not None:
            inputplug['value']=str(g)
        inputplug=node.findinputplugbyname('b')
        if inputplug is not None:
            inputplug['value']=str(b)
           
        self.parentplug.getqgdiagrameditor().refreshqgdiagramnode(self.parentplug.getqgdiagramnodename())
        self.getqgdiagrameditor().addundo()
        self.getqgdiagrameditor().refreshopenscad()

        
      
class QGDiagramplugtext(QtWidgets.QGraphicsTextItem):
    
    def adjustpos(self):
        vw = self.boundingRect().width()
#         p=self.pos()
        self.setPos(-vw-10,-self.parentplug.height/2-3)
    
    def getqgdiagrameditor(self):
        return self.parentplug.getqgdiagrameditor()
    
    def __init__(self, text,parentplug):
        self.parentplug=parentplug
        QtWidgets.QGraphicsTextItem.__init__(self,text,parentplug)
        self.setTabChangesFocus(True)
        self.setTextInteractionFlags(QtCore.Qt.TextEditable)
        self.setDefaultTextColor(QtGui.QColor(255,255,255))
        self.oldtext=text
        self.adjustpos()

    def validatevalue(self):
        newtext=self.toPlainText()
        if 'prefix' in self.parentplug.inputplug.keys():
            prefix=self.parentplug.inputplug['prefix']
            if newtext[:len(prefix)]!=prefix:
                newtext=prefix+newtext
                self.setPlainText(newtext)
                self.adjustpos()
        if newtext != self.oldtext:
            if 'value' in self.parentplug.inputplug.keys():
                self.parentplug.inputplug['value']=newtext
                self.getqgdiagrameditor().addundo()
                self.getqgdiagrameditor().refreshopenscad()
                
                needrefresh=False
                if (self.oldtext=='' and newtext!='') or (newtext=='' and self.oldtext!=''):
                    needrefresh=True
                self.oldtext=newtext
#                 self.parentplug.getqgdiagramnode.node.getname()
                if needrefresh:
                    self.parentplug.getqgdiagrameditor().refreshqgdiagramnode(self.parentplug.getqgdiagramnodename())
       
        
    def addvalue(self,value):
        if 'value' in self.parentplug.inputplug.keys():
            val=self.parentplug.inputplug['value']
            try:
                f=float(val)
                f=f+value            
                self.setPlainText(str(f))
                newstr=str(f)
                self.parentplug.inputplug['value']=newstr
                self.adjustpos()
                self.validatevalue()
            except:
                pass
            
            
#     def wheelEvent(self, event):
#         event.ignore()
#         pass
    
    def focusOutEvent(self,event):
#         print 'plugtext focusout',event
        self.validatevalue()
        QtWidgets.QGraphicsTextItem.focusOutEvent(self,event)

    def keyPressEvent(self, event):
#         print 'event.key()',event.key
        multiline=False
        if 'multiline' in self.parentplug.inputplug.keys():
            multiline=self.parentplug.inputplug['multiline']
                
        if event.key() == QtCore.Qt.Key_Escape:
            self.clearFocus()
#             print 'esc'
        elif event.key() == QtCore.Qt.Key_Enter and not multiline:
#             print 'enter'
            self.clearFocus()
        elif event.key() == QtCore.Qt.Key_Return and not multiline:
#             print 'RETURN'
            self.clearFocus()
        elif event.key() == QtCore.Qt.Key_Tab:
#             print 'tab'
            self.clearFocus()
        elif event.key() == QtCore.Qt.Key_Up:
            self.addvalue(1)
        elif event.key() == QtCore.Qt.Key_Down:
            self.addvalue(-1)
        elif event.key() == QtCore.Qt.Key_Left:
#             print 'left'
            cursor=self.textCursor()
            cursor.movePosition(QtGui.QTextCursor.Left)
            self.setTextCursor(cursor)
        elif event.key() == QtCore.Qt.Key_Right:
#             print 'right'
            cursor=self.textCursor()
            cursor.movePosition(QtGui.QTextCursor.Right)
            self.setTextCursor(cursor)
        else:
            QtWidgets.QGraphicsTextItem.keyPressEvent(self, event)
        self.adjustpos()

class QGDiagramcomment(QtWidgets.QGraphicsTextItem):
    
    
    def getqgdiagrameditor(self):
        return self.parentnode.getqgdiagrameditor()
    
    def __init__(self, parentnode,w):
        QtWidgets.QGraphicsTextItem.__init__(self,parentnode)
        self.parentnode=parentnode
        self.setTabChangesFocus(True)
        self.w=w
        self.setTextInteractionFlags(QtCore.Qt.TextEditable)
        self.setDefaultTextColor(QtGui.QColor(100,255,100))
        font=self.font()
        font.setPixelSize(20)
        self.setFont(font)
        self.text='Your comment here'
        inputplug=self.parentnode.node.findinputplugbyname('comment')
        if inputplug is not None:
            self.text=inputplug['value']
        self.setPlainText(self.text)
        self.oldtext=self.text

    def validatevalue(self):
        newtext=self.toPlainText()
        if newtext != self.oldtext:
            inputplug=self.parentnode.node.findinputplugbyname('comment')
            if inputplug is not None:
                inputplug['value']=newtext
                self.getqgdiagrameditor().addundo()
                self.getqgdiagrameditor().refreshopenscad()
                self.oldtext=newtext
        
    def focusOutEvent(self,event):
        self.validatevalue()
        QtWidgets.QGraphicsTextItem.focusOutEvent(self,event)

    def keyPressEvent(self, event):
        if event.key() == QtCore.Qt.Key_Escape:
            self.clearFocus()
        elif event.key() == QtCore.Qt.Key_Tab:
            self.clearFocus()
        elif event.key() == QtCore.Qt.Key_Left:
            cursor=self.textCursor()
            cursor.movePosition(QtGui.QTextCursor.Left)
            self.setTextCursor(cursor)
        elif event.key() == QtCore.Qt.Key_Right:
            cursor=self.textCursor()
            cursor.movePosition(QtGui.QTextCursor.Right)
            self.setTextCursor(cursor)
        QtWidgets.QGraphicsTextItem.keyPressEvent(self, event)


class QGDiagramplug(QtWidgets.QGraphicsEllipseItem):

    def gettype(self):
        return self.inputplug['type']

    def getcolor(self):
        return self.qgdiagramnode.getqgdiagrameditor().getplugcolorfromtype(self.gettype())


    def refreshdagwidget(self):
        if self.isinput:
            if self.plugtext:
                self.qgdiagramnode.getqgdiagramscene().removeItem(self.plugtext)
                self.plugtext=None
            if self.plugcombo:
                self.qgdiagramnode.getqgdiagramscene().removeItem(self.plugcombo)
                self.plugcombo=None
            if self.plugcolor:
                self.qgdiagramnode.getqgdiagramscene().removeItem(self.plugcolor)
                self.plugcolor=None

            connected=False;
            if 'connection' in self.inputplug.keys():
                if self.inputplug['connection'] is not None:
                    connected=True
            if not connected:   
                if 'combo' in self.inputplug:
                    self.plugcombo=QGDiagramplugcombo(self.inputplug['combo'],self)
                    self.setZValue(-12000)
                elif self.inputplug['type']=='color':
                    self.plugtext = QGDiagramplugcolor( self,100)
                else:    
                    txt=self.inputplug['value']             
                    self.plugcolor = QGDiagramplugtext(txt, self)
                    self.setZValue(-13000)

    def __init__(self, inputplug, isinput=True, qgdiagramnode=None):
        QtWidgets.QGraphicsEllipseItem.__init__(
            self,
            QtCore.QRectF(-8, -8, 16.0, 16.0),
            qgdiagramnode)
        self.qgdiagramnode = qgdiagramnode
        self.isinput = isinput
        self.inputplug = inputplug
        self.plugtext = None
        self.plugcombo = None
        self.plugcolor = None
        if 'tip' in self.inputplug.keys():
            self.setToolTip(self.inputplug['tip'])
        
        self.setCursor(QtGui.QCursor(QtCore.Qt.CrossCursor))
        # Properties:
        self.typenamelabel = QtWidgets.QGraphicsTextItem(self.getnameoralias(), self)
        self.typenamelabel.setDefaultTextColor(QtCore.Qt.white)

        self.width = self.typenamelabel.boundingRect().width()
        self.height = self.typenamelabel.boundingRect().height()-4

        self.setBrush(QtGui.QBrush(QtGui.QColor(self.getcolor())))

        if self.isinput:
            self.typenamelabel.setPos(5, -self.height / 2-3)
        else:
            self.typenamelabel.setPos(-self.width - 5, -self.height / 2-3)
        self.refreshdagwidget()
        self.posCallbacks = []
        self.setFlag(self.ItemSendsScenePositionChanges, True)

    def getqgdiagramnode(self):
        return self.qgdiagramnode

    def getqgdiagramnodename(self):
        return self.getqgdiagramnode().getname()

    def getqgdiagrameditor(self):
        return self.qgdiagramnode.getqgdiagrameditor()

    def getqgdiagramscene(self):
        return self.qgdiagramnode.getqgdiagrameditor().getqgdiagramscene()

    def getheight(self):
        return self.height

    def getwidth(self):
        return self.width

    def getname(self):
        return self.inputplug['name']

    def getnameoralias(self):
        if 'alias' in self.inputplug.keys():
            return self.inputplug['alias']
        return self.inputplug['name']

    def itemChange(self, change, value):
        if change == self.ItemScenePositionHasChanged:
            for cb in self.posCallbacks:
                cb(value)
            return value
        return super(QGDiagramplug, self).itemChange(change, value)

    def mousePressEvent(self, event):
        if event.button() == QtCore.Qt.LeftButton:
            self.getqgdiagrameditor().startconnection(self)

    def contextMenuEvent(self, event):
        if self.isinput:
            menu = QtWidgets.QMenu()
            pa = menu.addAction('Delete connection')
            pa.triggered.connect(self.deleteplugconnection)
            menu.exec_(event.screenPos())

    def deleteplugconnection(self):
        qgdiagramnode=self.getqgdiagramnode()
        nodename = qgdiagramnode.getname()
        plugname = self.inputplug['name']
        self.getqgdiagrameditor().getdag().deleteconnection(nodename,plugname)
        self.getqgdiagrameditor().refreshqgdiagramnode(nodename)
        self.getqgdiagrameditor().refreshopenscad()        

class QRoundRectItem(QtWidgets.QGraphicsRectItem):

    def __init__(self,parent,color):
        super(QRoundRectItem,self).__init__(parent)
        self.color=color
 
    def paint(self, painter, option, widget=None):
        painter.setBrush(QtGui.QBrush(self.color))
        painter.drawRoundedRect(self.boundingRect().adjusted(1,1,-1,-1), 5, 5,QtCore.Qt.AbsoluteSize)

class QGDiagramnode(QtWidgets.QGraphicsRectItem):

    def getcolor(self):
        return self.getqgdiagrameditor().getnodecolorfromdisplaytype(self.node.getdisplaytype())

    def gethidetitle(self):
        return self.getqgdiagrameditor().getnodehidetitlefromdisplaytype(self.node.getdisplaytype())

    def getshowname(self):
        return self.getqgdiagrameditor().getnodeshownamefromdisplaytype(self.node.getdisplaytype())

    def __init__(self,
                 node,
                 qgdiagrameditor):
        super(QGDiagramnode, self).__init__(None)
        self.qgdiagrameditor = qgdiagrameditor
        self.node=node
        self.setToolTip(self.node.getcomment())
        self.refreshdagwidget()
        
    def paint(self, painter, option, widget=None):
        if self.isSelected():
            painter.setPen(QtGui.QPen(QtCore.Qt.white, 1,QtCore.Qt.DashLine))
            painter.setBrush(QtGui.QColor("#404040"))
        else:
            painter.setPen(QtGui.QPen(QtCore.Qt.white, 1,QtCore.Qt.SolidLine))
            painter.setBrush(QtGui.QColor("#252525"))
        painter.drawRoundedRect(self.boundingRect().adjusted(1,1,-1,-1), 5, 5,
                 QtCore.Qt.AbsoluteSize)

    def refreshcontent(self):   
        
        self.setFlags(self.ItemIsSelectable | self.ItemIsMovable)
        self.setPen(QtGui.QPen(QtCore.Qt.white, 1))
        self.setBrush(QtGui.QBrush(QtGui.QColor("#2F2F2F")))
        
        self.iconsize=48
        self.iconscale=0.5
        
        if self.node.gettype()=='Node_comment':
            self.setPos(self.node.x, self.node.y)
            self.setZValue(-10)
            self.setRect(0, 0, 16, 16)
            self.comment=QGDiagramcomment(self,1000)
            self.comment.setPos(20,0)
            return
            
        # Properties of the rectangle:
        # Label:

        self.typerect=None
        self.typeicon=None
        if not self.gethidetitle():
            self.typerect = QRoundRectItem(self,QtGui.QColor(self.getcolor()))
            pixmap=QtGui.QPixmap(getnodeiconpath(self.node.typename)).scaled(self.iconsize/self.iconscale,self.iconsize/self.iconscale,transformMode=QtCore.Qt.SmoothTransformation)
            pixmap.setMask(pixmap.createHeuristicMask())
            self.typeicon = QtWidgets.QGraphicsPixmapItem(pixmap, self.typerect)
            self.typeicon.setTransformationMode(QtCore.Qt.SmoothTransformation)
            self.typeicon.setPos(3, 3)
            self.typeicon.scale(self.iconscale,self.iconscale)

        self.typenamelabel=None
        if True:
            self.typenamelabel = QtWidgets.QGraphicsTextItem(self.node.typename.replace('Node_',''), self.typerect)
            self.typenamelabel.setDefaultTextColor(QtCore.Qt.white)
            self.typenamelabel.setPos(self.iconsize + 5, 5)

        self.namelabel=None
        if self.getshowname():
            self.namelabel = QtWidgets.QGraphicsTextItem(self.getname(), self)
            self.namelabel.setDefaultTextColor(QtCore.Qt.white)
        
        # Inputs and outputplugs of the block:
        self.qginplugs = []
        if self.node.inputplugs is not None:
            for inputplugindex in range(0,len(self.node.inputplugs)):

                inputplug=self.node.inputplugs[inputplugindex]
                
                showplug=True
                name=inputplug['name']
                if 'alias' in inputplug.keys():
                    name=inputplug['alias']
                if name=='' or 'hidden' in inputplug.keys():
                    showplug=False
                else:    
                    if (name[-1:] in '0123456789'):
                        if (not('connection' in inputplug) and inputplug['value']==''):
                            #this is an numbered attribute and it's empty.... 
                            if inputplugindex>0:
                                pinputplug=self.node.inputplugs[inputplugindex-1]
                                pname=pinputplug['name']
                                if 'alias' in pinputplug.keys():
                                    pname=pinputplug['alias']
                                if pname[-1:] in '0123456789':  
                                    if not('connection' in pinputplug) and pinputplug['value']=='':
                                        if inputplugindex>1 and pname[:-1]!=name[:-1]:
                                            ninputplug=self.node.inputplugs[inputplugindex-2]
                                            nname=ninputplug['name']
                                            if 'alias' in ninputplug.keys():
                                                nname=ninputplug['alias']
                                            if nname[-1:] in '0123456789':  
                                                if not('connection' in ninputplug) and ninputplug['value']=='':
                                                    showplug=False
                                        else:
                                            showplug=False
                if showplug:
                    p = QGDiagramplug(inputplug, True, self)
                    p.setZValue(-inputplugindex)
                    self.qginplugs.append(p)
                else:
                    self.qginplugs.append(None)
                
                
        self.qgoutplugs = []
        if self.node.outputplugs is not None:
            for outputplug in self.node.outputplugs:
                #if  not  (outputplug['name'][0]=='#'):
                p = QGDiagramplug(outputplug, False, self)
                self.qgoutplugs.append(p)
        self.ajustsize()
        self.setPos(self.node.x, self.node.y)
        self.setZValue(-10)

    def deleteallconnections(self):
        items = self.getqgdiagramscene().items()
        for item in items:
            if type(item) is QGDiagramconnection:
                if item.isconnectedtoqgdiagramnode(self):            
                    self.getqgdiagramscene().removeItem(item)

    def deleteinputconnections(self):
        items = self.getqgdiagramscene().items()
        for item in items:
            if type(item) is QGDiagramconnection:
                if item.isconnectedtoinputofqgdiagramnode(self):            
                    self.getqgdiagramscene().removeItem(item)


    def refreshdagwidget(self):
        self.node.prerefresh()
        self.deleteinputconnections()
        self.refreshcontent()
        self.createinputconnections()
        
    def createinputconnections(self):
        for i in range(0,len(self.node.inputplugs)):
            if 'connection' in self.node.inputplugs[i].keys():
                toplug = self.qginplugs[i]
                sp = os.path.splitext(self.node.inputplugs[i]['connection'])
#                 print sp
                fromnodename = sp[0]
                if not fromnodename is None:
                    fromplugname = sp[1][1:]
                    if not fromplugname is None:
                        fromnode = self.getqgdiagrameditor().findqgdiagramnodebyname(fromnodename)
                        if fromnode is None:
                            print ''
#                             print self.getname(),'cant find node', fromnodename
                        else:
                            fromplug = fromnode.findoutputplugbyname(fromplugname)
                            if fromplug is None:
                                print ''
#                                 print 'cant find %s.%s connection' % (fromnode,fromplugname)
                            else:
                                self.getqgdiagrameditor().createqgdiagramconnection(fromplug, toplug)

    def setname(self, name):
        self.node.setname(name)
        self.refreshdagwidget()

    def ajustsize(self):
        w = 10
        h = 0

        if (self.typenamelabel is not None):
            h = max(h,self.typenamelabel.boundingRect().height()+10)
            w = max(w, self.typenamelabel.boundingRect().width()+10)

        iconh=10
        iconw=10
        if self.typeicon is not None:
            iconh=max(iconh,self.typeicon.boundingRect().height()*self.iconscale)+10
            iconw=max(iconw,self.typeicon.boundingRect().width()*self.iconscale)+10
        h = max(h,iconh)
        w += iconw

        if self.namelabel is not None:
            self.namelabel.setPos(0, h)
            h += self.namelabel.boundingRect().height()
            w = max(w, self.namelabel.boundingRect().width())

        h += 10
        # calculate max width
        i = 0
        while i < min(len(self.qginplugs), len(self.qgoutplugs)):
            iw=0
            if self.qginplugs[i] is not None:
                iw= self.qginplugs[i].getwidth()
            ow=0
            if self.qgoutplugs[i] is not None:
                ow= self.qgoutplugs[i].getwidth()
            w = max(w,iw + ow)
            i += 1
        j = i
        while j < len(self.qginplugs):
            if self.qginplugs[j] is not None:
                w = max(w, self.qginplugs[j].getwidth())
            j += 1
        j = i
        while j < len(self.qgoutplugs):
            if self.qgoutplugs[j] is not None:
                w = max(w, self.qgoutplugs[j].getwidth())
            j += 1

        i = 0
        while i < min(len(self.qginplugs), len(self.qgoutplugs)):
            ih=0
            if self.qginplugs[i] is not None:
                self.qginplugs[i].setPos(-5, h)
                ih=self.qginplugs[i].getheight()
            oh=0
            if self.qgoutplugs[i] is not None:
                self.qgoutplugs[i].setPos(w + 5, h)
                oh=self.qgoutplugs[i].getheight()
            h += max(
                oh,
                ih)
            i += 1
        j = i
        while j < len(self.qginplugs):
            if self.qginplugs[j] is not None:
                self.qginplugs[j].setPos(-5, h)
                h += self.qginplugs[j].getheight()
            j += 1
        j = i
        while j < len(self.qgoutplugs):
            if self.qgoutplugs[j] is not None:
                self.qgoutplugs[j].setPos(w + 5, h)
                h += self.qgoutplugs[j].getheight()
            j += 1
            
        if self.typerect is not None:    
            self.typerect.setRect(
                2,
                2,
                w - 4,
                max(
                    self.typenamelabel.boundingRect().height(),
                    iconh))
        self.setRect(0, 0, w, h)
        return

    def getname(self):
        return self.node.name

    def getqgdiagrameditor(self):
        return self.qgdiagrameditor

    def getqgdiagramscene(self):
        return self.qgdiagrameditor.getqgdiagramscene()
        
    def contextMenuEvent(self, event):
        menu = QtWidgets.QMenu()
        menu.addAction('Delete').triggered.connect(self.deleteqgdiagramnode)
        menu.addAction('Rename').triggered.connect(self.renameqgdiagramnode)
        menu.addAction('Copy').triggered.connect(self.copyqgdiagramnode)
        menu.exec_(event.screenPos())

    def mousePressEvent(self, event):
#         self.getqgdiagrameditor().selectqgdiagramnode(self)
        return super(QGDiagramnode, self).mousePressEvent(event)

    def mouseDoubleClickEvent(self, event):
#         print 'doubleclickevent'
        self.getqgdiagrameditor().doubleclickqgdiagramnode(self.getname())
        return super(QGDiagramnode, self).mouseDoubleClickEvent(event)

    def findoutputplugbyname(self, outplugname):
        index = 0
        for op in self.node.outputplugs:
            if op['name'] == outplugname:
                try:
                    return self.qgoutplugs[index]
                except:
                    pass
            index += 1
        return None

    def copyqgdiagramnode(self):
        self.getqgdiagrameditor().copyqgdiagramnode(self.getname())
 
    def deleteqgdiagramnode(self):
        self.getqgdiagrameditor().deleteqgdiagramnode(self.getname())
 
    def renameqgdiagramnode(self):
        self.getqgdiagrameditor().renameqgdiagramnode(self.getname())


class QGDiagramview(QtWidgets.QGraphicsView):

    def __init__(self, diagramscene, parent):
        QtWidgets.QGraphicsView.__init__(self, diagramscene, parent)
        self.qgdiagramscene = diagramscene
        self.setRubberBandSelectionMode(QtCore.Qt.IntersectsItemBoundingRect)
        self.setDragMode(self.ScrollHandDrag)
        self.setRenderHints(QtGui.QPainter.Antialiasing |
                            QtGui.QPainter.SmoothPixmapTransform | QtGui.QPainter.HighQualityAntialiasing)
        #self.setResizeAnchor(QtWidgets.QGraphicsView.AnchorUnderMouse)
        self.oldmousepos = None


    def getqgdiagramscene(self):
        return self.qgdiagramscene

    def getqgdiagrameditor(self):
        return self.getqgdiagramscene().getqgdiagrameditor()

    def zoom(self,pos,zoomfactor):
        self.setTransformationAnchor(QtWidgets.QGraphicsView.NoAnchor)
        self.setResizeAnchor(QtWidgets.QGraphicsView.NoAnchor)
        oldPos = self.mapToScene(pos)
        self.scale(zoomfactor, zoomfactor)
        newPos = self.mapToScene(pos)
#         print oldPos,newPos
        # Move scene to old position
        delta = newPos - oldPos
        self.translate(delta.x(), delta.y()) 
       
    def keyPressEvent(self,event): 
        pos=QtGui.QCursor.pos()
        if event.key() == QtCore.Qt.Key_F3:
            self.zoom(pos,1.1)
        if event.key() == QtCore.Qt.Key_F2:
            self.zoom(pos,.9)
        QtWidgets.QGraphicsView.keyPressEvent(self, event)
        
    def wheelEvent(self, event):
#         QtWidgets.QGraphicsView.wheelEvent(self, event)
        if event.delta() > 0:
            zoomfactor = 1.25
        else:
            zoomfactor = 1.0 / 1.25
        self.zoom(event.pos(),zoomfactor)
    
    def getviewpos(self, pos):
        return self.mapToScene(pos)
 
    def getcenterpos(self):
        return self.getviewpos(
            QtCore.QPoint(self.width() / 2,
                          self.height() / 2))
 
    def getviewcursorpos(self):
        return self.mapToScene(self.mapFromGlobal(QtGui.QCursor.pos()))

    def mouseMoveEvent(self, mouseEvent):
        super(QGDiagramview, self).mouseMoveEvent(mouseEvent)

    def mousePressEvent(self, event):
        self.oldpos = self.mapFromGlobal(QtGui.QCursor.pos())
        if  ctrlkeypressed():
            self.setDragMode(QtWidgets.QGraphicsView.RubberBandDrag)
        else:
            self.setDragMode(QtWidgets.QGraphicsView.ScrollHandDrag)
        super(QGDiagramview, self).mousePressEvent(event)

    def mouseReleaseEvent(self, event):
        super(QGDiagramview, self).mouseReleaseEvent(event)
        self.setDragMode(QtWidgets.QGraphicsView.NoDrag)

    def fitall(self):
        r=self.scene().itemsBoundingRect()
        outr=r
        outr.setTop(outr.top()-300)
        outr.setBottom(outr.bottom()+300)
        outr.setLeft(outr.left()-300)
        outr.setRight(outr.right()+300)
        self.setSceneRect(outr)
        self.centerOn(r.bottom()-r.top(),r.right()-r.left())
        self.fitInView(r, QtCore.Qt.KeepAspectRatio)


class QGDiagramscene(QtWidgets.QGraphicsScene):

    def __init__(self, qgdiagrameditor=None):
        super(QGDiagramscene, self).__init__(qgdiagrameditor)
        self.qgdiagrameditor = qgdiagrameditor
    
    
    def getqgdiagrameditor(self):
        return self.qgdiagrameditor

    def mouseMoveEvent(self, mouseEvent):
        self.getqgdiagrameditor().sceneMouseMoveEvent(mouseEvent)
        super(QGDiagramscene, self).mouseMoveEvent(mouseEvent)
 
    def mouseReleaseEvent(self, mouseEvent):
        self.getqgdiagrameditor().sceneMouseReleaseEvent(mouseEvent)
        super(QGDiagramscene, self).mouseReleaseEvent(mouseEvent)
 
    def mousePressEvent(self, mouseEvent):
        super(QGDiagramscene, self).mousePressEvent(mouseEvent)



class Scadwebview(QtWebKit.QWebView):

    def __init__(self,url,parent=None):
        super(Scadwebview, self).__init__(parent)
        self.url=QtCore.QUrl(url)
        self.linkClicked.connect(self.onlinkclicked)
#         self.loadFinished.connect(self.onloadfinished)
        QtWebKit.QWebSettings.clearMemoryCaches();
        self.load(self.url)
        self.page().setLinkDelegationPolicy(QtWebKit.QWebPage.DelegateAllLinks)


    def onloadfinished(self):
        return
#         frame = self.page().mainFrame()
# #         self.page().setViewportSize(frame.contentsSize())
#         self.resize(QtCore.QSize(800,48))

    def onlinkclicked(self,url):
        import webbrowser
        if 'graphscad' in url.toString():
            webbrowser.open(url.toString())
        self.load(QtCore.QUrl(self.url))
        return

class QGDiagrameditorwidget(QtWidgets.QWidget):

    def __init__(self, title, scadeditor, parent=None):
        super(QGDiagrameditorwidget, self).__init__(parent)
        self.setWindowTitle(title)
        # Widget layout and child widgets:

        self.mainLayout = QtWidgets.QVBoxLayout(self)
        self.clipboard=json.dumps(core.Dag().getdict(), indent=4, separators=(',', ': '))

        
        #print 'banner',ienc('http://graphscad.free.fr/banner.html','graphscad') 
        #[207, 230, 213, 224, 162, 162, 146, 200, 214, 200, 226, 201, 227, 203, 212, 199, 143, 202, 217, 215, 198, 158, 206, 229, 146, 195, 197, 213, 224, 198, 226, 150, 219, 215, 206, 208]
        self.webview=Scadwebview(idec([207, 230, 213, 224, 162, 162, 146, 200, 214, 200, 226, 201, 227, 203, 212, 199, 143, 202, 217, 215, 198, 158, 206, 229, 146, 195, 197, 213, 224, 198, 226, 150, 219, 215, 206, 208],"graphscad"))
        self.webview.setMaximumHeight(36)
        self.mainLayout.addWidget(self.webview)

        self.qgdiagramscene = QGDiagramscene(self)
        self.qgdiagramview = QGDiagramview(self.qgdiagramscene, self)

        self.mainLayout.addWidget(self.qgdiagramview)
        self.startedconnection = None
        self.scadeditor = scadeditor
        self.undostack = []
        self.undoindex = -1


        # print ienc('len(self.getdag().nodes)<30','graphscad') 
        #[211, 215, 207, 152, 219, 216, 207, 199, 146, 206, 215, 213, 212, 201, 218, 139, 138, 146, 213, 225, 197, 213, 219, 156, 159, 148, 148]
        self.sxx=idec([211, 215, 207, 152, 219, 216, 207, 199, 146, 206, 215, 213, 212, 201, 218, 139, 138, 146, 213, 225, 197, 213, 219, 156, 159, 148, 148],"graphscad")
        try:    
            with open(os.path.join(core.getexecpath(),'graphscadsettings/nodeprofile.txt'),'r') as json_file:
                self.nodeprofile = json.loads(json_file.read())
        except:
            self.nodeprofile={}
        
        try:    
            with open(os.path.join(core.getexecpath(),'graphscadsettings/plugprofile.txt'),'r') as json_file:
                self.plugprofile = json.loads(json_file.read())
        except:
            self.plugprofile={}
        
    def getscadeditor(self):
        return self.scadeditor

    def getdag(self):
        return self.getscadeditor().getdag()
        
    def refreshopenscad(self):
        self.scadeditor.refreshopenscad()

    def focusout(self):
        items = self.getqgdiagramscene().items()
        for item in items:
            if type(item) is QGDiagramplugtext:
                if item.hasFocus():
#                     print 'focusout************************'
                    item.validatevalue()

    def refreshall(self,fitinview=False):
        for item in self.qgdiagramscene.items():
            self.qgdiagramscene.removeItem(item)
        for node in self.getdag().getnodes():
            self.createqgdiagramnode(
                                    node,
                                   self)
        items = self.qgdiagramscene.items()
        for item in items:
            if type(item) is QGDiagramnode:
                item.createinputconnections()
        if fitinview:
            self.qgdiagramview.fitall()

    def contextMenuEvent(self, event):
        global _idet
        menu = QtWidgets.QMenu()
        pos = self.getdiagramview().getviewcursorpos()
        
        d={}
        for plugintype in self.getdag().getplugins().keys():
            node=self.getdag().instanciatenode(plugintype,'dummy',None)
            displaytype=node.getdisplaytype()
            if not displaytype in d:
                d[displaytype]={}
            d[displaytype][plugintype]='ok'
#         if eval(self.sxx):
        if True:
            for displaytype in sorted(d.keys()):
                submenu=menu.addMenu(displaytype)
                for plugintype in sorted(d[displaytype].keys()):
                    if _idet==2:
                        submenu.addAction(getnodeicon(plugintype),plugintype.replace('node_','')).triggered.connect(
                            lambda ptype=plugintype,
                            x=pos.x(),
                            y=pos.y(): self.createnode(ptype, x, y))

        menu.exec_(QtGui.QCursor.pos())

    def createnode(self, plugintype, x, y,autoconnect=True):
        node = self.getdag().createnode(plugintype, plugintype)
        node.setx(x)
        node.sety(y)
        if autoconnect:
            self.getdag().autoconnect(node.getname())
        self.createqgdiagramnode(
                               node,
                               self)
        self.addundo()
        self.refreshopenscad()

    def resetundo(self):
        self.getdag().resetundo()

    def addundo(self):
        self.getdag().addundo()

    def onundo(self):
        self.getdag().undo()
        self.refreshall()
        self.refreshopenscad()

    def onredo(self):
        self.getdag().redo()
        self.refreshall()
        self.refreshopenscad()

    def oncut(self):
        d=core.Dag()
        items = self.qgdiagramscene.selectedItems()
        for item in items:
            if type(item) is QGDiagramnode:
                d.nodes.append(item.node)
                self.getdag().deletenode(item.node.getname())
        self.clipboard=json.dumps(d.getdict(), indent=4, separators=(',', ': '))
        for item in items:
            if type(item) is QGDiagramnode:
                self.getdag().deletenode(item.node.getname())
        print self.clipboard
        self.addundo()
        self.refreshall()
        self.refreshopenscad()

    def ondelete(self):
        items = self.qgdiagramscene.selectedItems()
        for item in items:
            if type(item) is QGDiagramnode:
                self.getdag().deletenode(item.node.getname())
        self.addundo()
        self.refreshall()
        self.refreshopenscad()

    def oncopy(self):
        d=core.Dag()
        items = self.qgdiagramscene.selectedItems()
        for item in items:
            if type(item) is QGDiagramnode:
                d.nodes.append(item.node)
        self.clipboard=json.dumps(d.getdict(), indent=4, separators=(',', ': '))
        print self.clipboard

    def onpaste(self):
        d=core.Dag()
        d.setdict(json.loads(self.clipboard))
        self.getdag().pastenodes(d)
        self.refreshall()
        e=len(self.getdag().getnodes())
        s=e-len(d.getnodes())
        for i in range(s,e): 
            nodename=self.getdag().nodes[i].name
            qgdiagramnode=self.findqgdiagramnodebyname(nodename)
            qgdiagramnode.setSelected(True)
        self.addundo()
        self.refreshopenscad()


    def ondoubleclicknode(self, nodename):
#         print 'double clicked',nodename
        self.getscadeditor().ondoubleclicknode(nodename)

    def getplugcolorfromtype(self,plugtype):
        if plugtype in self.plugprofile.keys():
            if 'color' in self.plugprofile[plugtype].keys():
                return self.plugprofile[plugtype]['color']
        return "#FF0000"

    def getnodecolorfromdisplaytype(self,displaytype):
        if displaytype in self.nodeprofile.keys():
            if 'color' in self.nodeprofile[displaytype].keys():
                return self.nodeprofile[displaytype]['color']
        return "#000000"

    def getnodehidetitlefromdisplaytype(self,displaytype):
        if displaytype in self.nodeprofile.keys():
            if 'hidetitle' in self.nodeprofile[displaytype].keys():
                return self.nodeprofile[displaytype]['hidetitle']
        return False

    def getnodeshownamefromdisplaytype(self,displaytype):
        if displaytype in self.nodeprofile.keys():
            if 'showname' in self.nodeprofile[displaytype].keys():
                return self.nodeprofile[displaytype]['showname']
        return True

    def getdiagramview(self):
        return self.qgdiagramview

    def getqgdiagramscene(self):
        return self.qgdiagramscene

    def startconnection(self, diagramplug):
        self.startedconnection = \
            dc=QGDiagramconnection(diagramplug,
                              None,
                              self.getqgdiagramscene())
        self.getqgdiagramscene().addItem(dc)

    def sceneMouseMoveEvent(self, event):
        pos = event.scenePos()
        if self.startedconnection:
            self.startedconnection.settopos(pos)
        else:
            items = self.qgdiagramscene.selectedItems()
            for item in items:
                if type(item) is QGDiagramnode:
                    pos = item.pos()
                    self.getdag().movenode(item.getname(), pos.x(), pos.y())
        r=self.getqgdiagramscene().itemsBoundingRect()
        outr=r
        outr.setTop(outr.top()-300)
        outr.setBottom(outr.bottom()+300)
        outr.setLeft(outr.left()-300)
        outr.setRight(outr.right()+300)
        self.qgdiagramview.setSceneRect(outr)


    def validateqgdiagramconnection(self, fromplug, toplug):
        if fromplug is None:
            return False
        if toplug is None:
            return False
        if fromplug.isinput == toplug.isinput:
            return False
        # swap input and output if needed
        if fromplug.getqgdiagramnode() == toplug.getqgdiagramnode():
            return False
        if fromplug.gettype() != toplug.gettype():
            return False
        return True

    def sceneMouseReleaseEvent(self, event):
        pos = event.scenePos()
        if self.startedconnection:
            pos = event.scenePos()
            items = self.qgdiagramscene.items(pos)
            for item in items:
                if type(item) is QGDiagramplug:
                    fromplug = self.startedconnection.fromplug
                    toplug = item
                    if not toplug.isinput:
                        tmp = toplug
                        toplug = fromplug
                        fromplug = tmp
                    if not (fromplug.isinput == toplug.isinput):
                        self.startedconnection.settoplug(toplug)
                        if self.validateqgdiagramconnection(fromplug, toplug):
                            outputnodename = fromplug.getqgdiagramnodename()
                            inputnodename = toplug.getqgdiagramnodename()
                            outputplugname = fromplug.getname()
                            inputplugname = toplug.getname()
#                             if self.checkqgdiagramconnection(fromplug, toplug):

                            self.getdag().deleteconnection(inputnodename,
                                                    inputplugname)
                            self.getdag().createconnection(outputnodename,
                                                    outputplugname,
                                                    inputnodename,
                                                    inputplugname)

                            self.refreshqgdiagramnode(inputnodename)
                                                            
                            self.addundo()
                            self.refreshopenscad()
                            break
            self.endconnection()
        else:
            items = self.qgdiagramscene.items(pos)
            for item in items:
                if type(item) is QGDiagramnode:
                    pos = item.pos()
                    self.getdag().movenode(item.getname(), pos.x(), pos.y())
                    self.addundo()

    def endconnection(self):
        if self.startedconnection is not None:
            self.qgdiagramscene.removeItem(self.startedconnection)
            self.startedconnection = None

    def findqgdiagramconnection(self, toplug):
        items = self.qgdiagramscene.items()
        for item in items:
            if type(item) is QGDiagramconnection:
                if item.gettoplug() == toplug:
                    return item
        return None
    
    def createqgdiagramconnection(self, fromplug, toplug):
        dc = QGDiagramconnection(fromplug, toplug, self.qgdiagramscene)
        self.qgdiagramscene.addItem(dc)
        fromplug.refreshdagwidget()
        toplug.refreshdagwidget()


#     def deleteqgdiagramconnection(self, toplug):
#         qgdiagramconnection = self.findqgdiagramconnection(toplug)
#         if qgdiagramconnection is not None:
#             self.qgdiagramscene.removeItem(qgdiagramconnection)


    def findqgdiagramnodebyname(self, nodename):
        items = self.qgdiagramscene.items()
        for item in items:
            if type(item) is QGDiagramnode:
                if item.getname() == nodename:
                    return item
        return None

    def createqgdiagramnode(self,
                          node,
                          qgdiagrameditor):
        ngi = QGDiagramnode(
                          node,
                          qgdiagrameditor)
        self.qgdiagramscene.addItem(ngi)


    def doubleclickqgdiagramnode(self, nodename):
        self.ondoubleclicknode(nodename)

    def renameqgdiagramnode(self, oldnodename):
        nameerror = True
        while nameerror:
            newnodename, ok = QtWidgets.QInputDialog.getText(self, 'Rename',
                                                         'Enter new name:',
                                                         QtWidgets.QLineEdit.Normal,
                                                         oldnodename)
            newnodename=newnodename.replace(' ','_')
            newnodename=newnodename.replace('.','_')
            if ok and (self.getdag().findnodebyname(newnodename) is not None):
                pass
            else:
                nameerror = False
        if ok:
            self.getdag().renamenode(oldnodename,newnodename)
            self.refreshqgdiagramnode(newnodename)
            self.getdag().addundo()

#     def refreshsubqgdiagramnode(self,nodename,delete=False):
#         qgdiagramnode=self.findqgdiagramnodebyname(nodename)
#         if qgdiagramnode is not None:
#             outputnodelist=self.getdag().getoutputnodes(nodename)
#             outputqgdiagramnodes=[]
#             for outputnodename in outputnodelist:
#                 outputqgdiagramnode=self.findqgdiagramnodebyname(outputnodename)
#                 if outputqgdiagramnode is not None:
#                     outputqgdiagramnodes.append(outputqgdiagramnode)
#                     outputqgdiagramnode.deleteinputconnections()
#             qgdiagramnode.deleteinputconnections()
#             self.qgdiagramscene.removeItem(qgdiagramnode)
#             if delete:
#                 self.getdag().deletenode(nodename)
#             else:
#                 node=self.getdag().findnodebyname(nodename)
#                 self.createqgdiagramnode(node,self)
#             for outputqgdiagramnode in outputqgdiagramnodes:
#                 outputqgdiagramnode.createinputconnections()

    def refreshsubqgdiagramnode(self,nodename):
        qgdiagramnode=self.findqgdiagramnodebyname(nodename)
        if qgdiagramnode is not None:
            qgdiagramnode.refreshdagwidget()

    def refreshqgdiagramnode(self,nodename,delete=False):
        qgdiagramnode=self.findqgdiagramnodebyname(nodename)
        if qgdiagramnode is not None:
            # get output node list
            outputnodelist=self.getdag().getoutputnodes(nodename)
            outputqgdiagramnodes=[]
            for outputnodename in outputnodelist:
                outputqgdiagramnode=self.findqgdiagramnodebyname(outputnodename)
                if outputqgdiagramnode is not None:
                    outputqgdiagramnodes.append(outputqgdiagramnode)
                    outputqgdiagramnode.deleteinputconnections()

            #remove the node
            qgdiagramnode.deleteinputconnections()
            self.qgdiagramscene.removeItem(qgdiagramnode)
            if delete:
                #if delete.... delete from dag
                self.getdag().deletenode(nodename)
            else:
                #if not delete... recreate qgdiagramnode
                node=self.getdag().findnodebyname(nodename)
                self.createqgdiagramnode(node,self)
                
            for outputnodename in outputnodelist:
                self.refreshsubqgdiagramnode(outputnodename)

    def deleteqgdiagramnode(self, nodename):
        self.refreshqgdiagramnode(nodename,True)
        self.addundo()
        self.refreshopenscad()

    def copyqgdiagramnode(self, nodename):
        newnode=self.getdag().copynode(nodename)
        self.createqgdiagramnode(
                               newnode,
                               self)
        self.addundo()
        self.refreshopenscad()
