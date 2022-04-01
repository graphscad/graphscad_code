# coding: utf8
# from __future__ import unicode_literals

import core as gc


class Node_box(gc.Dagnode):

    def getcomment(self):
        return 'Create an empty box'

    def getdisplaytype(self):
        return 'object'

    def getinputplugs(self):
        return [
                {'name': 'sizex', 'value': '1', 'type': 'str','tip':'x size of box'},
                {'name': 'sizey', 'value': '1', 'type': 'str','tip':'y size of box'},
                {'name': 'sizez', 'value': '1', 'type': 'str','tip':'z size of box'},
                {'name': 'tx', 'value': '0', 'type': 'str','tip':'x translation of box'},
                {'name': 'ty', 'value': '0', 'type': 'str','tip':'y translation of box'},
                {'name': 'tz', 'value': '0', 'type': 'str','tip':'z translation of box'},
                {'name': 'rounding', 'value': '0.1', 'type': 'str','tip':'radius of corner rounding'},
                {'name': 'tickness', 'value': '0.1', 'type': 'str','alias':'thickness','tip':'thickness of box'},
                {'name': 'interiorheight', 'value': '0.05', 'type': 'str','tip':'the thickness of the bottom of the box'},
                {'name': '$fn', 'value': '16', 'type': 'str'},
                {'name': 'center', 'value': 'false', 'type': 'str','combo' : ['true','false']}
                ]

    def getoutputplugs(self):
        return [
            {'name': 'object', 'value': '', 'type': 'object','tip':'output 3D object'},
            {'name': 'outobject', 'value': '', 'type': 'object'},
            {'name': 'holeobject', 'value': '', 'type': 'object','alias':'inobject'}
            ]


    def evaluate(self):
        x = self.getinputplugvalue('sizex')
        y = self.getinputplugvalue('sizey')
        z = self.getinputplugvalue('sizez')
        tx = self.getinputplugvalue('tx')
        ty = self.getinputplugvalue('ty')
        tz = self.getinputplugvalue('tz')
        rounding = self.getinputplugvalue('rounding')
        tickness = self.getinputplugvalue('tickness')
        introunding = '(('+rounding+')-('+tickness+'))'
        interiorheight = self.getinputplugvalue('interiorheight')
        fn = self.getinputplugvalue('$fn')
        if fn=='':
            fn='(16+'+rounding+'*3.14116)'
            gs=self.getdag()
            gsn=gs.findnodebytype('Node_globalsettings')
            if gsn is not None:
                nfn=gsn.getinputplugvalue('$fn')
                if nfn!='':
                    fn=nfn
        
        
        center = self.getinputplugvalue('center')


        xx='(('+x+')/2)' 
        yy='(('+y+')/2)' 
        zz='('+z+')' 
   
        xo='(('+xx+')-(max('+rounding+',0.00001)))'
        yo='(('+yy+')-(max('+rounding+',0.00001)))'
        zo=zz;
        

        xi='(('+xx+')-((max('+rounding+',0.00001))+('+tickness+')))'
        yi='(('+yy+')-((max('+rounding+',0.00001))+('+tickness+')))'
        zi='(('+zz+')-('+interiorheight+')+0.01)'


        outobject=''
        if center=='false':
            outobject=outobject+'translate([ '+xx+', '+yy+',0])'
        outobject=outobject+'hull()'
        outobject=outobject+'{'        
        outobject=outobject+'translate([-'+xo+',-'+yo+',0]) cylinder(r=max('+rounding+',0.00001),h='+zo+',$fn='+fn+');'
        outobject=outobject+'translate([-'+xo+', '+yo+',0]) cylinder(r=max('+rounding+',0.00001),h='+zo+',$fn='+fn+');'
        outobject=outobject+'translate([ '+xo+',-'+yo+',0]) cylinder(r=max('+rounding+',0.00001),h='+zo+',$fn='+fn+');'
        outobject=outobject+'translate([ '+xo+', '+yo+',0]) cylinder(r=max('+rounding+',0.00001),h='+zo+',$fn='+fn+');'
        outobject=outobject+'}'        

        holeobject=''
        if center=='false':
            holeobject=holeobject+'translate([ '+xx+', '+yy+',0])'
        holeobject=holeobject+'translate([ 0,0,'+interiorheight+'])'
        holeobject=holeobject+'hull()'
        holeobject=holeobject+'{'        
        holeobject=holeobject+'translate([-'+xi+',-'+yi+',0]) cylinder(r=max('+introunding+',0.00001),h='+zi+',$fn='+fn+');'
        holeobject=holeobject+'translate([-'+xi+', '+yi+',0]) cylinder(r=max('+introunding+',0.00001),h='+zi+',$fn='+fn+');'
        holeobject=holeobject+'translate([ '+xi+',-'+yi+',0]) cylinder(r=max('+introunding+',0.00001),h='+zi+',$fn='+fn+');'
        holeobject=holeobject+'translate([ '+xi+', '+yi+',0]) cylinder(r=max('+introunding+',0.00001),h='+zi+',$fn='+fn+');'
        holeobject=holeobject+'}'        
        

 
        self.modulebegin(self.name+'_outobject',tx,ty,tz)
        self.moduleaddcode(outobject)
        self.moduleend()

        self.modulebegin(self.name+'_inobject',tx,ty,tz)
        self.moduleaddcode(holeobject)
        self.moduleend()
        
        self.modulebegin(self.name,tx,ty,tz)
        self.moduleaddcode('difference(){{'+outobject+'}{'+holeobject+'}}')
        self.moduleend()
        
        self.setoutputplugvalue('object',       self.modulename(self.name))
        self.setoutputplugvalue('outobject',    self.modulename(self.name+'_outobject'))
        self.setoutputplugvalue('holeobject',   self.modulename(self.name+'_inobject'))
        return

