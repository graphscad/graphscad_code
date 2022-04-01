# coding: utf8
# from __future__ import unicode_literals

import core as gc


class Node_variable(gc.Dagnode):

    def getcomment(self):
        return 'declare a global variable'

    def getdisplaytype(self):
        return 'declaration'

    def getinputplugs(self):
        return [
                {'name': 'object', 'value': '', 'type': 'object','tip':'input 3D object'},
                {'name': 'name', 'value': '$myvar', 'type': 'str','prefix':'$','tip':'vame of variable to declare'},
                {'name': 'expression', 'value': '0', 'type': 'str','tip':'expression of variable value'},
                ]

    def getoutputplugs(self):
        return [{'name': 'object', 'value': '', 'type': 'object','tip':'output 3D object'}]

    def evaluate(self):
        
        obj = self.getinputplugvalue('object')
        c=''
        c=c+'{'
        c=c+self.getinputplugvalue('name')+'='+self.getinputplugvalue('expression')+';'
        c=c+self.modulecall(obj)
        c=c+'}'

        self.modulebegin(self.name)
        self.moduleaddcode(c)
        self.moduleend()
        
        self.setoutputplugvalue('object', self.modulename(self.name))
        return

