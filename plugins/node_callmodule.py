# coding: utf8
# from __future__ import unicode_literals

import core as cdc
import os

class Node_callmodule(cdc.Dagnode):

    def prerefresh(self):
        path=os.path.split(self.getdag().filename)
        filename=self.getinputplugvalue('filename')
        modulename=self.getinputplugvalue('modulename')
        filename= os.path.join(path[0],filename)
        if os.path.isfile(filename):
            txt=''
            try:
                with open(filename, 'r') as f:
                    txt=f.read()
                    i=txt.find(modulename)
                    if i>=0:
                        txt=txt[i:]
                        i=txt.find('(')
                        if i>=0:
                            txt=txt[i+1:]
                            i=txt.find('\n')
                            if i>=0:
                                txt=txt[:i]
                            sp=txt.split(',')
                            print sp
                            if len(sp)==1:
                                if sp[0]==')':
                                    sp=[]
                            for i in range(0,19):
                                if i<len(sp):
                                    pname=sp[i].split('=')[0]
                                    self.setinputplugalias('param'+str(i+1),pname)
                                else:
                                    self.setinputplugalias('param'+str(i+1),'')
            except:
                pass
                        
                

    def getcomment(self):
        return 'this node is used to call an external module'

    def getdisplaytype(self):
        return 'control statement'

    def getinputplugs(self):
        return [
                {'name': 'filename', 'value': '', 'type': 'filename','tip':'filename of module (a graphscad file .scad)'},
                {'name': 'modulename', 'value': '', 'type': 'str','tip':'name of module'},
                {'name': 'tx', 'value': '0', 'type': 'str','tip':'x translation of output object'},
                {'name': 'ty', 'value': '0', 'type': 'str','tip':'y translation of output object'},
                {'name': 'tz', 'value': '0', 'type': 'str','tip':'z translation of output object'},
                {'name': 'param1', 'value': '', 'type': 'str'},
                {'name': 'param2', 'value': '', 'type': 'str'},
                {'name': 'param3', 'value': '', 'type': 'str'},
                {'name': 'param4', 'value': '', 'type': 'str'},
                {'name': 'param5', 'value': '', 'type': 'str'},
                {'name': 'param6', 'value': '', 'type': 'str'},
                {'name': 'param7', 'value': '', 'type': 'str'},
                {'name': 'param8', 'value': '', 'type': 'str'},
                {'name': 'param9', 'value': '', 'type': 'str'},
                {'name': 'param10', 'value': '', 'type': 'str'},
                {'name': 'param11', 'value': '', 'type': 'str'},
                {'name': 'param12', 'value': '', 'type': 'str'},
                {'name': 'param13', 'value': '', 'type': 'str'},
                {'name': 'param14', 'value': '', 'type': 'str'},
                {'name': 'param15', 'value': '', 'type': 'str'},
                {'name': 'param16', 'value': '', 'type': 'str'},
                {'name': 'param17', 'value': '', 'type': 'str'},
                {'name': 'param18', 'value': '', 'type': 'str'},
                {'name': 'param19', 'value': '', 'type': 'str'},
                {'name': 'param20', 'value': '', 'type': 'str'}
                ]

    def getoutputplugs(self):
        return [
                {'name': 'object', 'value': '', 'type': 'object','tip':'output 3D object'}
                ]

    def getheader(self):
        c=''
        filename=self.getinputplugvalue('filename')
        if filename!='':
            c='use <'+filename+'>\n'
        return c
        
    def evaluate(self):

        tx=self.getinputplugvalue('tx')
        ty=self.getinputplugvalue('ty')
        tz=self.getinputplugvalue('tz')
        filename=self.getinputplugvalue('filename')
        modulename=self.getinputplugvalue('modulename')
        code='' 
        if modulename=='':
            modulename=os.path.basename(os.path.splitext(filename)[0])
        if modulename!='':
            code=modulename+'('
            params=''
            for i in range(1,20):
                s=self.getinputplugvalue('param'+str(i))
                if (s is not None) and len(s)>0:
                    if len(params)>0:
                        params=params+','
                    params=params+s
            code=code+params+');'
        else:
            code='cube([1,1,1],center=True);'
        self.modulebegin(self.name,tx=tx,ty=ty,tz=tz)
        self.moduleaddcode(code)
        self.moduleend()
        self.setoutputplugvalue('object', self.modulename(self.name))
        return
