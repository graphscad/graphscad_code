# coding: utf8
# from __future__ import unicode_literals

import core as cdc

class Node_globalsettings(cdc.Dagnode):

    def getcomment(self):
        return 'this node is used to initialize specific openscad settings'

    def getdisplaytype(self):
        return 'declaration'

    def getinputplugs(self):
        return [
                {'name': '$fa', 'value': '', 'type': 'str','tip':' the minimum angle for a fragment'},
                {'name': '$fs', 'value': '', 'type': 'str','tip':'minimum size of a fragment'},
                {'name': '$fn', 'value': '', 'type': 'str','tip':'When this variable has a value greater than zero, $fa and $fs are ignored and full circle is rendered using this number of fragments'},
                {'name': '$vpr', 'value': '', 'type': 'str','tip':'viewport rotation'},
                {'name': '$vpt', 'value': '', 'type': 'str','tip':'viewport translation'},
                {'name': '$vpd', 'value': '', 'type': 'str','tip':'viewport camera distance'},
                {'name': '$t', 'value': '', 'type': 'str','tip':'The $t variable is used for animation'}
                ]

    def getoutputplugs(self):
        return [
                ]

    def getheader(self):
        code=''
        fa=self.getinputplugvalue('$fa')
        fs=self.getinputplugvalue('$fs')
        fn=self.getinputplugvalue('$fn')
        vpr=self.getinputplugvalue('$vpr')
        vpt=self.getinputplugvalue('$vpt')
        vpd=self.getinputplugvalue('$vpd')
        t=self.getinputplugvalue('$t')
        
        if fa!='':
            code=code+'$fa='+fa+';'
        if fs!='':
            code=code+'$fs='+fs+';'
        if fn!='':
            code=code+'$fn='+fn+';'
        if vpr!='':
            code=code+'$vpr='+vpr+';'
        if vpt!='':
            code=code+'$vpt='+vpt+';'
        if vpd!='':
            code=code+'$vpd='+vpd+';'
        if t!='':
            code=code+'$t='+t+';'
        return code

        
    def evaluate(self):
        return
