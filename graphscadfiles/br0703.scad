//------------------------------------------------------------------------------------------
// THIS CODE WAS GENERATED WITH GRAPHSCAD
// IF U LIKE GRAPHSCAD PLEASE DONATE//------------------------------------------------------------------------------------------
// D:/workspace/graphscad/graphscadfiles/br0703.scad
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
module br0703(holes=0)
{
 function node_if_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean1_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_if(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  if(holes==1)
  {
   node_boolean1(i,j,k,l,m,n);
  }
   else
  {
   node_boolean0(i,j,k,l,m,n);
  }
 }
 function node_boolean1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_for_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_for(i,j,k,l,m,n);
   node_cylinder4(i,j,k,l,m,n);
  }
 }
 function node_for_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[45:360/3:360+45])
  {
   node_rotate(i,j,k,l,m,n);
  }
 }
 function node_rotate_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,i])*node_cylinder1_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,i])node_cylinder1(i,j,k,l,m,n);
 }
 function node_cylinder1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([5.5/2,0,-1]);
 module node_cylinder1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([5.5/2,0,-1])cylinder(r=1.8/2,r1=1.8/2,h=100,center=false,$fn=100);
 }
 function node_cylinder4_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,-1]);
 module node_cylinder4(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,-1])cylinder(r=1.5,r1=1.5,h=100,center=false,$fn=100);
 }
 function node_boolean0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_boolean(i,j,k,l,m,n);
   node_cylinder(i,j,k,l,m,n);
   node_cylinder0(i,j,k,l,m,n);
   node_cylinder2(i,j,k,l,m,n);
  }
 }
 function node_boolean_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_hull_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   node_hull(i,j,k,l,m,n);
   node_boolean1(i,j,k,l,m,n);
  }
 }
 function node_hull_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_for0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_hull(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  hull()
  {
   node_for0(i,j,k,l,m,n);
  }
 }
 function node_for0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[45:360/3:360+45])
  {
   node_rotate0(i,j,k,l,m,n);
  }
 }
 function node_rotate0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,i])*node_cylinder3_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,i])node_cylinder3(i,j,k,l,m,n);
 }
 function node_cylinder3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([5.5/2,0,0]);
 module node_cylinder3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([5.5/2,0,0])cylinder(r=1.6/2+1,r1=1.6/2+1,h=1.5,center=false,$fn=100);
 }
 function node_boolean1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_for_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_for(i,j,k,l,m,n);
   node_cylinder4(i,j,k,l,m,n);
  }
 }
 function node_for_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_rotate_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[45:360/3:360+45])
  {
   node_rotate(i,j,k,l,m,n);
  }
 }
 function node_rotate_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([0,0,i])*node_cylinder1_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([0,0,i])node_cylinder1(i,j,k,l,m,n);
 }
 function node_cylinder1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([5.5/2,0,-1]);
 module node_cylinder1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([5.5/2,0,-1])cylinder(r=1.8/2,r1=1.8/2,h=100,center=false,$fn=100);
 }
 function node_cylinder4_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,-1]);
 module node_cylinder4(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,-1])cylinder(r=1.5,r1=1.5,h=100,center=false,$fn=100);
 }
 function node_cylinder_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,16.2-5-8]);
 module node_cylinder(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,16.2-5-8])cylinder(r=5,r1=5,h=5,center=false,$fn=100);
 }
 function node_cylinder0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_cylinder0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  cylinder(r=1/2,r1=1/2,h=16.2,center=false,$fn=(16+1/2*3.14116));
 }
 function node_cylinder2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,1]);
 module node_cylinder2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,1])cylinder(r=2.8/2,r1=2.8/2,h=16.2-8+1-1,center=false,$fn=(16+2.8/2*3.14116));
 }
 node_if();
}
br0703();
/*------------------- Other Headers --------------------------------*/
/*------------------- default module --------------------------------*/
/* force parameters for default module if they are connected to declaremodule */
holes=0;
/* force functions for default module if they are connected to declaremodule */
module br0703_default()
{
 /*------------------- isolated output objects --------------------------------*/
 /*------------------- final objects output --------------------------------*/
}
br0703_default();
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
                    "value": "5"
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
                    "value": "5"
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
                    "value": "16.2-5-8"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "$fn",
                    "value": "100"
                }
            ],
            "typename": "Node_cylinder",
            "version": 1,
            "y": 226.8015357663569,
            "x": 115.1856044580054
        },
        {
            "name": "node_cylinder0",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "tip": "top radius of cynlinder",
                    "type": "str",
                    "name": "radius",
                    "value": "1/2"
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
                    "value": "16.2"
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
            "y": 477.2762839274285,
            "x": 106.9845352932607
        },
        {
            "name": "node_cylinder2",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "tip": "top radius of cynlinder",
                    "type": "str",
                    "name": "radius",
                    "value": "2.8/2"
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
                    "value": "16.2-8+1-1"
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
                    "value": "1"
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
            "y": 735.1330425916519,
            "x": 109.04253364502438
        },
        {
            "name": "node_cylinder1",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "tip": "top radius of cynlinder",
                    "type": "str",
                    "name": "radius",
                    "value": "1.8/2"
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
                    "value": "5.5/2"
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
                    "value": "100"
                }
            ],
            "typename": "Node_cylinder",
            "version": 1,
            "y": -318.59280931886224,
            "x": -337.3441314219308
        },
        {
            "name": "node_rotate",
            "inputplugs": [
                {
                    "connection": "node_cylinder1.object",
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
            "y": -314.4514472406759,
            "x": -103.53211153783559
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
                    "value": "45"
                },
                {
                    "tip": "target value of variable used in loop",
                    "type": "str",
                    "name": "end",
                    "value": "360+45"
                },
                {
                    "tip": "increment of variable for each loop",
                    "type": "str",
                    "name": "step",
                    "value": "360/3"
                }
            ],
            "typename": "Node_for",
            "version": 1,
            "y": -312.3887860330765,
            "x": 131.23585472583
        },
        {
            "name": "node_cylinder3",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "tip": "top radius of cynlinder",
                    "type": "str",
                    "name": "radius",
                    "value": "1.6/2+1"
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
                    "value": "1.5"
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
                    "value": "5.5/2"
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
                    "value": "100"
                }
            ],
            "typename": "Node_cylinder",
            "version": 1,
            "y": -578.5802239478762,
            "x": -320.86530430310086
        },
        {
            "name": "node_rotate0",
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
            "y": -573.8101202314438,
            "x": -82.34733935452095
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
                    "value": "45"
                },
                {
                    "tip": "target value of variable used in loop",
                    "type": "str",
                    "name": "end",
                    "value": "360+45"
                },
                {
                    "tip": "increment of variable for each loop",
                    "type": "str",
                    "name": "step",
                    "value": "360/3"
                }
            ],
            "typename": "Node_for",
            "version": 1,
            "y": -572.0265447762049,
            "x": 152.1255014937924
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
                    "connection": "node_for0.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
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
            "y": -631.605584438905,
            "x": 322.3947804504769
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
                    "connection": "node_hull.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_boolean1.object",
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
            "y": -561.8395375628579,
            "x": 535.812912205898
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
                    "connection": "node_boolean.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_cylinder.object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_cylinder0.object",
                    "type": "object",
                    "name": "object3",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_cylinder2.object",
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
            "y": -263.38432457199127,
            "x": 730.0760171423863
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
                    "value": "holes"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "0"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -750.9723715789377,
            "x": 668.3376030912573
        },
        {
            "name": "node_if",
            "inputplugs": [
                {
                    "tip": "boolean expression to evaluate",
                    "type": "str",
                    "name": "expression",
                    "value": "holes==1"
                },
                {
                    "name": "true",
                    "tip": "object to output if exression is true",
                    "value": "",
                    "alias": "object if True",
                    "connection": "node_boolean1.object",
                    "type": "object"
                },
                {
                    "name": "false",
                    "tip": "object to output if expression is false",
                    "value": "",
                    "alias": "object if False",
                    "connection": "node_boolean0.object",
                    "type": "object"
                }
            ],
            "typename": "Node_if",
            "version": 1,
            "y": -449.61985511319494,
            "x": 974.3168392147427
        },
        {
            "name": "node_declaremodule",
            "inputplugs": [
                {
                    "tip": "name of module",
                    "type": "str",
                    "name": "name",
                    "value": "br0703"
                },
                {
                    "connection": "node_param.nextparam",
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
                    "connection": "node_if.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                }
            ],
            "typename": "Node_declaremodule",
            "version": 1,
            "y": -551.4714933566014,
            "x": 1177.4962358237221
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
                    "connection": "node_cylinder4.object",
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
            "y": -342.7565779440797,
            "x": 355.1500534873776
        },
        {
            "name": "node_cylinder4",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "tip": "top radius of cynlinder",
                    "type": "str",
                    "name": "radius",
                    "value": "1.5"
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
                    "value": "-1"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "$fn",
                    "value": "100"
                }
            ],
            "typename": "Node_cylinder",
            "version": 1,
            "y": -92.11586404697437,
            "x": -143.0445518769484
        }
    ],
    "version": 2
}ENDGRAPHSCAD*/