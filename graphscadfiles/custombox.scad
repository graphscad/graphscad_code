//------------------------------------------------------------------------------------------
// THIS CODE WAS GENERATED WITH GRAPHSCAD
// IF U LIKE GRAPHSCAD PLEASE DONATE//------------------------------------------------------------------------------------------
// D:/workspace/graphscad/graphscadfiles/custombox.scad
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
module custombox(x=20,y=30,z=10,tickness=1,rounding=5)
{
 function node_boolean_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_box_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_box(i,j,k,l,m,n);
   node_box1(i,j,k,l,m,n);
   node_box0(i,j,k,l,m,n);
  }
 }
 function node_box_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_box_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  hull()
  {
   translate([-((((x)/2))-(max(rounding,0.00001))),-((((y)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(z),$fn=64);
   translate([-((((x)/2))-(max(rounding,0.00001))), ((((y)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(z),$fn=64);
   translate([ ((((x)/2))-(max(rounding,0.00001))),-((((y)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(z),$fn=64);
   translate([ ((((x)/2))-(max(rounding,0.00001))), ((((y)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(z),$fn=64);
  }
 }
 function node_box_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_box_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([ 0,0,1])hull()
  {
   translate([-((((x)/2))-((max(rounding,0.00001))+(tickness))),-((((y)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((z))-(1)+0.01),$fn=64);
   translate([-((((x)/2))-((max(rounding,0.00001))+(tickness))), ((((y)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((z))-(1)+0.01),$fn=64);
   translate([ ((((x)/2))-((max(rounding,0.00001))+(tickness))),-((((y)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((z))-(1)+0.01),$fn=64);
   translate([ ((((x)/2))-((max(rounding,0.00001))+(tickness))), ((((y)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((z))-(1)+0.01),$fn=64);
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
     translate([-((((x)/2))-(max(rounding,0.00001))),-((((y)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(z),$fn=64);
     translate([-((((x)/2))-(max(rounding,0.00001))), ((((y)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(z),$fn=64);
     translate([ ((((x)/2))-(max(rounding,0.00001))),-((((y)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(z),$fn=64);
     translate([ ((((x)/2))-(max(rounding,0.00001))), ((((y)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(z),$fn=64);
    }
   }
   {
    translate([ 0,0,1])hull()
    {
     translate([-((((x)/2))-((max(rounding,0.00001))+(tickness))),-((((y)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((z))-(1)+0.01),$fn=64);
     translate([-((((x)/2))-((max(rounding,0.00001))+(tickness))), ((((y)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((z))-(1)+0.01),$fn=64);
     translate([ ((((x)/2))-((max(rounding,0.00001))+(tickness))),-((((y)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((z))-(1)+0.01),$fn=64);
     translate([ ((((x)/2))-((max(rounding,0.00001))+(tickness))), ((((y)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((z))-(1)+0.01),$fn=64);
    }
   }
  }
 }
 function node_box1_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,y+2,0]);
 module node_box1_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,y+2,0])hull()
  {
   translate([-((((x)/2))-(max(rounding,0.00001))),-((((y)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(tickness),$fn=64);
   translate([-((((x)/2))-(max(rounding,0.00001))), ((((y)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(tickness),$fn=64);
   translate([ ((((x)/2))-(max(rounding,0.00001))),-((((y)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(tickness),$fn=64);
   translate([ ((((x)/2))-(max(rounding,0.00001))), ((((y)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(tickness),$fn=64);
  }
 }
 function node_box1_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,y+2,0]);
 module node_box1_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,y+2,0])translate([ 0,0,tickness])hull()
  {
   translate([-((((x)/2))-((max(rounding,0.00001))+(tickness))),-((((y)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((tickness))-(tickness)+0.01),$fn=64);
   translate([-((((x)/2))-((max(rounding,0.00001))+(tickness))), ((((y)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((tickness))-(tickness)+0.01),$fn=64);
   translate([ ((((x)/2))-((max(rounding,0.00001))+(tickness))),-((((y)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((tickness))-(tickness)+0.01),$fn=64);
   translate([ ((((x)/2))-((max(rounding,0.00001))+(tickness))), ((((y)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((tickness))-(tickness)+0.01),$fn=64);
  }
 }
 function node_box1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,y+2,0]);
 module node_box1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,y+2,0])difference()
  {
   {
    hull()
    {
     translate([-((((x)/2))-(max(rounding,0.00001))),-((((y)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(tickness),$fn=64);
     translate([-((((x)/2))-(max(rounding,0.00001))), ((((y)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(tickness),$fn=64);
     translate([ ((((x)/2))-(max(rounding,0.00001))),-((((y)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(tickness),$fn=64);
     translate([ ((((x)/2))-(max(rounding,0.00001))), ((((y)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(tickness),$fn=64);
    }
   }
   {
    translate([ 0,0,tickness])hull()
    {
     translate([-((((x)/2))-((max(rounding,0.00001))+(tickness))),-((((y)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((tickness))-(tickness)+0.01),$fn=64);
     translate([-((((x)/2))-((max(rounding,0.00001))+(tickness))), ((((y)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((tickness))-(tickness)+0.01),$fn=64);
     translate([ ((((x)/2))-((max(rounding,0.00001))+(tickness))),-((((y)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((tickness))-(tickness)+0.01),$fn=64);
     translate([ ((((x)/2))-((max(rounding,0.00001))+(tickness))), ((((y)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((tickness))-(tickness)+0.01),$fn=64);
    }
   }
  }
 }
 function node_box0_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,y+2,tickness]);
 module node_box0_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,y+2,tickness])hull()
  {
   translate([-((((x-tickness*2-0.2)/2))-(max(rounding,0.00001))),-((((y-tickness*2-0.2)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(tickness*2),$fn=64);
   translate([-((((x-tickness*2-0.2)/2))-(max(rounding,0.00001))), ((((y-tickness*2-0.2)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(tickness*2),$fn=64);
   translate([ ((((x-tickness*2-0.2)/2))-(max(rounding,0.00001))),-((((y-tickness*2-0.2)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(tickness*2),$fn=64);
   translate([ ((((x-tickness*2-0.2)/2))-(max(rounding,0.00001))), ((((y-tickness*2-0.2)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(tickness*2),$fn=64);
  }
 }
 function node_box0_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,y+2,tickness]);
 module node_box0_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,y+2,tickness])translate([ 0,0,0])hull()
  {
   translate([-((((x-tickness*2-0.2)/2))-((max(rounding,0.00001))+(tickness))),-((((y-tickness*2-0.2)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((tickness*2))-(0)+0.01),$fn=64);
   translate([-((((x-tickness*2-0.2)/2))-((max(rounding,0.00001))+(tickness))), ((((y-tickness*2-0.2)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((tickness*2))-(0)+0.01),$fn=64);
   translate([ ((((x-tickness*2-0.2)/2))-((max(rounding,0.00001))+(tickness))),-((((y-tickness*2-0.2)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((tickness*2))-(0)+0.01),$fn=64);
   translate([ ((((x-tickness*2-0.2)/2))-((max(rounding,0.00001))+(tickness))), ((((y-tickness*2-0.2)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((tickness*2))-(0)+0.01),$fn=64);
  }
 }
 function node_box0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,y+2,tickness]);
 module node_box0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,y+2,tickness])difference()
  {
   {
    hull()
    {
     translate([-((((x-tickness*2-0.2)/2))-(max(rounding,0.00001))),-((((y-tickness*2-0.2)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(tickness*2),$fn=64);
     translate([-((((x-tickness*2-0.2)/2))-(max(rounding,0.00001))), ((((y-tickness*2-0.2)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(tickness*2),$fn=64);
     translate([ ((((x-tickness*2-0.2)/2))-(max(rounding,0.00001))),-((((y-tickness*2-0.2)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(tickness*2),$fn=64);
     translate([ ((((x-tickness*2-0.2)/2))-(max(rounding,0.00001))), ((((y-tickness*2-0.2)/2))-(max(rounding,0.00001))),0]) cylinder(r=max(rounding,0.00001),h=(tickness*2),$fn=64);
    }
   }
   {
    translate([ 0,0,0])hull()
    {
     translate([-((((x-tickness*2-0.2)/2))-((max(rounding,0.00001))+(tickness))),-((((y-tickness*2-0.2)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((tickness*2))-(0)+0.01),$fn=64);
     translate([-((((x-tickness*2-0.2)/2))-((max(rounding,0.00001))+(tickness))), ((((y-tickness*2-0.2)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((tickness*2))-(0)+0.01),$fn=64);
     translate([ ((((x-tickness*2-0.2)/2))-((max(rounding,0.00001))+(tickness))),-((((y-tickness*2-0.2)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((tickness*2))-(0)+0.01),$fn=64);
     translate([ ((((x-tickness*2-0.2)/2))-((max(rounding,0.00001))+(tickness))), ((((y-tickness*2-0.2)/2))-((max(rounding,0.00001))+(tickness))),0]) cylinder(r=max(((rounding)-(tickness)),0.00001),h=(((tickness*2))-(0)+0.01),$fn=64);
    }
   }
  }
 }
 node_boolean();
}
custombox();
/*------------------- Other Headers --------------------------------*/
/*------------------- default module --------------------------------*/
/* force parameters for default module if they are connected to declaremodule */
x=20;
y=30;
z=10;
tickness=1;
rounding=5;
/* force functions for default module if they are connected to declaremodule */
module custombox_default()
{
 /*------------------- isolated output objects --------------------------------*/
 /*------------------- final objects output --------------------------------*/
}
custombox_default();
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
            "name": "node_box",
            "inputplugs": [
                {
                    "tip": "x size of box",
                    "type": "str",
                    "name": "sizex",
                    "value": "x"
                },
                {
                    "tip": "y size of box",
                    "type": "str",
                    "name": "sizey",
                    "value": "y"
                },
                {
                    "tip": "z size of box",
                    "type": "str",
                    "name": "sizez",
                    "value": "z"
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
                    "value": "rounding"
                },
                {
                    "alias": "thickness",
                    "tip": "thickness of box",
                    "type": "str",
                    "name": "tickness",
                    "value": "tickness"
                },
                {
                    "tip": "the thickness of the bottom of the box",
                    "type": "str",
                    "name": "interiorheight",
                    "value": "1"
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
            "y": -256.486,
            "x": -962.5500000000002
        },
        {
            "name": "node_box0",
            "inputplugs": [
                {
                    "tip": "x size of box",
                    "type": "str",
                    "name": "sizex",
                    "value": "x-tickness*2-0.2"
                },
                {
                    "tip": "y size of box",
                    "type": "str",
                    "name": "sizey",
                    "value": "y-tickness*2-0.2"
                },
                {
                    "tip": "z size of box",
                    "type": "str",
                    "name": "sizez",
                    "value": "tickness*2"
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
                    "value": "y+2"
                },
                {
                    "tip": "z translation of box",
                    "type": "str",
                    "name": "tz",
                    "value": "tickness"
                },
                {
                    "tip": "radius of corner rounding",
                    "type": "str",
                    "name": "rounding",
                    "value": "rounding"
                },
                {
                    "alias": "thickness",
                    "tip": "thickness of box",
                    "type": "str",
                    "name": "tickness",
                    "value": "tickness"
                },
                {
                    "tip": "the thickness of the bottom of the box",
                    "type": "str",
                    "name": "interiorheight",
                    "value": "0"
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
            "y": 351.20264000000003,
            "x": -946.0540799999999
        },
        {
            "name": "node_box1",
            "inputplugs": [
                {
                    "tip": "x size of box",
                    "type": "str",
                    "name": "sizex",
                    "value": "x"
                },
                {
                    "tip": "y size of box",
                    "type": "str",
                    "name": "sizey",
                    "value": "y"
                },
                {
                    "tip": "z size of box",
                    "type": "str",
                    "name": "sizez",
                    "value": "tickness"
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
                    "value": "y+2"
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
                    "value": "rounding"
                },
                {
                    "alias": "thickness",
                    "tip": "thickness of box",
                    "type": "str",
                    "name": "tickness",
                    "value": "tickness"
                },
                {
                    "tip": "the thickness of the bottom of the box",
                    "type": "str",
                    "name": "interiorheight",
                    "value": "tickness"
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
            "y": 45.80064000000013,
            "x": -955.9440800000002
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
                    "connection": "node_box.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_box1.object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_box0.object",
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
            "y": -26.03685999999996,
            "x": -629.0440800000001
        },
        {
            "name": "param_10",
            "inputplugs": [
                {
                    "type": "param",
                    "name": "previousparam",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "name",
                    "value": "x"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "20"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -546.1208303425572,
            "x": -1737.6265713083708
        },
        {
            "name": "node_param",
            "inputplugs": [
                {
                    "connection": "param_10.nextparam",
                    "type": "param",
                    "name": "previousparam",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "name",
                    "value": "y"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "30"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -536.1836050224739,
            "x": -1488.156806216844
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
                    "value": "z"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "10"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -532.5912031204911,
            "x": -1256.5097004712184
        },
        {
            "name": "node_param1",
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
                    "value": "tickness"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "1"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -530.7305840213087,
            "x": -967.7089096905862
        },
        {
            "name": "node_param2",
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
                    "value": "rounding"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "5"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -523.349382119326,
            "x": -708.7367813323585
        },
        {
            "name": "node_comment",
            "inputplugs": [
                {
                    "tip": "comment string to display on background",
                    "type": "str",
                    "name": "comment",
                    "value": "Design of a custom box"
                }
            ],
            "typename": "Node_comment",
            "version": 1,
            "y": -328.6093749999997,
            "x": -1059.4999999999995
        },
        {
            "name": "node_comment0",
            "inputplugs": [
                {
                    "tip": "comment string to display on background",
                    "type": "str",
                    "name": "comment",
                    "value": "this chain of param nodes defines\nthe parameter list of this module.\n"
                }
            ],
            "typename": "Node_comment",
            "version": 1,
            "y": -657.2027500924859,
            "x": -1288.6959320126425
        },
        {
            "name": "node_declaremodule",
            "inputplugs": [
                {
                    "tip": "name of module",
                    "type": "str",
                    "name": "name",
                    "value": "custombox"
                },
                {
                    "connection": "node_param2.nextparam",
                    "type": "param",
                    "name": "params",
                    "value": ""
                },
                {
                    "type": "function",
                    "name": "functions",
                    "value": ""
                },
                {
                    "connection": "node_boolean.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                }
            ],
            "typename": "Node_declaremodule",
            "version": 1,
            "y": -300.113177715912,
            "x": -243.37192347307317
        }
    ],
    "version": 2
}ENDGRAPHSCAD*/