# coding: utf8
# from __future__ import unicode_literals

import core as cdc

class Node_declaremodule(cdc.Dagnode):

    def prerefresh(self):
        return 
    
    def getcomment(self):
        return 'this node is used to declare a module'

    def getdisplaytype(self):
        return 'declaration'

    def getinputplugs(self):
        return [
                {'name': 'name', 'value': 'mymodule', 'type': 'str','tip':'name of module'},
                {'name': 'params', 'value': '', 'type': 'param'},
                {'name': 'functions', 'value': '', 'type': 'function'},
                {'name': 'object', 'value': '', 'type': 'object'}
                ]

    def getoutputplugs(self):
        return [
          #      {'name': 'object', 'value': '', 'type': 'object'}
                ]

        
    def evaluate(self):
        modulename=self.getinputplugvalue('name')
        params=self.getinputplugvalue('params')
        object=self.getinputplugvalue('object')
        if object!='':
            self.moduleaddcode(object+'();')
