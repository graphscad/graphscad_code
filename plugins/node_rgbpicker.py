# coding: utf8
# from __future__ import unicode_literals

import core as gc


class Node_rgbpicker(gc.Dagnode):

    def getcomment(self):
        return 'select a color with palette'

    def getdisplaytype(self):
        return 'declaration'

    def getinputplugs(self):
        return [
                {'name': 'r', 'value': '255', 'type': 'str','alias':'red'  ,'tip':'red  (expression or string from 0 to 1)','hidden':True},
                {'name': 'g', 'value': '255', 'type': 'str','alias':'green','tip':'green  (expression or string from 0 to 1)','hidden':True},
                {'name': 'b', 'value': '255', 'type': 'str','alias':'blue' ,'tip':'blue  (expression or string from 0 to 1)','hidden':True},
                {'name': 'color', 'value': '1', 'type': 'color','alias':'pick','tip':'pick color'}
                ]

    def getoutputplugs(self):
        return  [
                {'name': 'r', 'value': '1', 'type': 'str','alias':'red'  ,'tip':'red  (expression or string from 0 to 1)'},
                {'name': 'g', 'value': '1', 'type': 'str','alias':'green','tip':'green  (expression or string from 0 to 1)'},
                {'name': 'b', 'value': '0', 'type': 'str','alias':'blue' ,'tip':'blue  (expression or string from 0 to 1)'},
                ]
        
    def evaluate(self):
        
        r=float(self.getinputplugvalue('r'))/255
        g=float(self.getinputplugvalue('g'))/255
        b=float(self.getinputplugvalue('b'))/255
        
        self.setoutputplugvalue('r', str(r))
        self.setoutputplugvalue('g', str(g))
        self.setoutputplugvalue('b', str(b))
        return

