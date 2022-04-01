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
$fn=5;
module fn_overridetest()
{
 function node_cylinder_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_cylinder(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  cylinder(r=1,r1=1,h=1,center=false,$fn=5);
 }
 function node_box_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([2.0,0,0]);
 module node_box(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([2.0,0,0])difference()
  {
   hull()
   {
    translate([-((((1)/2))-(max(0.1,0.00001))),-((((1)/2))-(max(0.1,0.00001))),0]) cylinder(r=max(0.1,0.00001),h=(1),$fn=5);
    translate([-((((1)/2))-(max(0.1,0.00001))), ((((1)/2))-(max(0.1,0.00001))),0]) cylinder(r=max(0.1,0.00001),h=(1),$fn=5);
    translate([ ((((1)/2))-(max(0.1,0.00001))),-((((1)/2))-(max(0.1,0.00001))),0]) cylinder(r=max(0.1,0.00001),h=(1),$fn=5);
    translate([ ((((1)/2))-(max(0.1,0.00001))), ((((1)/2))-(max(0.1,0.00001))),0]) cylinder(r=max(0.1,0.00001),h=(1),$fn=5);
   }
   translate([ 0,0,0.05])hull()
   {
    translate([-((((1)/2))-((max(0.1,0.00001))+(0.1))),-((((1)/2))-((max(0.1,0.00001))+(0.1))),0]) cylinder(r=max(0.1,0.00001),h=(((1))-(0.05)+0.01),$fn=5);
    translate([-((((1)/2))-((max(0.1,0.00001))+(0.1))), ((((1)/2))-((max(0.1,0.00001))+(0.1))),0]) cylinder(r=max(0.1,0.00001),h=(((1))-(0.05)+0.01),$fn=5);
    translate([ ((((1)/2))-((max(0.1,0.00001))+(0.1))),-((((1)/2))-((max(0.1,0.00001))+(0.1))),0]) cylinder(r=max(0.1,0.00001),h=(((1))-(0.05)+0.01),$fn=5);
    translate([ ((((1)/2))-((max(0.1,0.00001))+(0.1))), ((((1)/2))-((max(0.1,0.00001))+(0.1))),0]) cylinder(r=max(0.1,0.00001),h=(((1))-(0.05)+0.01),$fn=5);
   }
  }
 }
 function node_emptysphere_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([4.0,0,0]);
 module node_emptysphere_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([4.0,0,0])sphere(r=1-0.1,$fn=5);
 }
 function node_emptysphere_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([4.0,0,0]);
 module node_emptysphere_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([4.0,0,0])sphere(r=1,$fn=5);
 }
 function node_emptysphere_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([4.0,0,0]);
 module node_emptysphere(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([4.0,0,0])difference()
  {
   sphere(r=1,$fn=5);
   sphere(r=1-0.1,$fn=5);
  }
 }
 function node_roundcube_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([6.0,0,0]);
 module node_roundcube(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([6.0,0,0])if(0.1>0)
  {
   {
    hull()
    {
     translate([-(((1)/2)-0.1),-(((1)/2)-0.1),-(((1)/2)-0.1)]) sphere(r=0.1,$fn=5);
     translate([-(((1)/2)-0.1),-(((1)/2)-0.1), (((1)/2)-0.1)]) sphere(r=0.1,$fn=5);
     translate([-(((1)/2)-0.1), (((1)/2)-0.1),-(((1)/2)-0.1)]) sphere(r=0.1,$fn=5);
     translate([-(((1)/2)-0.1), (((1)/2)-0.1), (((1)/2)-0.1)]) sphere(r=0.1,$fn=5);
     translate([ (((1)/2)-0.1),-(((1)/2)-0.1),-(((1)/2)-0.1)]) sphere(r=0.1,$fn=5);
     translate([ (((1)/2)-0.1),-(((1)/2)-0.1), (((1)/2)-0.1)]) sphere(r=0.1,$fn=5);
     translate([ (((1)/2)-0.1), (((1)/2)-0.1),-(((1)/2)-0.1)]) sphere(r=0.1,$fn=5);
     translate([ (((1)/2)-0.1), (((1)/2)-0.1), (((1)/2)-0.1)]) sphere(r=0.1,$fn=5);
    }
   }
  }
  else
  {
   translate([ 6.0, 0, 6.0])cube([1,1,1],center=true);
  }
 }
 function node_sphere_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0.0,3.0,0]);
 module node_sphere(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([0.0,3.0,0]) sphere(r=1,$fn=5);
 }
 function node_tube_inobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([3.0,3.0,0]);
 module node_tube_inobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([3.0,3.0,0])translate([0,0,-0.001]) cylinder(r=1-(0.1),r1=1-(0.1),h=1+0.002,$fn=5);
 }
 function node_tube_outobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([3.0,3.0,0]);
 module node_tube_outobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([3.0,3.0,0]) cylinder(r=1,r1=1,h=1,$fn=5);
 }
 function node_tube_holeobject_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([3.0,3.0,0]);
 module node_tube_holeobject(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([3.0,3.0,0])translate([0,0,-0.001]) cylinder(r=(1)+(0)-(0.1),r1=(1)+(0)-(0.1),h=1+0.002,$fn=5);
 }
 function node_tube_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([3.0,3.0,0]);
 module node_tube(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([3.0,3.0,0])difference()
  {
    cylinder(r=1,r1=1,h=1,$fn=5);
   translate([0,0,-0.001]) cylinder(r=(1)+(0)-(0.1),r1=(1)+(0)-(0.1),h=1+0.002,$fn=5);
  }
 }
 function node_circle_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([5.0,3.0,0]);
 module node_circle(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([5.0,3.0,0])circle(r=1,$fn=5);
 }
 node_cylinder();
 node_box();
 node_emptysphere();
 node_roundcube();
 node_sphere();
 node_tube();
 node_circle();
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
fn_overridetest();


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
                    "value": "1"
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
                    "value": "1"
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
            "y": -330.5850439882698,
            "x": -317.065982404692
        },
        {
            "name": "node_globalsettings",
            "inputplugs": [
                {
                    "tip": " the minimum angle for a fragment",
                    "type": "str",
                    "name": "$fa",
                    "value": ""
                },
                {
                    "tip": "minimum size of a fragment",
                    "type": "str",
                    "name": "$fs",
                    "value": ""
                },
                {
                    "tip": "When this variable has a value greater than zero, $fa and $fs are ignored and full circle is rendered using this number of fragments",
                    "type": "str",
                    "name": "$fn",
                    "value": "5"
                },
                {
                    "tip": "viewport rotation",
                    "type": "str",
                    "name": "$vpr",
                    "value": ""
                },
                {
                    "tip": "viewport translation",
                    "type": "str",
                    "name": "$vpt",
                    "value": ""
                },
                {
                    "tip": "viewport camera distance",
                    "type": "str",
                    "name": "$vpd",
                    "value": ""
                },
                {
                    "tip": "The $t variable is used for animation",
                    "type": "str",
                    "name": "$t",
                    "value": ""
                }
            ],
            "typename": "Node_globalsettings",
            "version": 1,
            "y": -186.40715542521997,
            "x": -761.0536656891495
        },
        {
            "name": "node_box",
            "inputplugs": [
                {
                    "tip": "x size of box",
                    "type": "str",
                    "name": "sizex",
                    "value": "1"
                },
                {
                    "tip": "y size of box",
                    "type": "str",
                    "name": "sizey",
                    "value": "1"
                },
                {
                    "tip": "z size of box",
                    "type": "str",
                    "name": "sizez",
                    "value": "1"
                },
                {
                    "tip": "x translation of box",
                    "type": "str",
                    "name": "tx",
                    "value": "2.0"
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
                    "value": "0.1"
                },
                {
                    "alias": "thickness",
                    "tip": "thickness of box",
                    "type": "str",
                    "name": "tickness",
                    "value": "0.1"
                },
                {
                    "tip": "the thickness of the bottom of the box",
                    "type": "str",
                    "name": "interiorheight",
                    "value": "0.05"
                },
                {
                    "type": "str",
                    "name": "$fn",
                    "value": ""
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
            "y": -75.36363636363636,
            "x": -312.39442815249276
        },
        {
            "name": "node_emptysphere",
            "inputplugs": [
                {
                    "tip": "radius of sphere",
                    "type": "str",
                    "name": "radius",
                    "value": "1"
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "4.0"
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
                    "tip": "thickness of empty sphere",
                    "type": "str",
                    "name": "tickness",
                    "value": "0.1"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "$fn",
                    "value": ""
                }
            ],
            "typename": "Node_emptysphere",
            "version": 1,
            "y": -307.92651928152463,
            "x": -81.8809195381233
        },
        {
            "name": "node_roundcube",
            "inputplugs": [
                {
                    "type": "str",
                    "name": "sizex",
                    "value": "1"
                },
                {
                    "type": "str",
                    "name": "sizey",
                    "value": "1"
                },
                {
                    "type": "str",
                    "name": "sizez",
                    "value": "1"
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "6.0"
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
                    "name": "rounding",
                    "value": "0.1"
                },
                {
                    "type": "str",
                    "name": "$fn",
                    "value": ""
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
            "typename": "Node_roundcube",
            "version": 1,
            "y": -60.438263233137434,
            "x": -60.32631176686226
        },
        {
            "name": "node_sphere",
            "inputplugs": [
                {
                    "tip": "radius of sphere",
                    "type": "str",
                    "name": "radius",
                    "value": "1"
                },
                {
                    "tip": "x translation",
                    "type": "str",
                    "name": "tx",
                    "value": "0.0"
                },
                {
                    "tip": "y translation",
                    "type": "str",
                    "name": "ty",
                    "value": "3.0"
                },
                {
                    "tip": "z translation",
                    "type": "str",
                    "name": "tz",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "$fn",
                    "value": ""
                }
            ],
            "typename": "Node_sphere",
            "version": 1,
            "y": -292.16852991202325,
            "x": 181.1093022360703
        },
        {
            "name": "node_tube",
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
                    "value": "3.0"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "3.0"
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
                    "value": "0.1"
                },
                {
                    "type": "str",
                    "name": "holemargin",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "$fn",
                    "value": ""
                }
            ],
            "typename": "Node_tube",
            "version": 1,
            "y": -68.89767947214062,
            "x": 191.22261601906158
        },
        {
            "name": "node_circle",
            "inputplugs": [
                {
                    "tip": "radius of circle",
                    "type": "str",
                    "name": "radius",
                    "value": "1"
                },
                {
                    "tip": "x translation of circle",
                    "type": "str",
                    "name": "tx",
                    "value": "5.0"
                },
                {
                    "tip": "y translation of circle",
                    "type": "str",
                    "name": "ty",
                    "value": "3.0"
                },
                {
                    "tip": "z translation of circle",
                    "type": "str",
                    "name": "tz",
                    "value": "0"
                },
                {
                    "type": "str",
                    "name": "$fn",
                    "value": ""
                }
            ],
            "typename": "Node_circle",
            "version": 1,
            "y": -272.7198495601171,
            "x": 382.59763068181815
        },
        {
            "name": "node_comment",
            "inputplugs": [
                {
                    "tip": "comment string to display on background",
                    "type": "str",
                    "name": "comment",
                    "value": "this example show that you can leave $fn blank on\nnodes, and use global settings to set it\n"
                }
            ],
            "typename": "Node_comment",
            "version": 1,
            "y": -345.068940469208,
            "x": -895.5696420454543
        }
    ],
    "version": 2
}ENDGRAPHSCAD*/