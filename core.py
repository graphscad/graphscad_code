# coding: utf8
# from __future__ import unicode_literals

import glob
import imp
import io
import json
import os
import copy
import sys

import PySide.QtGui as QtWidgets
import PySide.QtCore as QtCore
import PySide.QtGui as QtGui

from string import rstrip
from math import sqrt

_DEBUG = True

STARTGRAPHSCADMARKER='/*BEGINGRAPHSCAD'
ENDGRAPHSCADMARKER='ENDGRAPHSCAD*/'

def getexecpath():
    if getattr(sys, 'frozen', False):
#         unicode(sys.executable, sys.getfilesystemencoding( )
        path=os.path.abspath(os.path.dirname(unicode(sys.executable,sys.getfilesystemencoding())))
    else:
        path = os.path.abspath(os.path.dirname(unicode(__file__,sys.getfilesystemencoding())))
#     print( 'bundle dir is', path )
#     print( 'sys.argv[0] is', sys.argv[0] )
#     print( 'sys.executable is', sys.executable )
#     print( 'os.getcwd is', os.getcwd() )
    return path

def unnumberedname(name):
    i=len(name)-1
    while i>1 and name[i] in '0123456789':
        i=i-1
    ret=name[0:i+1]
    return ret

class Dagnode():

    def __init__(self, typename, name, oplugs):

        self.setx(0.0)
        self.sety(0.0)
        self.graph = None
        self.name = name
        self.typename = typename
        self.dependencies = []

        self.inputplugs = self.getinputplugs()
        self.outputplugs = self.getoutputplugs()
        
        if oplugs is not None:
            #browse input plugs
            for oplug in oplugs:
                inplug=self.findinputplugbyname(oplug['name'])
                if inplug is not None:
                    inplug['value']=oplug['value']
                    if 'connection' in oplug.keys():
                        inplug['connection']=oplug['connection']
        
        for op in self.outputplugs:
            op['outputvalue'] = op['value']


    def setx(self, value):
        self.x = value

    def sety(self, value):
        self.y = value

    def getx(self):
        return self.x

    def gety(self):
        return self.y

    def setup(self):
        return

    def getname(self):
        return self.name

    def setname(self, name):
        self.name = name

    def getcomment(self):
        return ''

    def gettype(self):
        return self.typename
    
    def getdag(self):
        return self.graph


    def setinputplugconnection(self, inputplugname, connectedname):
        index = self.getinputplugindex(inputplugname)
        if index >= 0:
            if connectedname is None:
                self.inputplugs[index]['value']=self.inputplugs[index]['value']
                self.inputplugs[index].pop('connection',None)
            else:
                self.inputplugs[index]['connection']=connectedname
        else:
            print 'error cannot find ', inputplugname

    def getinputplugs(self):
        return []

    def getoutputplugs(self):
        return []

    def getdisplayparams(self):
        return {'color' : (200,100,100) }


    def gettypename(self):
        return self.__class__.__name__

    def adddependency(self, node):
 
        self.dependencies.append(node)

    def canbeevaluated(self):
 
        for depnode in self.dependencies:
            if not depnode.isevaluated:
                return False
        return True

    def getdependencies(self):
        return self.dependencies


    def getinputplugindex(self, plugname):
        index = 0
        for pn in self.inputplugs:
            if pn['name'] == plugname:
                return index
            index += 1
        return -1

    def getinputplugvalue(self, plugname):
        indexinput = self.getinputplugindex(plugname)
        if indexinput >= 0:
            if 'connection' in self.inputplugs[indexinput].keys():
                inputplugconnection = self.inputplugs[indexinput]['connection']
                sp = os.path.splitext(inputplugconnection)
                if len(sp) >= 2:
                    parentnode = self.graph.findnodebyname(sp[0])
                    if parentnode is not None:
                        plugoutputname = sp[1][1:]
                        incomingvalue = parentnode.getoutputplugvalue(plugoutputname)
                        return incomingvalue
            return self.inputplugs[indexinput]['value']
        else:
            print 'error input ', plugname, ' does not exist for node '
        return None

    def isoutputplugconnected(self,outputplugname):
        for node in self.getdag().nodes:
                for inputplug in node.inputplugs:
                    if 'connection' in inputplug.keys():
                        inputattribute=inputplug['connection']
                        sp = os.path.splitext(inputattribute)
                        if len(sp) >= 2:
                            if sp[0]==outputplugname:
                                return True
        return False


    def setinputplugalias(self, plugname,alias):
        indexinput = self.getinputplugindex(plugname)
        if indexinput >= 0:
            self.inputplugs[indexinput]['alias']=alias

    def findinputplugbyname(self, name):
        for op in self.inputplugs:
            if op['name'] == name:
                return op
        return None

    def findinputplugbytype(self, typ):
        for op in self.inputplugs:
            if op['type'] == typ:
                return op
        return None


    def findoutputplugbyname(self, name):
        for op in self.outputplugs:
            if op['name'] == name:
                return op
        return None

    def setoutputplugvalue(self, name, value):
 
        pl = self.findoutputplugbyname(name)
        if pl is not None:
            pl['outputvalue'] = value
        return

    def getoutputplugvalue(self, name):
 
        pl = self.findoutputplugbyname(name)
        if pl is not None:
            return pl['outputvalue']
        return None

    def getdict(self):
   
        d = {}
        d['version'] = 1
        d['typename'] = self.gettypename()
        d['name'] = self.getname()
        d['x'] = self.getx()
        d['y'] = self.gety()
        d['inputplugs'] =self.inputplugs
        return d

    def setdict(self, d):
        if d['version'] == 1:
            x = d['x']
            y = d['y']
            self.setx(x)
            self.sety(y)
        else:
            print 'unknown commanddagnode version', d['version']

 
    def evaluate(self, debugmode):
        """
        evaluation of node default
        """
        return

    def prerefresh(self):
        return
    
    def getheader(self):
        return ''

    def callevaluate(self):
        print '+evaluating node ', self.name, '(type:', self.typename, ')'
        self.evaluate()
        self.isevaluated = True


    def moduletransform(self,sep,trs,rot,sca,mir):
        fc=''
        if len(trs)>0:
            fc=fc+'translate('+trs+')'
        if len(fc)>0 and len(rot)>0:
            fc=fc+sep    
        if len(rot)>0:
            fc=fc+'rotate('+rot+')'
        if len(fc)>0 and len(sca)>0:
            fc=fc+sep    
        if len(sca)>0:
            fc=fc+'scale('+sca+')'
        if len(fc)>0 and len(mir)>0:
            fc=fc+sep    
        if len(mir)>0:
            fc=fc+'mirror('+mir+')'
        return fc

    def getparentmatrixcode(self):
        # get the name of first parentobjectname object
        parentobjectname=''
        firstobjectinputplug=self.findinputplugbytype('object')
        if firstobjectinputplug is not None:
            parentobjectname=self.getinputplugvalue(firstobjectinputplug['name'])

        parentmatrix=''
        if len(parentobjectname)>0:
            parentmatrix=parentobjectname+'_matrix(i=i,j=j,k=k,l=l,m=m,n=n)'
        return parentmatrix

    def getparenttranslate(self):
        # get the name of first parentobjectname object
        parentobjectname=''
        firstobjectinputplug=self.findinputplugbytype('object')
        if firstobjectinputplug is not None:
            parentobjectname=self.getinputplugvalue(firstobjectinputplug['name'])

        trs=''
        if len(parentobjectname)>0:
            trs='onlytranslate('+parentobjectname+'_matrix(i=i,j=j,k=k,l=l,m=m,n=n))'
        return trs

    def getnodetranslation(self,nodename):
        if len(nodename)>0:
            trs='gettranslation('+nodename+'_matrix(i=i,j=j,k=k,l=l,m=m,n=n))'
        return trs

    def getnodelocalvector(self,nodename,tx,ty,tz):
        if len(nodename)>0:
            trs='vectormulmatrix(['+tx+','+ty+','+tz+',1],'+nodename+'_matrix(i=i,j=j,k=k,l=l,m=m,n=n))'
        else:
            trs='[0,0,0]'
        return trs

    def modulecustombegin(self,modulename,params):
        c=''
        c=c+'module '+modulename+'('+params+')'
        c=c+'{'
        self.modulecode=self.modulecode+c

    def modulecustomend(self):
        c=''
        c=c+'}'
        self.modulecode=self.modulecode+c


    def modulebegin(self,
                    name,
                    tx='0',ty='0',tz='0',
                    rx='0',ry='0',rz='0',
                    sx='1',sy='1',sz='1',
                    mx='0',my='0',mz='0',
                    space='world'):


        invparentmatrix=''  
        parentmatrix=self.getparentmatrixcode()
        if len(parentmatrix)>0:
            invparentmatrix='inv4x4('+parentmatrix+')'

        if space=='lookat':
            rot='lookatrot(['+tx+','+ty+','+tz+'],'+parentmatrix+')'
            tx='0'
            ty='0'
            tz='0'
        else:
            rot='['+rx+','+ry+','+rz+']'
            if rot=='[0,0,0]':
                rot=''        

        trs='['+tx+','+ty+','+tz+']'
        if trs=='[0,0,0]':
            trs=''        

        sca='['+sx+','+sy+','+sz+']'
        if sca=='[1,1,1]':
            sca=''        
        mir='['+mx+','+my+','+mz+']'
        if mir=='[0,0,0]':
            mir=''        
        ftransformstr=self.moduletransform('*',trs,rot,sca,mir)        
        

        #function code
        c=''
        c=c+'function '+name+'_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = '

        fc=''
        
          
            
            
        if space=='world':
            # transform
            if len(ftransformstr)>0:
                fc=fc+ftransformstr
            # parent matrix
            if len(fc)>0 and len(parentmatrix)>0:
                fc=fc+'*'    
            if len(parentmatrix)>0:
                    fc=fc+parentmatrix
        if space=='object':
            # parent matrix
            if len(parentmatrix)>0:
                    fc=fc+parentmatrix
            # transform
            if len(fc)>0 and len(ftransformstr)>0:
                fc=fc+'*'
            if len(ftransformstr)>0:
                fc=fc+ftransformstr
        
        if space=='local':
            # parent matrix
            if len(parentmatrix)>0:
                    fc=fc+'onlytranslate('+parentmatrix+')'
            # transform
            if len(fc)>0 and len(ftransformstr)>0:
                fc=fc+'*'
            if len(ftransformstr)>0:
                fc=fc+ftransformstr
            # inv parent matrix
            if len(fc)>0 and len(parentmatrix)>0:
                fc=fc+'*'    
            if len(parentmatrix)>0:
                    fc=fc+'negonlytranslate('+parentmatrix+')'
            # parent matrix
            if len(fc)>0 and len(parentmatrix)>0:
                fc=fc+'*'    
            if len(parentmatrix)>0:
                    fc=fc+parentmatrix
        if space=='lookat':
            # parent matrix
            if len(parentmatrix)>0:
                    fc=fc+'onlytranslate('+parentmatrix+')'
            # transform
            if len(fc)>0 and len(ftransformstr)>0:
                fc=fc+'*'
            if len(ftransformstr)>0:
                fc=fc+ftransformstr
            # inv parent matrix
            if len(fc)>0 and len(invparentmatrix)>0:
                fc=fc+'*'    
            if len(invparentmatrix)>0:
                    fc=fc+invparentmatrix
                    # parent matrix
            if len(fc)>0 and len(parentmatrix)>0:
                fc=fc+'*'    
            if len(parentmatrix)>0:
                    fc=fc+parentmatrix


        if len(fc)==0:
            fc='translate([0,0,0])'    
        c=c+fc+';'

        #module code        
        c=c+'module '+name+'(i=0,j=0,k=0,l=0,m=0,n=0)'
        c=c+'{'

        fc=''
        if space=='world':
                ftransformstr=self.moduletransform('',trs,rot,sca,mir)
                if len(ftransformstr)>0:
                    fc=fc+ftransformstr
        elif space=='object':
            if len(parentmatrix)>0:
                    if len(ftransformstr)>0:
                        fc=fc+'multmatrix(m='
                        fc=fc+parentmatrix
                        fc=fc+'*'
                        fc=fc+ftransformstr        
                        fc=fc+'*'
                        fc=fc+invparentmatrix
                        fc=fc+')'
        elif space=='local':
            if len(parentmatrix)>0:
                    if len(ftransformstr)>0:
                        fc=fc+'multmatrix(m='
                        fc=fc+'onlytranslate('+parentmatrix+')'
                        fc=fc+'*'
                        fc=fc+ftransformstr        
                        fc=fc+'*'
                        fc=fc+'negonlytranslate('+parentmatrix+')'
                        fc=fc+')'
        elif space=='lookat':
            if len(parentmatrix)>0:
                    if len(ftransformstr)>0:
                        fc=fc+'multmatrix(m='
                        fc=fc+'onlytranslate('+parentmatrix+')'
                        fc=fc+'*'
                        fc=fc+ftransformstr        
                        fc=fc+'*'
                        fc=fc+invparentmatrix
                        fc=fc+')'
        
        c=c+fc
        
        self.modulecode=self.modulecode+c
        return

    def modulereset(self):
        self.modulecode=''

    def moduleaddcode(self,c):
        self.modulecode=self.modulecode+c

    def moduleend(self):
        c='}'
        self.modulecode=self.modulecode+c

    def modulename(self,name):
        c=name
        return c

    def modulecall(self,name,prefix=''):
        c=''
        if len(name)>0:
            c=c+prefix+name+'(i,j,k,l,m,n);'
        else:
            c=c+'{}'
        return c

    def modulematrix(self,name):
        c=name+'_matrix(i=i,j=j,k=j,l=l,m=m,n=n)'
        return c


