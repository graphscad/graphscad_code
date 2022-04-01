# coding: utf8
from __future__ import unicode_literals

import core as cdc

class Node_tube(cdc.Dagnode):

    def getcomment(self):
        return 'this node is used to create a 3D tube'

    def getdisplaytype(self):
        return 'object'

    def getinputplugs(self):
        return [
                {'name': 'radius', 'value': '1', 'type': 'str','alias':'top radius'},
                {'name': 'radius2', 'value': '', 'type': 'str','alias':'bottom radius'},
                {'name': 'height', 'value': '1', 'type': 'str'},
                {'name': 'tx', 'value': '0', 'type': 'str'},
                {'name': 'ty', 'value': '0', 'type': 'str'},
                {'name': 'tz', 'value': '0', 'type': 'str'},
                {'name': 'tickness', 'value': '0.1', 'type': 'str','alias':'thickness'},
                {'name': 'holemargin', 'value': '0.001', 'type': 'str'},
                {'name': '$fn', 'value': '', 'type': 'str'}
                ]

    def getoutputplugs(self):
        return [
            {'name': 'object', 'value': '', 'type': 'object'},
            {'name': 'outobject', 'value': '', 'type': 'object'},
            {'name': 'holeobject', 'value': '', 'type': 'object','alias':'inobject'}
            ]

    def evaluate(self):
        # here you have to prepare the command the job......
        # convertimage  ./test.%04d.png  out.mov 101 200
        radius = self.getinputplugvalue('radius')
        radius2 = self.getinputplugvalue('radius2')
        if radius2=='':
            radius2=radius
        height = self.getinputplugvalue('height')
        tx = self.getinputplugvalue('tx')
        ty = self.getinputplugvalue('ty')
        tz = self.getinputplugvalue('tz')
        fn = self.getinputplugvalue('$fn')
        if fn=='':
            fn='(16+'+radius+'*3.14116)'
            gs=self.getdag()
            gsn=gs.findnodebytype('Node_globalsettings')
            if gsn is not None:
                nfn=gsn.getinputplugvalue('$fn')
                if nfn!='':
                    fn=nfn

        tickness = self.getinputplugvalue('tickness')
        holemargin = self.getinputplugvalue('holemargin')


        outobject=''
        outobject=outobject+' cylinder(r='+radius+',r1='+radius2+',h='+height+',$fn='+fn+');'

        inobject=''
        inobject=inobject+'translate([0,0,-('+holemargin+')])'
        inobject=inobject+' cylinder(r='+radius+'-('+tickness+'),r1='+radius2+'-('+tickness+'),h='+height+'+(('+holemargin+')*2),$fn='+fn+');'

        self.modulebegin(self.name+'_outobject',tx,ty,tz)
        self.moduleaddcode(outobject)
        self.moduleend()

        self.modulebegin(self.name+'_inobject',tx,ty,tz)
        self.moduleaddcode(inobject)
        self.moduleend()
        
        self.modulebegin(self.name,tx,ty,tz)
        self.moduleaddcode('difference(){'+outobject+inobject+'}')
        self.moduleend()
        
        self.setoutputplugvalue('object',       self.modulename(self.name))
        self.setoutputplugvalue('outobject',    self.modulename(self.name+'_outobject'))
        self.setoutputplugvalue('holeobject',   self.modulename(self.name+'_inobject'))
        
        return
