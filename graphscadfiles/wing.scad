//------------------------------------------------------------------------------------------
// THIS CODE WAS GENERATED WITH GRAPHSCAD
//------------------------------------------------------------------------------------------
// F:/workspace/graphscad/graphscadfiles/wing.scad
//------------------------------------------------------------------------------------------
// Graphscad is a graphical nodal editor to create .SCAD files
//
// More info here : http://graphscad.free.fr
//
// Scad Files created with Graphscad can be edited by graphscad
// Scad Files created with Graphscad can be read by Openscad
//
//------------------------------------------------------------------------------------------
use <nacaprofile.scad>
module wing(chord=100,length=100,tube1radius=2.6,tube2radius=1.6)
{
 function node_callmodule2d_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_callmodule2d(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  nacaprofile(2412,chord);
 }
 function node_offset_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_offset(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  offset(r=-1.0)
  {
   node_callmodule2d(i,j,k,l,m,n);
  }
 }
 function node_linearextrude_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_linearextrude(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  linear_extrude(height=length,center=true,convexity=1,twist=0,slices=1,scale=1)
  {
   node_callmodule2d(i,j,k,l,m,n);
  }
 }
 function node_linearextrude0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_linearextrude0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  linear_extrude(height=length+0.1,center=true,convexity=1,twist=0,slices=1,scale=1)
  {
   node_offset(i,j,k,l,m,n);
  }
 }
 function node_boolean_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_linearextrude_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   node_linearextrude(i,j,k,l,m,n);
   node_linearextrude0(i,j,k,l,m,n);
  }
 }
 function node_cube_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([i,0,0]);
 module node_cube(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([i,0,0])cube([1,50,length],center=true);
 }
 function node_for_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_cube_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[0:10:chord*0.6])
  {
   node_cube(i,j,k,l,m,n);
  }
 }
 function node_boolean0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean1_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  intersection()
  {
   node_boolean1(i,j,k,l,m,n);
   node_linearextrude(i,j,k,l,m,n);
  }
 }
 function node_tube_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([10*2,1.0,-length/2]);
 module node_tube_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([10*2,1.0,-length/2]) cylinder(r=tube1radius+1,r1=tube1radius+1,h=length,$fn=(16+tube1radius+1*3.14116));
 }
 function node_tube_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([10*2,1.0,-length/2]);
 module node_tube_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([10*2,1.0,-length/2])translate([0,0,-(1)]) cylinder(r=tube1radius+1-(0.5),r1=tube1radius+1-(0.5),h=length+((1)*2),$fn=(16+tube1radius+1*3.14116));
 }
 function node_tube_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([10*2,1.0,-length/2]);
 module node_tube(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([10*2,1.0,-length/2])difference()
  {
    cylinder(r=tube1radius+1,r1=tube1radius+1,h=length,$fn=(16+tube1radius+1*3.14116));
   translate([0,0,-(1)]) cylinder(r=tube1radius+1-(0.5),r1=tube1radius+1-(0.5),h=length+((1)*2),$fn=(16+tube1radius+1*3.14116));
  }
 }
 function node_boolean2_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean2(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_boolean0(i,j,k,l,m,n);
   node_tube(i,j,k,l,m,n);
   node_tube0(i,j,k,l,m,n);
   node_boolean(i,j,k,l,m,n);
  }
 }
 function node_cube0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([i,0,0]);
 module node_cube0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([i,0,0])cube([3.0,50,length],center=true);
 }
 function node_boolean1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_cube0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_cube0(i,j,k,l,m,n);
   node_for(i,j,k,l,m,n);
  }
 }
 function node_tube0_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([10*6,1.0,-length/2]);
 module node_tube0_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([10*6,1.0,-length/2]) cylinder(r=tube2radius+1,r1=tube2radius+1,h=length,$fn=(16+tube2radius+1*3.14116));
 }
 function node_tube0_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([10*6,1.0,-length/2]);
 module node_tube0_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([10*6,1.0,-length/2])translate([0,0,-(1)]) cylinder(r=tube2radius+1-(0.5),r1=tube2radius+1-(0.5),h=length+((1)*2),$fn=(16+tube2radius+1*3.14116));
 }
 function node_tube0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([10*6,1.0,-length/2]);
 module node_tube0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([10*6,1.0,-length/2])difference()
  {
    cylinder(r=tube2radius+1,r1=tube2radius+1,h=length,$fn=(16+tube2radius+1*3.14116));
   translate([0,0,-(1)]) cylinder(r=tube2radius+1-(0.5),r1=tube2radius+1-(0.5),h=length+((1)*2),$fn=(16+tube2radius+1*3.14116));
  }
 }
 function node_boolean3_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean2_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean3(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   node_boolean2(i,j,k,l,m,n);
   node_tube_inobject(i,j,k,l,m,n);
   node_tube0_inobject(i,j,k,l,m,n);
  }
 }
 node_boolean3();
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
wing();