class Dag():

    def __init__(self):
        """
        initialization
        """
        self.nodes = []
#         self.attributes = {}
        self.importallplugins()
        self.filename = ''
        self.resetundo()

    def getplugins(self):
        """
        get list of plugins typename

        :returns: string
        """
        return self.plugins

    def gettype(self):
 
        return 'base'

    def findnodebyname(self, name):
 
        for node in self.getnodes():
            if node.getname() == name:
                return node
        return None

    def findnodebytype(self, typ):
        for node in self.getnodes():
            if node.gettype() == typ:
                return node
        return None
    
    def pastenodes(self,dag):
        renamelist={}
        rnodes=[]

        pnodes=dag.getnodes()
        for pnode in pnodes:
            oldname=pnode.getname()
            newname=self.getuniquenodename(pnode.gettype(), oldname)
            pnode.name=newname
            renamelist[oldname]=newname
            self.nodes.append(pnode)
            rnodes.append(pnode)
            pnode.sety(pnode.gety()+30)
            pnode.setx(pnode.getx()+30)

        for pnode in rnodes:
            for inputplug in pnode.inputplugs:
                if 'connection' in inputplug.keys():
                    connect=inputplug['connection']
                    nname,nplug=os.path.splitext(connect)
                    if nname in renamelist.keys():
                        newname=renamelist[nname]
                        inputplug['connection']=newname+'.'+nplug[1:]


    def evaluate(self):
        print 'starting graph evaluation - Running commands local'
        if len(self.nodes) > 0:
            
            #set output count to 0 for each node
            for node in self.nodes:
                node.outputcount=0
                node.modulereset()
                node.moduleprefix=''
            for node in self.nodes:
                    for inputplug in node.inputplugs:
                        if 'connection' in inputplug.keys():
                            inputattribute=inputplug['connection']
                            sp = os.path.splitext(inputattribute)
                            if len(sp) >= 2:
                                parentnode = node.graph.findnodebyname(sp[0])
                                if parentnode is not None:
                                    node.adddependency(parentnode)
                                    parentnode.outputcount=parentnode.outputcount+1
            # all node are not evaluated
            for node in self.nodes:
                node.isevaluated = False
            stopeval = False

            level = 0
            while not stopeval:
                stopeval = True
                for node in self.getnodes():
                    if not node.isevaluated:
                        if node.canbeevaluated():
                            # node evaluation
                            node.callevaluate()
                            node.level=level
                            stopeval = False
                            break
                level += 1

        else:
            print 'No node in this graphscad !'


    def graphscadcode(self):
        txt=''
        f = open(os.path.join(getexecpath(),'graphscadsettings/graphscadfunc.txt'), 'r')
        if f is not None:
            txt=f.read()
            f.close()
        return txt

    def getcode(self,filename,inputnode=None,assembled=False,debug=False):
        
        modulename=os.path.splitext(os.path.basename(filename))[0]
        self.filename=filename

        outputcode=''
        outputcode=outputcode+'//------------------------------------------------------------------------------------------\n'
        outputcode=outputcode+'// THIS CODE WAS GENERATED WITH GRAPHSCAD (C)C.levastre 2017\n'
        outputcode=outputcode+'// IF U LIKE GRAPHSCAD PLEASE DONATE ON BLOG'
        outputcode=outputcode+'//------------------------------------------------------------------------------------------\n'
        outputcode=outputcode+'// '+self.filename+'\n'
        outputcode=outputcode+'//------------------------------------------------------------------------------------------\n'
        outputcode=outputcode+'// Graphscad is a graphical nodal editor to create .SCAD files \n'
        outputcode=outputcode+'//\n'
        outputcode=outputcode+'// More info here : http://graphscad.free.fr\n'
        outputcode=outputcode+'//\n'
        outputcode=outputcode+'// Scad Files created with Graphscad can be edited by graphscad \n'
        outputcode=outputcode+'// Scad Files created with Graphscad can be read by Openscad\n'
        outputcode=outputcode+'//\n'
        outputcode=outputcode+'//------------------------------------------------------------------------------------------\n'
        
        if assembled==True:
            outputcode=outputcode+'$assembled=true;\n'
        else:
            outputcode=outputcode+'$assembled=false;\n'
        outputcode=outputcode+'\n\n'

        if debug==True:
            outputcode=outputcode+'$debug=true;\n'
        else:
            outputcode=outputcode+'$debug=false;\n'
        outputcode=outputcode+'\n\n'
            
        
        if len(self.nodes) > 0:

            # mark all nodes as non generated
            for node in self.nodes:
                node.isgenerated=False
                node.isheadergenerated=False


            # generate header code for globalsettings callmodule avoiding duplicates
            outputcode=outputcode+'/*------------------- Headers --------------------------------*/\n'
            typecode={}
            for node in self.nodes:
                    if node.gettypename()=='Node_globalsettings' or \
                        node.gettypename()=='Node_callmodule' or \
                        node.gettypename()=='Node_callmodule2d':
                        if not node.isheadergenerated:
                            node.isheadergenerated=True
                            if not (node.getheader() in typecode.keys()):
                                typecode[node.getheader()]=node.getheader()
                       
            for p in typecode.keys():
                outputcode=outputcode+typecode[p]+'\n'

            #get all module declaration and generate code of parent nodes inside
            outputcode=outputcode+'/*------------------- declared modules --------------------------------*/\n'
            for node in self.nodes:
                if not node.isgenerated:
                    if node.gettypename()=='Node_declaremodule':
                        node.isgenerated=True
                        # add code of internal functions
                        
                        # add code of each parent module
                        outputcode=outputcode+'module '+node.getinputplugvalue('name')
                        if modulename==node.getinputplugvalue('name'):
                            modulename=modulename+'_default'
                        outputcode=outputcode+'('
                        pnodes=self.getrecursiveparentnodes(node)
                        for pnode in reversed(pnodes):
                            if pnode.gettypename()=='Node_param':
                                outputcode=outputcode+pnode.modulecode+','
                        if outputcode[len(outputcode)-1]==',':
                            outputcode=outputcode[:len(outputcode)-1]
                        outputcode=outputcode+')'
                        outputcode=outputcode+'{'
                        for pnode in pnodes:
                            if pnode.gettypename()!='Node_param':
                                outputcode=outputcode+pnode.modulecode
                        # add code to call input module
                        if (inputnode in pnodes):
                            outputcode=outputcode+inputnode.getname()+'();'
                        else:
                            outputcode=outputcode+node.modulecode
                        outputcode=outputcode+'}'
                        # add code to call declared module
                        if (inputnode in pnodes) or (inputnode is None) or (inputnode==node):
                            outputcode=outputcode+node.getinputplugvalue('name')+'();'

                        
            # collect headers not callmodule
            outputcode=outputcode+'/*------------------- Other Headers --------------------------------*/\n'
            typecode={}
            for node in self.nodes:
                if node.gettypename()!='Node_globalsettings' and \
                        node.gettypename()!='Node_callmodule' and  \
                        node.gettypename()!='Node_callmodule2d':
                    if not node.isheadergenerated:
                        node.isheadergenerated=True
                        if not (node.gettype() in typecode.keys()):
                            typecode[node.gettype()]=node.getheader()
            for p in typecode.keys():
                outputcode=outputcode+typecode[p]+'\n'

            # default module generation
            # collect isolated param nodes 
            
            outputcode=outputcode+'/*------------------- default module --------------------------------*/\n'
            outputcode=outputcode+'/* force parameters for default module if they are connected to declaremodule */\n'
            
            for node in self.nodes:
                if node.gettypename()=='Node_param':
                        outputcode=outputcode+node.modulecode+';'

            outputcode=outputcode+'/* force functions for default module if they are connected to declaremodule */\n'
            for node in self.nodes:
                if node.gettypename()=='Node_function':
                        outputcode=outputcode+node.modulecode
            
            outputcode=outputcode+'module '+modulename+'('
            for node in self.nodes:
                if node.gettypename()=='Node_param' and node.outputcount==0:
                    if not node.isgenerated:
                        node.isgenerated=True
                        pnodes=self.getrecursiveparentnodes(node)
                        for pnode in reversed(pnodes):
                            if pnode.gettypename()=='Node_param':
                                outputcode=outputcode+pnode.modulecode+','
                        outputcode=outputcode+node.modulecode+','
                        outputcode=outputcode[:len(outputcode)-1]
            outputcode=outputcode+')\n{'

            # collect calling code of each isolated output object
            outputcode=outputcode+'/*------------------- isolated output objects --------------------------------*/\n'
            for node in self.nodes:
                if node.gettypename()=='Node_function' and node.outputcount==0:
                    if not node.isgenerated:
                        node.isgenerated=True
                        pnodes=self.getrecursiveparentnodes(node)
                        for pnode in reversed(pnodes):
                            outputcode=outputcode+pnode.modulecode
                        outputcode=outputcode+node.modulecode

            #collect code for each final 'object' output
            outputcode=outputcode+'/*------------------- final objects output --------------------------------*/\n'
            for node in self.nodes:
                if not node.isgenerated:
                    if node.outputcount==0 and (node.findoutputplugbyname('object') or node.findoutputplugbyname('object2d')):
                        node.isgenerated=True
                        pnodes=self.getrecursiveparentnodes(node)
                        for pnode in pnodes:
                            if not pnode.isgenerated:
                                pnode.isgenerated=True
                                outputcode=outputcode+pnode.modulecode  
                        # add code to call input module
                        outputcode=outputcode+node.modulecode
                        # add code to call declared module
                        if inputnode is None:
                            outputcode=outputcode+'/*--call non input node--*/\n'
                            outputcode=outputcode+node.getname()+'();'
                        else:
                            if inputnode in pnodes or inputnode==node:
                                outputcode=outputcode+'/*--call input node--*/\n'
                                outputcode=outputcode+inputnode.getname()+'();'

            outputcode=outputcode+'}'
            # call default module
            outputcode=outputcode+modulename+'();'
            outputcode=outputcode+self.graphscadcode()
    
            outputcode=autoindent(outputcode)
        
        return outputcode

    def getnodeindex(self, node):
 
        index = 0
        for n in self.getnodes():
            if n == node:
                return index
            index += 1
        return None

    def getdict(self):
   
        d = {}
        d['version'] = 2
        d['nodes'] = []
        for node in self.nodes:
            d['nodes'].append(node.getdict())
        return d

    def setdict(self, d):
        self.nodes = []
        if  d['version'] == 2:
            for dnode in d['nodes']:
                nodetype = dnode['typename']
                nodename = dnode['name']
                inputplugs = None
                if 'inputplugs' in dnode.keys():
                    inputplugs= dnode['inputplugs']
                newnode = self.createnode(nodetype, nodename, inputplugs)
                if newnode is not None:
                    newnode.setdict(dnode)
        else:
            print 'error : bad graphscad file version', d['version']

    def save(self, filename):
        d = self.getdict()
        with open(filename, 'w') as f:
            self.evaluate()
            name,ext=os.path.splitext(filename)
            if ext=='.scad':
                scadcode=self.getcode(filename=filename)
                f.write(scadcode)
            else:
                f.write('echo("Save this file as .scad with graphscad to get openscad code included");')
                
            f.write('\n\n')
            f.write(STARTGRAPHSCADMARKER)
            f.write(json.dumps(d, indent=4, separators=(',', ': ')))
            f.write(ENDGRAPHSCADMARKER)
            f.close()
        return True

    def load(self, filename):
 
        d = {}
        self.nodes = []
        if os.path.isfile(filename):
            f = open(filename, 'r')
            if f is not None:
                txt = f.read()
                f.close()

                start=txt.find(STARTGRAPHSCADMARKER)
                end=txt.find(ENDGRAPHSCADMARKER)
                if start>=0 and end >=0 and start<end:
                    txt=txt[start+len(STARTGRAPHSCADMARKER):end]
                try:
                    d = json.loads(txt)
                except:
                    d=self.getdict()
                    pass
                self.setdict(d)
        else:
            print 'new file ', filename
        self.filename = filename
        return True

    def getuniquenodename(self,nodetype,nodename):
        uniquenodename = nodename
        index = 0
        while self.findnodebyname(uniquenodename) is not None:
            uniquenodename = nodetype.lower() + str(index)
            index += 1
        return uniquenodename

    def createnode(self, nodetype, nodename, inputplugs=None):
 
        uniquenodename = self.getuniquenodename(nodetype,nodename)
        node = self.instanciatenode(nodetype,
                                    uniquenodename,
                                    inputplugs)
        if node is not None:
            node.graph = self
            self.nodes.append(node)
        return node

    def deletenode(self, nodename):
        node = self.findnodebyname(nodename)
        if node is not None:
