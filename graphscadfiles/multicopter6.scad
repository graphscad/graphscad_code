//------------------------------------------------------------------------------------------
// THIS CODE WAS GENERATED WITH GRAPHSCAD
// IF U LIKE GRAPHSCAD PLEASE DONATE//------------------------------------------------------------------------------------------
// D:/workspace/graphscad/graphscadfiles/multicopter6.scad
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
/*------------------- declared modules --------------------------------*/
module multicopter(arm_count=4,propsize=58,arm_height=3.5,base_xsize=48,base_ysize=31,base_width=2.5,motor_radius=8.7/2,motor_height=20,motor_angle=0,battery_height=8,camera_xsize=15,camera_ysize=23,camera_zsize=18)
{
 function armwidth(propsize)=sqrt(propsize*propsize*2)/2;
 function node_boolean19_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_ifassembled_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean19(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_ifassembled(i,j,k,l,m,n);
   node_clamp0(i,j,k,l,m,n);
   node_if(i,j,k,l,m,n);
   node_if0(i,j,k,l,m,n);
   node_color3(i,j,k,l,m,n);
  }
 }
 function node_ifassembled_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean1_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_ifassembled(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  if($assembled)
  {
   node_boolean1(i,j,k,l,m,n);
  }
   else
  {
   node_translate0(i,j,k,l,m,n);
  }
 }
 function node_boolean1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,-battery_height]);
 module node_boolean1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,-battery_height])union()
  {
   node_color0(i,j,k,l,m,n);
   node_color1(i,j,k,l,m,n);
   node_color2(i,j,k,l,m,n);
   node_boolean15(i,j,k,l,m,n);
  }
 }
 function node_color0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_resize_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_color0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  {
   color([0.733333333333,0.0,0.0549019607843,1])node_resize(i,j,k,l,m,n);
  }
 }
 function node_resize_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_resize(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  resize([0,0,battery_height+arm_height])
  {
   node_boolean0(i,j,k,l,m,n);
  }
 }
 function node_boolean0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_tube010_inobject_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_tube010_inobject(i,j,k,l,m,n);
   node_tube0_inobject(i,j,k,l,m,n);
   node_tube000_inobject(i,j,k,l,m,n);
   node_tube0101_inobject(i,j,k,l,m,n);
  }
 }
 function node_tube010_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,-base_ysize/2,0]);
 module node_tube010_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,-base_ysize/2,0]) cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
 }
 function node_tube010_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,-base_ysize/2,0]);
 module node_tube010_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,-base_ysize/2,0])translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
 }
 function node_tube010_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,-base_ysize/2,0]);
 module node_tube010(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,-base_ysize/2,0])difference()
  {
    cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
   translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
  }
 }
 function node_tube0_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,base_ysize/2,0]);
 module node_tube0_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,base_ysize/2,0]) cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
 }
 function node_tube0_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,base_ysize/2,0]);
 module node_tube0_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,base_ysize/2,0])translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
 }
 function node_tube0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,base_ysize/2,0]);
 module node_tube0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,base_ysize/2,0])difference()
  {
    cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
   translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
  }
 }
 function node_tube000_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,base_ysize/2,0]);
 module node_tube000_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,base_ysize/2,0]) cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
 }
 function node_tube000_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,base_ysize/2,0]);
 module node_tube000_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,base_ysize/2,0])translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
 }
 function node_tube000_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,base_ysize/2,0]);
 module node_tube000(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,base_ysize/2,0])difference()
  {
    cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
   translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
  }
 }
 function node_tube0101_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,-base_ysize/2,0]);
 module node_tube0101_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,-base_ysize/2,0]) cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
 }
 function node_tube0101_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,-base_ysize/2,0]);
 module node_tube0101_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,-base_ysize/2,0])translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
 }
 function node_tube0101_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,-base_ysize/2,0]);
 module node_tube0101(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,-base_ysize/2,0])difference()
  {
    cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
   translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
  }
 }
 function node_color1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean2_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_color1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  {
   color([1.0,0.862745098039,0.188235294118,1])node_boolean2(i,j,k,l,m,n);
  }
 }
 function node_boolean2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_box_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   node_box(i,j,k,l,m,n);
   node_cube3(i,j,k,l,m,n);
   node_clamp1(i,j,k,l,m,n);
  }
 }
 function node_box_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_box_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  hull()
  {
   translate([-((((base_xsize)/2))-(max(0,0.00001))),-((((base_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
   translate([-((((base_xsize)/2))-(max(0,0.00001))), ((((base_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
   translate([ ((((base_xsize)/2))-(max(0,0.00001))),-((((base_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
   translate([ ((((base_xsize)/2))-(max(0,0.00001))), ((((base_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
  }
 }
 function node_box_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_box_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([ 0,0,0.5])hull()
  {
   translate([-((((base_xsize)/2))-((max(0,0.00001))+(0.6))),-((((base_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
   translate([-((((base_xsize)/2))-((max(0,0.00001))+(0.6))), ((((base_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
   translate([ ((((base_xsize)/2))-((max(0,0.00001))+(0.6))),-((((base_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
   translate([ ((((base_xsize)/2))-((max(0,0.00001))+(0.6))), ((((base_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
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
     translate([-((((base_xsize)/2))-(max(0,0.00001))),-((((base_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
     translate([-((((base_xsize)/2))-(max(0,0.00001))), ((((base_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
     translate([ ((((base_xsize)/2))-(max(0,0.00001))),-((((base_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
     translate([ ((((base_xsize)/2))-(max(0,0.00001))), ((((base_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
    }
   }
   {
    translate([ 0,0,0.5])hull()
    {
     translate([-((((base_xsize)/2))-((max(0,0.00001))+(0.6))),-((((base_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
     translate([-((((base_xsize)/2))-((max(0,0.00001))+(0.6))), ((((base_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
     translate([ ((((base_xsize)/2))-((max(0,0.00001))+(0.6))),-((((base_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
     translate([ ((((base_xsize)/2))-((max(0,0.00001))+(0.6))), ((((base_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
    }
   }
  }
 }
 function node_cube3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-10,0,battery_height/2+0.5]);
 module node_cube3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-10,0,battery_height/2+0.5])cube([base_xsize-1,base_ysize-1,battery_height],center=true);
 }
 function node_clamp1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_hexgrid0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_clamp1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  intersection()
  {
   {
    node_hexgrid0(i,j,k,l,m,n);
   }
   translate([0,0,0])cube([base_xsize-8,base_ysize-8,200],center=true);
  }
 }
 function node_hexgrid0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,-5]);
 module node_hexgrid0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,-5])hexgrid(grid_width=base_xsize,grid_lenght=base_ysize,grid_height=10,hex_radius=3,hex_border_width=0.5,center=true);
 }
 function node_color2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean14_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_color2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  {
   color([0.862745098039,1.0,0.188235294118,1])node_boolean14(i,j,k,l,m,n);
  }
 }
 function node_boolean14_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_tube2_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean14(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   node_tube2(i,j,k,l,m,n);
   node_translate1(i,j,k,l,m,n);
  }
 }
 function node_tube2_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2+camera_xsize/2,0,0]);
 module node_tube2_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2+camera_xsize/2,0,0]) cylinder(r=camera_ysize/2,r1=camera_ysize/2,h=1,$fn=(16+camera_ysize/2*3.14116));
 }
 function node_tube2_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2+camera_xsize/2,0,0]);
 module node_tube2_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2+camera_xsize/2,0,0])translate([0,0,-(0.001)]) cylinder(r=camera_ysize/2-(15),r1=camera_ysize/2-(15),h=1+((0.001)*2),$fn=(16+camera_ysize/2*3.14116));
 }
 function node_tube2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2+camera_xsize/2,0,0]);
 module node_tube2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2+camera_xsize/2,0,0])difference()
  {
    cylinder(r=camera_ysize/2,r1=camera_ysize/2,h=1,$fn=(16+camera_ysize/2*3.14116));
   translate([0,0,-(0.001)]) cylinder(r=camera_ysize/2-(15),r1=camera_ysize/2-(15),h=1+((0.001)*2),$fn=(16+camera_ysize/2*3.14116));
  }
 }
 function node_translate1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,-1])*node_box0_inobject_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,-1])node_box0_inobject(i,j,k,l,m,n);
 }
 function node_box0_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2,0,0]);
 module node_box0_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2,0,0])hull()
  {
   translate([-((((camera_xsize)/2))-(max(0,0.00001))),-((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
   translate([-((((camera_xsize)/2))-(max(0,0.00001))), ((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
   translate([ ((((camera_xsize)/2))-(max(0,0.00001))),-((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
   translate([ ((((camera_xsize)/2))-(max(0,0.00001))), ((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
  }
 }
 function node_box0_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2,0,0]);
 module node_box0_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2,0,0])translate([ 0,0,0.5])hull()
  {
   translate([-((((camera_xsize)/2))-((max(0,0.00001))+(0.6))),-((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
   translate([-((((camera_xsize)/2))-((max(0,0.00001))+(0.6))), ((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
   translate([ ((((camera_xsize)/2))-((max(0,0.00001))+(0.6))),-((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
   translate([ ((((camera_xsize)/2))-((max(0,0.00001))+(0.6))), ((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
  }
 }
 function node_box0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2,0,0]);
 module node_box0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2,0,0])difference()
  {
   {
    hull()
    {
     translate([-((((camera_xsize)/2))-(max(0,0.00001))),-((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
     translate([-((((camera_xsize)/2))-(max(0,0.00001))), ((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
     translate([ ((((camera_xsize)/2))-(max(0,0.00001))),-((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
     translate([ ((((camera_xsize)/2))-(max(0,0.00001))), ((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
    }
   }
   {
    translate([ 0,0,0.5])hull()
    {
     translate([-((((camera_xsize)/2))-((max(0,0.00001))+(0.6))),-((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
     translate([-((((camera_xsize)/2))-((max(0,0.00001))+(0.6))), ((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
     translate([ ((((camera_xsize)/2))-((max(0,0.00001))+(0.6))),-((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
     translate([ ((((camera_xsize)/2))-((max(0,0.00001))+(0.6))), ((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
    }
   }
  }
 }
 function node_boolean15_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-0.5,0,0])*node_boolean21_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean15(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-0.5,0,0])difference()
  {
   node_boolean21(i,j,k,l,m,n);
   node_hull1(i,j,k,l,m,n);
   node_clamp2(i,j,k,l,m,n);
  }
 }
 function node_boolean21_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate12_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean21(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_rotate12(i,j,k,l,m,n);
   node_box0(i,j,k,l,m,n);
   node_hull2(i,j,k,l,m,n);
   node_mirror(i,j,k,l,m,n);
  }
 }
 function node_rotate12_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = onlytranslate(node_cube6_matrix(i=i,j=j,k=k,l=l,m=m,n=n))*rotate([0,-25,0])*negonlytranslate(node_cube6_matrix(i=i,j=j,k=k,l=l,m=m,n=n))*node_cube6_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate12(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  multmatrix(m=onlytranslate(node_cube6_matrix(i=i,j=j,k=k,l=l,m=m,n=n))*rotate([0,-25,0])*negonlytranslate(node_cube6_matrix(i=i,j=j,k=k,l=l,m=m,n=n)))node_cube6(i,j,k,l,m,n);
 }
 function node_cube6_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize-0.6,-camera_ysize/2,battery_height-0.6]);
 module node_cube6(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize-0.6,-camera_ysize/2,battery_height-0.6])cube([0.6,camera_ysize,camera_zsize-battery_height],center=false);
 }
 function node_box0_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2,0,0]);
 module node_box0_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2,0,0])hull()
  {
   translate([-((((camera_xsize)/2))-(max(0,0.00001))),-((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
   translate([-((((camera_xsize)/2))-(max(0,0.00001))), ((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
   translate([ ((((camera_xsize)/2))-(max(0,0.00001))),-((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
   translate([ ((((camera_xsize)/2))-(max(0,0.00001))), ((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
  }
 }
 function node_box0_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2,0,0]);
 module node_box0_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2,0,0])translate([ 0,0,0.5])hull()
  {
   translate([-((((camera_xsize)/2))-((max(0,0.00001))+(0.6))),-((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
   translate([-((((camera_xsize)/2))-((max(0,0.00001))+(0.6))), ((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
   translate([ ((((camera_xsize)/2))-((max(0,0.00001))+(0.6))),-((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
   translate([ ((((camera_xsize)/2))-((max(0,0.00001))+(0.6))), ((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
  }
 }
 function node_box0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2,0,0]);
 module node_box0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2,0,0])difference()
  {
   {
    hull()
    {
     translate([-((((camera_xsize)/2))-(max(0,0.00001))),-((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
     translate([-((((camera_xsize)/2))-(max(0,0.00001))), ((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
     translate([ ((((camera_xsize)/2))-(max(0,0.00001))),-((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
     translate([ ((((camera_xsize)/2))-(max(0,0.00001))), ((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
    }
   }
   {
    translate([ 0,0,0.5])hull()
    {
     translate([-((((camera_xsize)/2))-((max(0,0.00001))+(0.6))),-((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
     translate([-((((camera_xsize)/2))-((max(0,0.00001))+(0.6))), ((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
     translate([ ((((camera_xsize)/2))-((max(0,0.00001))+(0.6))),-((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
     translate([ ((((camera_xsize)/2))-((max(0,0.00001))+(0.6))), ((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
    }
   }
  }
 }
 function node_hull2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_cylinder7_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_hull2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  hull()
  {
   node_cylinder7(i,j,k,l,m,n);
   node_cylinder8(i,j,k,l,m,n);
  }
 }
 function node_cylinder7_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize*0.75,camera_ysize/2-0.3,0]);
 module node_cylinder7(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize*0.75,camera_ysize/2-0.3,0])cylinder(r=0.6/2,r1=0.6/2,h=battery_height,center=false,$fn=(16+0.6/2*3.14116));
 }
 function node_cylinder8_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,base_ysize/2,0]);
 module node_cylinder8(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,base_ysize/2,0])cylinder(r=0.6/2,r1=0.6/2,h=battery_height,center=false,$fn=(16+0.6/2*3.14116));
 }
 function node_mirror_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = mirror([0,1,0])*node_hull2_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_mirror(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  mirror([0,1,0])node_hull2(i,j,k,l,m,n);
 }
 function node_hull2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_cylinder7_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_hull2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  hull()
  {
   node_cylinder7(i,j,k,l,m,n);
   node_cylinder8(i,j,k,l,m,n);
  }
 }
 function node_cylinder7_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize*0.75,camera_ysize/2-0.3,0]);
 module node_cylinder7(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize*0.75,camera_ysize/2-0.3,0])cylinder(r=0.6/2,r1=0.6/2,h=battery_height,center=false,$fn=(16+0.6/2*3.14116));
 }
 function node_cylinder8_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,base_ysize/2,0]);
 module node_cylinder8(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,base_ysize/2,0])cylinder(r=0.6/2,r1=0.6/2,h=battery_height,center=false,$fn=(16+0.6/2*3.14116));
 }
 function node_hull1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_translate6_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_hull1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  hull()
  {
   node_translate6(i,j,k,l,m,n);
   node_translate(i,j,k,l,m,n);
  }
 }
 function node_translate6_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,motor_height])*node_translate_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate6(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,motor_height])node_translate(i,j,k,l,m,n);
 }
 function node_translate_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2,0,battery_height+2])*node_rotate8_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2,0,battery_height+2])node_rotate8(i,j,k,l,m,n);
 }
 function node_rotate8_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,90,0])*node_cylinder5_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate8(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,90,0])node_cylinder5(i,j,k,l,m,n);
 }
 function node_cylinder5_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_cylinder5(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  cylinder(r=4,r1=4,h=100,center=false,$fn=(16+4*3.14116));
 }
 function node_translate_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2,0,battery_height+2])*node_rotate8_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2,0,battery_height+2])node_rotate8(i,j,k,l,m,n);
 }
 function node_rotate8_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,90,0])*node_cylinder5_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate8(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,90,0])node_cylinder5(i,j,k,l,m,n);
 }
 function node_cylinder5_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_cylinder5(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  cylinder(r=4,r1=4,h=100,center=false,$fn=(16+4*3.14116));
 }
 function node_clamp2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_hexgrid1_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_clamp2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  intersection()
  {
   {
    node_hexgrid1(i,j,k,l,m,n);
   }
   translate([base_xsize/2+camera_xsize/2,0,0])cube([camera_xsize-6,camera_ysize-6,10],center=true);
  }
 }
 function node_hexgrid1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2,0,-5]);
 module node_hexgrid1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2,0,-5])hexgrid(grid_width=camera_xsize,grid_lenght=camera_ysize,grid_height=10,hex_radius=3,hex_border_width=0.5,center=true);
 }
 function node_translate0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean1_matrix(i=i,j=j,k=k,l=l,m=m,n=n)*translate([(propsize/2+base_xsize*0.5+5),0,battery_height]);
 module node_translate0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  multmatrix(m=node_boolean1_matrix(i=i,j=j,k=k,l=l,m=m,n=n)*translate([(propsize/2+base_xsize*0.5+5),0,battery_height])*inv4x4(node_boolean1_matrix(i=i,j=j,k=k,l=l,m=m,n=n)))node_boolean1(i,j,k,l,m,n);
 }
 function node_boolean1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,-battery_height]);
 module node_boolean1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,-battery_height])union()
  {
   node_color0(i,j,k,l,m,n);
   node_color1(i,j,k,l,m,n);
   node_color2(i,j,k,l,m,n);
   node_boolean15(i,j,k,l,m,n);
  }
 }
 function node_color0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_resize_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_color0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  {
   color([0.733333333333,0.0,0.0549019607843,1])node_resize(i,j,k,l,m,n);
  }
 }
 function node_resize_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_resize(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  resize([0,0,battery_height+arm_height])
  {
   node_boolean0(i,j,k,l,m,n);
  }
 }
 function node_boolean0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_tube010_inobject_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_tube010_inobject(i,j,k,l,m,n);
   node_tube0_inobject(i,j,k,l,m,n);
   node_tube000_inobject(i,j,k,l,m,n);
   node_tube0101_inobject(i,j,k,l,m,n);
  }
 }
 function node_tube010_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,-base_ysize/2,0]);
 module node_tube010_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,-base_ysize/2,0]) cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
 }
 function node_tube010_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,-base_ysize/2,0]);
 module node_tube010_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,-base_ysize/2,0])translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
 }
 function node_tube010_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,-base_ysize/2,0]);
 module node_tube010(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,-base_ysize/2,0])difference()
  {
    cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
   translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
  }
 }
 function node_tube0_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,base_ysize/2,0]);
 module node_tube0_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,base_ysize/2,0]) cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
 }
 function node_tube0_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,base_ysize/2,0]);
 module node_tube0_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,base_ysize/2,0])translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
 }
 function node_tube0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,base_ysize/2,0]);
 module node_tube0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,base_ysize/2,0])difference()
  {
    cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
   translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
  }
 }
 function node_tube000_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,base_ysize/2,0]);
 module node_tube000_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,base_ysize/2,0]) cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
 }
 function node_tube000_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,base_ysize/2,0]);
 module node_tube000_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,base_ysize/2,0])translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
 }
 function node_tube000_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,base_ysize/2,0]);
 module node_tube000(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,base_ysize/2,0])difference()
  {
    cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
   translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
  }
 }
 function node_tube0101_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,-base_ysize/2,0]);
 module node_tube0101_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,-base_ysize/2,0]) cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
 }
 function node_tube0101_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,-base_ysize/2,0]);
 module node_tube0101_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,-base_ysize/2,0])translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
 }
 function node_tube0101_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,-base_ysize/2,0]);
 module node_tube0101(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,-base_ysize/2,0])difference()
  {
    cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
   translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
  }
 }
 function node_color1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean2_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_color1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  {
   color([1.0,0.862745098039,0.188235294118,1])node_boolean2(i,j,k,l,m,n);
  }
 }
 function node_boolean2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_box_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   node_box(i,j,k,l,m,n);
   node_cube3(i,j,k,l,m,n);
   node_clamp1(i,j,k,l,m,n);
  }
 }
 function node_box_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_box_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  hull()
  {
   translate([-((((base_xsize)/2))-(max(0,0.00001))),-((((base_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
   translate([-((((base_xsize)/2))-(max(0,0.00001))), ((((base_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
   translate([ ((((base_xsize)/2))-(max(0,0.00001))),-((((base_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
   translate([ ((((base_xsize)/2))-(max(0,0.00001))), ((((base_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
  }
 }
 function node_box_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_box_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([ 0,0,0.5])hull()
  {
   translate([-((((base_xsize)/2))-((max(0,0.00001))+(0.6))),-((((base_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
   translate([-((((base_xsize)/2))-((max(0,0.00001))+(0.6))), ((((base_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
   translate([ ((((base_xsize)/2))-((max(0,0.00001))+(0.6))),-((((base_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
   translate([ ((((base_xsize)/2))-((max(0,0.00001))+(0.6))), ((((base_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
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
     translate([-((((base_xsize)/2))-(max(0,0.00001))),-((((base_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
     translate([-((((base_xsize)/2))-(max(0,0.00001))), ((((base_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
     translate([ ((((base_xsize)/2))-(max(0,0.00001))),-((((base_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
     translate([ ((((base_xsize)/2))-(max(0,0.00001))), ((((base_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
    }
   }
   {
    translate([ 0,0,0.5])hull()
    {
     translate([-((((base_xsize)/2))-((max(0,0.00001))+(0.6))),-((((base_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
     translate([-((((base_xsize)/2))-((max(0,0.00001))+(0.6))), ((((base_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
     translate([ ((((base_xsize)/2))-((max(0,0.00001))+(0.6))),-((((base_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
     translate([ ((((base_xsize)/2))-((max(0,0.00001))+(0.6))), ((((base_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
    }
   }
  }
 }
 function node_cube3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-10,0,battery_height/2+0.5]);
 module node_cube3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-10,0,battery_height/2+0.5])cube([base_xsize-1,base_ysize-1,battery_height],center=true);
 }
 function node_clamp1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_hexgrid0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_clamp1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  intersection()
  {
   {
    node_hexgrid0(i,j,k,l,m,n);
   }
   translate([0,0,0])cube([base_xsize-8,base_ysize-8,200],center=true);
  }
 }
 function node_hexgrid0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,-5]);
 module node_hexgrid0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,-5])hexgrid(grid_width=base_xsize,grid_lenght=base_ysize,grid_height=10,hex_radius=3,hex_border_width=0.5,center=true);
 }
 function node_color2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean14_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_color2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  {
   color([0.862745098039,1.0,0.188235294118,1])node_boolean14(i,j,k,l,m,n);
  }
 }
 function node_boolean14_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_tube2_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean14(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   node_tube2(i,j,k,l,m,n);
   node_translate1(i,j,k,l,m,n);
  }
 }
 function node_tube2_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2+camera_xsize/2,0,0]);
 module node_tube2_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2+camera_xsize/2,0,0]) cylinder(r=camera_ysize/2,r1=camera_ysize/2,h=1,$fn=(16+camera_ysize/2*3.14116));
 }
 function node_tube2_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2+camera_xsize/2,0,0]);
 module node_tube2_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2+camera_xsize/2,0,0])translate([0,0,-(0.001)]) cylinder(r=camera_ysize/2-(15),r1=camera_ysize/2-(15),h=1+((0.001)*2),$fn=(16+camera_ysize/2*3.14116));
 }
 function node_tube2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2+camera_xsize/2,0,0]);
 module node_tube2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2+camera_xsize/2,0,0])difference()
  {
    cylinder(r=camera_ysize/2,r1=camera_ysize/2,h=1,$fn=(16+camera_ysize/2*3.14116));
   translate([0,0,-(0.001)]) cylinder(r=camera_ysize/2-(15),r1=camera_ysize/2-(15),h=1+((0.001)*2),$fn=(16+camera_ysize/2*3.14116));
  }
 }
 function node_translate1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,-1])*node_box0_inobject_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,-1])node_box0_inobject(i,j,k,l,m,n);
 }
 function node_box0_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2,0,0]);
 module node_box0_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2,0,0])hull()
  {
   translate([-((((camera_xsize)/2))-(max(0,0.00001))),-((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
   translate([-((((camera_xsize)/2))-(max(0,0.00001))), ((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
   translate([ ((((camera_xsize)/2))-(max(0,0.00001))),-((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
   translate([ ((((camera_xsize)/2))-(max(0,0.00001))), ((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
  }
 }
 function node_box0_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2,0,0]);
 module node_box0_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2,0,0])translate([ 0,0,0.5])hull()
  {
   translate([-((((camera_xsize)/2))-((max(0,0.00001))+(0.6))),-((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
   translate([-((((camera_xsize)/2))-((max(0,0.00001))+(0.6))), ((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
   translate([ ((((camera_xsize)/2))-((max(0,0.00001))+(0.6))),-((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
   translate([ ((((camera_xsize)/2))-((max(0,0.00001))+(0.6))), ((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
  }
 }
 function node_box0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2,0,0]);
 module node_box0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2,0,0])difference()
  {
   {
    hull()
    {
     translate([-((((camera_xsize)/2))-(max(0,0.00001))),-((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
     translate([-((((camera_xsize)/2))-(max(0,0.00001))), ((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
     translate([ ((((camera_xsize)/2))-(max(0,0.00001))),-((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
     translate([ ((((camera_xsize)/2))-(max(0,0.00001))), ((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
    }
   }
   {
    translate([ 0,0,0.5])hull()
    {
     translate([-((((camera_xsize)/2))-((max(0,0.00001))+(0.6))),-((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
     translate([-((((camera_xsize)/2))-((max(0,0.00001))+(0.6))), ((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
     translate([ ((((camera_xsize)/2))-((max(0,0.00001))+(0.6))),-((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
     translate([ ((((camera_xsize)/2))-((max(0,0.00001))+(0.6))), ((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
    }
   }
  }
 }
 function node_boolean15_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-0.5,0,0])*node_boolean21_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean15(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-0.5,0,0])difference()
  {
   node_boolean21(i,j,k,l,m,n);
   node_hull1(i,j,k,l,m,n);
   node_clamp2(i,j,k,l,m,n);
  }
 }
 function node_boolean21_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate12_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean21(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_rotate12(i,j,k,l,m,n);
   node_box0(i,j,k,l,m,n);
   node_hull2(i,j,k,l,m,n);
   node_mirror(i,j,k,l,m,n);
  }
 }
 function node_rotate12_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = onlytranslate(node_cube6_matrix(i=i,j=j,k=k,l=l,m=m,n=n))*rotate([0,-25,0])*negonlytranslate(node_cube6_matrix(i=i,j=j,k=k,l=l,m=m,n=n))*node_cube6_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate12(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  multmatrix(m=onlytranslate(node_cube6_matrix(i=i,j=j,k=k,l=l,m=m,n=n))*rotate([0,-25,0])*negonlytranslate(node_cube6_matrix(i=i,j=j,k=k,l=l,m=m,n=n)))node_cube6(i,j,k,l,m,n);
 }
 function node_cube6_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize-0.6,-camera_ysize/2,battery_height-0.6]);
 module node_cube6(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize-0.6,-camera_ysize/2,battery_height-0.6])cube([0.6,camera_ysize,camera_zsize-battery_height],center=false);
 }
 function node_box0_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2,0,0]);
 module node_box0_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2,0,0])hull()
  {
   translate([-((((camera_xsize)/2))-(max(0,0.00001))),-((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
   translate([-((((camera_xsize)/2))-(max(0,0.00001))), ((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
   translate([ ((((camera_xsize)/2))-(max(0,0.00001))),-((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
   translate([ ((((camera_xsize)/2))-(max(0,0.00001))), ((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
  }
 }
 function node_box0_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2,0,0]);
 module node_box0_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2,0,0])translate([ 0,0,0.5])hull()
  {
   translate([-((((camera_xsize)/2))-((max(0,0.00001))+(0.6))),-((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
   translate([-((((camera_xsize)/2))-((max(0,0.00001))+(0.6))), ((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
   translate([ ((((camera_xsize)/2))-((max(0,0.00001))+(0.6))),-((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
   translate([ ((((camera_xsize)/2))-((max(0,0.00001))+(0.6))), ((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
  }
 }
 function node_box0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2,0,0]);
 module node_box0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2,0,0])difference()
  {
   {
    hull()
    {
     translate([-((((camera_xsize)/2))-(max(0,0.00001))),-((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
     translate([-((((camera_xsize)/2))-(max(0,0.00001))), ((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
     translate([ ((((camera_xsize)/2))-(max(0,0.00001))),-((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
     translate([ ((((camera_xsize)/2))-(max(0,0.00001))), ((((camera_ysize)/2))-(max(0,0.00001))),0]) cylinder(r=max(0,0.00001),h=(battery_height),$fn=16);
    }
   }
   {
    translate([ 0,0,0.5])hull()
    {
     translate([-((((camera_xsize)/2))-((max(0,0.00001))+(0.6))),-((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
     translate([-((((camera_xsize)/2))-((max(0,0.00001))+(0.6))), ((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
     translate([ ((((camera_xsize)/2))-((max(0,0.00001))+(0.6))),-((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
     translate([ ((((camera_xsize)/2))-((max(0,0.00001))+(0.6))), ((((camera_ysize)/2))-((max(0,0.00001))+(0.6))),0]) cylinder(r=max(((0)-(0.6)),0.00001),h=(((battery_height))-(0.5)+0.01),$fn=16);
    }
   }
  }
 }
 function node_hull2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_cylinder7_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_hull2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  hull()
  {
   node_cylinder7(i,j,k,l,m,n);
   node_cylinder8(i,j,k,l,m,n);
  }
 }
 function node_cylinder7_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize*0.75,camera_ysize/2-0.3,0]);
 module node_cylinder7(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize*0.75,camera_ysize/2-0.3,0])cylinder(r=0.6/2,r1=0.6/2,h=battery_height,center=false,$fn=(16+0.6/2*3.14116));
 }
 function node_cylinder8_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,base_ysize/2,0]);
 module node_cylinder8(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,base_ysize/2,0])cylinder(r=0.6/2,r1=0.6/2,h=battery_height,center=false,$fn=(16+0.6/2*3.14116));
 }
 function node_mirror_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = mirror([0,1,0])*node_hull2_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_mirror(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  mirror([0,1,0])node_hull2(i,j,k,l,m,n);
 }
 function node_hull2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_cylinder7_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_hull2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  hull()
  {
   node_cylinder7(i,j,k,l,m,n);
   node_cylinder8(i,j,k,l,m,n);
  }
 }
 function node_cylinder7_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize*0.75,camera_ysize/2-0.3,0]);
 module node_cylinder7(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize*0.75,camera_ysize/2-0.3,0])cylinder(r=0.6/2,r1=0.6/2,h=battery_height,center=false,$fn=(16+0.6/2*3.14116));
 }
 function node_cylinder8_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,base_ysize/2,0]);
 module node_cylinder8(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,base_ysize/2,0])cylinder(r=0.6/2,r1=0.6/2,h=battery_height,center=false,$fn=(16+0.6/2*3.14116));
 }
 function node_hull1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_translate6_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_hull1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  hull()
  {
   node_translate6(i,j,k,l,m,n);
   node_translate(i,j,k,l,m,n);
  }
 }
 function node_translate6_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,motor_height])*node_translate_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate6(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,motor_height])node_translate(i,j,k,l,m,n);
 }
 function node_translate_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2,0,battery_height+2])*node_rotate8_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2,0,battery_height+2])node_rotate8(i,j,k,l,m,n);
 }
 function node_rotate8_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,90,0])*node_cylinder5_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate8(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,90,0])node_cylinder5(i,j,k,l,m,n);
 }
 function node_cylinder5_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_cylinder5(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  cylinder(r=4,r1=4,h=100,center=false,$fn=(16+4*3.14116));
 }
 function node_translate_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2,0,battery_height+2])*node_rotate8_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2,0,battery_height+2])node_rotate8(i,j,k,l,m,n);
 }
 function node_rotate8_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,90,0])*node_cylinder5_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate8(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,90,0])node_cylinder5(i,j,k,l,m,n);
 }
 function node_cylinder5_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_cylinder5(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  cylinder(r=4,r1=4,h=100,center=false,$fn=(16+4*3.14116));
 }
 function node_clamp2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_hexgrid1_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_clamp2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  intersection()
  {
   {
    node_hexgrid1(i,j,k,l,m,n);
   }
   translate([base_xsize/2+camera_xsize/2,0,0])cube([camera_xsize-6,camera_ysize-6,10],center=true);
  }
 }
 function node_hexgrid1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2+camera_xsize/2,0,-5]);
 module node_hexgrid1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2+camera_xsize/2,0,-5])hexgrid(grid_width=camera_xsize,grid_lenght=camera_ysize,grid_height=10,hex_radius=3,hex_border_width=0.5,center=true);
 }
 function node_clamp0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean11_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_clamp0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  intersection()
  {
   {
    node_boolean11(i,j,k,l,m,n);
   }
   translate([0,0,50])cube([200,200,100],center=true);
  }
 }
 function node_boolean11_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean12_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean11(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   node_boolean12(i,j,k,l,m,n);
   node_boolean3(i,j,k,l,m,n);
   node_boolean0(i,j,k,l,m,n);
  }
 }
 function node_boolean12_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean7_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean12(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_boolean7(i,j,k,l,m,n);
   node_clamp(i,j,k,l,m,n);
   node_boolean8(i,j,k,l,m,n);
   node_boolean(i,j,k,l,m,n);
  }
 }
 function node_boolean7_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean6_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean7(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   node_boolean6(i,j,k,l,m,n);
   node_boolean9(i,j,k,l,m,n);
  }
 }
 function node_boolean6_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_for_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean6(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_for(i,j,k,l,m,n);
   node_color(i,j,k,l,m,n);
   node_for8(i,j,k,l,m,n);
   node_for2(i,j,k,l,m,n);
  }
 }
 function node_for_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[-180/arm_count:360/arm_count:360-(180/arm_count)])
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
 function node_cylinder_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,0]);
 module node_cylinder(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,0])cylinder(r=motor_radius,r1=motor_radius,h=arm_height,center=false,$fn=16);
 }
 function node_cylinder0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_cylinder0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  cylinder(r=motor_radius*2,r1=motor_radius*2,h=arm_height,center=false,$fn=16);
 }
 function node_color_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_for3_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_color(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  {
   color([0.913725490196,0.0745098039216,0.0,1])node_for3(i,j,k,l,m,n);
  }
 }
 function node_for3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate5_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[-180/arm_count:360/arm_count:360-(180/arm_count)-1])
  {
   node_rotate5(i,j,k,l,m,n);
  }
 }
 function node_rotate5_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = onlytranslate(node_rotate3_matrix(i=i,j=j,k=k,l=l,m=m,n=n))*rotate([0,motor_angle,0])*negonlytranslate(node_rotate3_matrix(i=i,j=j,k=k,l=l,m=m,n=n))*node_rotate3_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate5(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  multmatrix(m=onlytranslate(node_rotate3_matrix(i=i,j=j,k=k,l=l,m=m,n=n))*rotate([0,motor_angle,0])*negonlytranslate(node_rotate3_matrix(i=i,j=j,k=k,l=l,m=m,n=n)))node_rotate3(i,j,k,l,m,n);
 }
 function node_rotate3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,i])*node_cylinder3_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,i])node_cylinder3(i,j,k,l,m,n);
 }
 function node_cylinder3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,0]);
 module node_cylinder3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,0])cylinder(r=motor_radius+1,r1=motor_radius+2,h=motor_height*0.80,center=false,$fn=(16+motor_radius+1*3.14116));
 }
 function node_for8_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate14_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for8(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[-180/arm_count:360/arm_count:360-(180/arm_count)-1])
  {
   node_rotate14(i,j,k,l,m,n);
  }
 }
 function node_rotate14_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,i])*node_translate7_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate14(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,i])node_translate7(i,j,k,l,m,n);
 }
 function node_translate7_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),(motor_radius*0.55+2)/2,arm_height])*node_scale_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate7(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),(motor_radius*0.55+2)/2,arm_height])node_scale(i,j,k,l,m,n);
 }
 function node_scale_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = scale([motor_height*0.5,motor_radius*0.55+2,motor_height*0.5])*node_rotate13_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_scale(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  scale([motor_height*0.5,motor_radius*0.55+2,motor_height*0.5])node_rotate13(i,j,k,l,m,n);
 }
 function node_rotate13_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([90,-90,0])*node_rotateextrude_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate13(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([90,-90,0])node_rotateextrude(i,j,k,l,m,n);
 }
 function node_rotateextrude_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_rotateextrude(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate_extrude(angle=90,convexity=3,$fn=2)
  {
   node_square(i,j,k,l,m,n);
  }
 }
 function node_square_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_square(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  square(size=[1,1],center=false);
 }
 function node_for2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate2_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[-(180/arm_count):360/arm_count:360-(180/arm_count)-1])
  {
   node_rotate2(i,j,k,l,m,n);
  }
 }
 function node_rotate2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,i])*node_tube_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,i])node_tube(i,j,k,l,m,n);
 }
 function node_tube_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,0]);
 module node_tube_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,0]) cylinder(r=motor_radius+2,r1=motor_radius+2,h=arm_height,$fn=(16+motor_radius+2*3.14116));
 }
 function node_tube_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,0]);
 module node_tube_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,0])translate([0,0,-(0.1)]) cylinder(r=motor_radius+2-(2),r1=motor_radius+2-(2),h=arm_height+((0.1)*2),$fn=(16+motor_radius+2*3.14116));
 }
 function node_tube_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,0]);
 module node_tube(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,0])difference()
  {
    cylinder(r=motor_radius+2,r1=motor_radius+2,h=arm_height,$fn=(16+motor_radius+2*3.14116));
   translate([0,0,-(0.1)]) cylinder(r=motor_radius+2-(2),r1=motor_radius+2-(2),h=arm_height+((0.1)*2),$fn=(16+motor_radius+2*3.14116));
  }
 }
 function node_boolean9_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,-5])*node_cube0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean9(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,-5])union()
  {
   node_cube0(i,j,k,l,m,n);
   node_for0(i,j,k,l,m,n);
  }
 }
 function node_cube0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_cube0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  cube([base_xsize-base_width*2,base_ysize-base_width*2,100],center=true);
 }
 function node_for0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[-180/arm_count:360/arm_count:360-(180/arm_count)])
  {
   node_rotate0(i,j,k,l,m,n);
  }
 }
 function node_rotate0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,i])*node_hull0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,i])node_hull0(i,j,k,l,m,n);
 }
 function node_hull0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_cylinder1_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_hull0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  hull()
  {
   node_cylinder1(i,j,k,l,m,n);
   node_cylinder2(i,j,k,l,m,n);
  }
 }
 function node_cylinder1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize)*(0.65),0,-1]);
 module node_cylinder1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize)*(0.65),0,-1])cylinder(r=(motor_radius-base_width)*0.65+(motor_radius*2-base_width)*0.35,r1=(motor_radius-base_width)*0.65+(motor_radius*2-base_width)*0.35,h=50,center=false,$fn=16);
 }
 function node_cylinder2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,-1]);
 module node_cylinder2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,-1])cylinder(r=motor_radius*2-base_width,r1=motor_radius*2-base_width,h=50,center=false,$fn=16);
 }
 function node_clamp_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean5_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_clamp(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  intersection()
  {
   {
    node_boolean5(i,j,k,l,m,n);
   }
   translate([0,0,0.5])cube([1000,1000,1],center=true);
  }
 }
 function node_boolean5_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean9_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean5(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   node_boolean9(i,j,k,l,m,n);
   node_hexgrid(i,j,k,l,m,n);
  }
 }
 function node_boolean9_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,-5])*node_cube0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean9(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,-5])union()
  {
   node_cube0(i,j,k,l,m,n);
   node_for0(i,j,k,l,m,n);
  }
 }
 function node_cube0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_cube0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  cube([base_xsize-base_width*2,base_ysize-base_width*2,100],center=true);
 }
 function node_for0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[-180/arm_count:360/arm_count:360-(180/arm_count)])
  {
   node_rotate0(i,j,k,l,m,n);
  }
 }
 function node_rotate0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,i])*node_hull0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,i])node_hull0(i,j,k,l,m,n);
 }
 function node_hull0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_cylinder1_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_hull0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  hull()
  {
   node_cylinder1(i,j,k,l,m,n);
   node_cylinder2(i,j,k,l,m,n);
  }
 }
 function node_cylinder1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize)*(0.65),0,-1]);
 module node_cylinder1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize)*(0.65),0,-1])cylinder(r=(motor_radius-base_width)*0.65+(motor_radius*2-base_width)*0.35,r1=(motor_radius-base_width)*0.65+(motor_radius*2-base_width)*0.35,h=50,center=false,$fn=16);
 }
 function node_cylinder2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,-1]);
 module node_cylinder2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,-1])cylinder(r=motor_radius*2-base_width,r1=motor_radius*2-base_width,h=50,center=false,$fn=16);
 }
 function node_hexgrid_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,-3]);
 module node_hexgrid(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,-3])hexgrid(grid_width=armwidth(propsize)*2+motor_radius,grid_lenght=armwidth(propsize)*2+motor_radius,grid_height=100,hex_radius=3,hex_border_width=0.5,center=true);
 }
 function node_boolean8_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_cube_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean8(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   node_cube(i,j,k,l,m,n);
   node_cube0(i,j,k,l,m,n);
  }
 }
 function node_cube_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,arm_height/2]);
 module node_cube(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,arm_height/2])cube([base_xsize,base_ysize,arm_height],center=true);
 }
 function node_cube0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_cube0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  cube([base_xsize-base_width*2,base_ysize-base_width*2,100],center=true);
 }
 function node_boolean_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_tube010_outobject_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_tube010_outobject(i,j,k,l,m,n);
   node_tube0_outobject(i,j,k,l,m,n);
   node_tube000_outobject(i,j,k,l,m,n);
   node_tube0101_outobject(i,j,k,l,m,n);
  }
 }
 function node_tube010_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,-base_ysize/2,0]);
 module node_tube010_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,-base_ysize/2,0]) cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
 }
 function node_tube010_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,-base_ysize/2,0]);
 module node_tube010_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,-base_ysize/2,0])translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
 }
 function node_tube010_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,-base_ysize/2,0]);
 module node_tube010(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,-base_ysize/2,0])difference()
  {
    cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
   translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
  }
 }
 function node_tube0_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,base_ysize/2,0]);
 module node_tube0_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,base_ysize/2,0]) cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
 }
 function node_tube0_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,base_ysize/2,0]);
 module node_tube0_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,base_ysize/2,0])translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
 }
 function node_tube0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,base_ysize/2,0]);
 module node_tube0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,base_ysize/2,0])difference()
  {
    cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
   translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
  }
 }
 function node_tube000_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,base_ysize/2,0]);
 module node_tube000_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,base_ysize/2,0]) cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
 }
 function node_tube000_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,base_ysize/2,0]);
 module node_tube000_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,base_ysize/2,0])translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
 }
 function node_tube000_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,base_ysize/2,0]);
 module node_tube000(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,base_ysize/2,0])difference()
  {
    cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
   translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
  }
 }
 function node_tube0101_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,-base_ysize/2,0]);
 module node_tube0101_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,-base_ysize/2,0]) cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
 }
 function node_tube0101_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,-base_ysize/2,0]);
 module node_tube0101_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,-base_ysize/2,0])translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
 }
 function node_tube0101_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,-base_ysize/2,0]);
 module node_tube0101(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,-base_ysize/2,0])difference()
  {
    cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
   translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
  }
 }
 function node_boolean3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_for1_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_for1(i,j,k,l,m,n);
   node_for4(i,j,k,l,m,n);
  }
 }
 function node_for1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate6_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[-180/arm_count:360/arm_count:360-(180/arm_count)])
  {
   node_rotate6(i,j,k,l,m,n);
  }
 }
 function node_rotate6_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = onlytranslate(node_rotate1_matrix(i=i,j=j,k=k,l=l,m=m,n=n))*rotate([0,motor_angle,0])*negonlytranslate(node_rotate1_matrix(i=i,j=j,k=k,l=l,m=m,n=n))*node_rotate1_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate6(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  multmatrix(m=onlytranslate(node_rotate1_matrix(i=i,j=j,k=k,l=l,m=m,n=n))*rotate([0,motor_angle,0])*negonlytranslate(node_rotate1_matrix(i=i,j=j,k=k,l=l,m=m,n=n)))node_rotate1(i,j,k,l,m,n);
 }
 function node_rotate1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,i])*node_cylinder4_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,i])node_cylinder4(i,j,k,l,m,n);
 }
 function node_cylinder4_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,-1]);
 module node_cylinder4(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,-1])cylinder(r=motor_radius,r1=motor_radius,h=100,center=false,$fn=(16+motor_radius*3.14116));
 }
 function node_for4_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate4_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for4(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(l=[-180/arm_count:360/arm_count:360-(180/arm_count)])
  {
   node_rotate4(i,j,k,l,m,n);
  }
 }
 function node_rotate4_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,l])*node_boolean13_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate4(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,l])node_boolean13(i,j,k,l,m,n);
 }
 function node_boolean13_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_cube1_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean13(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_cube1(i,j,k,l,m,n);
   node_cube2(i,j,k,l,m,n);
  }
 }
 function node_cube1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize)-motor_radius,0,50/2-2]);
 module node_cube1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize)-motor_radius,0,50/2-2])cube([6,motor_radius*0.55,50],center=true);
 }
 function node_cube2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize)-motor_radius-4,0,50/2+2]);
 module node_cube2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize)-motor_radius-4,0,50/2+2])cube([8+motor_radius,motor_radius*0.55,50],center=true);
 }
 function node_boolean0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_tube010_inobject_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_tube010_inobject(i,j,k,l,m,n);
   node_tube0_inobject(i,j,k,l,m,n);
   node_tube000_inobject(i,j,k,l,m,n);
   node_tube0101_inobject(i,j,k,l,m,n);
  }
 }
 function node_tube010_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,-base_ysize/2,0]);
 module node_tube010_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,-base_ysize/2,0]) cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
 }
 function node_tube010_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,-base_ysize/2,0]);
 module node_tube010_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,-base_ysize/2,0])translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
 }
 function node_tube010_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,-base_ysize/2,0]);
 module node_tube010(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,-base_ysize/2,0])difference()
  {
    cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
   translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
  }
 }
 function node_tube0_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,base_ysize/2,0]);
 module node_tube0_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,base_ysize/2,0]) cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
 }
 function node_tube0_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,base_ysize/2,0]);
 module node_tube0_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,base_ysize/2,0])translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
 }
 function node_tube0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-base_xsize/2,base_ysize/2,0]);
 module node_tube0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-base_xsize/2,base_ysize/2,0])difference()
  {
    cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
   translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
  }
 }
 function node_tube000_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,base_ysize/2,0]);
 module node_tube000_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,base_ysize/2,0]) cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
 }
 function node_tube000_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,base_ysize/2,0]);
 module node_tube000_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,base_ysize/2,0])translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
 }
 function node_tube000_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,base_ysize/2,0]);
 module node_tube000(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,base_ysize/2,0])difference()
  {
    cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
   translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
  }
 }
 function node_tube0101_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,-base_ysize/2,0]);
 module node_tube0101_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,-base_ysize/2,0]) cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
 }
 function node_tube0101_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,-base_ysize/2,0]);
 module node_tube0101_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,-base_ysize/2,0])translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
 }
 function node_tube0101_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([base_xsize/2,-base_ysize/2,0]);
 module node_tube0101(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([base_xsize/2,-base_ysize/2,0])difference()
  {
    cylinder(r=4,r1=4,h=arm_height,$fn=(16+4*3.14116));
   translate([0,0,-(0.01)]) cylinder(r=4-(2),r1=4-(2),h=arm_height+((0.01)*2),$fn=(16+4*3.14116));
  }
 }
 function node_if_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_ifassembled1_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_if(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  if(1==0)
  {
   node_ifassembled1(i,j,k,l,m,n);
  }
   else
  {
   {
   }
  }
 }
 function node_ifassembled1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_box2_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_ifassembled1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  if($assembled)
  {
   node_box2(i,j,k,l,m,n);
  }
   else
  {
   node_translate5(i,j,k,l,m,n);
  }
 }
 function node_box2_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,-battery_height-2]);
 module node_box2_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,-battery_height-2])hull()
  {
   translate([-((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),-((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(battery_height+motor_height+10),$fn=64);
   translate([-((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))), ((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(battery_height+motor_height+10),$fn=64);
   translate([ ((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),-((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(battery_height+motor_height+10),$fn=64);
   translate([ ((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))), ((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(battery_height+motor_height+10),$fn=64);
  }
 }
 function node_box2_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,-battery_height-2]);
 module node_box2_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,-battery_height-2])translate([ 0,0,0.5])hull()
  {
   translate([-((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),-((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),0]) cylinder(r=max(((propsize/2+4)-(0.5)),0.00001),h=(((battery_height+motor_height+10))-(0.5)+0.01),$fn=64);
   translate([-((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))), ((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),0]) cylinder(r=max(((propsize/2+4)-(0.5)),0.00001),h=(((battery_height+motor_height+10))-(0.5)+0.01),$fn=64);
   translate([ ((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),-((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),0]) cylinder(r=max(((propsize/2+4)-(0.5)),0.00001),h=(((battery_height+motor_height+10))-(0.5)+0.01),$fn=64);
   translate([ ((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))), ((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),0]) cylinder(r=max(((propsize/2+4)-(0.5)),0.00001),h=(((battery_height+motor_height+10))-(0.5)+0.01),$fn=64);
  }
 }
 function node_box2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,-battery_height-2]);
 module node_box2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,-battery_height-2])difference()
  {
   {
    hull()
    {
     translate([-((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),-((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(battery_height+motor_height+10),$fn=64);
     translate([-((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))), ((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(battery_height+motor_height+10),$fn=64);
     translate([ ((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),-((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(battery_height+motor_height+10),$fn=64);
     translate([ ((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))), ((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(battery_height+motor_height+10),$fn=64);
    }
   }
   {
    translate([ 0,0,0.5])hull()
    {
     translate([-((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),-((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),0]) cylinder(r=max(((propsize/2+4)-(0.5)),0.00001),h=(((battery_height+motor_height+10))-(0.5)+0.01),$fn=64);
     translate([-((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))), ((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),0]) cylinder(r=max(((propsize/2+4)-(0.5)),0.00001),h=(((battery_height+motor_height+10))-(0.5)+0.01),$fn=64);
     translate([ ((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),-((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),0]) cylinder(r=max(((propsize/2+4)-(0.5)),0.00001),h=(((battery_height+motor_height+10))-(0.5)+0.01),$fn=64);
     translate([ ((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))), ((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),0]) cylinder(r=max(((propsize/2+4)-(0.5)),0.00001),h=(((battery_height+motor_height+10))-(0.5)+0.01),$fn=64);
    }
   }
  }
 }
 function node_translate5_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,-propsize*2,-(-battery_height-2)])*node_box2_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate5(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,-propsize*2,-(-battery_height-2)])node_box2(i,j,k,l,m,n);
 }
 function node_box2_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,-battery_height-2]);
 module node_box2_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,-battery_height-2])hull()
  {
   translate([-((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),-((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(battery_height+motor_height+10),$fn=64);
   translate([-((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))), ((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(battery_height+motor_height+10),$fn=64);
   translate([ ((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),-((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(battery_height+motor_height+10),$fn=64);
   translate([ ((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))), ((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(battery_height+motor_height+10),$fn=64);
  }
 }
 function node_box2_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,-battery_height-2]);
 module node_box2_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,-battery_height-2])translate([ 0,0,0.5])hull()
  {
   translate([-((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),-((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),0]) cylinder(r=max(((propsize/2+4)-(0.5)),0.00001),h=(((battery_height+motor_height+10))-(0.5)+0.01),$fn=64);
   translate([-((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))), ((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),0]) cylinder(r=max(((propsize/2+4)-(0.5)),0.00001),h=(((battery_height+motor_height+10))-(0.5)+0.01),$fn=64);
   translate([ ((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),-((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),0]) cylinder(r=max(((propsize/2+4)-(0.5)),0.00001),h=(((battery_height+motor_height+10))-(0.5)+0.01),$fn=64);
   translate([ ((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))), ((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),0]) cylinder(r=max(((propsize/2+4)-(0.5)),0.00001),h=(((battery_height+motor_height+10))-(0.5)+0.01),$fn=64);
  }
 }
 function node_box2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,-battery_height-2]);
 module node_box2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,-battery_height-2])difference()
  {
   {
    hull()
    {
     translate([-((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),-((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(battery_height+motor_height+10),$fn=64);
     translate([-((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))), ((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(battery_height+motor_height+10),$fn=64);
     translate([ ((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),-((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(battery_height+motor_height+10),$fn=64);
     translate([ ((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))), ((((propsize*2+12)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(battery_height+motor_height+10),$fn=64);
    }
   }
   {
    translate([ 0,0,0.5])hull()
    {
     translate([-((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),-((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),0]) cylinder(r=max(((propsize/2+4)-(0.5)),0.00001),h=(((battery_height+motor_height+10))-(0.5)+0.01),$fn=64);
     translate([-((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))), ((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),0]) cylinder(r=max(((propsize/2+4)-(0.5)),0.00001),h=(((battery_height+motor_height+10))-(0.5)+0.01),$fn=64);
     translate([ ((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),-((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),0]) cylinder(r=max(((propsize/2+4)-(0.5)),0.00001),h=(((battery_height+motor_height+10))-(0.5)+0.01),$fn=64);
     translate([ ((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))), ((((propsize*2+12)/2))-((max(propsize/2+4,0.00001))+(0.5))),0]) cylinder(r=max(((propsize/2+4)-(0.5)),0.00001),h=(((battery_height+motor_height+10))-(0.5)+0.01),$fn=64);
    }
   }
  }
 }
 function node_if0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_if0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  if(1==1)
  {
   {
   }
  }
   else
  {
   node_ifassembled0(i,j,k,l,m,n);
  }
 }
 function node_ifassembled0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean18_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_ifassembled0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  if($assembled)
  {
   node_boolean18(i,j,k,l,m,n);
  }
   else
  {
   node_translate4(i,j,k,l,m,n);
  }
 }
 function node_boolean18_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_for6_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean18(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_for6(i,j,k,l,m,n);
   node_boolean17(i,j,k,l,m,n);
  }
 }
 function node_for6_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate9_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for6(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[-(180/arm_count):360/arm_count:360-(180/arm_count)-1])
  {
   node_rotate9(i,j,k,l,m,n);
  }
 }
 function node_rotate9_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,i])*node_boolean20_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate9(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,i])node_boolean20(i,j,k,l,m,n);
 }
 function node_boolean20_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_tube3_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean20(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   node_tube3(i,j,k,l,m,n);
   node_cube5(i,j,k,l,m,n);
  }
 }
 function node_tube3_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,motor_height]);
 module node_tube3_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,motor_height]) cylinder(r=motor_radius+1.5,r1=motor_radius+1.5,h=motor_height*0.20,$fn=(16+motor_radius+1.5*3.14116));
 }
 function node_tube3_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,motor_height]);
 module node_tube3_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,motor_height])translate([0,0,-(0.001)]) cylinder(r=motor_radius+1.5-(1.6),r1=motor_radius+1.5-(1.6),h=motor_height*0.20+((0.001)*2),$fn=(16+motor_radius+1.5*3.14116));
 }
 function node_tube3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,motor_height]);
 module node_tube3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,motor_height])difference()
  {
    cylinder(r=motor_radius+1.5,r1=motor_radius+1.5,h=motor_height*0.20,$fn=(16+motor_radius+1.5*3.14116));
   translate([0,0,-(0.001)]) cylinder(r=motor_radius+1.5-(1.6),r1=motor_radius+1.5-(1.6),h=motor_height*0.20+((0.001)*2),$fn=(16+motor_radius+1.5*3.14116));
  }
 }
 function node_cube5_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize)-motor_radius/2,0,motor_height]);
 module node_cube5(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize)-motor_radius/2,0,motor_height])cube([motor_radius*2,motor_radius*1.2,motor_height],center=true);
 }
 function node_boolean17_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean16_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean17(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   node_boolean16(i,j,k,l,m,n);
   node_for7(i,j,k,l,m,n);
  }
 }
 function node_boolean16_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean10_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean16(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_boolean10(i,j,k,l,m,n);
   node_rotate10(i,j,k,l,m,n);
   node_box1(i,j,k,l,m,n);
  }
 }
 function node_boolean10_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_translate2_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean10(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_translate2(i,j,k,l,m,n);
   node_translate3(i,j,k,l,m,n);
  }
 }
 function node_translate2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,propsize/2,0])*node_cube4_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,propsize/2,0])node_cube4(i,j,k,l,m,n);
 }
 function node_cube4_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,arm_height/2+motor_height]);
 module node_cube4(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,arm_height/2+motor_height])cube([propsize*2+8,0.8,arm_height],center=true);
 }
 function node_translate3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,-propsize/2,0])*node_cube4_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,-propsize/2,0])node_cube4(i,j,k,l,m,n);
 }
 function node_cube4_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,arm_height/2+motor_height]);
 module node_cube4(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,arm_height/2+motor_height])cube([propsize*2+8,0.8,arm_height],center=true);
 }
 function node_rotate10_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,90])*node_boolean10_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate10(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,90])node_boolean10(i,j,k,l,m,n);
 }
 function node_boolean10_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_translate2_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean10(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_translate2(i,j,k,l,m,n);
   node_translate3(i,j,k,l,m,n);
  }
 }
 function node_translate2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,propsize/2,0])*node_cube4_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,propsize/2,0])node_cube4(i,j,k,l,m,n);
 }
 function node_cube4_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,arm_height/2+motor_height]);
 module node_cube4(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,arm_height/2+motor_height])cube([propsize*2+8,0.8,arm_height],center=true);
 }
 function node_translate3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,-propsize/2,0])*node_cube4_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,-propsize/2,0])node_cube4(i,j,k,l,m,n);
 }
 function node_cube4_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,arm_height/2+motor_height]);
 module node_cube4(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,arm_height/2+motor_height])cube([propsize*2+8,0.8,arm_height],center=true);
 }
 function node_box1_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,motor_height]);
 module node_box1_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,motor_height])hull()
  {
   translate([-((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),-((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(arm_height),$fn=64);
   translate([-((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))), ((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(arm_height),$fn=64);
   translate([ ((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),-((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(arm_height),$fn=64);
   translate([ ((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))), ((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(arm_height),$fn=64);
  }
 }
 function node_box1_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,motor_height]);
 module node_box1_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,motor_height])translate([ 0,0,-0.05])hull()
  {
   translate([-((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),-((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),0]) cylinder(r=max(((propsize/2+4)-(0.4)),0.00001),h=(((arm_height))-(-0.05)+0.01),$fn=64);
   translate([-((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))), ((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),0]) cylinder(r=max(((propsize/2+4)-(0.4)),0.00001),h=(((arm_height))-(-0.05)+0.01),$fn=64);
   translate([ ((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),-((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),0]) cylinder(r=max(((propsize/2+4)-(0.4)),0.00001),h=(((arm_height))-(-0.05)+0.01),$fn=64);
   translate([ ((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))), ((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),0]) cylinder(r=max(((propsize/2+4)-(0.4)),0.00001),h=(((arm_height))-(-0.05)+0.01),$fn=64);
  }
 }
 function node_box1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,motor_height]);
 module node_box1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,motor_height])difference()
  {
   {
    hull()
    {
     translate([-((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),-((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(arm_height),$fn=64);
     translate([-((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))), ((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(arm_height),$fn=64);
     translate([ ((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),-((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(arm_height),$fn=64);
     translate([ ((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))), ((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(arm_height),$fn=64);
    }
   }
   {
    translate([ 0,0,-0.05])hull()
    {
     translate([-((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),-((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),0]) cylinder(r=max(((propsize/2+4)-(0.4)),0.00001),h=(((arm_height))-(-0.05)+0.01),$fn=64);
     translate([-((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))), ((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),0]) cylinder(r=max(((propsize/2+4)-(0.4)),0.00001),h=(((arm_height))-(-0.05)+0.01),$fn=64);
     translate([ ((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),-((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),0]) cylinder(r=max(((propsize/2+4)-(0.4)),0.00001),h=(((arm_height))-(-0.05)+0.01),$fn=64);
     translate([ ((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))), ((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),0]) cylinder(r=max(((propsize/2+4)-(0.4)),0.00001),h=(((arm_height))-(-0.05)+0.01),$fn=64);
    }
   }
  }
 }
 function node_for7_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate11_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for7(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[-(180/arm_count):360/arm_count:360-(180/arm_count)-1])
  {
   node_rotate11(i,j,k,l,m,n);
  }
 }
 function node_rotate11_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,i])*node_tube3_inobject_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate11(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,i])node_tube3_inobject(i,j,k,l,m,n);
 }
 function node_tube3_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,motor_height]);
 module node_tube3_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,motor_height]) cylinder(r=motor_radius+1.5,r1=motor_radius+1.5,h=motor_height*0.20,$fn=(16+motor_radius+1.5*3.14116));
 }
 function node_tube3_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,motor_height]);
 module node_tube3_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,motor_height])translate([0,0,-(0.001)]) cylinder(r=motor_radius+1.5-(1.6),r1=motor_radius+1.5-(1.6),h=motor_height*0.20+((0.001)*2),$fn=(16+motor_radius+1.5*3.14116));
 }
 function node_tube3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,motor_height]);
 module node_tube3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,motor_height])difference()
  {
    cylinder(r=motor_radius+1.5,r1=motor_radius+1.5,h=motor_height*0.20,$fn=(16+motor_radius+1.5*3.14116));
   translate([0,0,-(0.001)]) cylinder(r=motor_radius+1.5-(1.6),r1=motor_radius+1.5-(1.6),h=motor_height*0.20+((0.001)*2),$fn=(16+motor_radius+1.5*3.14116));
  }
 }
 function node_translate4_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,propsize*2-propsize/2+10+motor_radius,-motor_height])*node_boolean18_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate4(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,propsize*2-propsize/2+10+motor_radius,-motor_height])node_boolean18(i,j,k,l,m,n);
 }
 function node_boolean18_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_for6_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean18(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_for6(i,j,k,l,m,n);
   node_boolean17(i,j,k,l,m,n);
  }
 }
 function node_for6_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate9_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for6(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[-(180/arm_count):360/arm_count:360-(180/arm_count)-1])
  {
   node_rotate9(i,j,k,l,m,n);
  }
 }
 function node_rotate9_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,i])*node_boolean20_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate9(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,i])node_boolean20(i,j,k,l,m,n);
 }
 function node_boolean20_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_tube3_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean20(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   node_tube3(i,j,k,l,m,n);
   node_cube5(i,j,k,l,m,n);
  }
 }
 function node_tube3_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,motor_height]);
 module node_tube3_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,motor_height]) cylinder(r=motor_radius+1.5,r1=motor_radius+1.5,h=motor_height*0.20,$fn=(16+motor_radius+1.5*3.14116));
 }
 function node_tube3_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,motor_height]);
 module node_tube3_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,motor_height])translate([0,0,-(0.001)]) cylinder(r=motor_radius+1.5-(1.6),r1=motor_radius+1.5-(1.6),h=motor_height*0.20+((0.001)*2),$fn=(16+motor_radius+1.5*3.14116));
 }
 function node_tube3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,motor_height]);
 module node_tube3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,motor_height])difference()
  {
    cylinder(r=motor_radius+1.5,r1=motor_radius+1.5,h=motor_height*0.20,$fn=(16+motor_radius+1.5*3.14116));
   translate([0,0,-(0.001)]) cylinder(r=motor_radius+1.5-(1.6),r1=motor_radius+1.5-(1.6),h=motor_height*0.20+((0.001)*2),$fn=(16+motor_radius+1.5*3.14116));
  }
 }
 function node_cube5_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize)-motor_radius/2,0,motor_height]);
 module node_cube5(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize)-motor_radius/2,0,motor_height])cube([motor_radius*2,motor_radius*1.2,motor_height],center=true);
 }
 function node_boolean17_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean16_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean17(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   node_boolean16(i,j,k,l,m,n);
   node_for7(i,j,k,l,m,n);
  }
 }
 function node_boolean16_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean10_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean16(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_boolean10(i,j,k,l,m,n);
   node_rotate10(i,j,k,l,m,n);
   node_box1(i,j,k,l,m,n);
  }
 }
 function node_boolean10_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_translate2_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean10(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_translate2(i,j,k,l,m,n);
   node_translate3(i,j,k,l,m,n);
  }
 }
 function node_translate2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,propsize/2,0])*node_cube4_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,propsize/2,0])node_cube4(i,j,k,l,m,n);
 }
 function node_cube4_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,arm_height/2+motor_height]);
 module node_cube4(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,arm_height/2+motor_height])cube([propsize*2+8,0.8,arm_height],center=true);
 }
 function node_translate3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,-propsize/2,0])*node_cube4_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,-propsize/2,0])node_cube4(i,j,k,l,m,n);
 }
 function node_cube4_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,arm_height/2+motor_height]);
 module node_cube4(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,arm_height/2+motor_height])cube([propsize*2+8,0.8,arm_height],center=true);
 }
 function node_rotate10_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,90])*node_boolean10_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate10(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,90])node_boolean10(i,j,k,l,m,n);
 }
 function node_boolean10_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_translate2_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean10(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_translate2(i,j,k,l,m,n);
   node_translate3(i,j,k,l,m,n);
  }
 }
 function node_translate2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,propsize/2,0])*node_cube4_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,propsize/2,0])node_cube4(i,j,k,l,m,n);
 }
 function node_cube4_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,arm_height/2+motor_height]);
 module node_cube4(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,arm_height/2+motor_height])cube([propsize*2+8,0.8,arm_height],center=true);
 }
 function node_translate3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,-propsize/2,0])*node_cube4_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,-propsize/2,0])node_cube4(i,j,k,l,m,n);
 }
 function node_cube4_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,arm_height/2+motor_height]);
 module node_cube4(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,arm_height/2+motor_height])cube([propsize*2+8,0.8,arm_height],center=true);
 }
 function node_box1_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,motor_height]);
 module node_box1_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,motor_height])hull()
  {
   translate([-((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),-((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(arm_height),$fn=64);
   translate([-((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))), ((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(arm_height),$fn=64);
   translate([ ((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),-((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(arm_height),$fn=64);
   translate([ ((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))), ((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(arm_height),$fn=64);
  }
 }
 function node_box1_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,motor_height]);
 module node_box1_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,motor_height])translate([ 0,0,-0.05])hull()
  {
   translate([-((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),-((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),0]) cylinder(r=max(((propsize/2+4)-(0.4)),0.00001),h=(((arm_height))-(-0.05)+0.01),$fn=64);
   translate([-((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))), ((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),0]) cylinder(r=max(((propsize/2+4)-(0.4)),0.00001),h=(((arm_height))-(-0.05)+0.01),$fn=64);
   translate([ ((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),-((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),0]) cylinder(r=max(((propsize/2+4)-(0.4)),0.00001),h=(((arm_height))-(-0.05)+0.01),$fn=64);
   translate([ ((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))), ((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),0]) cylinder(r=max(((propsize/2+4)-(0.4)),0.00001),h=(((arm_height))-(-0.05)+0.01),$fn=64);
  }
 }
 function node_box1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,motor_height]);
 module node_box1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,motor_height])difference()
  {
   {
    hull()
    {
     translate([-((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),-((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(arm_height),$fn=64);
     translate([-((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))), ((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(arm_height),$fn=64);
     translate([ ((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),-((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(arm_height),$fn=64);
     translate([ ((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))), ((((propsize*2+8)/2))-(max(propsize/2+4,0.00001))),0]) cylinder(r=max(propsize/2+4,0.00001),h=(arm_height),$fn=64);
    }
   }
   {
    translate([ 0,0,-0.05])hull()
    {
     translate([-((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),-((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),0]) cylinder(r=max(((propsize/2+4)-(0.4)),0.00001),h=(((arm_height))-(-0.05)+0.01),$fn=64);
     translate([-((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))), ((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),0]) cylinder(r=max(((propsize/2+4)-(0.4)),0.00001),h=(((arm_height))-(-0.05)+0.01),$fn=64);
     translate([ ((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),-((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),0]) cylinder(r=max(((propsize/2+4)-(0.4)),0.00001),h=(((arm_height))-(-0.05)+0.01),$fn=64);
     translate([ ((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))), ((((propsize*2+8)/2))-((max(propsize/2+4,0.00001))+(0.4))),0]) cylinder(r=max(((propsize/2+4)-(0.4)),0.00001),h=(((arm_height))-(-0.05)+0.01),$fn=64);
    }
   }
  }
 }
 function node_for7_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate11_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for7(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[-(180/arm_count):360/arm_count:360-(180/arm_count)-1])
  {
   node_rotate11(i,j,k,l,m,n);
  }
 }
 function node_rotate11_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,i])*node_tube3_inobject_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate11(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,i])node_tube3_inobject(i,j,k,l,m,n);
 }
 function node_tube3_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,motor_height]);
 module node_tube3_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,motor_height]) cylinder(r=motor_radius+1.5,r1=motor_radius+1.5,h=motor_height*0.20,$fn=(16+motor_radius+1.5*3.14116));
 }
 function node_tube3_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,motor_height]);
 module node_tube3_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,motor_height])translate([0,0,-(0.001)]) cylinder(r=motor_radius+1.5-(1.6),r1=motor_radius+1.5-(1.6),h=motor_height*0.20+((0.001)*2),$fn=(16+motor_radius+1.5*3.14116));
 }
 function node_tube3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,motor_height]);
 module node_tube3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,motor_height])difference()
  {
    cylinder(r=motor_radius+1.5,r1=motor_radius+1.5,h=motor_height*0.20,$fn=(16+motor_radius+1.5*3.14116));
   translate([0,0,-(0.001)]) cylinder(r=motor_radius+1.5-(1.6),r1=motor_radius+1.5-(1.6),h=motor_height*0.20+((0.001)*2),$fn=(16+motor_radius+1.5*3.14116));
  }
 }
 function node_color3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_ifdebug_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_color3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  {
   color([0.517647058824,0.717647058824,1.0,0.5])node_ifdebug(i,j,k,l,m,n);
  }
 }
 function node_ifdebug_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_for5_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_ifdebug(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  if($debug)
  {
   node_for5(i,j,k,l,m,n);
  }
   else
  {
   {
   }
  }
 }
 function node_for5_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate7_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for5(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[-(180/arm_count):360/arm_count:360-(180/arm_count)-1])
  {
   node_rotate7(i,j,k,l,m,n);
  }
 }
 function node_rotate7_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,i])*node_boolean4_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate7(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,i])node_boolean4(i,j,k,l,m,n);
 }
 function node_boolean4_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_tube1_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean4(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_tube1(i,j,k,l,m,n);
   node_cylinder6(i,j,k,l,m,n);
  }
 }
 function node_tube1_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,motor_height+arm_height]);
 module node_tube1_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,motor_height+arm_height]) cylinder(r=propsize/2,r1=propsize/2,h=0.1,$fn=(16+propsize/2*3.14116));
 }
 function node_tube1_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,motor_height+arm_height]);
 module node_tube1_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,motor_height+arm_height])translate([0,0,-(1)]) cylinder(r=propsize/2-(10),r1=propsize/2-(10),h=0.1+((1)*2),$fn=(16+propsize/2*3.14116));
 }
 function node_tube1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,motor_height+arm_height]);
 module node_tube1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,motor_height+arm_height])difference()
  {
    cylinder(r=propsize/2,r1=propsize/2,h=0.1,$fn=(16+propsize/2*3.14116));
   translate([0,0,-(1)]) cylinder(r=propsize/2-(10),r1=propsize/2-(10),h=0.1+((1)*2),$fn=(16+propsize/2*3.14116));
  }
 }
 function node_cylinder6_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([armwidth(propsize),0,arm_height]);
 module node_cylinder6(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([armwidth(propsize),0,arm_height])cylinder(r=motor_radius,r1=motor_radius,h=motor_height,center=false,$fn=(16+motor_radius*3.14116));
 }
 node_boolean19();
}
multicopter();
/*------------------- Other Headers --------------------------------*/
module hexgrid(
    grid_width=50,
    grid_lenght=60,
    grid_height=5,
    hex_radius=5,
    hex_border_width=1,
    center=true)
{
     ystep=2*sqrt(3/4*hex_radius*hex_radius);
     xstep=3*hex_radius/2;
     grid_width=round(grid_width/(xstep*2))*(2*xstep);
     grid_lenght=round(grid_lenght/(ystep*2))*(2*ystep);
     ox = center ? -grid_width/2  : 0;
     oy = center ? -grid_lenght/2 : 0;
     for (xi=[0:xstep:grid_width])
         for(yi=[0:ystep:grid_lenght])
 {
              x=xi+ox;
              y=((((xi/xstep)%2)==0)?0:ystep/2)+yi+oy;
              translate([x,y,0]) cylinder(r=(hex_radius-hex_border_width/2), h=grid_height, $fn=6);
 }
}
;
/*------------------- default module --------------------------------*/
/* force parameters for default module if they are connected to declaremodule */
propsize=58;
base_xsize=48;
base_ysize=31;
motor_radius=8.7/2;
arm_count=4;
arm_height=3.5;
motor_angle=0;
camera_xsize=15;
camera_ysize=23;
battery_height=8;
motor_height=20;
base_width=2.5;
camera_zsize=18;
/* force functions for default module if they are connected to declaremodule */
function armwidth(propsize)=sqrt(propsize*propsize*2)/2;
module multicopter6()
{
 /*------------------- isolated output objects --------------------------------*/
 /*------------------- final objects output --------------------------------*/
}
multicopter6();
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
                    "value": "motor_radius"
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
                    "value": "arm_height"
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
                    "value": "armwidth(propsize)"
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
                    "value": "16"
                }
            ],
            "typename": "Node_cylinder",
            "version": 1,
            "y": -805.072562986199,
            "x": 54.835581666535745
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
            "y": -782.8054186712457,
            "x": 575.9615798776408
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
                    "value": "-180/arm_count"
                },
                {
                    "tip": "target value of variable used in loop",
                    "type": "str",
                    "name": "end",
                    "value": "360-(180/arm_count)"
                },
                {
                    "tip": "increment of variable for each loop",
                    "type": "str",
                    "name": "step",
                    "value": "360/arm_count"
                }
            ],
            "typename": "Node_for",
            "version": 1,
            "y": -790.3090184222742,
            "x": 1503.6806702971674
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
            "y": -785.73850534711,
            "x": 1223.6880441706057
        },
        {
            "name": "node_cylinder0",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "tip": "top radius of cynlinder",
                    "type": "str",
                    "name": "radius",
                    "value": "motor_radius*2"
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
                    "value": "arm_height"
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
                    "value": "16"
                }
            ],
            "typename": "Node_cylinder",
            "version": 1,
            "y": -515.5257889301292,
            "x": 66.25856486633165
        },
        {
            "name": "node_cylinder1",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "tip": "top radius of cynlinder",
                    "type": "str",
                    "name": "radius",
                    "value": "(motor_radius-base_width)*0.65+(motor_radius*2-base_width)*0.35"
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
                    "value": "50"
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
                    "value": "armwidth(propsize)*(0.65)"
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
                    "value": "-1"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "$fn",
                    "value": "16"
                }
            ],
            "typename": "Node_cylinder",
            "version": 1,
            "y": 145.4454846262828,
            "x": 83.36924477943921
        },
        {
            "name": "node_cylinder2",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "tip": "top radius of cynlinder",
                    "type": "str",
                    "name": "radius",
                    "value": "motor_radius*2-base_width"
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
                    "value": "50"
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
                    "value": "-1"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "$fn",
                    "value": "16"
                }
            ],
            "typename": "Node_cylinder",
            "version": 1,
            "y": 401.4380740439278,
            "x": 87.70666422633713
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
                    "connection": "node_cylinder1.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "connection": "node_cylinder2.object",
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
            "y": 334.61018296322595,
            "x": 377.8014479413805
        },
        {
            "name": "node_cylinder3",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "tip": "top radius of cynlinder",
                    "type": "str",
                    "name": "radius",
                    "value": "motor_radius+1"
                },
                {
                    "alias": "bottom radius",
                    "tip": "bottom radius of cynlinder",
                    "type": "str",
                    "name": "radius2",
                    "value": "motor_radius+2"
                },
                {
                    "tip": "height of cylinder",
                    "type": "str",
                    "name": "height",
                    "value": "motor_height*0.80"
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
                    "value": "armwidth(propsize)"
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
            "y": -554.9379755390944,
            "x": 553.6494904687972
        },
        {
            "name": "node_cylinder4",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "tip": "top radius of cynlinder",
                    "type": "str",
                    "name": "radius",
                    "value": "motor_radius"
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
                    "value": "100"
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
                    "value": "armwidth(propsize)"
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
                    "value": "-1"
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
            "y": 1149.4787628517915,
            "x": 1797.9337606521199
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
                    "value": "-180/arm_count"
                },
                {
                    "tip": "target value of variable used in loop",
                    "type": "str",
                    "name": "end",
                    "value": "360-(180/arm_count)"
                },
                {
                    "tip": "increment of variable for each loop",
                    "type": "str",
                    "name": "step",
                    "value": "360/arm_count"
                }
            ],
            "typename": "Node_for",
            "version": 1,
            "y": 858.0915540719545,
            "x": 1246.5680371968137
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
            "y": 344.8155771991262,
            "x": 629.6296051610816
        },
        {
            "name": "node_hexgrid",
            "inputplugs": [
                {
                    "tip": "x size of grid",
                    "type": "str",
                    "name": "grid_width",
                    "value": "armwidth(propsize)*2+motor_radius"
                },
                {
                    "tip": "y size of grid",
                    "type": "str",
                    "name": "grid_lenght",
                    "value": "armwidth(propsize)*2+motor_radius"
                },
                {
                    "tip": "height of hexagons",
                    "type": "str",
                    "name": "grid_height",
                    "value": "100"
                },
                {
                    "tip": "radius of hexagons",
                    "type": "str",
                    "name": "hex_radius",
                    "value": "3"
                },
                {
                    "tip": "space between hexagons",
                    "type": "str",
                    "name": "hex_border_width",
                    "value": "0.5"
                },
                {
                    "tip": "centering of grid",
                    "type": "str",
                    "name": "center",
                    "value": "true",
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
                    "value": "-3"
                }
            ],
            "typename": "Node_hexgrid",
            "version": 1,
            "y": 996.9009281213389,
            "x": 1502.771985931875
        },
        {
            "name": "node_for1",
            "inputplugs": [
                {
                    "tip": "input object",
                    "connection": "node_rotate6.object",
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
                    "value": "-180/arm_count"
                },
                {
                    "tip": "target value of variable used in loop",
                    "type": "str",
                    "name": "end",
                    "value": "360-(180/arm_count)"
                },
                {
                    "tip": "increment of variable for each loop",
                    "type": "str",
                    "name": "step",
                    "value": "360/arm_count"
                }
            ],
            "typename": "Node_for",
            "version": 1,
            "y": 1142.2012334446972,
            "x": 2624.0162609983768
        },
        {
            "name": "node_rotate1",
            "inputplugs": [
                {
                    "connection": "node_cylinder4.object",
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
            "y": 1170.1055687130747,
            "x": 2061.1514841680673
        },
        {
            "name": "node_clamp",
            "inputplugs": [
                {
                    "tip": "input 3D object to clamp",
                    "connection": "node_boolean5.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "tip": "x size of clamping cube",
                    "type": "str",
                    "name": "x",
                    "value": "1000"
                },
                {
                    "tip": "y size of clamping cube",
                    "type": "str",
                    "name": "y",
                    "value": "1000"
                },
                {
                    "tip": "z size of clamping cube",
                    "type": "str",
                    "name": "z",
                    "value": "1"
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
                    "value": "0.5"
                },
                {
                    "tip": "centering of clamping cube",
                    "type": "str",
                    "name": "center",
                    "value": "true",
                    "combo": [
                        "false",
                        "true"
                    ]
                }
            ],
            "typename": "Node_clamp",
            "version": 1,
            "y": 878.0605597633382,
            "x": 2483.91515591822
        },
        {
            "name": "node_cube",
            "inputplugs": [
                {
                    "tip": "x size of cube",
                    "type": "str",
                    "name": "sizex",
                    "value": "base_xsize"
                },
                {
                    "tip": "y size of cube",
                    "type": "str",
                    "name": "sizey",
                    "value": "base_ysize"
                },
                {
                    "tip": "z size of cube",
                    "type": "str",
                    "name": "sizez",
                    "value": "arm_height"
                },
                {
                    "tip": "x translation of output object",
                    "connection": "base_xoffest.string",
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
                    "value": "arm_height/2"
                },
                {
                    "tip": "centering of cube",
                    "type": "str",
                    "name": "center",
                    "value": "true",
                    "combo": [
                        "true",
                        "false"
                    ]
                }
            ],
            "typename": "Node_cube",
            "version": 1,
            "y": 309.22839984146367,
            "x": 1246.2264819655065
        },
        {
            "name": "node_cube0",
            "inputplugs": [
                {
                    "tip": "x size of cube",
                    "type": "str",
                    "name": "sizex",
                    "value": "base_xsize-base_width*2"
                },
                {
                    "tip": "y size of cube",
                    "type": "str",
                    "name": "sizey",
                    "value": "base_ysize-base_width*2"
                },
                {
                    "tip": "z size of cube",
                    "type": "str",
                    "name": "sizez",
                    "value": "100"
                },
                {
                    "tip": "x translation of output object",
                    "connection": "base_xoffest.string",
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
                    "value": "true",
                    "combo": [
                        "true",
                        "false"
                    ]
                }
            ],
            "typename": "Node_cube",
            "version": 1,
            "y": 563.3652223262529,
            "x": 1218.9820170379944
        },
        {
            "name": "node_tube",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "type": "str",
                    "name": "radius",
                    "value": "motor_radius+2"
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
                    "value": "arm_height"
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "armwidth(propsize)"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "0"
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
                    "value": "2"
                },
                {
                    "type": "str",
                    "name": "holemargin",
                    "value": "0.1"
                },
                {
                    "type": "str",
                    "name": "$fn",
                    "value": ""
                }
            ],
            "typename": "Node_tube",
            "version": 1,
            "y": 61.14269788630514,
            "x": 685.3859494384342
        },
        {
            "name": "node_rotate2",
            "inputplugs": [
                {
                    "connection": "node_tube.object",
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
            "y": 75.2925859600524,
            "x": 940.7923399615875
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
                    "value": "-(180/arm_count)"
                },
                {
                    "tip": "target value of variable used in loop",
                    "type": "str",
                    "name": "end",
                    "value": "360-(180/arm_count)-1"
                },
                {
                    "tip": "increment of variable for each loop",
                    "type": "str",
                    "name": "step",
                    "value": "360/arm_count"
                }
            ],
            "typename": "Node_for",
            "version": 1,
            "y": 72.17155771444328,
            "x": 1193.9162768015676
        },
        {
            "name": "base_xoffest",
            "inputplugs": [
                {
                    "multiline": true,
                    "type": "str",
                    "name": "string",
                    "value": "0"
                }
            ],
            "typename": "Node_string",
            "version": 1,
            "y": 401.1031172465225,
            "x": 957.5932776253353
        },
        {
            "name": "arm_width",
            "inputplugs": [
                {
                    "connection": "arm_count.nextparam",
                    "type": "param",
                    "name": "previousparam",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "name",
                    "value": "propsize"
                },
                {
                    "connection": "node_string6.string",
                    "type": "str",
                    "name": "string",
                    "value": "58"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -2347.0185344342262,
            "x": 7063.7361436106585
        },
        {
            "name": "base_xsize",
            "inputplugs": [
                {
                    "connection": "arm_height.nextparam",
                    "type": "param",
                    "name": "previousparam",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "name",
                    "value": "base_xsize"
                },
                {
                    "connection": "node_string4.string",
                    "type": "str",
                    "name": "string",
                    "value": "48"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -1841.0554541750616,
            "x": 7061.682751316359
        },
        {
            "name": "base_ysize",
            "inputplugs": [
                {
                    "connection": "base_xsize.nextparam",
                    "type": "param",
                    "name": "previousparam",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "name",
                    "value": "base_ysize"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "31"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -1556.0535720426465,
            "x": 7066.262878402595
        },
        {
            "name": "motor_radius",
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
                    "value": "motor_radius"
                },
                {
                    "connection": "node_string2.string",
                    "type": "str",
                    "name": "string",
                    "value": "8.7/2"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -1037.887261805678,
            "x": 7075.967757889772
        },
        {
            "name": "arm_count",
            "inputplugs": [
                {
                    "type": "param",
                    "name": "previousparam",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "name",
                    "value": "arm_count"
                },
                {
                    "connection": "node_string.string",
                    "type": "str",
                    "name": "string",
                    "value": "6"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -2599.797601972082,
            "x": 7062.836536633087
        },
        {
            "name": "arm_height",
            "inputplugs": [
                {
                    "connection": "arm_width.nextparam",
                    "type": "param",
                    "name": "previousparam",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "name",
                    "value": "arm_height"
                },
                {
                    "connection": "node_string7.string",
                    "type": "str",
                    "name": "string",
                    "value": "4"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -2101.481703714589,
            "x": 7069.581392553258
        },
        {
            "name": "node_rotate3",
            "inputplugs": [
                {
                    "connection": "node_cylinder3.object",
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
            "y": -546.9797335163898,
            "x": 804.2154607514599
        },
        {
            "name": "node_for3",
            "inputplugs": [
                {
                    "tip": "input object",
                    "connection": "node_rotate5.object",
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
                    "value": "-180/arm_count"
                },
                {
                    "tip": "target value of variable used in loop",
                    "type": "str",
                    "name": "end",
                    "value": "360-(180/arm_count)-1"
                },
                {
                    "tip": "increment of variable for each loop",
                    "type": "str",
                    "name": "step",
                    "value": "360/arm_count"
                }
            ],
            "typename": "Node_for",
            "version": 1,
            "y": -542.4080516715345,
            "x": 1400.4430974581358
        },
        {
            "name": "node_cube1",
            "inputplugs": [
                {
                    "tip": "x size of cube",
                    "type": "str",
                    "name": "sizex",
                    "value": "6"
                },
                {
                    "tip": "y size of cube",
                    "type": "str",
                    "name": "sizey",
                    "value": "motor_radius*0.55"
                },
                {
                    "tip": "z size of cube",
                    "type": "str",
                    "name": "sizez",
                    "value": "50"
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "armwidth(propsize)-motor_radius"
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
                    "value": "50/2-2"
                },
                {
                    "tip": "centering of cube",
                    "type": "str",
                    "name": "center",
                    "value": "true",
                    "combo": [
                        "true",
                        "false"
                    ]
                }
            ],
            "typename": "Node_cube",
            "version": 1,
            "y": 1416.8765474466877,
            "x": 1805.2907278762932
        },
        {
            "name": "node_rotate4",
            "inputplugs": [
                {
                    "connection": "node_boolean13.object",
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
                    "value": "l"
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
            "y": 1355.9192264904755,
            "x": 2347.7366795767266
        },
        {
            "name": "node_for4",
            "inputplugs": [
                {
                    "tip": "input object",
                    "connection": "node_rotate4.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "tip": "name of variable that will change during loop",
                    "type": "str",
                    "name": "variablename",
                    "value": "l",
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
                    "value": "-180/arm_count"
                },
                {
                    "tip": "target value of variable used in loop",
                    "type": "str",
                    "name": "end",
                    "value": "360-(180/arm_count)"
                },
                {
                    "tip": "increment of variable for each loop",
                    "type": "str",
                    "name": "step",
                    "value": "360/arm_count"
                }
            ],
            "typename": "Node_for",
            "version": 1,
            "y": 1353.9817271710572,
            "x": 2626.0699524292445
        },
        {
            "name": "node_cube2",
            "inputplugs": [
                {
                    "tip": "x size of cube",
                    "type": "str",
                    "name": "sizex",
                    "value": "8+motor_radius"
                },
                {
                    "tip": "y size of cube",
                    "type": "str",
                    "name": "sizey",
                    "value": "motor_radius*0.55"
                },
                {
                    "tip": "z size of cube",
                    "type": "str",
                    "name": "sizez",
                    "value": "50"
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "armwidth(propsize)-motor_radius-4"
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
                    "value": "50/2+2"
                },
                {
                    "tip": "centering of cube",
                    "type": "str",
                    "name": "center",
                    "value": "true",
                    "combo": [
                        "true",
                        "false"
                    ]
                }
            ],
            "typename": "Node_cube",
            "version": 1,
            "y": 1790.986377015659,
            "x": 1757.5532683248643
        },
        {
            "name": "node_string",
            "inputplugs": [
                {
                    "multiline": true,
                    "type": "str",
                    "name": "string",
                    "value": "4"
                }
            ],
            "typename": "Node_string",
            "version": 1,
            "y": -2557.3183867982007,
            "x": 6777.774092330379
        },
        {
            "name": "node_rotate5",
            "inputplugs": [
                {
                    "connection": "node_rotate3.object",
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
                    "value": "motor_angle"
                },
                {
                    "type": "str",
                    "name": "rz",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "space",
                    "value": "local",
                    "combo": [
                        "world",
                        "object",
                        "local"
                    ]
                }
            ],
            "typename": "Node_rotate",
            "version": 1,
            "y": -546.9634825275839,
            "x": 1105.0034916476106
        },
        {
            "name": "motor_angle",
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
                    "value": "motor_angle"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "0"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -762.9061329888441,
            "x": 6769.219761146502
        },
        {
            "name": "node_rotate6",
            "inputplugs": [
                {
                    "connection": "node_rotate1.object",
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
                    "value": "motor_angle"
                },
                {
                    "type": "str",
                    "name": "rz",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "space",
                    "value": "local",
                    "combo": [
                        "world",
                        "object",
                        "local"
                    ]
                }
            ],
            "typename": "Node_rotate",
            "version": 1,
            "y": 1154.135298265367,
            "x": 2349.9598567568155
        },
        {
            "name": "node_tube0",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "connection": "node_string1.string",
                    "type": "str",
                    "name": "radius",
                    "value": "4"
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
                    "value": "arm_height"
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "-base_xsize/2"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "base_ysize/2"
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
                    "value": "2"
                },
                {
                    "connection": "node_string0.string",
                    "type": "str",
                    "name": "holemargin",
                    "value": "0.01"
                },
                {
                    "type": "str",
                    "name": "$fn",
                    "value": ""
                }
            ],
            "typename": "Node_tube",
            "version": 1,
            "y": -701.4271872714887,
            "x": 2245.4092155873905
        },
        {
            "name": "node_tube000",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "connection": "node_string1.string",
                    "type": "str",
                    "name": "radius",
                    "value": "4"
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
                    "value": "arm_height"
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "base_xsize/2"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "base_ysize/2"
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
                    "value": "2"
                },
                {
                    "connection": "node_string0.string",
                    "type": "str",
                    "name": "holemargin",
                    "value": "0.01"
                },
                {
                    "type": "str",
                    "name": "$fn",
                    "value": ""
                }
            ],
            "typename": "Node_tube",
            "version": 1,
            "y": -441.11906010003577,
            "x": 2231.7960123082353
        },
        {
            "name": "node_tube010",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "connection": "node_string1.string",
                    "type": "str",
                    "name": "radius",
                    "value": "4.3"
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
                    "value": "arm_height"
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "-base_xsize/2"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "-base_ysize/2"
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
                    "value": "2"
                },
                {
                    "connection": "node_string0.string",
                    "type": "str",
                    "name": "holemargin",
                    "value": "0.1"
                },
                {
                    "type": "str",
                    "name": "$fn",
                    "value": ""
                }
            ],
            "typename": "Node_tube",
            "version": 1,
            "y": -987.654644138973,
            "x": 2235.7498098775663
        },
        {
            "name": "node_tube0101",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "connection": "node_string1.string",
                    "type": "str",
                    "name": "radius",
                    "value": "4"
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
                    "value": "arm_height"
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "base_xsize/2"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "-base_ysize/2"
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
                    "value": "2"
                },
                {
                    "connection": "node_string0.string",
                    "type": "str",
                    "name": "holemargin",
                    "value": "0.01"
                },
                {
                    "type": "str",
                    "name": "$fn",
                    "value": ""
                }
            ],
            "typename": "Node_tube",
            "version": 1,
            "y": -168.752901067501,
            "x": 2240.740405596122
        },
        {
            "name": "node_boolean",
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
                    "connection": "node_tube010.outobject",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_tube0.outobject",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_tube000.outobject",
                    "type": "object",
                    "name": "object3",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_tube0101.outobject",
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
            "y": 88.29055167697243,
            "x": 2678.215039822151
        },
        {
            "name": "node_boolean0",
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
                    "connection": "node_tube010.holeobject",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_tube0.holeobject",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_tube000.holeobject",
                    "type": "object",
                    "name": "object3",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_tube0101.holeobject",
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
            "y": -470.57071834681733,
            "x": 2766.915029743618
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
                    "connection": "node_for1.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_for4.object",
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
            "y": 901.5680759117456,
            "x": 2946.6821505121497
        },
        {
            "name": "node_resize",
            "inputplugs": [
                {
                    "connection": "node_boolean0.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "x",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "y",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "z",
                    "value": "battery_height+arm_height"
                }
            ],
            "typename": "Node_resize",
            "version": 1,
            "y": -946.6320838558499,
            "x": 2962.4721312554284
        },
        {
            "name": "node_boolean1",
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
                    "value": "-battery_height"
                },
                {
                    "tip": "First object in boolean operation",
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
                    "connection": "node_color1.object",
                    "type": "object",
                    "name": "object3",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_color2.object",
                    "type": "object",
                    "name": "object4",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_boolean15.object",
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
            "y": -723.2489498730702,
            "x": 4749.794561462859
        },
        {
            "name": "node_boolean5",
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
                    "connection": "node_boolean9.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_hexgrid.object",
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
            "y": 887.8662732428186,
            "x": 2223.954565980822
        },
        {
            "name": "node_boolean6",
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
                    "connection": "node_for.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_color.object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_for8.object",
                    "type": "object",
                    "name": "object3",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_for2.object",
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
            "y": -208.80931984112942,
            "x": 1897.8542535967904
        },
        {
            "name": "node_boolean7",
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
                    "connection": "node_boolean6.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_boolean9.object",
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
            "y": 314.45185468271904,
            "x": 2238.0400407990965
        },
        {
            "name": "node_boolean8",
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
                    "connection": "node_cube.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_cube0.object",
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
            "y": 613.6506186370871,
            "x": 2506.0470393174064
        },
        {
            "name": "node_boolean9",
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
                    "value": "-5"
                },
                {
                    "tip": "First object in boolean operation",
                    "connection": "node_cube0.object",
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
            "y": 724.420685501037,
            "x": 1553.3578528838543
        },
        {
            "name": "node_boolean11",
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
                    "connection": "node_boolean12.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_boolean3.object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_boolean0.object",
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
            "y": 411.88877918197454,
            "x": 4432.633723188297
        },
        {
            "name": "node_boolean12",
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
                    "connection": "node_boolean7.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_clamp.object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_boolean8.object",
                    "type": "object",
                    "name": "object3",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_boolean.object",
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
            "y": 597.8518847886335,
            "x": 2973.1085938098686
        },
        {
            "name": "node_boolean13",
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
                    "connection": "node_cube1.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_cube2.object",
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
            "y": 1454.384000223538,
            "x": 2062.698432640409
        },
        {
            "name": "node_color",
            "inputplugs": [
                {
                    "tip": "input 3D object",
                    "connection": "node_for3.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "name": "r",
                    "tip": "red  (expression or string from 0 to 1)",
                    "value": "1",
                    "alias": "red",
                    "connection": "node_rgbpicker2.r",
                    "type": "str"
                },
                {
                    "name": "g",
                    "tip": "green  (expression or string from 0 to 1)",
                    "value": "0",
                    "alias": "green",
                    "connection": "node_rgbpicker2.g",
                    "type": "str"
                },
                {
                    "name": "b",
                    "tip": "blue  (expression or string from 0 to 1)",
                    "value": "0",
                    "alias": "blue",
                    "connection": "node_rgbpicker2.b",
                    "type": "str"
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
            "y": -265.71518826411125,
            "x": 1610.657511016435
        },
        {
            "name": "node_color0",
            "inputplugs": [
                {
                    "tip": "input 3D object",
                    "connection": "node_resize.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "name": "r",
                    "tip": "red  (expression or string from 0 to 1)",
                    "value": "1",
                    "alias": "red",
                    "connection": "node_rgbpicker1.r",
                    "type": "str"
                },
                {
                    "name": "g",
                    "tip": "green  (expression or string from 0 to 1)",
                    "value": "0",
                    "alias": "green",
                    "connection": "node_rgbpicker1.g",
                    "type": "str"
                },
                {
                    "name": "b",
                    "tip": "blue  (expression or string from 0 to 1)",
                    "value": "0",
                    "alias": "blue",
                    "connection": "node_rgbpicker1.b",
                    "type": "str"
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
            "y": -991.6468510157308,
            "x": 3500.8116904303392
        },
        {
            "name": "node_clamp0",
            "inputplugs": [
                {
                    "tip": "input 3D object to clamp",
                    "connection": "node_boolean11.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "tip": "x size of clamping cube",
                    "type": "str",
                    "name": "x",
                    "value": "200"
                },
                {
                    "tip": "y size of clamping cube",
                    "type": "str",
                    "name": "y",
                    "value": "200"
                },
                {
                    "tip": "z size of clamping cube",
                    "type": "str",
                    "name": "z",
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
                    "value": "50"
                },
                {
                    "tip": "centering of clamping cube",
                    "type": "str",
                    "name": "center",
                    "value": "true",
                    "combo": [
                        "false",
                        "true"
                    ]
                }
            ],
            "typename": "Node_clamp",
            "version": 1,
            "y": -269.2297480067259,
            "x": 5161.253251548502
        },
        {
            "name": "node_box",
            "inputplugs": [
                {
                    "tip": "x size of box",
                    "type": "str",
                    "name": "sizex",
                    "value": "base_xsize"
                },
                {
                    "tip": "y size of box",
                    "type": "str",
                    "name": "sizey",
                    "value": "base_ysize"
                },
                {
                    "tip": "z size of box",
                    "type": "str",
                    "name": "sizez",
                    "value": "battery_height"
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
                    "value": "0.6"
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
            "y": -1571.5542314837953,
            "x": 3779.188522503561
        },
        {
            "name": "node_box0",
            "inputplugs": [
                {
                    "tip": "x size of box",
                    "type": "str",
                    "name": "sizex",
                    "value": "camera_xsize"
                },
                {
                    "tip": "y size of box",
                    "type": "str",
                    "name": "sizey",
                    "value": "camera_ysize"
                },
                {
                    "tip": "z size of box",
                    "type": "str",
                    "name": "sizez",
                    "value": "battery_height"
                },
                {
                    "tip": "x translation of box",
                    "type": "str",
                    "name": "tx",
                    "value": "base_xsize/2+camera_xsize/2"
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
                    "value": "0.6"
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
            "y": 329.68955453225294,
            "x": 3415.5509764195817
        },
        {
            "name": "node_param",
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
                    "value": "camera_xsize"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "15"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -467.3223173754368,
            "x": 6418.202339340056
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
                    "value": "camera_ysize"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "23"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -469.1882974864309,
            "x": 6758.987809613758
        },
        {
            "name": "node_param1",
            "inputplugs": [
                {
                    "connection": "motor_angle.nextparam",
                    "type": "param",
                    "name": "previousparam",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "name",
                    "value": "battery_height"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "8"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -763.7230405377604,
            "x": 7080.979527766867
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
                    "value": "220",
                    "alias": "green",
                    "hidden": true,
                    "type": "str"
                },
                {
                    "name": "b",
                    "tip": "blue  (expression or string from 0 to 1)",
                    "value": "48",
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
            "y": -978.9302143020011,
            "x": 4112.459530675054
        },
        {
            "name": "node_color1",
            "inputplugs": [
                {
                    "tip": "input 3D object",
                    "connection": "node_boolean2.object",
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
                    "value": "1"
                }
            ],
            "typename": "Node_color",
            "version": 1,
            "y": -1048.7032224085585,
            "x": 4426.116868308069
        },
        {
            "name": "node_cube3",
            "inputplugs": [
                {
                    "tip": "x size of cube",
                    "type": "str",
                    "name": "sizex",
                    "value": "base_xsize-1"
                },
                {
                    "tip": "y size of cube",
                    "type": "str",
                    "name": "sizey",
                    "value": "base_ysize-1"
                },
                {
                    "tip": "z size of cube",
                    "type": "str",
                    "name": "sizez",
                    "value": "battery_height"
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "-10"
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
                    "value": "battery_height/2+0.5"
                },
                {
                    "tip": "centering of cube",
                    "type": "str",
                    "name": "center",
                    "value": "true",
                    "combo": [
                        "true",
                        "false"
                    ]
                }
            ],
            "typename": "Node_cube",
            "version": 1,
            "y": 317.3773932817214,
            "x": 3041.5408468893606
        },
        {
            "name": "node_boolean2",
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
                    "connection": "node_box.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_cube3.object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_clamp1.object",
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
            "y": -1240.863982519278,
            "x": 4033.833348586855
        },
        {
            "name": "node_color2",
            "inputplugs": [
                {
                    "tip": "input 3D object",
                    "connection": "node_boolean14.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "name": "r",
                    "tip": "red  (expression or string from 0 to 1)",
                    "value": "1",
                    "alias": "red",
                    "connection": "node_rgbpicker.g",
                    "type": "str"
                },
                {
                    "name": "g",
                    "tip": "green  (expression or string from 0 to 1)",
                    "value": "1",
                    "alias": "green",
                    "connection": "node_rgbpicker.r",
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
                    "value": "1"
                }
            ],
            "typename": "Node_color",
            "version": 1,
            "y": -817.6651361740876,
            "x": 4433.405547023856
        },
        {
            "name": "node_tube1",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "type": "str",
                    "name": "radius",
                    "value": "propsize/2"
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
                    "value": "armwidth(propsize)"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "tz",
                    "value": "motor_height+arm_height"
                },
                {
                    "alias": "thickness",
                    "type": "str",
                    "name": "tickness",
                    "value": "10"
                },
                {
                    "type": "str",
                    "name": "holemargin",
                    "value": "1"
                },
                {
                    "type": "str",
                    "name": "$fn",
                    "value": ""
                }
            ],
            "typename": "Node_tube",
            "version": 1,
            "y": 2614.117324451332,
            "x": 4015.745227294471
        },
        {
            "name": "node_rotate7",
            "inputplugs": [
                {
                    "connection": "node_boolean4.object",
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
            "y": 2603.766779430291,
            "x": 4534.8520682142125
        },
        {
            "name": "node_for5",
            "inputplugs": [
                {
                    "tip": "input object",
                    "connection": "node_rotate7.object",
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
                    "value": "-(180/arm_count)"
                },
                {
                    "tip": "target value of variable used in loop",
                    "type": "str",
                    "name": "end",
                    "value": "360-(180/arm_count)-1"
                },
                {
                    "tip": "increment of variable for each loop",
                    "type": "str",
                    "name": "step",
                    "value": "360/arm_count"
                }
            ],
            "typename": "Node_for",
            "version": 1,
            "y": 2568.5727728861675,
            "x": 4751.1841461428685
        },
        {
            "name": "node_hexgrid0",
            "inputplugs": [
                {
                    "tip": "x size of grid",
                    "type": "str",
                    "name": "grid_width",
                    "value": "base_xsize"
                },
                {
                    "tip": "y size of grid",
                    "type": "str",
                    "name": "grid_lenght",
                    "value": "base_ysize"
                },
                {
                    "tip": "height of hexagons",
                    "type": "str",
                    "name": "grid_height",
                    "value": "10"
                },
                {
                    "tip": "radius of hexagons",
                    "type": "str",
                    "name": "hex_radius",
                    "value": "3"
                },
                {
                    "tip": "space between hexagons",
                    "type": "str",
                    "name": "hex_border_width",
                    "value": "0.5"
                },
                {
                    "tip": "centering of grid",
                    "type": "str",
                    "name": "center",
                    "value": "true",
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
                    "value": "-5"
                }
            ],
            "typename": "Node_hexgrid",
            "version": 1,
            "y": -1280.8075756136784,
            "x": 3540.361226807243
        },
        {
            "name": "node_clamp1",
            "inputplugs": [
                {
                    "tip": "input 3D object to clamp",
                    "connection": "node_hexgrid0.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "tip": "x size of clamping cube",
                    "type": "str",
                    "name": "x",
                    "value": "base_xsize-8"
                },
                {
                    "tip": "y size of clamping cube",
                    "type": "str",
                    "name": "y",
                    "value": "base_ysize-8"
                },
                {
                    "tip": "z size of clamping cube",
                    "type": "str",
                    "name": "z",
                    "value": "200"
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
                    "tip": "centering of clamping cube",
                    "type": "str",
                    "name": "center",
                    "value": "true",
                    "combo": [
                        "false",
                        "true"
                    ]
                }
            ],
            "typename": "Node_clamp",
            "version": 1,
            "y": -1270.1691543768952,
            "x": 3765.254885431235
        },
        {
            "name": "node_tube2",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "type": "str",
                    "name": "radius",
                    "value": "camera_ysize/2"
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
                    "value": "1"
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "base_xsize/2+camera_xsize/2+camera_xsize/2"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "0"
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
                    "value": "15"
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
            "y": -296.4181353013277,
            "x": 3682.64294998595
        },
        {
            "name": "node_boolean14",
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
                    "connection": "node_tube2.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_translate1.object",
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
            "y": -264.21079567657756,
            "x": 4177.664437571672
        },
        {
            "name": "node_cylinder5",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "tip": "top radius of cynlinder",
                    "type": "str",
                    "name": "radius",
                    "value": "4"
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
                    "value": "100"
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
            "y": -726.8286761106101,
            "x": 3171.8125221243563
        },
        {
            "name": "node_rotate8",
            "inputplugs": [
                {
                    "connection": "node_cylinder5.object",
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
                    "value": "90"
                },
                {
                    "type": "str",
                    "name": "rz",
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
            "typename": "Node_rotate",
            "version": 1,
            "y": -726.6009868604829,
            "x": 3444.7056939978384
        },
        {
            "name": "node_translate",
            "inputplugs": [
                {
                    "connection": "node_rotate8.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "base_xsize/2+camera_xsize/2"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "tz",
                    "value": "battery_height+2"
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
            "y": -749.7120698057272,
            "x": 3730.3844332724575
        },
        {
            "name": "node_boolean15",
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
                    "value": "-0.5"
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
                    "connection": "node_boolean21.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_hull1.object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_clamp2.object",
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
            "y": -528.0662294418605,
            "x": 4228.601594417079
        },
        {
            "name": "node_translate0",
            "inputplugs": [
                {
                    "connection": "node_boolean1.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "(propsize/2+base_xsize*0.5+5)"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "tz",
                    "value": "battery_height"
                },
                {
                    "type": "str",
                    "name": "space",
                    "value": "object",
                    "combo": [
                        "world",
                        "object",
                        "local"
                    ]
                }
            ],
            "typename": "Node_translate",
            "version": 1,
            "y": -484.55227467384066,
            "x": 4985.542665741339
        },
        {
            "name": "node_hexgrid1",
            "inputplugs": [
                {
                    "tip": "x size of grid",
                    "type": "str",
                    "name": "grid_width",
                    "value": "camera_xsize"
                },
                {
                    "tip": "y size of grid",
                    "type": "str",
                    "name": "grid_lenght",
                    "value": "camera_ysize"
                },
                {
                    "tip": "height of hexagons",
                    "type": "str",
                    "name": "grid_height",
                    "value": "10"
                },
                {
                    "tip": "radius of hexagons",
                    "type": "str",
                    "name": "hex_radius",
                    "value": "3"
                },
                {
                    "tip": "space between hexagons",
                    "type": "str",
                    "name": "hex_border_width",
                    "value": "0.5"
                },
                {
                    "tip": "centering of grid",
                    "type": "str",
                    "name": "center",
                    "value": "true",
                    "combo": [
                        "true",
                        "false"
                    ]
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "base_xsize/2+camera_xsize/2"
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
                    "value": "-5"
                }
            ],
            "typename": "Node_hexgrid",
            "version": 1,
            "y": -509.19861959433615,
            "x": 3415.4310620291617
        },
        {
            "name": "node_clamp2",
            "inputplugs": [
                {
                    "tip": "input 3D object to clamp",
                    "connection": "node_hexgrid1.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "tip": "x size of clamping cube",
                    "type": "str",
                    "name": "x",
                    "value": "camera_xsize-6"
                },
                {
                    "tip": "y size of clamping cube",
                    "type": "str",
                    "name": "y",
                    "value": "camera_ysize-6"
                },
                {
                    "tip": "z size of clamping cube",
                    "type": "str",
                    "name": "z",
                    "value": "10"
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "base_xsize/2+camera_xsize/2"
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
                    "tip": "centering of clamping cube",
                    "type": "str",
                    "name": "center",
                    "value": "true",
                    "combo": [
                        "false",
                        "true"
                    ]
                }
            ],
            "typename": "Node_clamp",
            "version": 1,
            "y": -531.6552093571408,
            "x": 3791.6608026312606
        },
        {
            "name": "node_translate1",
            "inputplugs": [
                {
                    "connection": "node_box0.holeobject",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "tz",
                    "value": "-1"
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
            "y": 155.41517353961353,
            "x": 3915.505868185326
        },
        {
            "name": "node_string0",
            "inputplugs": [
                {
                    "multiline": true,
                    "type": "str",
                    "name": "string",
                    "value": "0.01"
                }
            ],
            "typename": "Node_string",
            "version": 1,
            "y": -339.44353395374037,
            "x": 1936.582565270277
        },
        {
            "name": "node_string1",
            "inputplugs": [
                {
                    "multiline": true,
                    "type": "str",
                    "name": "string",
                    "value": "4"
                }
            ],
            "typename": "Node_string",
            "version": 1,
            "y": -532.7705711581871,
            "x": 1933.9789682456176
        },
        {
            "name": "node_ifassembled",
            "inputplugs": [
                {
                    "name": "true",
                    "tip": "object to output if assembled mode ON",
                    "value": "",
                    "alias": "object if assembled mode is ON",
                    "connection": "node_boolean1.object",
                    "type": "object"
                },
                {
                    "name": "false",
                    "tip": "object to output if assembled mode OFF",
                    "value": "",
                    "alias": "object if not assembled mode",
                    "connection": "node_translate0.object",
                    "type": "object"
                }
            ],
            "typename": "Node_ifassembled",
            "version": 1,
            "y": -471.87580304697804,
            "x": 5577.768516955359
        },
        {
            "name": "node_ifdebug",
            "inputplugs": [
                {
                    "name": "true",
                    "tip": "object to output if debug mode is ON",
                    "value": "",
                    "alias": "object if debug mode",
                    "connection": "node_for5.object",
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
            "y": 2470.9146626948213,
            "x": 5308.110732814861
        },
        {
            "name": "node_boolean4",
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
                    "connection": "node_tube1.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_cylinder6.object",
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
            "y": 2734.1067885849293,
            "x": 4294.547571295083
        },
        {
            "name": "node_cylinder6",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "tip": "top radius of cynlinder",
                    "type": "str",
                    "name": "radius",
                    "value": "motor_radius"
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
                    "value": "motor_height"
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
                    "value": "armwidth(propsize)"
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
                    "value": "arm_height"
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
            "y": 2882.693328521746,
            "x": 4024.748150825546
        },
        {
            "name": "node_color3",
            "inputplugs": [
                {
                    "tip": "input 3D object",
                    "connection": "node_ifdebug.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "name": "r",
                    "tip": "red  (expression or string from 0 to 1)",
                    "value": "1",
                    "alias": "red",
                    "connection": "node_rgbpicker0.r",
                    "type": "str"
                },
                {
                    "name": "g",
                    "tip": "green  (expression or string from 0 to 1)",
                    "value": "1",
                    "alias": "green",
                    "connection": "node_rgbpicker0.g",
                    "type": "str"
                },
                {
                    "name": "b",
                    "tip": "blue  (expression or string from 0 to 1)",
                    "value": "0",
                    "alias": "blue",
                    "connection": "node_rgbpicker0.b",
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
            "y": 537.5461629507363,
            "x": 6111.040387801111
        },
        {
            "name": "node_rgbpicker0",
            "inputplugs": [
                {
                    "name": "r",
                    "tip": "red  (expression or string from 0 to 1)",
                    "value": "132",
                    "alias": "red",
                    "hidden": true,
                    "type": "str"
                },
                {
                    "name": "g",
                    "tip": "green  (expression or string from 0 to 1)",
                    "value": "183",
                    "alias": "green",
                    "hidden": true,
                    "type": "str"
                },
                {
                    "name": "b",
                    "tip": "blue  (expression or string from 0 to 1)",
                    "value": "255",
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
            "y": 941.2445656338641,
            "x": 5888.770072571202
        },
        {
            "name": "node_param2",
            "inputplugs": [
                {
                    "connection": "motor_radius.nextparam",
                    "type": "param",
                    "name": "previousparam",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "name",
                    "value": "motor_height"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "20"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -765.6795039274698,
            "x": 6395.8778086269485
        },
        {
            "name": "node_box1",
            "inputplugs": [
                {
                    "tip": "x size of box",
                    "type": "str",
                    "name": "sizex",
                    "value": "propsize*2+8"
                },
                {
                    "tip": "y size of box",
                    "type": "str",
                    "name": "sizey",
                    "value": "propsize*2+8"
                },
                {
                    "tip": "z size of box",
                    "type": "str",
                    "name": "sizez",
                    "value": "arm_height"
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
                    "value": "motor_height"
                },
                {
                    "tip": "radius of corner rounding",
                    "type": "str",
                    "name": "rounding",
                    "value": "propsize/2+4"
                },
                {
                    "alias": "thickness",
                    "tip": "thickness of box",
                    "type": "str",
                    "name": "tickness",
                    "value": "0.4"
                },
                {
                    "tip": "the thickness of the bottom of the box",
                    "type": "str",
                    "name": "interiorheight",
                    "value": "-0.05"
                },
                {
                    "type": "str",
                    "name": "$fn",
                    "value": "64"
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
            "y": 2264.202369360708,
            "x": 4034.631530188213
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
                    "value": "armwidth"
                },
                {
                    "tip": "expression of function",
                    "type": "str",
                    "name": "expression",
                    "value": "sqrt(propsize*propsize*2)/2"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname1",
                    "value": "propsize"
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
            "y": -194.92810170603684,
            "x": 6784.149442688077
        },
        {
            "name": "node_rotate9",
            "inputplugs": [
                {
                    "connection": "node_boolean20.object",
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
            "y": 1337.2667694669462,
            "x": 4505.86777590475
        },
        {
            "name": "node_for6",
            "inputplugs": [
                {
                    "tip": "input object",
                    "connection": "node_rotate9.object",
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
                    "value": "-(180/arm_count)"
                },
                {
                    "tip": "target value of variable used in loop",
                    "type": "str",
                    "name": "end",
                    "value": "360-(180/arm_count)-1"
                },
                {
                    "tip": "increment of variable for each loop",
                    "type": "str",
                    "name": "step",
                    "value": "360/arm_count"
                }
            ],
            "typename": "Node_for",
            "version": 1,
            "y": 1479.0970494265111,
            "x": 4704.833719881008
        },
        {
            "name": "node_tube3",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "type": "str",
                    "name": "radius",
                    "value": "motor_radius+1.5"
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
                    "value": "motor_height*0.20"
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "armwidth(propsize)"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "tz",
                    "value": "motor_height"
                },
                {
                    "alias": "thickness",
                    "type": "str",
                    "name": "tickness",
                    "value": "1.6"
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
            "y": 1436.4443327434851,
            "x": 3656.905405822164
        },
        {
            "name": "node_cube4",
            "inputplugs": [
                {
                    "tip": "x size of cube",
                    "type": "str",
                    "name": "sizex",
                    "value": "propsize*2+8"
                },
                {
                    "tip": "y size of cube",
                    "type": "str",
                    "name": "sizey",
                    "value": "0.8"
                },
                {
                    "tip": "z size of cube",
                    "type": "str",
                    "name": "sizez",
                    "value": "arm_height"
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
                    "value": "arm_height/2+motor_height"
                },
                {
                    "tip": "centering of cube",
                    "type": "str",
                    "name": "center",
                    "value": "true",
                    "combo": [
                        "true",
                        "false"
                    ]
                }
            ],
            "typename": "Node_cube",
            "version": 1,
            "y": 1834.2823568891765,
            "x": 3283.533607577367
        },
        {
            "name": "node_translate2",
            "inputplugs": [
                {
                    "connection": "node_cube4.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "propsize/2"
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
            "y": 1861.2967433509052,
            "x": 3513.467220399555
        },
        {
            "name": "node_translate3",
            "inputplugs": [
                {
                    "connection": "node_cube4.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "-propsize/2"
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
            "y": 2054.1355753972193,
            "x": 3511.6779663347374
        },
        {
            "name": "node_boolean10",
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
                    "connection": "node_translate2.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_translate3.object",
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
            "y": 1849.5885800118258,
            "x": 3851.4287238868965
        },
        {
            "name": "node_rotate10",
            "inputplugs": [
                {
                    "connection": "node_boolean10.object",
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
                    "value": "90"
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
            "y": 2048.629801684646,
            "x": 4038.598965951203
        },
        {
            "name": "node_boolean16",
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
                    "connection": "node_boolean10.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_rotate10.object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_box1.object",
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
            "y": 1850.108939504075,
            "x": 4249.417121476465
        },
        {
            "name": "node_boolean17",
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
                    "connection": "node_boolean16.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_for7.object",
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
            "y": 1991.479793931083,
            "x": 4804.270525251072
        },
        {
            "name": "node_ifassembled0",
            "inputplugs": [
                {
                    "name": "true",
                    "tip": "object to output if assembled mode ON",
                    "value": "",
                    "alias": "object if assembled mode is ON",
                    "connection": "node_boolean18.object",
                    "type": "object"
                },
                {
                    "name": "false",
                    "tip": "object to output if assembled mode OFF",
                    "value": "",
                    "alias": "object if not assembled mode",
                    "connection": "node_translate4.object",
                    "type": "object"
                }
            ],
            "typename": "Node_ifassembled",
            "version": 1,
            "y": 650.5675707478276,
            "x": 5526.8257094716355
        },
        {
            "name": "node_translate4",
            "inputplugs": [
                {
                    "connection": "node_boolean18.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "propsize*2-propsize/2+10+motor_radius"
                },
                {
                    "type": "str",
                    "name": "tz",
                    "value": "-motor_height"
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
            "y": 2003.5445573219895,
            "x": 5219.974378722947
        },
        {
            "name": "node_rotate11",
            "inputplugs": [
                {
                    "connection": "node_tube3.holeobject",
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
            "y": 1662.6828291330085,
            "x": 4255.887752381817
        },
        {
            "name": "node_for7",
            "inputplugs": [
                {
                    "tip": "input object",
                    "connection": "node_rotate11.object",
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
                    "value": "-(180/arm_count)"
                },
                {
                    "tip": "target value of variable used in loop",
                    "type": "str",
                    "name": "end",
                    "value": "360-(180/arm_count)-1"
                },
                {
                    "tip": "increment of variable for each loop",
                    "type": "str",
                    "name": "step",
                    "value": "360/arm_count"
                }
            ],
            "typename": "Node_for",
            "version": 1,
            "y": 1672.325164228897,
            "x": 4511.234314887135
        },
        {
            "name": "node_boolean18",
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
                    "connection": "node_for6.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_boolean17.object",
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
            "y": 1784.9792618322535,
            "x": 5031.9187092486645
        },
        {
            "name": "node_boolean19",
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
                    "connection": "node_ifassembled.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_clamp0.object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_if.object",
                    "type": "object",
                    "name": "object3",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_if0.object",
                    "type": "object",
                    "name": "object4",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_color3.object",
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
            "y": 6.523771128553392,
            "x": 6467.354587770282
        },
        {
            "name": "node_box2",
            "inputplugs": [
                {
                    "tip": "x size of box",
                    "type": "str",
                    "name": "sizex",
                    "value": "propsize*2+12"
                },
                {
                    "tip": "y size of box",
                    "type": "str",
                    "name": "sizey",
                    "value": "propsize*2+12"
                },
                {
                    "tip": "z size of box",
                    "type": "str",
                    "name": "sizez",
                    "value": "battery_height+motor_height+10"
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
                    "value": "-battery_height-2"
                },
                {
                    "tip": "radius of corner rounding",
                    "type": "str",
                    "name": "rounding",
                    "value": "propsize/2+4"
                },
                {
                    "alias": "thickness",
                    "tip": "thickness of box",
                    "type": "str",
                    "name": "tickness",
                    "value": "0.5"
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
                    "value": "64"
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
            "y": 883.0532790742434,
            "x": 3993.793683488807
        },
        {
            "name": "node_ifassembled1",
            "inputplugs": [
                {
                    "name": "true",
                    "tip": "object to output if assembled mode ON",
                    "value": "",
                    "alias": "object if assembled mode is ON",
                    "connection": "node_box2.object",
                    "type": "object"
                },
                {
                    "name": "false",
                    "tip": "object to output if assembled mode OFF",
                    "value": "",
                    "alias": "object if not assembled mode",
                    "connection": "node_translate5.object",
                    "type": "object"
                }
            ],
            "typename": "Node_ifassembled",
            "version": 1,
            "y": 792.6418154665553,
            "x": 4470.54697219871
        },
        {
            "name": "node_translate5",
            "inputplugs": [
                {
                    "connection": "node_box2.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "-propsize*2"
                },
                {
                    "type": "str",
                    "name": "tz",
                    "value": "-(-battery_height-2)"
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
            "y": 1107.6577788697414,
            "x": 4130.582967658625
        },
        {
            "name": "node_boolean20",
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
                    "connection": "node_tube3.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_cube5.object",
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
            "y": 1269.7486259855893,
            "x": 4265.838926360534
        },
        {
            "name": "node_cube5",
            "inputplugs": [
                {
                    "tip": "x size of cube",
                    "type": "str",
                    "name": "sizex",
                    "value": "motor_radius*2"
                },
                {
                    "tip": "y size of cube",
                    "type": "str",
                    "name": "sizey",
                    "value": "motor_radius*1.2"
                },
                {
                    "tip": "z size of cube",
                    "type": "str",
                    "name": "sizez",
                    "value": "motor_height"
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "armwidth(propsize)-motor_radius/2"
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
                    "value": "motor_height"
                },
                {
                    "tip": "centering of cube",
                    "type": "str",
                    "name": "center",
                    "value": "true",
                    "combo": [
                        "true",
                        "false"
                    ]
                }
            ],
            "typename": "Node_cube",
            "version": 1,
            "y": 1472.154921428391,
            "x": 4109.535380994416
        },
        {
            "name": "node_param3",
            "inputplugs": [
                {
                    "connection": "base_ysize.nextparam",
                    "type": "param",
                    "name": "previousparam",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "name",
                    "value": "base_width"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "2.5"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -1287.1600170362012,
            "x": 7081.867205185219
        },
        {
            "name": "node_rgbpicker1",
            "inputplugs": [
                {
                    "name": "r",
                    "tip": "red  (expression or string from 0 to 1)",
                    "value": "187",
                    "alias": "red",
                    "hidden": true,
                    "type": "str"
                },
                {
                    "name": "g",
                    "tip": "green  (expression or string from 0 to 1)",
                    "value": "0",
                    "alias": "green",
                    "hidden": true,
                    "type": "str"
                },
                {
                    "name": "b",
                    "tip": "blue  (expression or string from 0 to 1)",
                    "value": "14",
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
            "y": -1112.8013906985702,
            "x": 3192.1142907530175
        },
        {
            "name": "node_rgbpicker2",
            "inputplugs": [
                {
                    "name": "r",
                    "tip": "red  (expression or string from 0 to 1)",
                    "value": "233",
                    "alias": "red",
                    "hidden": true,
                    "type": "str"
                },
                {
                    "name": "g",
                    "tip": "green  (expression or string from 0 to 1)",
                    "value": "19",
                    "alias": "green",
                    "hidden": true,
                    "type": "str"
                },
                {
                    "name": "b",
                    "tip": "blue  (expression or string from 0 to 1)",
                    "value": "0",
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
            "y": -280.45618129195213,
            "x": 1371.4527326279085
        },
        {
            "name": "node_if",
            "inputplugs": [
                {
                    "tip": "boolean expression to evaluate",
                    "type": "str",
                    "name": "expression",
                    "value": "1==0"
                },
                {
                    "name": "true",
                    "tip": "object to output if exression is true",
                    "value": "",
                    "alias": "object if True",
                    "connection": "node_ifassembled1.object",
                    "type": "object"
                },
                {
                    "alias": "object if False",
                    "tip": "object to output if expression is false",
                    "type": "object",
                    "name": "false",
                    "value": ""
                }
            ],
            "typename": "Node_if",
            "version": 1,
            "y": 31.269765356789435,
            "x": 5143.535344634067
        },
        {
            "name": "node_translate6",
            "inputplugs": [
                {
                    "connection": "node_translate.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "tz",
                    "value": "motor_height"
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
            "y": -822.1538458193223,
            "x": 3908.396693544855
        },
        {
            "name": "node_hull1",
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
                    "connection": "node_translate6.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "connection": "node_translate.object",
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
            "y": -669.4970577681003,
            "x": 4071.4415668999573
        },
        {
            "name": "node_cube6",
            "inputplugs": [
                {
                    "tip": "x size of cube",
                    "type": "str",
                    "name": "sizex",
                    "value": "0.6"
                },
                {
                    "tip": "y size of cube",
                    "type": "str",
                    "name": "sizey",
                    "value": "camera_ysize"
                },
                {
                    "tip": "z size of cube",
                    "type": "str",
                    "name": "sizez",
                    "value": "camera_zsize-battery_height"
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "base_xsize/2+camera_xsize-0.6"
                },
                {
                    "tip": "y translation of output object",
                    "type": "str",
                    "name": "ty",
                    "value": "-camera_ysize/2"
                },
                {
                    "tip": "z translation of output object",
                    "type": "str",
                    "name": "tz",
                    "value": "battery_height-0.6"
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
            "y": -65.4871767189849,
            "x": 3111.6745363272375
        },
        {
            "name": "node_boolean21",
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
                    "connection": "node_rotate12.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_box0.object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_hull2.object",
                    "type": "object",
                    "name": "object3",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_mirror.object",
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
            "y": -70.93437969687523,
            "x": 3826.3801222388797
        },
        {
            "name": "node_rotate12",
            "inputplugs": [
                {
                    "connection": "node_cube6.object",
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
                    "value": "-25"
                },
                {
                    "type": "str",
                    "name": "rz",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "space",
                    "value": "local",
                    "combo": [
                        "world",
                        "object",
                        "local"
                    ]
                }
            ],
            "typename": "Node_rotate",
            "version": 1,
            "y": 47.747912883509116,
            "x": 3472.9539813710626
        },
        {
            "name": "node_string2",
            "inputplugs": [
                {
                    "multiline": true,
                    "type": "str",
                    "name": "string",
                    "value": "8.7/2"
                }
            ],
            "typename": "Node_string",
            "version": 1,
            "y": -1135.1757891757484,
            "x": 6766.0033208079
        },
        {
            "name": "node_string3",
            "inputplugs": [
                {
                    "multiline": true,
                    "type": "str",
                    "name": "string",
                    "value": "7.2/2"
                }
            ],
            "typename": "Node_string",
            "version": 1,
            "y": -981.8646172848003,
            "x": 6763.8241404519395
        },
        {
            "name": "node_string4",
            "inputplugs": [
                {
                    "multiline": true,
                    "type": "str",
                    "name": "string",
                    "value": "48"
                }
            ],
            "typename": "Node_string",
            "version": 1,
            "y": -1823.5991970052823,
            "x": 6729.445392804128
        },
        {
            "name": "node_string5",
            "inputplugs": [
                {
                    "multiline": true,
                    "type": "str",
                    "name": "string",
                    "value": "44"
                }
            ],
            "typename": "Node_string",
            "version": 1,
            "y": -1726.035352137883,
            "x": 6731.320809475854
        },
        {
            "name": "node_string7",
            "inputplugs": [
                {
                    "multiline": true,
                    "type": "str",
                    "name": "string",
                    "value": "3.5"
                }
            ],
            "typename": "Node_string",
            "version": 1,
            "y": -2039.615222028111,
            "x": 6779.09468072468
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
                    "value": "camera_zsize"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "18"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -470.7776876225789,
            "x": 7073.443196873155
        },
        {
            "name": "node_square",
            "inputplugs": [
                {
                    "type": "str",
                    "name": "x",
                    "value": "1"
                },
                {
                    "type": "str",
                    "name": "y",
                    "value": "1"
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "tz",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "center",
                    "value": "false",
                    "combo": [
                        "true",
                        "false"
                    ]
                }
            ],
            "typename": "Node_square",
            "version": 1,
            "y": -230.22453400759605,
            "x": 39.86220533443293
        },
        {
            "name": "node_rotateextrude",
            "inputplugs": [
                {
                    "connection": "node_square.object2d",
                    "type": "object2d",
                    "name": "object2d",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "angle",
                    "value": "90"
                },
                {
                    "type": "str",
                    "name": "convexity",
                    "value": "3"
                },
                {
                    "type": "str",
                    "name": "$fn",
                    "value": "2"
                }
            ],
            "typename": "Node_rotateextrude",
            "version": 1,
            "y": -230.3524009878338,
            "x": 223.54952111769853
        },
        {
            "name": "node_rotate13",
            "inputplugs": [
                {
                    "connection": "node_rotateextrude.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "rx",
                    "value": "90"
                },
                {
                    "type": "str",
                    "name": "ry",
                    "value": "-90"
                },
                {
                    "type": "str",
                    "name": "rz",
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
            "typename": "Node_rotate",
            "version": 1,
            "y": -243.88365202713794,
            "x": 462.75151017300504
        },
        {
            "name": "node_scale",
            "inputplugs": [
                {
                    "connection": "node_rotate13.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "sx",
                    "value": "motor_height*0.5"
                },
                {
                    "type": "str",
                    "name": "sy",
                    "value": "motor_radius*0.55+2"
                },
                {
                    "type": "str",
                    "name": "sz",
                    "value": "motor_height*0.5"
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
            "typename": "Node_scale",
            "version": 1,
            "y": -210.68886283314896,
            "x": 658.0769556885616
        },
        {
            "name": "node_translate7",
            "inputplugs": [
                {
                    "connection": "node_scale.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "armwidth(propsize)"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "(motor_radius*0.55+2)/2"
                },
                {
                    "type": "str",
                    "name": "tz",
                    "value": "arm_height"
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
            "y": -229.1537406524676,
            "x": 864.1659114999052
        },
        {
            "name": "node_for8",
            "inputplugs": [
                {
                    "tip": "input object",
                    "connection": "node_rotate14.object",
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
                    "value": "-180/arm_count"
                },
                {
                    "tip": "target value of variable used in loop",
                    "type": "str",
                    "name": "end",
                    "value": "360-(180/arm_count)-1"
                },
                {
                    "tip": "increment of variable for each loop",
                    "type": "str",
                    "name": "step",
                    "value": "360/arm_count"
                }
            ],
            "typename": "Node_for",
            "version": 1,
            "y": -129.99262542640247,
            "x": 1186.8663928434016
        },
        {
            "name": "node_rotate14",
            "inputplugs": [
                {
                    "connection": "node_translate7.object",
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
            "y": -232.61830291134174,
            "x": 1032.6946523640295
        },
        {
            "name": "node_cylinder7",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "tip": "top radius of cynlinder",
                    "type": "str",
                    "name": "radius",
                    "value": "0.6/2"
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
                    "value": "battery_height"
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
                    "value": "base_xsize/2+camera_xsize*0.75"
                },
                {
                    "tip": "y translation of output object",
                    "type": "str",
                    "name": "ty",
                    "value": "camera_ysize/2-0.3"
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
            "y": 998.0288805346754,
            "x": 3224.8188314941353
        },
        {
            "name": "node_hull2",
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
                    "connection": "node_cylinder7.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "connection": "node_cylinder8.object",
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
            "y": 930.2872513226032,
            "x": 3454.732565181599
        },
        {
            "name": "node_cylinder8",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "tip": "top radius of cynlinder",
                    "type": "str",
                    "name": "radius",
                    "value": "0.6/2"
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
                    "value": "battery_height"
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
                    "value": "base_xsize/2"
                },
                {
                    "tip": "y translation of output object",
                    "type": "str",
                    "name": "ty",
                    "value": "base_ysize/2"
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
            "y": 1248.0342107375204,
            "x": 3230.320343250307
        },
        {
            "name": "node_mirror",
            "inputplugs": [
                {
                    "connection": "node_hull2.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "mx",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "my",
                    "value": "1"
                },
                {
                    "type": "str",
                    "name": "mz",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "space",
                    "value": "world",
                    "combo": [
                        "world",
                        "local"
                    ]
                }
            ],
            "typename": "Node_mirror",
            "version": 1,
            "y": 651.201478002813,
            "x": 3455.3760643881037
        },
        {
            "name": "node_if0",
            "inputplugs": [
                {
                    "tip": "boolean expression to evaluate",
                    "type": "str",
                    "name": "expression",
                    "value": "1==1"
                },
                {
                    "alias": "object if True",
                    "tip": "object to output if exression is true",
                    "type": "object",
                    "name": "true",
                    "value": ""
                },
                {
                    "name": "false",
                    "tip": "object to output if expression is false",
                    "value": "",
                    "alias": "object if False",
                    "connection": "node_ifassembled0.object",
                    "type": "object"
                }
            ],
            "typename": "Node_if",
            "version": 1,
            "y": 383.0014520820796,
            "x": 5817.335753418836
        },
        {
            "name": "node_string6",
            "inputplugs": [
                {
                    "multiline": true,
                    "type": "str",
                    "name": "string",
                    "value": "58"
                }
            ],
            "typename": "Node_string",
            "version": 1,
            "y": -2276.518611974145,
            "x": 6772.5267235838965
        },
        {
            "name": "node_declaremodule",
            "inputplugs": [
                {
                    "tip": "name of module",
                    "type": "str",
                    "name": "name",
                    "value": "multicopter"
                },
                {
                    "connection": "node_param4.nextparam",
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
                    "connection": "node_boolean19.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                }
            ],
            "typename": "Node_declaremodule",
            "version": 1,
            "y": -136.80916968995075,
            "x": 7333.374594391327
        }
    ],
    "version": 2
}ENDGRAPHSCAD*/