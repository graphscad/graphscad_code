//------------------------------------------------------------------------------------------
// THIS CODE WAS GENERATED WITH GRAPHSCAD
// IF U LIKE GRAPHSCAD PLEASE DONATE//------------------------------------------------------------------------------------------
// D:/workspace/graphscad/graphscadfiles/egg.scad
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
module egg(steps=100,height=60,faces=100,enddetail=5)
{
 function eggradius(a)=sqrt(height - (height*0.78) - 2 * (a) + sqrt( 4 * (0.78*height) * (a) + pow(height - (height*0.78), 2) )) * sqrt(a) / sqrt(2);
 function edgecurve(a)=(height/steps) * (a) - sin(360 * (a) / steps) * (height/steps)* enddetail;
 function node_translate_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,height])*node_rotate_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,height])node_rotate(i,j,k,l,m,n);
 }
 function node_rotate_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = rotate([180,0,0])*node_for_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_rotate(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate([180,0,0])node_for(i,j,k,l,m,n);
 }
 function node_for_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_cylinder_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[0:1:steps])
  {
   node_cylinder(i,j,k,l,m,n);
  }
 }
 function node_cylinder_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,edgecurve(i)]);
 module node_cylinder(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,edgecurve(i)])cylinder(r=eggradius(edgecurve(i+1)),r1=eggradius(edgecurve(i)),h=abs(edgecurve(i)-edgecurve(i+1)),center=false,$fn=faces);
 }
 node_translate();
}
egg();
/*------------------- Other Headers --------------------------------*/
/*------------------- default module --------------------------------*/
/* force parameters for default module if they are connected to declaremodule */
steps=100;
height=60;
faces=100;
enddetail=5;
paramname1=0;
paramname2=0;
/* force functions for default module if they are connected to declaremodule */
function edgecurve(a)=(height/steps) * (a) - sin(360 * (a) / steps) * (height/steps)* enddetail;
function eggradius(a)=sqrt(height - (height*0.78) - 2 * (a) + sqrt( 4 * (0.78*height) * (a) + pow(height - (height*0.78), 2) )) * sqrt(a) / sqrt(2);
function myfunc2(a,b)=a+b;
function myfunc1(a,b)=a+b;
module egg_default(paramname1=0,paramname2=0)
{
 /*------------------- isolated output objects --------------------------------*/
 function myfunc1(a,b)=a+b;
 function myfunc2(a,b)=a+b;
 /*------------------- final objects output --------------------------------*/
}
egg_default();
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
                    "value": "steps"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "100"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": 301.98729078999963,
            "x": -1079.509005590001
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
                    "value": "height"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "60"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": 302.2132907899994,
            "x": -835.5090055900007
        },
        {
            "name": "node_param2",
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
                    "value": "faces"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "100"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": 302.9087872211852,
            "x": -625.5275412781455
        },
        {
            "name": "node_param3",
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
                    "value": "enddetail"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "5"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": 303.7072836523712,
            "x": -363.60700915882103
        },
        {
            "name": "node_for",
            "inputplugs": [
                {
                    "tip": "input object",
                    "connection": "node_cylinder.object",
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
                    "value": "steps"
                },
                {
                    "tip": "increment of variable for each loop",
                    "type": "str",
                    "name": "step",
                    "value": "1"
                }
            ],
            "typename": "Node_for",
            "version": 1,
            "y": 1162.8851245817532,
            "x": -814.5293077504325
        },
        {
            "name": "node_cylinder",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "tip": "top radius of cynlinder",
                    "type": "str",
                    "name": "radius",
                    "value": "eggradius(edgecurve(i+1))"
                },
                {
                    "alias": "bottom radius",
                    "tip": "bottom radius of cynlinder",
                    "type": "str",
                    "name": "radius2",
                    "value": "eggradius(edgecurve(i))"
                },
                {
                    "tip": "height of cylinder",
                    "type": "str",
                    "name": "height",
                    "value": "abs(edgecurve(i)-edgecurve(i+1))"
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
                    "value": "edgecurve(i)"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "$fn",
                    "value": "faces"
                }
            ],
            "typename": "Node_cylinder",
            "version": 1,
            "y": 1162.9251558317533,
            "x": -1061.3402140004325
        },
        {
            "name": "node_rotate",
            "inputplugs": [
                {
                    "connection": "node_for.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "rx",
                    "value": "180"
                },
                {
                    "type": "str",
                    "name": "ry",
                    "value": "0"
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
            "y": 1161.2887187917536,
            "x": -592.427357123843
        },
        {
            "name": "node_translate",
            "inputplugs": [
                {
                    "connection": "node_rotate.object",
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
                    "value": "height"
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
            "y": 1160.126251745376,
            "x": -347.3974009104316
        },
        {
            "name": "node_function0",
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
                    "value": "edgecurve"
                },
                {
                    "tip": "expression of function",
                    "type": "str",
                    "name": "expression",
                    "value": "(height/steps) * (a) - sin(360 * (a) / steps) * (height/steps)* enddetail"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname1",
                    "value": "a"
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
            "y": 569.0604075769404,
            "x": -982.7723139714656
        },
        {
            "name": "node_function",
            "inputplugs": [
                {
                    "connection": "node_function0.nextfunction",
                    "type": "function",
                    "name": "prevfunction",
                    "value": ""
                },
                {
                    "alias": "function name",
                    "tip": "name of function (will be usable in expressions)",
                    "type": "str",
                    "name": "name",
                    "value": "eggradius"
                },
                {
                    "tip": "expression of function",
                    "type": "str",
                    "name": "expression",
                    "value": "sqrt(height - (height*0.78) - 2 * (a) + sqrt( 4 * (0.78*height) * (a) + pow(height - (height*0.78), 2) )) * sqrt(a) / sqrt(2)"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname1",
                    "value": "a"
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
            "y": 684.8528483040725,
            "x": -611.2582744911055
        },
        {
            "name": "node_declaremodule",
            "inputplugs": [
                {
                    "tip": "name of module",
                    "type": "str",
                    "name": "name",
                    "value": "egg"
                },
                {
                    "connection": "node_param3.nextparam",
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
                    "connection": "node_translate.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                }
            ],
            "typename": "Node_declaremodule",
            "version": 1,
            "y": 711.3508968997234,
            "x": -136.79994246323042
        },
        {
            "name": "node_function1",
            "inputplugs": [
                {
                    "connection": "node_function2.nextfunction",
                    "type": "function",
                    "name": "prevfunction",
                    "value": ""
                },
                {
                    "alias": "function name",
                    "tip": "name of function (will be usable in expressions)",
                    "type": "str",
                    "name": "name",
                    "value": "myfunc2"
                },
                {
                    "tip": "expression of function",
                    "type": "str",
                    "name": "expression",
                    "value": "a+b"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname1",
                    "value": "a"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname2",
                    "value": "b"
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
            "y": 1572.0322035096813,
            "x": -621.0364189323003
        },
        {
            "name": "node_function2",
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
                    "value": "myfunc1"
                },
                {
                    "tip": "expression of function",
                    "type": "str",
                    "name": "expression",
                    "value": "a+b"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname1",
                    "value": "a"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname2",
                    "value": "b"
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
            "y": 1569.5055608311625,
            "x": -955.1640474987648
        },
        {
            "name": "node_param1",
            "inputplugs": [
                {
                    "type": "param",
                    "name": "previousparam",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "name",
                    "value": "paramname1"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "0"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": 1381.3832294287865,
            "x": -843.2488254128517
        },
        {
            "name": "node_param4",
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
                    "value": "paramname2"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "0"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": 1379.7685812991604,
            "x": -550.2149529743648
        }
    ],
    "version": 2
}ENDGRAPHSCAD*/