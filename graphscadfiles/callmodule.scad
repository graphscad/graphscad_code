//------------------------------------------------------------------------------------------
// THIS CODE WAS GENERATED WITH GRAPHSCAD
//------------------------------------------------------------------------------------------
// F:/workspace/graphscad/graphscadfiles/callmodule.scad
//------------------------------------------------------------------------------------------
// Graphscad is a graphical nodal editor to create .SCAD files
//
// More info here : http://graphscad.free.fr
//
// Scad Files created with Graphscad can be edited by graphscad
// Scad Files created with Graphscad can be read by Openscad
//
//------------------------------------------------------------------------------------------
use <pulleydemo.scad>
use <fibonacisphere.scad>
use <rgbcube.scad>
use <multicopter.scad>
use <robotwheel.scad>
module callmodule()
{
 function node_callmodule_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,10,10]);
 module node_callmodule(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,10,10])rgbcube(10);
 }
 function node_callmodule0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([3,0,30]);
 module node_callmodule0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([3,0,30])pulleydemo(30,7);
 }
 function node_callmodule1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([10,0,10]);
 module node_callmodule1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([10,0,10])fibonacisphere(4,1);
 }
 function node_callmodule2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_callmodule2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  multicopter();
 }
 function node_callmodule3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,50]);
 module node_callmodule3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,50])robotwheel();
 }
 node_callmodule();
 node_callmodule0();
 node_callmodule1();
 node_callmodule2();
 node_callmodule3();
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
}
callmodule();


/*BEGINGRAPHSCAD{
    "nodes": [
        {
            "name": "node_callmodule",
            "inputplugs": [
                {
                    "tip": "filename of module (a graphscad file .scad)",
                    "type": "filename",
                    "name": "filename",
                    "value": "rgbcube.scad"
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
                    "value": "10"
                },
                {
                    "tip": "z translation of output object",
                    "type": "str",
                    "name": "tz",
                    "value": "10"
                },
                {
                    "type": "str",
                    "name": "param1",
                    "value": "10"
                },
                {
                    "type": "str",
                    "name": "param2",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param3",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param4",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param5",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param6",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param7",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param8",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param9",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param10",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param11",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param12",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param13",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param14",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param15",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param16",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param17",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param18",
                    "value": ""
                },
                {
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
            "y": -448.0467502903227,
            "x": -701.0347267771261
        },
        {
            "name": "node_callmodule0",
            "inputplugs": [
                {
                    "tip": "filename of module (a graphscad file .scad)",
                    "type": "filename",
                    "name": "filename",
                    "value": "pulleydemo.scad"
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "3"
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
                    "value": "30"
                },
                {
                    "type": "str",
                    "name": "param1",
                    "value": "30"
                },
                {
                    "type": "str",
                    "name": "param2",
                    "value": "7"
                },
                {
                    "type": "str",
                    "name": "param3",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param4",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param5",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param6",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param7",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param8",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param9",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param10",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param11",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param12",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param13",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param14",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param15",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param16",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param17",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param18",
                    "value": ""
                },
                {
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
            "y": -242.60174400000022,
            "x": -712.737130400001
        },
        {
            "name": "node_callmodule1",
            "inputplugs": [
                {
                    "tip": "filename of module (a graphscad file .scad)",
                    "type": "filename",
                    "name": "filename",
                    "value": "fibonacisphere.scad"
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "10"
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
                    "value": "10"
                },
                {
                    "type": "str",
                    "name": "param1",
                    "value": "4"
                },
                {
                    "type": "str",
                    "name": "param2",
                    "value": "1"
                },
                {
                    "type": "str",
                    "name": "param3",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param4",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param5",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param6",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param7",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param8",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param9",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param10",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param11",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param12",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param13",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param14",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param15",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param16",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param17",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param18",
                    "value": ""
                },
                {
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
            "y": -12.0,
            "x": -712.0
        },
        {
            "name": "node_callmodule2",
            "inputplugs": [
                {
                    "tip": "filename of module (a graphscad file .scad)",
                    "type": "filename",
                    "name": "filename",
                    "value": "multicopter.scad"
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
                    "type": "str",
                    "name": "param1",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param2",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param3",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param4",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param5",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param6",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param7",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param8",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param9",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param10",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param11",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param12",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param13",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param14",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param15",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param16",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param17",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param18",
                    "value": ""
                },
                {
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
            "y": -370.2489839999997,
            "x": -1018.4436657595305
        },
        {
            "name": "node_callmodule3",
            "inputplugs": [
                {
                    "tip": "filename of module (a graphscad file .scad)",
                    "type": "filename",
                    "name": "filename",
                    "value": "robotwheel.scad"
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
                    "type": "str",
                    "name": "param1",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param2",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param3",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param4",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param5",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param6",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param7",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param8",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param9",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param10",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param11",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param12",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param13",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param14",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param15",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param16",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param17",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "param18",
                    "value": ""
                },
                {
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
            "y": -184.93103162463325,
            "x": -1026.7862942639294
        },
        {
            "name": "node_comment",
            "inputplugs": [
                {
                    "tip": "comment string to display on background",
                    "type": "str",
                    "name": "comment",
                    "value": "Example of call to an external module\ncreated with graphscad.\nEach call module node parse parameters of external\nmodule and show them as input plugs.\nUsing call modules, it's possible to create complex models by assembling \nmultiple modules\n"
                }
            ],
            "typename": "Node_comment",
            "version": 1,
            "y": -607.3593749999999,
            "x": -988.5156249999995
        }
    ],
    "version": 2
}ENDGRAPHSCAD*/