#             print 'node count before',len(self.nodes)
            self.nodes.remove(node)
#             print 'node count after',len(self.nodes)
            for node in self.nodes:
                for inputplug in node.inputplugs:
                    if 'connection' in inputplug.keys():
                        inputattribute=inputplug['connection']
                        sp = os.path.splitext(inputattribute)
                        if len(sp) >= 2:
                            cnodename=sp[0]
                            if cnodename==nodename:
                                inputplug.pop('connection',None)
        else:
            print 'error node ', nodename, 'does not exist '

    def getoutputnodes(self,nodename):
        nodelist=[]
        node=self.findnodebyname(nodename)
        # get list of nodes using outputs
        for cnode in self.nodes:
            if not cnode.getname() in nodelist:
                for inputplug in cnode.inputplugs:
                    if 'connection' in inputplug.keys():
                        inputattribute=inputplug['connection']
                        sp = os.path.splitext(inputattribute)
                        if len(sp) >= 2:
                            cnodename=sp[0]
                            if cnodename==nodename:
                                nodelist.append(cnode.getname())
        return nodelist

    def addrecursiveparentnodes(self,node,nodelist):
        if node is not None:
            for inputplug in node.inputplugs:
                if 'connection' in inputplug.keys():
                    inputattribute=inputplug['connection']
                    sp = os.path.splitext(inputattribute)
                    if len(sp) >= 2:
                        parentnodename=sp[0]
                        parentnode=self.findnodebyname(parentnodename)
                        if parentnode is not None:
                            nodelist.append(parentnode)
                            self.addrecursiveparentnodes(parentnode,nodelist)

    def getrecursiveparentnodes(self,node):
        nodelist=[]
        self.addrecursiveparentnodes(node, nodelist)
        return nodelist
    
    def renamenode(self, oldnodename,newnodename):
        oldnode = self.findnodebyname(oldnodename)
        if oldnode is not None:
            newnode = self.findnodebyname(newnodename)
            if newnode is None:
                oldnode.setname(newnodename)
                for node in self.nodes:
                        for inputplug in node.inputplugs:
                            if 'connection' in inputplug.keys():
                                inputattribute=inputplug['connection']
                                sp = os.path.splitext(inputattribute)
                                if len(sp) >= 2:
                                    cnodename=sp[0]
                                    if cnodename==oldnodename:
                                        inputplug['connection']=newnodename+'.'+sp[1]
        else:
            print 'error node ', oldnodename, 'does not exist '

    def autoconnect(self,nodename):
        anode = self.findnodebyname(nodename)
        if anode is not None:
            ax=anode.getx()
            ay=anode.gety()
            nearestnodes={}
            for node in self.nodes:
                if node.getname()!=nodename:
                    nx=node.getx()
                    ny=node.gety()
                    if (ax-nx)<400 and (ax-nx)>0:
                        if abs(ay-ny)<400:
                            nearestnodes[ny]=node
            for nearestnodey in sorted(nearestnodes.keys()):
                nearestnode=nearestnodes[nearestnodey]
                for noutputplug in nearestnode.outputplugs:
                    for ainputplug in anode.inputplugs:
                        hidden=False
                        if 'hidden'in ainputplug.keys():
                            hidden=ainputplug['hidden']
                        if not hidden:
                            if not ('connection' in ainputplug.keys()):
                                    if noutputplug['type']==ainputplug['type']:
                                        if noutputplug['name']==unnumberedname(ainputplug['name']):
                                            ainputplug['connection']=nearestnode.getname()+'.'+noutputplug['name']
                                            return

    def copynode(self, nodename):
        node = self.findnodebyname(nodename)
        if node is not None:
            newnode=self.createnode(node.typename,node.name,copy.deepcopy(node.inputplugs))
            newnode.setx(node.getx()+16)
            newnode.sety(node.gety()+16)
