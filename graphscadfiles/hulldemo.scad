//------------------------------------------------------------------------------------------
// THIS CODE WAS GENERATED WITH GRAPHSCAD
//------------------------------------------------------------------------------------------
// Graphscad is a graphical nodal editor to create .SCAD files
//
// More info : http://graphscad.free.fr
//
// Scad Files created with Graphscad can be edited by graphscad
// Scad Files created with Graphscad can be read by Openscad
//
//------------------------------------------------------------------------------------------
module hulldemo()
{
 function node_cylinder_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_cylinder(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  cylinder(r=1,r1=1,h=1,$fn=64);
 }
 function node_cylinder0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([2,0,0]);
 module node_cylinder0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([2,0,0])cylinder(r=0.5,r1=0.5,h=1,$fn=64);
 }
 function node_boolean0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_scale0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_scale0(i,j,k,l,m,n);
   node_scale1(i,j,k,l,m,n);
  }
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
 function node_boolean_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_hull_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  difference()
  {
   node_hull(i,j,k,l,m,n);
   node_scale(i,j,k,l,m,n);
  }
 }
 function node_translate_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,-0.1])*node_boolean0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0,0,-0.1])node_boolean0(i,j,k,l,m,n);
 }
 function node_scale_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = scale([1,1,2])*node_translate_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_scale(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  scale([1,1,2])node_translate(i,j,k,l,m,n);
 }
 function node_scale0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = onlytranslate(node_cylinder_matrix(i=i,j=j,k=k,l=l,m=m,n=n))*scale([1.05,1.05,1])*negonlytranslate(node_cylinder_matrix(i=i,j=j,k=k,l=l,m=m,n=n))*node_cylinder_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_scale0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  multmatrix(m=onlytranslate(node_cylinder_matrix(i=i,j=j,k=k,l=l,m=m,n=n))*scale([1.05,1.05,1])*negonlytranslate(node_cylinder_matrix(i=i,j=j,k=k,l=l,m=m,n=n)))node_cylinder(i,j,k,l,m,n);
 }
 function node_scale1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = onlytranslate(node_cylinder0_matrix(i=i,j=j,k=k,l=l,m=m,n=n))*scale([1.05,1.05,1])*negonlytranslate(node_cylinder0_matrix(i=i,j=j,k=k,l=l,m=m,n=n))*node_cylinder0_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_scale1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  multmatrix(m=onlytranslate(node_cylinder0_matrix(i=i,j=j,k=k,l=l,m=m,n=n))*scale([1.05,1.05,1])*negonlytranslate(node_cylinder0_matrix(i=i,j=j,k=k,l=l,m=m,n=n)))node_cylinder0(i,j,k,l,m,n);
 }
 function node_boolean1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_cylinder_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_boolean1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  union()
  {
   node_cylinder(i,j,k,l,m,n);
   node_cylinder0(i,j,k,l,m,n);
  }
 }
 function node_color_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_color(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  {
   color([1,1,0,1])node_boolean(i,j,k,l,m,n);
  }
 }
 function node_color0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_boolean1_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_color0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  {
   color([1,0,0,0.6])node_boolean1(i,j,k,l,m,n);
  }
 }
 node_color();
 node_color0();
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
hulldemo();


/*BEGINGRAPHSCAD
{
    "nodes": [
        {
            "name": "node_cylinder",
            "inputplugs": [
                {
                    "type": "str",
                    "name": "radius",
                    "value": "1"
                },
                {
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
                    "name": "$fn",
                    "value": "64"
                }
            ],
            "typename": "Node_cylinder",
            "version": 1,
            "y": -206.43400000000003,
            "x": -1187.1979999999999
        },
        {
            "name": "node_cylinder0",
            "inputplugs": [
                {
                    "type": "str",
                    "name": "radius",
                    "value": "0.5"
                },
                {
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
                    "value": "2"
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
                    "name": "$fn",
                    "value": "64"
                }
            ],
            "typename": "Node_cylinder",
            "version": 1,
            "y": 101.72599999999997,
            "x": -1185.8779999999997
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
                    "connection": "node_scale0.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "connection": "node_scale1.object",
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
                }
            ],
            "typename": "Node_boolean",
            "version": 1,
            "y": -289.63399999999996,
            "x": -422.3979999999999
        },
        {
            "name": "node_hull",
            "inputplugs": [
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
                }
            ],
            "typename": "Node_hull",
            "version": 1,
            "y": 59.8484375000001,
            "x": -318.0187499999997
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
                    "connection": "node_hull.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "connection": "node_scale.object",
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
                }
            ],
            "typename": "Node_boolean",
            "version": 1,
            "y": -168.1515624999999,
            "x": 231.98125000000027
        },
        {
            "name": "node_translate",
            "inputplugs": [
                {
                    "connection": "node_boolean0.object",
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
                    "value": "-0.1"
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
            "y": -268.1515624999999,
            "x": -213.01874999999973
        },
        {
            "name": "node_scale",
            "inputplugs": [
                {
                    "connection": "node_translate.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "sx",
                    "value": "1"
                },
                {
                    "type": "str",
                    "name": "sy",
                    "value": "1"
                },
                {
                    "type": "str",
                    "name": "sz",
                    "value": "2"
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
            "y": -252.1515624999999,
            "x": -16.018749999999727
        },
        {
            "name": "node_scale0",
            "inputplugs": [
                {
                    "connection": "node_cylinder.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "sx",
                    "value": "1.05"
                },
                {
                    "type": "str",
                    "name": "sy",
                    "value": "1.05"
                },
                {
                    "type": "str",
                    "name": "sz",
                    "value": "1"
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
            "typename": "Node_scale",
            "version": 1,
            "y": -420.1515624999999,
            "x": -635.0187499999997
        },
        {
            "name": "node_scale1",
            "inputplugs": [
                {
                    "connection": "node_cylinder0.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "sx",
                    "value": "1.05"
                },
                {
                    "type": "str",
                    "name": "sy",
                    "value": "1.05"
                },
                {
                    "type": "str",
                    "name": "sz",
                    "value": "1"
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
            "typename": "Node_scale",
            "version": 1,
            "y": -166.1515624999999,
            "x": -633.0187499999997
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
                }
            ],
            "typename": "Node_boolean",
            "version": 1,
            "y": 315.2311312500002,
            "x": -541.9235937499993
        },
        {
            "name": "node_color",
            "inputplugs": [
                {
                    "connection": "node_boolean.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "r",
                    "value": "1"
                },
                {
                    "type": "str",
                    "name": "g",
                    "value": "1"
                },
                {
                    "type": "str",
                    "name": "b",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "a",
                    "value": "1"
                }
            ],
            "typename": "Node_color",
            "version": 1,
            "y": -143.7057812499999,
            "x": 449.4978124999998
        },
        {
            "name": "node_color0",
            "inputplugs": [
                {
                    "connection": "node_boolean1.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "r",
                    "value": "1"
                },
                {
                    "type": "str",
                    "name": "g",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "b",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "a",
                    "value": "0.6"
                }
            ],
            "typename": "Node_color",
            "version": 1,
            "y": 390.0,
            "x": -310.0
        }
    ],
    "version": 2
}
ENDGRAPHSCAD*/