/*BEGINGRAPHSCAD{
    "nodes": [
        {
            "name": "node_callmodule2d",
            "inputplugs": [
                {
                    "tip": "filename of module (a graphscad file .scad)",
                    "type": "filename",
                    "name": "filename",
                    "value": "nacaprofile.scad"
                },
                {
                    "tip": "x translation of output object2d ",
                    "type": "str",
                    "name": "tx",
                    "value": "0"
                },
                {
                    "tip": "y translation of output object2d",
                    "type": "str",
                    "name": "ty",
                    "value": "0"
                },
                {
                    "tip": "z translation of output object2d",
                    "type": "str",
                    "name": "tz",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "param1",
                    "value": "2412"
                },
                {
                    "type": "str",
                    "name": "param2",
                    "value": "chord"
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
            "typename": "Node_callmodule2d",
            "version": 1,
            "y": 158.08168568398844,
            "x": -407.321921906213
        },
        {
            "name": "node_offset",
            "inputplugs": [
                {
                    "connection": "node_callmodule2d.object2d",
                    "type": "object2d",
                    "name": "object2d",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "op",
                    "value": "Round",
                    "combo": [
                        "Round",
                        "Delta"
                    ]
                },
                {
                    "type": "str",
                    "name": "value",
                    "value": "-1.0"
                },
                {
                    "type": "str",
                    "name": "chamfer",
                    "value": "false",
                    "combo": [
                        "true",
                        "false"
                    ]
                }
            ],
            "typename": "Node_offset",
            "version": 1,
            "y": 355.03110153746263,
            "x": -180.26939245695598
        },
        {
            "name": "node_linearextrude",
            "inputplugs": [
                {
                    "connection": "node_callmodule2d.object2d",
                    "type": "object2d",
                    "name": "object2d",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "height",
                    "value": "length"
                },
                {
                    "type": "str",
                    "name": "center",
                    "value": "true",
                    "combo": [
                        "true",
                        "false"
                    ]
                },
                {
                    "type": "str",
                    "name": "convexity",
                    "value": "1"
                },
                {
                    "type": "str",
                    "name": "twist",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "slices",
                    "value": "1"
                },
                {
                    "type": "str",
                    "name": "scale",
                    "value": "1"
                }
            ],
            "typename": "Node_linearextrude",
            "version": 1,
            "y": 204.06659710677144,
            "x": 52.66130415689406
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
                    "value": "chord"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "100"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -353.5148328373836,
            "x": -642.5058738998468
        },
        {
            "name": "node_linearextrude0",
            "inputplugs": [
                {
                    "connection": "node_offset.object2d",
                    "type": "object2d",
                    "name": "object2d",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "height",
                    "value": "length+0.1"
                },
                {
                    "type": "str",
                    "name": "center",
                    "value": "true",
                    "combo": [
                        "true",
                        "false"
                    ]
                },
                {
                    "type": "str",
                    "name": "convexity",
                    "value": "1"
                },
                {
                    "type": "str",
                    "name": "twist",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "slices",
                    "value": "1"
                },
                {
                    "type": "str",
                    "name": "scale",
                    "value": "1"
                }
            ],
            "typename": "Node_linearextrude",
            "version": 1,
            "y": 438.7906479706977,
            "x": 48.97298679097116
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
                    "connection": "node_linearextrude.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_linearextrude0.object",
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
            "y": 636.7628988383797,
            "x": 453.35185033473766
        },
        {
            "name": "node_cube",
            "inputplugs": [
                {
                    "tip": "x size of cube",
                    "type": "str",
                    "name": "sizex",
                    "value": "1"
                },
                {
                    "tip": "y size of cube",
                    "type": "str",
                    "name": "sizey",
                    "value": "50"
                },
                {
                    "tip": "z size of cube",
                    "type": "str",
                    "name": "sizez",
                    "value": "length"
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "i"
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
            "y": -107.25596944044185,
            "x": -186.12797010402846
        },
        {
            "name": "node_for",
            "inputplugs": [
                {
                    "tip": "input object",
                    "connection": "node_cube.object",
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
                    "value": "chord*0.6"
                },
                {
                    "tip": "increment of variable for each loop",
                    "type": "str",
                    "name": "step",
                    "value": "10"
                }
            ],
            "typename": "Node_for",
            "version": 1,
            "y": -77.00896901957267,
            "x": 35.2726596189986
        },
        {
            "name": "node_boolean0",
            "inputplugs": [
                {
                    "type": "str",
                    "name": "op",
                    "value": "intersection",
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
                    "connection": "node_boolean1.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_linearextrude.object",
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
            "y": -151.829898376109,
            "x": 458.1146177273929
        },
        {
            "name": "node_tube",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "type": "str",
                    "name": "radius",
                    "value": "tube1radius+1"
                },
                {
                    "alias": "bottom radius",
                    "type": "str",
                    "name": "radius2",
                    "value": "tube1radius+1"
                },
                {
                    "type": "str",
                    "name": "height",
                    "value": "length"
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "10*2"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "1.0"
                },
                {
                    "type": "str",
                    "name": "tz",
                    "value": "-length/2"
                },
                {
                    "alias": "thickness",
                    "type": "str",
                    "name": "tickness",
                    "value": "0.5"
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
            "y": 103.02437890838598,
            "x": 435.20186640269196
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
                    "connection": "node_tube.object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_tube0.object",
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
            "y": 169.63145454315895,
            "x": 826.3816957600667
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
                    "value": "length"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "100"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -156.1376416949887,
            "x": -642.0061534643742
        },
        {
            "name": "node_cube0",
            "inputplugs": [
                {
                    "tip": "x size of cube",
                    "type": "str",
                    "name": "sizex",
                    "value": "3.0"
                },
                {
                    "tip": "y size of cube",
                    "type": "str",
                    "name": "sizey",
                    "value": "50"
                },
                {
                    "tip": "z size of cube",
                    "type": "str",
                    "name": "sizez",
                    "value": "length"
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "i"
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
            "y": -331.47313908824356,
            "x": -183.36552399486436
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
                    "connection": "node_cube0.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_for.object",
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
            "y": -264.2418959020769,
            "x": 192.59516502204542
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
                    "value": "tube1radius"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "2.6"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": 13.001215707562423,
            "x": -644.7645281414129
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
                    "value": "tube2radius"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "1.6"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": 171.47002746516327,
            "x": -652.9670958482784
        },
        {
            "name": "node_tube0",
            "inputplugs": [
                {
                    "alias": "top radius",
                    "type": "str",
                    "name": "radius",
                    "value": "tube2radius+1"
                },
                {
                    "alias": "bottom radius",
                    "type": "str",
                    "name": "radius2",
                    "value": "tube2radius+1"
                },
                {
                    "type": "str",
                    "name": "height",
                    "value": "length"
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "10*6"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "1.0"
                },
                {
                    "type": "str",
                    "name": "tz",
                    "value": "-length/2"
                },
                {
                    "alias": "thickness",
                    "type": "str",
                    "name": "tickness",
                    "value": "0.5"
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
            "y": 365.4515054435189,
            "x": 440.1103016062855
        },
        {
            "name": "node_boolean3",
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
                    "connection": "node_tube.holeobject",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "a 3D object",
                    "connection": "node_tube0.holeobject",
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
            "y": 411.50066125795115,
            "x": 995.2725638908728
        }
    ],
    "version": 2
}ENDGRAPHSCAD*/