# coding: utf8
# from __future__ import unicode_literals

import core as gc


class Node_variable2d(gc.Dagnode):

    def getcomment(self):
        return 'declare a global variable'

    def getdisplaytype(self):
        return 'declaration'

    def getinputplugs(self):
        return [
                {'name': 'object2d', 'value': '', 'type': 'object2d','tip':'input 2d object'},
                {'name': 'name', 'value': '$myvar', 'type': 'str','prefix':'$','tip':'vame of variable to declare'},
                {'name': 'expression', 'value': '0', 'type': 'str','tip':'expression of variable value'},
                ]

    def getoutputplugs(self):
        return [{'name': 'object2d', 'value': '', 'type': 'object2d','tip':'output 2D object'}]

    def evaluate(self):
        
        obj = self.getinputplugvalue('object2d')
        c=''
        c=c+'{'
        c=c+self.getinputplugvalue('name')+'='+self.getinputplugvalue('expression')+';'
        c=c+self.modulecall(obj)
        c=c+'}'

        self.modulebegin(self.name)
        self.moduleaddcode(c)
        self.moduleend()
        
        self.setoutputplugvalue('object2d', self.modulename(self.name))
        return