#             self.nodes.append(newnode)
            return newnode
        else:
            print 'error node ', nodename, 'does not exist '
        return None

    def movenode(self, nodename, x, y):
        node = self.findnodebyname(nodename)
        if node is not None:
            node.setx(x)
            node.sety(y)

    def deleteconnection(self, nodename, inputplugname):
        node = self.findnodebyname(nodename)
        if node is not None:
            node.setinputplugconnection(inputplugname,None)

    def createconnection(self, outputnodename, outputplugname, inputnodename, inputplugname):
        inputnode = self.findnodebyname(inputnodename)
        inputnode.setinputplugconnection(inputplugname, outputnodename + '.' + outputplugname)
    

    def importplugin(self, filename):
 
        path, name = os.path.split(filename)
        name = os.path.splitext(name)[0]
        fil, filename, data = imp.find_module(name, [path])
        mod = imp.load_module(name, fil, filename, data)
        #globals()[name] = mod
        self.plugins[name] = mod

    def importallplugins(self):
        self.plugins = {}
        exepath = getexecpath()
        path = os.path.join(exepath, 'plugins/node_*.py')
        pyfiles = glob.glob(path)
        userpath = os.path.join(exepath, 'userplugins/node_*.py')
        userpyfiles = glob.glob(userpath)
        print pyfiles
        print userpyfiles
        pyfiles=pyfiles+userpyfiles
        print pyfiles
        for pyfile in pyfiles:
            self.importplugin(pyfile)

    def instanciatenode(self, nodetype, nodename, inputplugs):
  
        classnodetype = nodetype[0:1].upper() + nodetype[1:].lower()
        nodemodule = nodetype.lower()
        instance=None
        try:
            class_ = getattr(self.plugins[nodemodule], classnodetype)
            instance = class_(classnodetype, nodename, inputplugs)
        except:
            pass
        if instance==None:
                    QtWidgets.QMessageBox.about(None, 
                            "Critical Error ",
                            "Node plugins %s was not found ! Don't save this file !" % nodetype)
        return instance

    def getnodes(self):
        return self.nodes

    def resetundo(self):
        self.undoindex = -1
        self.undostack = []
        self.addundo()

    def addundo(self):
        while self.undoindex != len(self.undostack) - 1:
            self.undostack.pop()
        self.undostack.append(copy.deepcopy(self.getdict()))
        self.undoindex=self.undoindex+1

    def undo(self):
        if self.undoindex >= 0:
            self.setdict(copy.deepcopy(self.undostack[self.undoindex]))
            self.undoindex=self.undoindex-1

    def redo(self):
        if self.undoindex < len(self.undostack) - 1:
            self.undoindex=self.undoindex+1
            self.setdict(copy.deepcopy(self.undostack[self.undoindex]))

def autoindent(txtcode):
    newtxt=''
    txtcode=txtcode.replace('{','\n{\n')
    txtcode=txtcode.replace('}','\n}\n')
    txtcode=txtcode.replace('\n\n','\n')
    txtcode=txtcode.replace('\n\n','\n')
    txtcode=txtcode.replace('\n\n','\n')
    txtcode=txtcode.replace(';',';\n')
    indent=0
    cr=0
    while len(txtcode)>0:
        txtcode=txtcode[cr:]
        cr=txtcode.find('\n')
        if cr>=0:
            cr=cr+1
        newline=rstrip(txtcode[0:cr])
        if len(newline)>0:
            c=newline[0]
            if c=='}':
                indent=indent-1
            for i in range(0,indent):
                newline=' '+newline
            if c=='{':
                indent=indent+1
            newtxt=newtxt+newline+'\n'
    return newtxt                
