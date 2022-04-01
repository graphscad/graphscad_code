//------------------------------------------------------------------------------------------
// THIS CODE WAS GENERATED WITH GRAPHSCAD
// IF U LIKE GRAPHSCAD PLEASE DONATE//------------------------------------------------------------------------------------------
// D:/workspace/graphscad/graphscadfiles/cone_plane.scad
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
module cone_plane(diameter=24,height=20,steps=50,curvepower=0.8,tickness=1)
{
 function node_for0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_translate_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[0:1:steps+1])
  {
   node_translate(i,j,k,l,m,n);
  }
 }
 function node_translate_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,i*height/steps])*node_rotateextrude_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,i*height/steps])node_rotateextrude(i,j,k,l,m,n);
 }
 function node_rotateextrude_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_rotateextrude(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  rotate_extrude(angle=360,convexity=3,$fn=128)
  {
   node_polygon(i,j,k,l,m,n);
  }
 }
 function node_polygon_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_polygon(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  polygon(points=[[max(diameter/2*conecurve((i+0)/steps,curvepower)-tickness,0),0],
  [max(diameter/2*conecurve((i+1)/steps,curvepower)-tickness,0),height/steps],
  [diameter/2*conecurve((i+1)/steps,curvepower),height/steps],
  [diameter/2*conecurve((i+0)/steps,curvepower),0]],convexity=3);
 }
 node_for0();
}
cone_plane();
/*------------------- Other Headers --------------------------------*/
/*------------------- default module --------------------------------*/
/* force parameters for default module if they are connected to declaremodule */
diameter=24;
height=20;
steps=50;
curvepower=0.8;
tickness=1;
/* force functions for default module if they are connected to declaremodule */
function conecurve(r,curvepower)=pow(cos(r*90),curvepower);
module cone_plane_default()
{
 /*------------------- isolated output objects --------------------------------*/
 function conecurve(r,curvepower)=pow(cos(r*90),curvepower);
 /*------------------- final objects output --------------------------------*/
}
cone_plane_default();
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
                    "value": "diameter"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "24"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -819.3920495014662,
            "x": -1149.2709853372432
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
                    "value": "20"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -821.0268222140764,
            "x": -907.7145687976536
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
                    "value": "conecurve"
                },
                {
                    "tip": "expression of function",
                    "type": "str",
                    "name": "expression",
                    "value": "pow(cos(r*90),curvepower)"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname1",
                    "value": "r"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "paramname2",
                    "value": "curvepower"
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
            "y": -628.8005630498537,
            "x": -1131.8975746627561
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
                    "value": "steps"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "50"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -822.4687306451613,
            "x": -656.2602402052755
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
                    "value": "curvepower"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "0.8"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -820.1072973607031,
            "x": -406.7605334604086
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
            "y": -821.6555469941343,
            "x": -175.85238646627522
        },
        {
            "name": "node_polygon",
            "inputplugs": [
                {
                    "connection": "node_string.string",
                    "type": "str",
                    "name": "points",
                    "value": "[[max(diameter/2*conecurve((i+0)/steps,curvepower)-tickness,0),0],[max(diameter/2*conecurve((i+1)/steps,curvepower)-tickness,0),height/steps],[diameter/2*conecurve((i+1)/steps,curvepower),height/steps],[diameter/2*conecurve((i+0)/steps,curvepower),0]]"
                },
                {
                    "type": "str",
                    "name": "convexity",
                    "value": "3"
                }
            ],
            "typename": "Node_polygon",
            "version": 1,
            "y": -383.0641194499701,
            "x": -1197.2459461803364
        },
        {
            "name": "node_rotateextrude",
            "inputplugs": [
                {
                    "connection": "node_polygon.object2d",
                    "type": "object2d",
                    "name": "object2d",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "angle",
                    "value": "360"
                },
                {
                    "type": "str",
                    "name": "convexity",
                    "value": "3"
                },
                {
                    "type": "str",
                    "name": "$fn",
                    "value": "128"
                }
            ],
            "typename": "Node_rotateextrude",
            "version": 1,
            "y": -426.36727719662474,
            "x": -872.949432063584
        },
        {
            "name": "node_for0",
            "inputplugs": [
                {
                    "tip": "input object",
                    "connection": "node_translate.object",
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
                    "value": "steps+1"
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
            "y": -412.11574958137555,
            "x": -216.98786852947103
        },
        {
            "name": "node_translate",
            "inputplugs": [
                {
                    "connection": "node_rotateextrude.object",
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
                    "value": "i*height/steps"
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
            "y": -444.08153199897095,
            "x": -519.2954463963356
        },
        {
            "name": "node_comment",
            "inputplugs": [
                {
                    "tip": "comment string to display on background",
                    "type": "str",
                    "name": "comment",
                    "value": "customizable plane cone"
                }
            ],
            "typename": "Node_comment",
            "version": 1,
            "y": -923.7008774097494,
            "x": -939.237363478298
        },
        {
            "name": "node_string",
            "inputplugs": [
                {
                    "multiline": true,
                    "type": "str",
                    "name": "string",
                    "value": "[[max(diameter/2*conecurve((i+0)/steps,curvepower)-tickness,0),0],\n[max(diameter/2*conecurve((i+1)/steps,curvepower)-tickness,0),height/steps],\n[diameter/2*conecurve((i+1)/steps,curvepower),height/steps],\n[diameter/2*conecurve((i+0)/steps,curvepower),0]]"
                }
            ],
            "typename": "Node_string",
            "version": 1,
            "y": -360.8955690255842,
            "x": -1343.246811761599
        },
        {
            "name": "node_comment0",
            "inputplugs": [
                {
                    "tip": "comment string to display on background",
                    "type": "str",
                    "name": "comment",
                    "value": "USE string node when you want\nenter a multiline string. then connect\nit to a string input. Cool for arrays..."
                }
            ],
            "typename": "Node_comment",
            "version": 1,
            "y": -419.3623185225302,
            "x": -1772.5201306562476
        },
        {
            "name": "node_declaremodule",
            "inputplugs": [
                {
                    "tip": "name of module",
                    "type": "str",
                    "name": "name",
                    "value": "cone_plane"
                },
                {
                    "connection": "node_param3.nextparam",
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
                    "connection": "node_for0.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                }
            ],
            "typename": "Node_declaremodule",
            "version": 1,
            "y": -692.114160039371,
            "x": 145.48198600751667
        }
    ],
    "version": 2
}ENDGRAPHSCAD*/