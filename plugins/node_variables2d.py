# coding: utf8
# from __future__ import unicode_literals

import core as gc


class Node_variables2d(gc.Dagnode):

    def getcomment(self):
        return 'declare up to 10 special variables\nin a 2D context\nAs you enter each name the node grows\nto allow you to enter its value\nNOTE: $ prefix is added automatically'

    def getdisplaytype(self):
        return 'declaration'

    def getinputplugs(self):
        return [
                {'name': 'object2d', 'value': '', 'type': 'object2d','tip':'input 2D object'},
                {'name': 'name1', 'value': '$myvar1', 'type': 'str','prefix':'$','tip':'name of first special variable to declare'},
                {'name': 'expression1', 'value': '0', 'type': 'str','tip':'first special variable\'s value'},
                {'name': 'name2', 'value': '', 'type': 'str','prefix':'$','tip':'name of second special variable'},
                {'name': 'expression2', 'value': '', 'type': 'str','tip':'second special variable\'s value'},
                {'name': 'name3', 'value': '', 'type': 'str','prefix':'$','tip':'name of third special variable'},
                {'name': 'expression3', 'value': '', 'type': 'str','tip':'third special variable\'s value'},
                {'name': 'name4', 'value': '', 'type': 'str','prefix':'$','tip':'name of fourth special variable'},
                {'name': 'expression4', 'value': '', 'type': 'str','tip':'fourth special variable\'s value'},
                {'name': 'name5', 'value': '', 'type': 'str','prefix':'$','tip':'name of fifth special variable'},
                {'name': 'expression5', 'value': '', 'type': 'str','tip':'fifth special variable\'s value'},
                {'name': 'name6', 'value': '', 'type': 'str','prefix':'$','tip':'name of sixth special variable'},
                {'name': 'expression6', 'value': '', 'type': 'str','tip':'sixth special variable\'s value'},
                {'name': 'name7', 'value': '', 'type': 'str','prefix':'$','tip':'name of seventh special variable'},
                {'name': 'expression7', 'value': '', 'type': 'str','tip':'seventh special variable\'s value'},
                {'name': 'name8', 'value': '', 'type': 'str','prefix':'$','tip':'name of eighth special variable'},
                {'name': 'expression8', 'value': '', 'type': 'str','tip':'eighth special variable\'s value'},
                {'name': 'name9', 'value': '', 'type': 'str','prefix':'$','tip':'name of ninth special variable'},
                {'name': 'expression9', 'value': '', 'type': 'str','tip':'ninth special variable\'s value'},
                {'name': 'name10', 'value': '', 'type': 'str','prefix':'$','tip':'name of tenth special variable'},
                {'name': 'expression10', 'value': '', 'type': 'str','tip':'tenth special variable\'s value'},
                ]

    def getoutputplugs(self):
        return [{'name': 'object2d', 'value': '', 'type': 'object2d','tip':'output 2D object'}]

    def evaluate(self):
        c='{'
        for i in range(1,10):
            s=self.getinputplugvalue('name'+str(i))
            v=self.getinputplugvalue('expression'+str(i))
            if len(v)>0:
                c=c+s+'='+v+';'

        obj = self.getinputplugvalue('object2d')
        c=c+self.modulecall(obj)
        c=c+'}'

        self.modulebegin(self.name)
        self.moduleaddcode(c)
        self.moduleend()
        
        self.setoutputplugvalue('object2d', self.modulename(self.name))
        return

