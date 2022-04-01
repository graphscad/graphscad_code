# coding: utf8
# from __future__ import unicode_literals

import core as cdc


_DEBUG = True


class Node_switchcase(cdc.Dagnode):

    def getcomment(self):
        return 'this node is used to create a if statement for 3D object'

    def getdisplaytype(self):
        return 'control statement'

    def getinputplugs(self):
        return [
            {'name': 'expression1', 'value': '1==1', 'type': 'str','tip':'boolean expression1 to evaluate','alias':'if1'},
            {'name': 'object1', 'value': '', 'type': 'object','tip':'object to output if exression1 is true'},
            {'name': 'expression2', 'value': '', 'type': 'str','tip':'boolean expression2 to evaluate','alias':'else if2'},
            {'name': 'object2', 'value': '', 'type': 'object','tip':'object to output if exression2 is true'},
            {'name': 'expression3', 'value': '', 'type': 'str','tip':'boolean expression3 to evaluate','alias':'else if3'},
            {'name': 'object3', 'value': '', 'type': 'object','tip':'object to output if exression3 is true'},
            {'name': 'expression4', 'value': '', 'type': 'str','tip':'boolean expression4 to evaluate','alias':'else if4'},
            {'name': 'object4', 'value': '', 'type': 'object','tip':'object to output if exression4 is true'},
            {'name': 'expression5', 'value': '', 'type': 'str','tip':'boolean expression5 to evaluate','alias':'else if5'},
            {'name': 'object5', 'value': '', 'type': 'object','tip':'object to output if exression5 is true'},
            {'name': 'expression6', 'value': '', 'type': 'str','tip':'boolean expression6 to evaluate','alias':'else if6'},
            {'name': 'object6', 'value': '', 'type': 'object','tip':'object to output if exression6 is true'},
            {'name': 'expression7', 'value': '', 'type': 'str','tip':'boolean expression7 to evaluate','alias':'else if7'},
            {'name': 'object7', 'value': '', 'type': 'object','tip':'object to output if exression7 is true'},
            {'name': 'expression8', 'value': '', 'type': 'str','tip':'boolean expression8 to evaluate','alias':'else if8'},
            {'name': 'object8', 'value': '', 'type': 'object','tip':'object to output if exression8 is true'},
            {'name': 'expression9', 'value': '', 'type': 'str','tip':'boolean expression9 to evaluate','alias':'else if9'},
            {'name': 'object9', 'value': '', 'type': 'object','tip':'object to output if exression9 is true'},
            {'name': 'expression10', 'value': '', 'type': 'str','tip':'boolean expression10 to evaluate','alias':'else if10'},
            {'name': 'object10', 'value': '', 'type': 'object','tip':'object to output if exression10 is true'}
            ]

    def getoutputplugs(self):
        return [
                {'name': 'object', 'value': '', 'type': 'object','tip':'output selected object from switch case'}
                ]

    def evaluate(self):

        self.modulebegin(self.name)
        expcount=0
        for i in range(1,10):
            expression = self.getinputplugvalue('expression'+str(i))
            obj = self.getinputplugvalue('object'+str(i))
            if obj!='':
                if expcount>0:
                    self.moduleaddcode('else {')
                if expression!='':
                    self.moduleaddcode('if('+expression+')')
                else:
                    self.moduleaddcode('if(true)')
                self.moduleaddcode('{'+self.modulecall(obj)+'}')
                expcount=expcount+1
        for j in range (1,expcount):
            j
            self.moduleaddcode('}')
        self.moduleend()

        self.setoutputplugvalue('object', self.modulename(self.name))
        return
