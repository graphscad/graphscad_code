//------------------------------------------------------------------------------------------
// THIS CODE WAS GENERATED WITH GRAPHSCAD
// IF U LIKE GRAPHSCAD PLEASE DONATE//------------------------------------------------------------------------------------------
// D:/workspace/graphscad/graphscadfiles/minibrushless2.scad
//------------------------------------------------------------------------------------------
// Graphscad is a graphical nodal editor to create .SCAD files
//
// More info here : http://graphscad.free.fr
//
// Scad Files created with Graphscad can be edited by graphscad
// Scad Files created with Graphscad can be read by Openscad
//
//------------------------------------------------------------------------------------------
$assembled=false;
$debug=false;
/*------------------- Headers --------------------------------*/
use <br0703.scad>
/*------------------- declared modules --------------------------------*/
module mymodule(prop_size=58,motorradius=5,intradius=10,motorbaseheight=1.5,motorheight=10,armheight=3,armthickness=3,basexsize=20,baseysize=20)
{
 function halfpropsize()=prop_size/2;
 function node_boolean1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean2_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   node_boolean2(i,j,k,l,m,n);
   node_rotate5(i,j,k,l,m,n);
  }
 }
 function node_boolean2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_boolean0(i,j,k,l,m,n);
   node_boolean(i,j,k,l,m,n);
   node_ifdebug0(i,j,k,l,m,n);
   node_rotate4(i,j,k,l,m,n);
  }
 }
 function node_boolean0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_for_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   node_for(i,j,k,l,m,n);
   node_for0(i,j,k,l,m,n);
  }
 }
 function node_for_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[0:90:360])
  {
   node_rotate(i,j,k,l,m,n);
  }
 }
 function node_rotate_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,i])*node_hull_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,i])node_hull(i,j,k,l,m,n);
 }
 function node_hull_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_cylinder_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_hull(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  hull()
  {
   node_cylinder(i,j,k,l,m,n);
   node_cylinder0(i,j,k,l,m,n);
  }
 }
 function node_cylinder_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_cylinder(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  cylinder(r=intradius+1+armthickness,r1=intradius+1+armthickness,h=armheight,center=false,$fn=(16+intradius+1+armthickness*3.14116));
 }
 function node_cylinder0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([halfpropsize(),halfpropsize(),0]);
 module node_cylinder0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([halfpropsize(),halfpropsize(),0])cylinder(r=motorradius+1.5+armthickness,r1=motorradius+1.5+armthickness,h=armheight,center=false,$fn=(16+motorradius+1.5+armthickness*3.14116));
 }
 function node_for0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[0:90:360])
  {
   node_rotate0(i,j,k,l,m,n);
  }
 }
 function node_rotate0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,i])*node_hull0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,i])node_hull0(i,j,k,l,m,n);
 }
 function node_hull0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_cylinder2_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_hull0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  hull()
  {
   node_cylinder2(i,j,k,l,m,n);
   node_cylinder3(i,j,k,l,m,n);
  }
 }
 function node_cylinder2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,-0.5]);
 module node_cylinder2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,-0.5])cylinder(r=intradius+1,r1=intradius+1,h=armheight+1,center=false,$fn=(16+intradius+1*3.14116));
 }
 function node_cylinder3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([halfpropsize(),halfpropsize(),-0.5]);
 module node_cylinder3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([halfpropsize(),halfpropsize(),-0.5])cylinder(r=motorradius+1.5,r1=motorradius+1.5,h=armheight+1,center=false,$fn=(16+motorradius+1.5*3.14116));
 }
 function node_boolean_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_for3_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   node_for3(i,j,k,l,m,n);
   node_for1(i,j,k,l,m,n);
  }
 }
 function node_for3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate3_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[0:90:360])
  {
   node_rotate3(i,j,k,l,m,n);
  }
 }
 function node_rotate3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,i])*node_boolean3_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,i])node_boolean3(i,j,k,l,m,n);
 }
 function node_boolean3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_cylinder1_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_cylinder1(i,j,k,l,m,n);
   node_boolean4(i,j,k,l,m,n);
  }
 }
 function node_cylinder1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([halfpropsize(),halfpropsize(),0]);
 module node_cylinder1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([halfpropsize(),halfpropsize(),0])cylinder(r=motorradius+2.5,r1=motorradius+2.5,h=motorbaseheight,center=false,$fn=(16+motorradius+2.5*3.14116));
 }
 function node_boolean4_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_tube_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean4(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   node_tube(i,j,k,l,m,n);
   node_cube(i,j,k,l,m,n);
  }
 }
 function node_tube_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([halfpropsize(),halfpropsize(),0]);
 module node_tube_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([halfpropsize(),halfpropsize(),0]) cylinder(r=motorradius+2.5,r1=motorradius+2.5,h=10,$fn=(16+motorradius+2.5*3.14116));
 }
 function node_tube_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([halfpropsize(),halfpropsize(),0]);
 module node_tube_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([halfpropsize(),halfpropsize(),0])translate([0,0,-(0.001)]) cylinder(r=motorradius+2.5-(1),r1=motorradius+2.5-(1),h=10+((0.001)*2),$fn=(16+motorradius+2.5*3.14116));
 }
 function node_tube_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([halfpropsize(),halfpropsize(),0]);
 module node_tube(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([halfpropsize(),halfpropsize(),0])difference()
  {
    cylinder(r=motorradius+2.5,r1=motorradius+2.5,h=10,$fn=(16+motorradius+2.5*3.14116));
   translate([0,0,-(0.001)]) cylinder(r=motorradius+2.5-(1),r1=motorradius+2.5-(1),h=10+((0.001)*2),$fn=(16+motorradius+2.5*3.14116));
  }
 }
 function node_cube_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_cube(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  cube([halfpropsize(),halfpropsize(),100],center=false);
 }
 function node_for1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate1_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[0:90:360])
  {
   node_rotate1(i,j,k,l,m,n);
  }
 }
 function node_rotate1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,i])*node_translate_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,i])node_translate(i,j,k,l,m,n);
 }
 function node_translate_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([halfpropsize(),halfpropsize(),0])*node_callmodule0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([halfpropsize(),halfpropsize(),0])node_callmodule0(i,j,k,l,m,n);
 }
 function node_callmodule0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_callmodule0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  br0703(1);
 }
 function node_ifdebug0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_ifdebug_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_ifdebug0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  if($debug)
  {
   node_ifdebug(i,j,k,l,m,n);
  }
   else
  {
   {
   }
  }
 }
 function node_ifdebug_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_for2_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_ifdebug(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  if($debug)
  {
   node_for2(i,j,k,l,m,n);
  }
   else
  {
   {
   }
  }
 }
 function node_for2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate2_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[0:90:360])
  {
   node_rotate2(i,j,k,l,m,n);
  }
 }
 function node_rotate2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,i])*node_boolean5_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,i])node_boolean5(i,j,k,l,m,n);
 }
 function node_boolean5_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_color_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean5(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_color(i,j,k,l,m,n);
   node_color0(i,j,k,l,m,n);
  }
 }
 function node_color_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_callmodule_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_color(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  {
   color([1.0,0.133333333333,0.392156862745,0.5])node_callmodule(i,j,k,l,m,n);
  }
 }
 function node_callmodule_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([prop_size/2,prop_size/2,motorbaseheight]);
 module node_callmodule(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([prop_size/2,prop_size/2,motorbaseheight])br0703();
 }
 function node_color0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_tube0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_color0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  {
   color([0,1,0,1])node_tube0(i,j,k,l,m,n);
  }
 }
 function node_tube0_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([prop_size/2,prop_size/2,motorheight+2]);
 module node_tube0_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([prop_size/2,prop_size/2,motorheight+2]) cylinder(r=prop_size/2,r1=prop_size/2,h=0.1,$fn=(16+prop_size/2*3.14116));
 }
 function node_tube0_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([prop_size/2,prop_size/2,motorheight+2]);
 module node_tube0_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([prop_size/2,prop_size/2,motorheight+2])translate([0,0,-(0.001)]) cylinder(r=prop_size/2-(1),r1=prop_size/2-(1),h=0.1+((0.001)*2),$fn=(16+prop_size/2*3.14116));
 }
 function node_tube0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([prop_size/2,prop_size/2,motorheight+2]);
 module node_tube0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([prop_size/2,prop_size/2,motorheight+2])difference()
  {
    cylinder(r=prop_size/2,r1=prop_size/2,h=0.1,$fn=(16+prop_size/2*3.14116));
   translate([0,0,-(0.001)]) cylinder(r=prop_size/2-(1),r1=prop_size/2-(1),h=0.1+((0.001)*2),$fn=(16+prop_size/2*3.14116));
  }
 }
 function node_rotate4_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,45])*node_box_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate4(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,45])node_box(i,j,k,l,m,n);
 }
 function node_box_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_box_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  hull()
  {
   translate([-((((basexsize+armthickness*2)/2))-(max(0,0.00001))),-((((baseysize+armthickness*2)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(armheight),$fn=16);
   translate([-((((basexsize+armthickness*2)/2))-(max(0,0.00001))), ((((baseysize+armthickness*2)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(armheight),$fn=16);
   translate([ ((((basexsize+armthickness*2)/2))-(max(0,0.00001))),-((((baseysize+armthickness*2)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(armheight),$fn=16);
   translate([ ((((basexsize+armthickness*2)/2))-(max(0,0.00001))), ((((baseysize+armthickness*2)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(armheight),$fn=16);
  }
 }
 function node_box_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_box_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([ 0,0,0.5])hull()
  {
   translate([-((((basexsize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),-((((baseysize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),0]) cylinder(r=max(((0)-(armthickness)),0.00001),h=(((armheight))-(0.5)+0.01),$fn=16);
   translate([-((((basexsize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))), ((((baseysize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),0]) cylinder(r=max(((0)-(armthickness)),0.00001),h=(((armheight))-(0.5)+0.01),$fn=16);
   translate([ ((((basexsize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),-((((baseysize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),0]) cylinder(r=max(((0)-(armthickness)),0.00001),h=(((armheight))-(0.5)+0.01),$fn=16);
   translate([ ((((basexsize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))), ((((baseysize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),0]) cylinder(r=max(((0)-(armthickness)),0.00001),h=(((armheight))-(0.5)+0.01),$fn=16);
  }
 }
 function node_box_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_box(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   {
    hull()
    {
     translate([-((((basexsize+armthickness*2)/2))-(max(0,0.00001))),-((((baseysize+armthickness*2)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(armheight),$fn=16);
     translate([-((((basexsize+armthickness*2)/2))-(max(0,0.00001))), ((((baseysize+armthickness*2)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(armheight),$fn=16);
     translate([ ((((basexsize+armthickness*2)/2))-(max(0,0.00001))),-((((baseysize+armthickness*2)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(armheight),$fn=16);
     translate([ ((((basexsize+armthickness*2)/2))-(max(0,0.00001))), ((((baseysize+armthickness*2)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(armheight),$fn=16);
    }
   }
   {
    translate([ 0,0,0.5])hull()
    {
     translate([-((((basexsize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),-((((baseysize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),0]) cylinder(r=max(((0)-(armthickness)),0.00001),h=(((armheight))-(0.5)+0.01),$fn=16);
     translate([-((((basexsize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))), ((((baseysize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),0]) cylinder(r=max(((0)-(armthickness)),0.00001),h=(((armheight))-(0.5)+0.01),$fn=16);
     translate([ ((((basexsize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),-((((baseysize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),0]) cylinder(r=max(((0)-(armthickness)),0.00001),h=(((armheight))-(0.5)+0.01),$fn=16);
     translate([ ((((basexsize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))), ((((baseysize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),0]) cylinder(r=max(((0)-(armthickness)),0.00001),h=(((armheight))-(0.5)+0.01),$fn=16);
    }
   }
  }
 }
 function node_rotate5_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,45])*node_box_inobject_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate5(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,45])node_box_inobject(i,j,k,l,m,n);
 }
 function node_box_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_box_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  hull()
  {
   translate([-((((basexsize+armthickness*2)/2))-(max(0,0.00001))),-((((baseysize+armthickness*2)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(armheight),$fn=16);
   translate([-((((basexsize+armthickness*2)/2))-(max(0,0.00001))), ((((baseysize+armthickness*2)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(armheight),$fn=16);
   translate([ ((((basexsize+armthickness*2)/2))-(max(0,0.00001))),-((((baseysize+armthickness*2)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(armheight),$fn=16);
   translate([ ((((basexsize+armthickness*2)/2))-(max(0,0.00001))), ((((baseysize+armthickness*2)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(armheight),$fn=16);
  }
 }
 function node_box_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_box_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([ 0,0,0.5])hull()
  {
   translate([-((((basexsize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),-((((baseysize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),0]) cylinder(r=max(((0)-(armthickness)),0.00001),h=(((armheight))-(0.5)+0.01),$fn=16);
   translate([-((((basexsize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))), ((((baseysize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),0]) cylinder(r=max(((0)-(armthickness)),0.00001),h=(((armheight))-(0.5)+0.01),$fn=16);
   translate([ ((((basexsize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),-((((baseysize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),0]) cylinder(r=max(((0)-(armthickness)),0.00001),h=(((armheight))-(0.5)+0.01),$fn=16);
   translate([ ((((basexsize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))), ((((baseysize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),0]) cylinder(r=max(((0)-(armthickness)),0.00001),h=(((armheight))-(0.5)+0.01),$fn=16);
  }
 }
 function node_box_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_box(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   {
    hull()
    {
     translate([-((((basexsize+armthickness*2)/2))-(max(0,0.00001))),-((((baseysize+armthickness*2)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(armheight),$fn=16);
     translate([-((((basexsize+armthickness*2)/2))-(max(0,0.00001))), ((((baseysize+armthickness*2)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(armheight),$fn=16);
     translate([ ((((basexsize+armthickness*2)/2))-(max(0,0.00001))),-((((baseysize+armthickness*2)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(armheight),$fn=16);
     translate([ ((((basexsize+armthickness*2)/2))-(max(0,0.00001))), ((((baseysize+armthickness*2)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(armheight),$fn=16);
    }
   }
   {
    translate([ 0,0,0.5])hull()
    {
     translate([-((((basexsize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),-((((baseysize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),0]) cylinder(r=max(((0)-(armthickness)),0.00001),h=(((armheight))-(0.5)+0.01),$fn=16);
     translate([-((((basexsize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))), ((((baseysize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),0]) cylinder(r=max(((0)-(armthickness)),0.00001),h=(((armheight))-(0.5)+0.01),$fn=16);
     translate([ ((((basexsize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),-((((baseysize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),0]) cylinder(r=max(((0)-(armthickness)),0.00001),h=(((armheight))-(0.5)+0.01),$fn=16);
     translate([ ((((basexsize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))), ((((baseysize+armthickness*2)/2))-((max(0,0.00001))+(armthickness))),0]) cylinder(r=max(((0)-(armthickness)),0.00001),h=(((armheight))-(0.5)+0.01),$fn=16);
    }
   }
  }
 }
 node_boolean1();
}
mymodule();
/*------------------- Other Headers --------------------------------*/
/*------------------- default module --------------------------------*/
/* force parameters for default module if they are connected to declaremodule */
prop_size=58;
motorradius=5;
armheight=3;
motorbaseheight=1.5;
armthickness=3;
intradius=10;
motorheight=10;
basexsize=20;
baseysize=20;
/* force functions for default module if they are connected to declaremodule */
function halfpropsize()=prop_size/2;
module minibrushless2()
{
 /*------------------- isolated output objects --------------------------------*/
 /*------------------- final objects output --------------------------------*/
}
minibrushless2();
/*--------------------------------------------------------------------------------------------------------
 Graphscad Utils functions
 This code is Used By Graphscad Nodal Editor to generate SCAD files
--------------------------------------------------------------------------------------------------------*/
function det4x4(a) =
a[0][0]*a[1][1]*a[2][2]*a[3][3] + a[0][0]*a[1][2]*a[2][3]*a[3][1] + a[0][0]*a[1][3]*a[2][1]*a[3][2]
+ a[0][1]*a[1][0]*a[2][3]*a[3][2] + a[0][1]*a[1][2]*a[2][0]*a[3][3] + a[0][1]*a[1][3]*a[2][2]*a[3][0]
+ a[0][2]*a[1][0]*a[2][1]*a[3][3] + a[0][2]*a[1][1]*a[2][3]*a[3][0] + a[0][2]*a[1][3]*a[2][0]*a[3][1]
+ a[0][3]*a[1][0]*a[2][2]*a[3][1] + a[0][3]*a[1][1]*a[2][0]*a[3][2] + a[0][3]*a[1][2]*a[2][1]*a[3][0]
- a[0][0]*a[1][1]*a[2][3]*a[3][2] - a[0][0]*a[1][2]*a[2][1]*a[3][3] - a[0][0]*a[1][3]*a[2][2]*a[3][1]
- a[0][1]*a[1][0]*a[2][2]*a[3][3] - a[0][1]*a[1][2]*a[2][3]*a[3][0] - a[0][1]*a[1][3]*a[2][0]*a[3][2]
- a[0][2]*a[1][0]*a[2][3]*a[3][1] - a[0][2]*a[1][1]*a[2][0]*a[3][3] - a[0][2]*a[1][3]*a[2][1]*a[3][0]
- a[0][3]*a[1][0]*a[2][1]*a[3][2] - a[0][3]*a[1][1]*a[2][2]*a[3][0] - a[0][3]*a[1][2]*a[2][0]*a[3][1];
function invb00(a) = a[1][1]*a[2][2]*a[3][3] + a[1][2]*a[2][3]*a[3][1] + a[1][3]*a[2][1]*a[3][2] - a[1][1]*a[2][3]*a[3][2] - a[1][2]*a[2][1]*a[3][3] - a[1][3]*a[2][2]*a[3][1];
function invb01(a) = a[0][1]*a[2][3]*a[3][2] + a[0][2]*a[2][1]*a[3][3] + a[0][3]*a[2][2]*a[3][1] - a[0][1]*a[2][2]*a[3][3] - a[0][2]*a[2][3]*a[3][1] - a[0][3]*a[2][1]*a[3][2];
function invb02(a) = a[0][1]*a[1][2]*a[3][3] + a[0][2]*a[1][3]*a[3][1] + a[0][3]*a[1][1]*a[3][2] - a[0][1]*a[1][3]*a[3][2] - a[0][2]*a[1][1]*a[3][3] - a[0][3]*a[1][2]*a[3][1];
function invb03(a) = a[0][1]*a[1][3]*a[2][2] + a[0][2]*a[1][1]*a[2][3] + a[0][3]*a[1][2]*a[2][1] - a[0][1]*a[1][2]*a[2][3] - a[0][2]*a[1][3]*a[2][1] - a[0][3]*a[1][1]*a[2][2];
function invb10(a) = a[1][0]*a[2][3]*a[3][2] + a[1][2]*a[2][0]*a[3][3] + a[1][3]*a[2][2]*a[3][0] - a[1][0]*a[2][2]*a[3][3] - a[1][2]*a[2][3]*a[3][0] - a[1][3]*a[2][0]*a[3][2];
function invb11(a) = a[0][0]*a[2][2]*a[3][3] + a[0][2]*a[2][3]*a[3][0] + a[0][3]*a[2][0]*a[3][2] - a[0][0]*a[2][3]*a[3][2] - a[0][2]*a[2][0]*a[3][3] - a[0][3]*a[2][2]*a[3][0];
function invb12(a) = a[0][0]*a[1][3]*a[3][2] + a[0][2]*a[1][0]*a[3][3] + a[0][3]*a[1][2]*a[3][0] - a[0][0]*a[1][2]*a[3][3] - a[0][2]*a[1][3]*a[3][0] - a[0][3]*a[1][0]*a[3][2];
function invb13(a) = a[0][0]*a[1][2]*a[2][3] + a[0][2]*a[1][3]*a[2][0] + a[0][3]*a[1][0]*a[2][2] - a[0][0]*a[1][3]*a[2][2] - a[0][2]*a[1][0]*a[2][3] - a[0][3]*a[1][2]*a[2][0];
function invb20(a) = a[1][0]*a[2][1]*a[3][3] + a[1][1]*a[2][3]*a[3][0] + a[1][3]*a[2][0]*a[3][1] - a[1][0]*a[2][3]*a[3][1] - a[1][1]*a[2][0]*a[3][3] - a[1][3]*a[2][1]*a[3][0];
function invb21(a) = a[0][0]*a[2][3]*a[3][1] + a[0][1]*a[2][0]*a[3][3] + a[0][3]*a[2][1]*a[3][0] - a[0][0]*a[2][1]*a[3][3] - a[0][1]*a[2][3]*a[3][0] - a[0][3]*a[2][0]*a[3][1];
function invb22(a) = a[0][0]*a[1][1]*a[3][3] + a[0][1]*a[1][3]*a[3][0] + a[0][3]*a[1][0]*a[3][1] - a[0][0]*a[1][3]*a[3][1] - a[0][1]*a[1][0]*a[3][3] - a[0][3]*a[1][1]*a[3][0];
function invb23(a) = a[0][0]*a[1][3]*a[2][1] + a[0][1]*a[1][0]*a[2][3] + a[0][3]*a[1][1]*a[2][0] - a[0][0]*a[1][1]*a[2][3] - a[0][1]*a[1][3]*a[2][0] - a[0][3]*a[1][0]*a[2][1];
function invb30(a) = a[1][0]*a[2][2]*a[3][1] + a[1][1]*a[2][0]*a[3][2] + a[1][2]*a[2][1]*a[3][0] - a[1][0]*a[2][1]*a[3][2] - a[1][1]*a[2][2]*a[3][0] - a[1][2]*a[2][0]*a[3][1];
function invb31(a) = a[0][0]*a[2][1]*a[3][2] + a[0][1]*a[2][2]*a[3][0] + a[0][2]*a[2][0]*a[3][1] - a[0][0]*a[2][2]*a[3][1] - a[0][1]*a[2][0]*a[3][2] - a[0][2]*a[2][1]*a[3][0];
function invb32(a) = a[0][0]*a[1][2]*a[3][1] + a[0][1]*a[1][0]*a[3][2] + a[0][2]*a[1][1]*a[3][0] - a[0][0]*a[1][1]*a[3][2] - a[0][1]*a[1][2]*a[3][0] - a[0][2]*a[1][0]*a[3][1];
function invb33(a) = a[0][0]*a[1][1]*a[2][2] + a[0][1]*a[1][2]*a[2][0] + a[0][2]*a[1][0]*a[2][1] - a[0][0]*a[1][2]*a[2][1] - a[0][1]*a[1][0]*a[2][2] - a[0][2]*a[1][1]*a[2][0];
function inv4x4(a)= (1/det4x4(a))*[
[invb00(a),invb01(a),invb02(a),invb03(a)],
[invb10(a),invb11(a),invb12(a),invb13(a)],
[invb20(a),invb21(a),invb22(a),invb23(a)],
[invb30(a),invb31(a),invb32(a),invb33(a)]];
function onlytranslate(a)=  [
                       [1,0,0,a[0][3]],
                       [0,1,0,a[1][3]],
                       [0,0,1,a[2][3]],
                       [0,0,0,1]];
function negonlytranslate(a)=[
                       [1,0,0,-a[0][3]],
                       [0,1,0,-a[1][3]],
                       [0,0,1,-a[2][3]],
                       [0,0,0,1]];
function lookatvec(t,parentmat) = [t[0]-parentmat[0][3],
                                t[1]-parentmat[1][3],
                                t[2]-parentmat[2][3]];
/*
             rx = '0'
             ry = 'acos('+tz+'/norm(['+tx+','+ty+','+tz+']))'
             rz = 'atan2('+ty+','+tx+')'
*/
function lookatrot(t,parentmat) = [0,
                                acos((t[2]-parentmat[2][3])/norm(lookatvec(t,parentmat))),
                                atan2(t[1]-parentmat[1][3],t[0]-parentmat[0][3])];
function gettranslation(m) = [m[0][3],m[1][3],m[2][3]];
function vectormulmatrix(v,m) = m*v;
function vectorlength(v) = norm(v);
function vectorx(v) = v[0];
function vectory(v) = v[1];
function vectorz(v) = v[2];
function vectoradd(a,b) = (a+b);
function vectorsub(a,b) = (a-b);
function vectormul(a,b) = (a*b);
function vectordiv(a,b) = (a*(1/b));
function scale(v)=[[v[0],0,0,0],
                   [0,v[1],0,0],
                   [0,0,v[2],0],
                   [0,0,0,1]];
function rotatex(a)=[[1,0,0,0],
                     [0,cos(a),-sin(a),0],
                     [0,sin(a),cos(a),0],
                     [0,0,0,1]];
function rotatey(a)=[[cos(a),0,sin(a),0],
                     [0,1,0,0],
                     [-sin(a),0,cos(a),0],
                     [0,0,0,1]];
function rotatez(a)=[[cos(a),-sin(a),0,0],
                     [sin(a),cos(a),0,0],
                     [0,0,1,0],
                     [0,0,0,1]];
function rotatea(c,s,l,m,n)=[[l*l*(1-c)+c,m*l*(1-c)-n*s,n*l*(1-c)+m*s,0],
                             [l*m*(1-c)+n*s,m*m*(1-c)+c,n*m*(1-c)-l*s,0],
                             [l*n*(1-c)-m*s,m*n*(1-c)+l*s,n*n*(1-c)+c,0],
                             [0,0,0,1]];
function rotateanv(a,nv)=rotatea(cos(a),sin(a),nv[0],nv[1],nv[2]);
function rotate(a,v, normV=true)=(v==undef)?rotatez(a[2])*rotatey(a[1])*rotatex(a[0]):
                     normV ? rotateanv(a,v/sqrt(v*v)) : rotateanv(a,v);
function translate(v)=[[1,0,0,v[0]],
                       [0,1,0,v[1]],
                       [0,0,1,v[2]],
                       [0,0,0,1]];
function mirrorabc(a,b,c)=[[1-2*a*a,-2*a*b,-2*a*c,0],
                           [-2*a*b,1-2*b*b,-2*b*c,0],
                           [-2*a*c,-2*b*c,1-2*c*c,0],
                           [0,0,0,1]];
function mirrornv(nv)=mirrorabc(nv[0],nv[1],nv[2]);
function mirror(v)=mirrornv(v/sqrt(v*v));


/*BEGINGRAPHSCAD{
    "nodes": [
        {
            "name": "node_cylinder",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "tip": "top radius of cynlinder",
                    "type": "str",
                    "name": "radius",
                    "value": "intradius+1+armthickness"
                },
                {
                    "alias": "bottom radius",
                    "tip": "bottom radius of cynlinder",
                    "type": "str",
                    "name": "radius2",
                    "value": ""
                },
                {
                    "tip": "height of cylinder",
                    "type": "str",
                    "name": "height",
                    "value": "armheight"
                },
                {
                    "tip": "centering of cylinder (on Z axis)",
                    "type": "str",
                    "name": "center",
                    "value": "false",
                    "combo": [
                        "true",
                        "false"
                    ]
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "tip": "y translation of output object",
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "tip": "z translation of output object",
                    "type": "str",
                    "name": "tz",
                    "value": "0"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "$fn",
                    "value": ""
                }
            ],
            "typename": "Node_cylinder",
            "version": 1,
            "y": -69.53417815576404,
            "x": -3761.2499514458905
        },
        {
            "name": "node_cylinder0",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "tip": "top radius of cynlinder",
                    "type": "str",
                    "name": "radius",
                    "value": "motorradius+1.5+armthickness"
                },
                {
                    "alias": "bottom radius",
                    "tip": "bottom radius of cynlinder",
                    "type": "str",
                    "name": "radius2",
                    "value": ""
                },
                {
                    "tip": "height of cylinder",
                    "type": "str",
                    "name": "height",
                    "value": "armheight"
                },
                {
                    "tip": "centering of cylinder (on Z axis)",
                    "type": "str",
                    "name": "center",
                    "value": "false",
                    "combo": [
                        "true",
                        "false"
                    ]
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "halfpropsize()"
                },
                {
                    "tip": "y translation of output object",
                    "type": "str",
                    "name": "ty",
                    "value": "halfpropsize()"
                },
                {
                    "tip": "z translation of output object",
                    "type": "str",
                    "name": "tz",
                    "value": "0"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "$fn",
                    "value": ""
                }
            ],
            "typename": "Node_cylinder",
            "version": 1,
            "y": 179.98459443651973,
            "x": -3759.508480243072
        },
        {
            "name": "node_param",
            "inputplugs": [
                {
                    "type": "param",
                    "name": "previousparam",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "name",
                    "value": "prop_size"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "58"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -49.07159749776656,
            "x": -3151.739646674252
        },
        {
            "name": "node_hull",
            "inputplugs": [
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "tip": "y translation of output object",
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "tip": "z translation of output object",
                    "type": "str",
                    "name": "tz",
                    "value": "0"
                },
                {
                    "tip": "first object used in hull operation",
                    "connection": "node_cylinder.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "connection": "node_cylinder0.object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object3",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object4",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object5",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object6",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object7",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object8",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object9",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object10",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object11",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object12",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object13",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object14",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object15",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object16",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object17",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object18",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object19",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object20",
                    "value": ""
                }
            ],
            "typename": "Node_hull",
            "version": 1,
            "y": 179.60130663059408,
            "x": -3415.7025533108445
        },
        {
            "name": "node_for",
            "inputplugs": [
                {
                    "tip": "input object",
                    "connection": "node_rotate.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "tip": "name of variable that will change during loop",
                    "type": "str",
                    "name": "variablename",
                    "value": "i",
                    "combo": [
                        "i",
                        "j",
                        "k",
                        "l",
                        "m",
                        "n"
                    ]
                },
                {
                    "tip": "start value of variable used in loop",
                    "type": "str",
                    "name": "start",
                    "value": "0"
                },
                {
                    "tip": "target value of variable used in loop",
                    "type": "str",
                    "name": "end",
                    "value": "360"
                },
                {
                    "tip": "increment of variable for each loop",
                    "type": "str",
                    "name": "step",
                    "value": "90"
                }
            ],
            "typename": "Node_for",
            "version": 1,
            "y": 242.25029605360874,
            "x": -2742.4466316094295
        },
        {
            "name": "node_rotate",
            "inputplugs": [
                {
                    "connection": "node_hull.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "rx",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "ry",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "rz",
                    "value": "i"
                },
                {
                    "type": "str",
                    "name": "space",
                    "value": "world",
                    "combo": [
                        "world",
                        "object",
                        "local"
                    ]
                }
            ],
            "typename": "Node_rotate",
            "version": 1,
            "y": 243.8465606564169,
            "x": -3068.705075058291
        },
        {
            "name": "node_param0",
            "inputplugs": [
                {
                    "connection": "node_param.nextparam",
                    "type": "param",
                    "name": "previousparam",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "name",
                    "value": "motorradius"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "5"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -50.72207550870053,
            "x": -2843.002809201781
        },
        {
            "name": "node_translate",
            "inputplugs": [
                {
                    "connection": "node_callmodule0.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "halfpropsize()"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "halfpropsize()"
                },
                {
                    "type": "str",
                    "name": "tz",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "space",
                    "value": "world",
                    "combo": [
                        "world",
                        "object",
                        "local"
                    ]
                }
            ],
            "typename": "Node_translate",
            "version": 1,
            "y": 1145.2865036453973,
            "x": -3271.200093494961
        },
        {
            "name": "node_for1",
            "inputplugs": [
                {
                    "tip": "input object",
                    "connection": "node_rotate1.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "tip": "name of variable that will change during loop",
                    "type": "str",
                    "name": "variablename",
                    "value": "i",
                    "combo": [
                        "i",
                        "j",
                        "k",
                        "l",
                        "m",
                        "n"
                    ]
                },
                {
                    "tip": "start value of variable used in loop",
                    "type": "str",
                    "name": "start",
                    "value": "0"
                },
                {
                    "tip": "target value of variable used in loop",
                    "type": "str",
                    "name": "end",
                    "value": "360"
                },
                {
                    "tip": "increment of variable for each loop",
                    "type": "str",
                    "name": "step",
                    "value": "90"
                }
            ],
            "typename": "Node_for",
            "version": 1,
            "y": 1135.8003688530116,
            "x": -2709.24381184053
        },
        {
            "name": "node_rotate1",
            "inputplugs": [
                {
                    "connection": "node_translate.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "rx",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "ry",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "rz",
                    "value": "i"
                },
                {
                    "type": "str",
                    "name": "space",
                    "value": "world",
                    "combo": [
                        "world",
                        "object",
                        "local"
                    ]
                }
            ],
            "typename": "Node_rotate",
            "version": 1,
            "y": 1136.692908030654,
            "x": -2977.096336501045
        },
        {
            "name": "node_boolean0",
            "inputplugs": [
                {
                    "type": "str",
                    "name": "op",
                    "value": "difference",
                    "combo": [
                        "difference",
                        "union",
                        "intersection"
                    ]
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "tip": "y translation of output object",
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "tip": "z translation of output object",
                    "type": "str",
                    "name": "tz",
                    "value": "0"
                },
                {
                    "tip": "First object in boolean operation",
                    "connection": "node_for.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_for0.object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object3",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object4",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object5",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object6",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object7",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object8",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object9",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object10",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object11",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object12",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object13",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object14",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object15",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object16",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object17",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object18",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object19",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object20",
                    "value": ""
                }
            ],
            "typename": "Node_boolean",
            "version": 1,
            "y": 502.5688016211335,
            "x": -2150.216611740265
        },
        {
            "name": "node_callmodule",
            "inputplugs": [
                {
                    "tip": "filename of module (a graphscad file .scad)",
                    "type": "filename",
                    "name": "filename",
                    "value": "br0703.scad"
                },
                {
                    "tip": "name of module",
                    "type": "str",
                    "name": "modulename",
                    "value": ""
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "prop_size/2"
                },
                {
                    "tip": "y translation of output object",
                    "type": "str",
                    "name": "ty",
                    "value": "prop_size/2"
                },
                {
                    "tip": "z translation of output object",
                    "type": "str",
                    "name": "tz",
                    "value": "motorbaseheight"
                },
                {
                    "alias": "holes",
                    "type": "str",
                    "name": "param1",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param2",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param3",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param4",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param5",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param6",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param7",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param8",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param9",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param10",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param11",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param12",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param13",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param14",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param15",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param16",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param17",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param18",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param19",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param20",
                    "value": ""
                }
            ],
            "typename": "Node_callmodule",
            "version": 1,
            "y": 1398.6358995343032,
            "x": -3726.572638449503
        },
        {
            "name": "node_rotate2",
            "inputplugs": [
                {
                    "connection": "node_boolean5.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "rx",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "ry",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "rz",
                    "value": "i"
                },
                {
                    "type": "str",
                    "name": "space",
                    "value": "world",
                    "combo": [
                        "world",
                        "object",
                        "local"
                    ]
                }
            ],
            "typename": "Node_rotate",
            "version": 1,
            "y": 1565.2040020770191,
            "x": -2684.146112457185
        },
        {
            "name": "node_for2",
            "inputplugs": [
                {
                    "tip": "input object",
                    "connection": "node_rotate2.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "tip": "name of variable that will change during loop",
                    "type": "str",
                    "name": "variablename",
                    "value": "i",
                    "combo": [
                        "i",
                        "j",
                        "k",
                        "l",
                        "m",
                        "n"
                    ]
                },
                {
                    "tip": "start value of variable used in loop",
                    "type": "str",
                    "name": "start",
                    "value": "0"
                },
                {
                    "tip": "target value of variable used in loop",
                    "type": "str",
                    "name": "end",
                    "value": "360"
                },
                {
                    "tip": "increment of variable for each loop",
                    "type": "str",
                    "name": "step",
                    "value": "90"
                }
            ],
            "typename": "Node_for",
            "version": 1,
            "y": 1485.7224893411026,
            "x": -2460.5167575193846
        },
        {
            "name": "node_color",
            "inputplugs": [
                {
                    "tip": "input 3D object",
                    "connection": "node_callmodule.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "name": "r",
                    "tip": "red  (expression or string from 0 to 1)",
                    "value": "1",
                    "alias": "red",
                    "connection": "node_rgbpicker.r",
                    "type": "str"
                },
                {
                    "name": "g",
                    "tip": "green  (expression or string from 0 to 1)",
                    "value": "1",
                    "alias": "green",
                    "connection": "node_rgbpicker.g",
                    "type": "str"
                },
                {
                    "name": "b",
                    "tip": "blue  (expression or string from 0 to 1)",
                    "value": "0",
                    "alias": "blue",
                    "connection": "node_rgbpicker.b",
                    "type": "str"
                },
                {
                    "alias": "alpha",
                    "tip": "alpha (expression or string from 0 to 1)",
                    "type": "str",
                    "name": "a",
                    "value": "0.5"
                }
            ],
            "typename": "Node_color",
            "version": 1,
            "y": 1483.5414233356698,
            "x": -3122.1157836593156
        },
        {
            "name": "node_rgbpicker",
            "inputplugs": [
                {
                    "name": "r",
                    "tip": "red  (expression or string from 0 to 1)",
                    "value": "255",
                    "alias": "red",
                    "hidden": true,
                    "type": "str"
                },
                {
                    "name": "g",
                    "tip": "green  (expression or string from 0 to 1)",
                    "value": "34",
                    "alias": "green",
                    "hidden": true,
                    "type": "str"
                },
                {
                    "name": "b",
                    "tip": "blue  (expression or string from 0 to 1)",
                    "value": "100",
                    "alias": "blue",
                    "hidden": true,
                    "type": "str"
                },
                {
                    "alias": "pick",
                    "tip": "pick color",
                    "type": "color",
                    "name": "color",
                    "value": "1"
                }
            ],
            "typename": "Node_rgbpicker",
            "version": 1,
            "y": 1596.8560250374733,
            "x": -3355.110975922573
        },
        {
            "name": "node_ifdebug",
            "inputplugs": [
                {
                    "name": "true",
                    "tip": "object to output if debug mode is ON",
                    "value": "",
                    "alias": "object if debug mode",
                    "connection": "node_for2.object",
                    "type": "object"
                },
                {
                    "alias": "object if not debug mode",
                    "tip": "object to output if debug mode  is OFF",
                    "type": "object",
                    "name": "false",
                    "value": ""
                }
            ],
            "typename": "Node_ifdebug",
            "version": 1,
            "y": 1513.3384870658758,
            "x": -2261.5393181900326
        },
        {
            "name": "node_callmodule0",
            "inputplugs": [
                {
                    "tip": "filename of module (a graphscad file .scad)",
                    "type": "filename",
                    "name": "filename",
                    "value": "br0703.scad"
                },
                {
                    "tip": "name of module",
                    "type": "str",
                    "name": "modulename",
                    "value": ""
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "tip": "y translation of output object",
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "tip": "z translation of output object",
                    "type": "str",
                    "name": "tz",
                    "value": "0"
                },
                {
                    "alias": "holes",
                    "type": "str",
                    "name": "param1",
                    "value": "1"
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param2",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param3",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param4",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param5",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param6",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param7",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param8",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param9",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param10",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param11",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param12",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param13",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param14",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param15",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param16",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param17",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param18",
                    "value": ""
                },
                {
                    "alias": "",
                    "type": "str",
                    "name": "param19",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param20",
                    "value": ""
                }
            ],
            "typename": "Node_callmodule",
            "version": 1,
            "y": 1137.1460466078638,
            "x": -3604.2653285180513
        },
        {
            "name": "node_param1",
            "inputplugs": [
                {
                    "connection": "node_param5.nextparam",
                    "type": "param",
                    "name": "previousparam",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "name",
                    "value": "armheight"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "3"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": 270.8090980011033,
            "x": -1770.1668210143225
        },
        {
            "name": "node_param2",
            "inputplugs": [
                {
                    "connection": "node_param4.nextparam",
                    "type": "param",
                    "name": "previousparam",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "name",
                    "value": "motorbaseheight"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "1.5"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": 23.592212129189647,
            "x": -2317.1010223619814
        },
        {
            "name": "node_cylinder1",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "tip": "top radius of cynlinder",
                    "type": "str",
                    "name": "radius",
                    "value": "motorradius+2.5"
                },
                {
                    "alias": "bottom radius",
                    "tip": "bottom radius of cynlinder",
                    "type": "str",
                    "name": "radius2",
                    "value": ""
                },
                {
                    "tip": "height of cylinder",
                    "type": "str",
                    "name": "height",
                    "value": "motorbaseheight"
                },
                {
                    "tip": "centering of cylinder (on Z axis)",
                    "type": "str",
                    "name": "center",
                    "value": "false",
                    "combo": [
                        "true",
                        "false"
                    ]
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "halfpropsize()"
                },
                {
                    "tip": "y translation of output object",
                    "type": "str",
                    "name": "ty",
                    "value": "halfpropsize()"
                },
                {
                    "tip": "z translation of output object",
                    "type": "str",
                    "name": "tz",
                    "value": "0"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "$fn",
                    "value": ""
                }
            ],
            "typename": "Node_cylinder",
            "version": 1,
            "y": 682.3187745460015,
            "x": -3468.1563720237646
        },
        {
            "name": "node_cylinder2",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "tip": "top radius of cynlinder",
                    "type": "str",
                    "name": "radius",
                    "value": "intradius+1"
                },
                {
                    "alias": "bottom radius",
                    "tip": "bottom radius of cynlinder",
                    "type": "str",
                    "name": "radius2",
                    "value": ""
                },
                {
                    "tip": "height of cylinder",
                    "type": "str",
                    "name": "height",
                    "value": "armheight+1"
                },
                {
                    "tip": "centering of cylinder (on Z axis)",
                    "type": "str",
                    "name": "center",
                    "value": "false",
                    "combo": [
                        "true",
                        "false"
                    ]
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "tip": "y translation of output object",
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "tip": "z translation of output object",
                    "type": "str",
                    "name": "tz",
                    "value": "-0.5"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "$fn",
                    "value": ""
                }
            ],
            "typename": "Node_cylinder",
            "version": 1,
            "y": 432.8221952304025,
            "x": -3788.5438511827597
        },
        {
            "name": "node_cylinder3",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "tip": "top radius of cynlinder",
                    "type": "str",
                    "name": "radius",
                    "value": "motorradius+1.5"
                },
                {
                    "alias": "bottom radius",
                    "tip": "bottom radius of cynlinder",
                    "type": "str",
                    "name": "radius2",
                    "value": ""
                },
                {
                    "tip": "height of cylinder",
                    "type": "str",
                    "name": "height",
                    "value": "armheight+1"
                },
                {
                    "tip": "centering of cylinder (on Z axis)",
                    "type": "str",
                    "name": "center",
                    "value": "false",
                    "combo": [
                        "true",
                        "false"
                    ]
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "halfpropsize()"
                },
                {
                    "tip": "y translation of output object",
                    "type": "str",
                    "name": "ty",
                    "value": "halfpropsize()"
                },
                {
                    "tip": "z translation of output object",
                    "type": "str",
                    "name": "tz",
                    "value": "-0.5"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "$fn",
                    "value": ""
                }
            ],
            "typename": "Node_cylinder",
            "version": 1,
            "y": 670.8821878753124,
            "x": -3799.534357699238
        },
        {
            "name": "node_hull0",
            "inputplugs": [
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "tip": "y translation of output object",
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "tip": "z translation of output object",
                    "type": "str",
                    "name": "tz",
                    "value": "0"
                },
                {
                    "tip": "first object used in hull operation",
                    "connection": "node_cylinder2.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "connection": "node_cylinder3.object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object3",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object4",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object5",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object6",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object7",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object8",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object9",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object10",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object11",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object12",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object13",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object14",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object15",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object16",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object17",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object18",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object19",
                    "value": ""
                },
                {
                    "type": "object",
                    "name": "object20",
                    "value": ""
                }
            ],
            "typename": "Node_hull",
            "version": 1,
            "y": 463.6286151707973,
            "x": -3395.261973617451
        },
        {
            "name": "node_rotate0",
            "inputplugs": [
                {
                    "connection": "node_hull0.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "rx",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "ry",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "rz",
                    "value": "i"
                },
                {
                    "type": "str",
                    "name": "space",
                    "value": "world",
                    "combo": [
                        "world",
                        "object",
                        "local"
                    ]
                }
            ],
            "typename": "Node_rotate",
            "version": 1,
            "y": 464.19863465834646,
            "x": -3041.0919477847765
        },
        {
            "name": "node_for0",
            "inputplugs": [
                {
                    "tip": "input object",
                    "connection": "node_rotate0.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "tip": "name of variable that will change during loop",
                    "type": "str",
                    "name": "variablename",
                    "value": "i",
                    "combo": [
                        "i",
                        "j",
                        "k",
                        "l",
                        "m",
                        "n"
                    ]
                },
                {
                    "tip": "start value of variable used in loop",
                    "type": "str",
                    "name": "start",
                    "value": "0"
                },
                {
                    "tip": "target value of variable used in loop",
                    "type": "str",
                    "name": "end",
                    "value": "360"
                },
                {
                    "tip": "increment of variable for each loop",
                    "type": "str",
                    "name": "step",
                    "value": "90"
                }
            ],
            "typename": "Node_for",
            "version": 1,
            "y": 459.5369455000955,
            "x": -2734.0790290223267
        },
        {
            "name": "node_param3",
            "inputplugs": [
                {
                    "connection": "node_param1.nextparam",
                    "type": "param",
                    "name": "previousparam",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "name",
                    "value": "armthickness"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "3"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": 286.1603358194595,
            "x": -1492.7091247486164
        },
        {
            "name": "node_param4",
            "inputplugs": [
                {
                    "connection": "node_param0.nextparam",
                    "type": "param",
                    "name": "previousparam",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "name",
                    "value": "intradius"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "10"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -59.81910483645788,
            "x": -2568.491654510909
        },
        {
            "name": "node_rotate3",
            "inputplugs": [
                {
                    "connection": "node_boolean3.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "rx",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "ry",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "rz",
                    "value": "i"
                },
                {
                    "type": "str",
                    "name": "space",
                    "value": "world",
                    "combo": [
                        "world",
                        "object",
                        "local"
                    ]
                }
            ],
            "typename": "Node_rotate",
            "version": 1,
            "y": 785.2982469034625,
            "x": -3055.55175836566
        },
        {
            "name": "node_for3",
            "inputplugs": [
                {
                    "tip": "input object",
                    "connection": "node_rotate3.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "tip": "name of variable that will change during loop",
                    "type": "str",
                    "name": "variablename",
                    "value": "i",
                    "combo": [
                        "i",
                        "j",
                        "k",
                        "l",
                        "m",
                        "n"
                    ]
                },
                {
                    "tip": "start value of variable used in loop",
                    "type": "str",
                    "name": "start",
                    "value": "0"
                },
                {
                    "tip": "target value of variable used in loop",
                    "type": "str",
                    "name": "end",
                    "value": "360"
                },
                {
                    "tip": "increment of variable for each loop",
                    "type": "str",
                    "name": "step",
                    "value": "90"
                }
            ],
            "typename": "Node_for",
            "version": 1,
            "y": 784.339422521678,
            "x": -2702.770925730165
        },
        {
            "name": "node_boolean",
            "inputplugs": [
                {
                    "type": "str",
                    "name": "op",
                    "value": "difference",
                    "combo": [
                        "difference",
                        "union",
                        "intersection"
                    ]
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "tip": "y translation of output object",
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "tip": "z translation of output object",
                    "type": "str",
                    "name": "tz",
                    "value": "0"
                },
                {
                    "tip": "First object in boolean operation",
                    "connection": "node_for3.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_for1.object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object3",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object4",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object5",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object6",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object7",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object8",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object9",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object10",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object11",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object12",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object13",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object14",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object15",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object16",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object17",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object18",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object19",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object20",
                    "value": ""
                }
            ],
            "typename": "Node_boolean",
            "version": 1,
            "y": 876.652422942424,
            "x": -2154.3706653760673
        },
        {
            "name": "node_box",
            "inputplugs": [
                {
                    "tip": "x size of box",
                    "type": "str",
                    "name": "sizex",
                    "value": "basexsize+armthickness*2"
                },
                {
                    "tip": "y size of box",
                    "type": "str",
                    "name": "sizey",
                    "value": "baseysize+armthickness*2"
                },
                {
                    "tip": "z size of box",
                    "type": "str",
                    "name": "sizez",
                    "value": "armheight"
                },
                {
                    "tip": "x translation of box",
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "tip": "y translation of box",
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "tip": "z translation of box",
                    "type": "str",
                    "name": "tz",
                    "value": "0"
                },
                {
                    "tip": "radius of corner rounding",
                    "type": "str",
                    "name": "rounding",
                    "value": "0"
                },
                {
                    "alias": "thickness",
                    "tip": "thickness of box",
                    "type": "str",
                    "name": "tickness",
                    "value": "armthickness"
                },
                {
                    "tip": "the thickness of the bottom of the box",
                    "type": "str",
                    "name": "interiorheight",
                    "value": "0.5"
                },
                {
                    "type": "str",
                    "name": "$fn",
                    "value": "16"
                },
                {
                    "type": "str",
                    "name": "center",
                    "value": "true",
                    "combo": [
                        "true",
                        "false"
                    ]
                }
            ],
            "typename": "Node_box",
            "version": 1,
            "y": 1532.6796595431929,
            "x": -1803.0677480716604
        },
        {
            "name": "node_boolean2",
            "inputplugs": [
                {
                    "type": "str",
                    "name": "op",
                    "value": "union",
                    "combo": [
                        "difference",
                        "union",
                        "intersection"
                    ]
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "tip": "y translation of output object",
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "tip": "z translation of output object",
                    "type": "str",
                    "name": "tz",
                    "value": "0"
                },
                {
                    "tip": "First object in boolean operation",
                    "connection": "node_boolean0.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_boolean.object",
                    "type": "object",
                    "name": "object3",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_ifdebug0.object",
                    "type": "object",
                    "name": "object4",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_rotate4.object",
                    "type": "object",
                    "name": "object5",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object6",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object7",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object8",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object9",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object10",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object11",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object12",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object13",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object14",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object15",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object16",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object17",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object18",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object19",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object20",
                    "value": ""
                }
            ],
            "typename": "Node_boolean",
            "version": 1,
            "y": 967.6797630815427,
            "x": -1420.1664669110887
        },
        {
            "name": "node_param5",
            "inputplugs": [
                {
                    "connection": "node_param2.nextparam",
                    "type": "param",
                    "name": "previousparam",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "name",
                    "value": "motorheight"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "10"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": 171.95493080455657,
            "x": -2021.7178542049946
        },
        {
            "name": "node_tube",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "type": "str",
                    "name": "radius",
                    "value": "motorradius+2.5"
                },
                {
                    "alias": "bottom radius",
                    "type": "str",
                    "name": "radius2",
                    "value": "motorradius+2.5"
                },
                {
                    "type": "str",
                    "name": "height",
                    "value": "10"
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "halfpropsize()"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "halfpropsize()"
                },
                {
                    "type": "str",
                    "name": "tz",
                    "value": "0"
                },
                {
                    "alias": "thickness",
                    "type": "str",
                    "name": "tickness",
                    "value": "1"
                },
                {
                    "type": "str",
                    "name": "holemargin",
                    "value": "0.001"
                },
                {
                    "type": "str",
                    "name": "$fn",
                    "value": ""
                }
            ],
            "typename": "Node_tube",
            "version": 1,
            "y": 843.2509838770511,
            "x": -4191.699624145105
        },
        {
            "name": "node_boolean3",
            "inputplugs": [
                {
                    "type": "str",
                    "name": "op",
                    "value": "union",
                    "combo": [
                        "difference",
                        "union",
                        "intersection"
                    ]
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "tip": "y translation of output object",
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "tip": "z translation of output object",
                    "type": "str",
                    "name": "tz",
                    "value": "0"
                },
                {
                    "tip": "First object in boolean operation",
                    "connection": "node_cylinder1.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_boolean4.object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object3",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object4",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object5",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object6",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object7",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object8",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object9",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object10",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object11",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object12",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object13",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object14",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object15",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object16",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object17",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object18",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object19",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object20",
                    "value": ""
                }
            ],
            "typename": "Node_boolean",
            "version": 1,
            "y": 780.6359678563043,
            "x": -3246.2502639265003
        },
        {
            "name": "node_cube",
            "inputplugs": [
                {
                    "tip": "x size of cube",
                    "type": "str",
                    "name": "sizex",
                    "value": "halfpropsize()"
                },
                {
                    "tip": "y size of cube",
                    "type": "str",
                    "name": "sizey",
                    "value": "halfpropsize()"
                },
                {
                    "tip": "z size of cube",
                    "type": "str",
                    "name": "sizez",
                    "value": "100"
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "tip": "y translation of output object",
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "tip": "z translation of output object",
                    "type": "str",
                    "name": "tz",
                    "value": "0"
                },
                {
                    "tip": "centering of cube",
                    "type": "str",
                    "name": "center",
                    "value": "false",
                    "combo": [
                        "true",
                        "false"
                    ]
                }
            ],
            "typename": "Node_cube",
            "version": 1,
            "y": 1133.451918916075,
            "x": -4151.918896183051
        },
        {
            "name": "node_boolean4",
            "inputplugs": [
                {
                    "type": "str",
                    "name": "op",
                    "value": "difference",
                    "combo": [
                        "difference",
                        "union",
                        "intersection"
                    ]
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "tip": "y translation of output object",
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "tip": "z translation of output object",
                    "type": "str",
                    "name": "tz",
                    "value": "0"
                },
                {
                    "tip": "First object in boolean operation",
                    "connection": "node_tube.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_cube.object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object3",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object4",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object5",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object6",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object7",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object8",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object9",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object10",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object11",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object12",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object13",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object14",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object15",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object16",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object17",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object18",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object19",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object20",
                    "value": ""
                }
            ],
            "typename": "Node_boolean",
            "version": 1,
            "y": 993.3369038173769,
            "x": -3838.8343107211404
        },
        {
            "name": "node_param6",
            "inputplugs": [
                {
                    "connection": "node_param3.nextparam",
                    "type": "param",
                    "name": "previousparam",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "name",
                    "value": "basexsize"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "20"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": 305.39631948159536,
            "x": -1186.4238788511457
        },
        {
            "name": "node_param7",
            "inputplugs": [
                {
                    "connection": "node_param6.nextparam",
                    "type": "param",
                    "name": "previousparam",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "name",
                    "value": "baseysize"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "20"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": 368.91786922951735,
            "x": -902.2186673556571
        },
        {
            "name": "node_boolean1",
            "inputplugs": [
                {
                    "type": "str",
                    "name": "op",
                    "value": "difference",
                    "combo": [
                        "difference",
                        "union",
                        "intersection"
                    ]
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "tip": "y translation of output object",
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "tip": "z translation of output object",
                    "type": "str",
                    "name": "tz",
                    "value": "0"
                },
                {
                    "tip": "First object in boolean operation",
                    "connection": "node_boolean2.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_rotate5.object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object3",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object4",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object5",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object6",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object7",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object8",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object9",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object10",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object11",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object12",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object13",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object14",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object15",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object16",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object17",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object18",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object19",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object20",
                    "value": ""
                }
            ],
            "typename": "Node_boolean",
            "version": 1,
            "y": 724.3751598085014,
            "x": -880.660108811152
        },
        {
            "name": "node_declaremodule",
            "inputplugs": [
                {
                    "tip": "name of module",
                    "type": "str",
                    "name": "name",
                    "value": "mymodule"
                },
                {
                    "connection": "node_param7.nextparam",
                    "type": "param",
                    "name": "params",
                    "value": ""
                },
                {
                    "connection": "node_function.nextfunction",
                    "type": "function",
                    "name": "functions",
                    "value": ""
                },
                {
                    "connection": "node_boolean1.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                }
            ],
            "typename": "Node_declaremodule",
            "version": 1,
            "y": 495.33302666239285,
            "x": -574.4973707510537
        },
        {
            "name": "node_function",
            "inputplugs": [
                {
                    "type": "function",
                    "name": "prevfunction",
                    "value": ""
                },
                {
                    "alias": "function name",
                    "tip": "name of function (will be usable in expressions)",
                    "type": "str",
                    "name": "name",
                    "value": "halfpropsize"
                },
                {
                    "tip": "expression of function",
                    "type": "str",
                    "name": "expression",
                    "value": "prop_size/2"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname1",
                    "value": ""
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname2",
                    "value": ""
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname3",
                    "value": ""
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname4",
                    "value": ""
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname5",
                    "value": ""
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname6",
                    "value": ""
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname7",
                    "value": ""
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname8",
                    "value": ""
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname9",
                    "value": ""
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname10",
                    "value": ""
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname11",
                    "value": ""
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname12",
                    "value": ""
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname13",
                    "value": ""
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname14",
                    "value": ""
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname15",
                    "value": ""
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname16",
                    "value": ""
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname17",
                    "value": ""
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname18",
                    "value": ""
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname19",
                    "value": ""
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname20",
                    "value": ""
                }
            ],
            "typename": "Node_function",
            "version": 1,
            "y": 534.9236249131656,
            "x": -900.5916802765478
        },
        {
            "name": "node_ifdebug0",
            "inputplugs": [
                {
                    "name": "true",
                    "tip": "object to output if debug mode is ON",
                    "value": "",
                    "alias": "object if debug mode",
                    "connection": "node_ifdebug.object",
                    "type": "object"
                },
                {
                    "alias": "object if not debug mode",
                    "tip": "object to output if debug mode  is OFF",
                    "type": "object",
                    "name": "false",
                    "value": ""
                }
            ],
            "typename": "Node_ifdebug",
            "version": 1,
            "y": 1272.0546739880501,
            "x": -1959.4595156538999
        },
        {
            "name": "node_color0",
            "inputplugs": [
                {
                    "tip": "input 3D object",
                    "connection": "node_tube0.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "alias": "red",
                    "tip": "red  (expression or string from 0 to 1)",
                    "type": "str",
                    "name": "r",
                    "value": "0"
                },
                {
                    "alias": "green",
                    "tip": "green  (expression or string from 0 to 1)",
                    "type": "str",
                    "name": "g",
                    "value": "1"
                },
                {
                    "alias": "blue",
                    "tip": "blue  (expression or string from 0 to 1)",
                    "type": "str",
                    "name": "b",
                    "value": "0"
                },
                {
                    "alias": "alpha",
                    "tip": "alpha (expression or string from 0 to 1)",
                    "type": "str",
                    "name": "a",
                    "value": "1"
                }
            ],
            "typename": "Node_color",
            "version": 1,
            "y": 1744.138454626072,
            "x": -3120.694542680245
        },
        {
            "name": "node_boolean5",
            "inputplugs": [
                {
                    "type": "str",
                    "name": "op",
                    "value": "union",
                    "combo": [
                        "difference",
                        "union",
                        "intersection"
                    ]
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "tip": "y translation of output object",
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "tip": "z translation of output object",
                    "type": "str",
                    "name": "tz",
                    "value": "0"
                },
                {
                    "tip": "First object in boolean operation",
                    "connection": "node_color.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_color0.object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object3",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object4",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object5",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object6",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object7",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object8",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object9",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object10",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object11",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object12",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object13",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object14",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object15",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object16",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object17",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object18",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object19",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "type": "object",
                    "name": "object20",
                    "value": ""
                }
            ],
            "typename": "Node_boolean",
            "version": 1,
            "y": 1551.384754876779,
            "x": -2912.069505088948
        },
        {
            "name": "node_tube0",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "type": "str",
                    "name": "radius",
                    "value": "prop_size/2"
                },
                {
                    "alias": "bottom radius",
                    "type": "str",
                    "name": "radius2",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "height",
                    "value": "0.1"
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "prop_size/2"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "prop_size/2"
                },
                {
                    "type": "str",
                    "name": "tz",
                    "value": "motorheight+2"
                },
                {
                    "alias": "thickness",
                    "type": "str",
                    "name": "tickness",
                    "value": "1"
                },
                {
                    "type": "str",
                    "name": "holemargin",
                    "value": "0.001"
                },
                {
                    "type": "str",
                    "name": "$fn",
                    "value": ""
                }
            ],
            "typename": "Node_tube",
            "version": 1,
            "y": 1781.2360789425702,
            "x": -3644.4925734414574
        },
        {
            "name": "node_rotate4",
            "inputplugs": [
                {
                    "connection": "node_box.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "rx",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "ry",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "rz",
                    "value": "45"
                },
                {
                    "type": "str",
                    "name": "space",
                    "value": "world",
                    "combo": [
                        "world",
                        "object",
                        "local"
                    ]
                }
            ],
            "typename": "Node_rotate",
            "version": 1,
            "y": 1364.5129775961723,
            "x": -1614.2567873374937
        },
        {
            "name": "node_rotate5",
            "inputplugs": [
                {
                    "connection": "node_box.holeobject",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "rx",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "ry",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "rz",
                    "value": "45"
                },
                {
                    "type": "str",
                    "name": "space",
                    "value": "world",
                    "combo": [
                        "world",
                        "object",
                        "local"
                    ]
                }
            ],
            "typename": "Node_rotate",
            "version": 1,
            "y": 1632.0343797727455,
            "x": -1502.933953598469
        }
    ],
    "version": 2
}ENDGRAPHSCAD*/