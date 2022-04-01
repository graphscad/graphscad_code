# coding: utf8
# from __future__ import unicode_literals

import core as cdc


_DEBUG = True


class Node_ifassembled(cdc.Dagnode):

    def getcomment(self):
        return 'this node is used to create a if statement for 3D object working with global $assembled flag'

    def getdisplaytype(self):
        return 'control statement'

    def getinputplugs(self):
        return [
            {'name': 'true', 'value': '', 'type': 'object','alias':'object if assembled mode is ON','tip':'object to output if assembled mode ON'},
            {'name': 'false', 'value': '', 'type': 'object','alias':'object if not assembled mode','tip':'object to output if assembled mode OFF'}
            ]

    def getoutputplugs(self):
        return [
                {'name': 'object', 'value': '', 'type': 'object','tip':'output selected object from assembled mode condition'}
                ]

    def evaluate(self):
        itrue = self.getinputplugvalue('true')
        ifalse = self.getinputplugvalue('false')

        self.modulebegin(self.name)
        self.moduleaddcode('if($assembled){'+self.modulecall(itrue)+'} else {'+self.modulecall(ifalse)+'}')
        self.moduleend()

        self.setoutputplugvalue('object', self.modulename(self.name))
        return
