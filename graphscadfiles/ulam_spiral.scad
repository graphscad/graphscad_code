//------------------------------------------------------------------------------------------
// THIS CODE WAS GENERATED WITH GRAPHSCAD
//------------------------------------------------------------------------------------------
// F:/workspace/graphscad/graphscadfiles/ulam_spiral.scad
//------------------------------------------------------------------------------------------
// Graphscad is a graphical nodal editor to create .SCAD files
//
// More info here : http://graphscad.free.fr
//
// Scad Files created with Graphscad can be edited by graphscad
// Scad Files created with Graphscad can be read by Openscad
//
//------------------------------------------------------------------------------------------
$vpr=[60,0,300];
$vpt=[22,22,15];
$vpd=780;
module ulam_spiral(primefield=[
[ 0,  0,  1,1,1,0,0,0,0,0],
[1, 0, 2,1,2,0,0,0,0,0],
[1, 1, 3,1,3,0,0,0,0,0],
[0, 1, 4,2,2,2,0,0,0,0],
[-1, 1, 5,1,5,0,0,0,0,0],
[-1, 0, 6,2,2,3,0,0,0,0],
[-1, -1, 7,1,7,0,0,0,0,0],
[0, -1, 8,3,2,2,2,0,0,0],
[1, -1, 9,2,3,3,0,0,0,0],
[2, -1, 10,2,2,5,0,0,0,0],
[2, 0, 11,1,11,0,0,0,0,0],
[2, 1, 12,3,2,2,3,0,0,0],
[2, 2, 13,1,13,0,0,0,0,0],
[1, 2, 14,2,2,7,0,0,0,0],
[0, 2, 15,2,3,5,0,0,0,0],
[-1, 2, 16,4,2,2,2,2,0,0],
[-2, 2, 17,1,17,0,0,0,0,0],
[-2, 1, 18,3,2,3,3,0,0,0],
[-2, 0, 19,1,19,0,0,0,0,0],
[-2, -1, 20,3,2,2,5,0,0,0],
[-2, -2, 21,2,3,7,0,0,0,0],
[-1, -2, 22,2,2,11,0,0,0,0],
[0, -2, 23,1,23,0,0,0,0,0],
[1, -2, 24,4,2,2,2,3,0,0],
[2, -2, 25,2,5,5,0,0,0,0],
[3, -2, 26,2,2,13,0,0,0,0],
[3, -1, 27,3,3,3,3,0,0,0],
[3, 0, 28,3,2,2,7,0,0,0],
[3, 1, 29,1,29,0,0,0,0,0],
[3, 2, 30,3,2,3,5,0,0,0],
[3, 3, 31,1,31,0,0,0,0,0],
[2, 3, 32,5,2,2,2,2,2,0],
[1, 3, 33,2,3,11,0,0,0,0],
[0, 3, 34,2,2,17,0,0,0,0],
[-1, 3, 35,2,5,7,0,0,0,0,0],
[-2, 3, 36,4,2,2,3,3,0,0]
],feldbreite=45,wuerfelseite=30)
{
 function node_cube_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([-wuerfelseite/2,-wuerfelseite/2,0]);
 module node_cube(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([-wuerfelseite/2,-wuerfelseite/2,0])cube([wuerfelseite,wuerfelseite,wuerfelseite],center=false);
 }
 function node_color_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_cube_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_color(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  {
   color([0,0,0,1])node_cube(i,j,k,l,m,n);
  }
 }
 function node_color0_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_cube_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_color0(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  {
   color([1,1,1,1])node_cube(i,j,k,l,m,n);
  }
 }
 function node_for_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_translate_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[0:1:len(primefield)-1])
  {
   node_translate(i,j,k,l,m,n);
  }
 }
 function node_translate_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([primefield[i][0]*feldbreite,primefield[i][1]*feldbreite,0])*node_switchcase_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([primefield[i][0]*feldbreite,primefield[i][1]*feldbreite,0])node_switchcase(i,j,k,l,m,n);
 }
 function node_color1_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_cube_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_color1(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  {
   color([1,1,0,1])node_cube(i,j,k,l,m,n);
  }
 }
 function node_switchcase_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_color1_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_switchcase(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  if(primefield[i][2]==1)
  {
   node_color1(i,j,k,l,m,n);
  }
  else
  {
   if(primefield[i][3]==1)
   {
    node_color(i,j,k,l,m,n);
   }
   else
   {
    if(true)
    {
     node_color0(i,j,k,l,m,n);
    }
   }
  }
 }
 node_for();
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
ulam_spiral();


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
                    "value": "primefield"
                },
                {
                    "connection": "node_string.string",
                    "type": "str",
                    "name": "string",
                    "value": "0"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -5735.46674393634,
            "x": -19781.285618319223
        },
        {
            "name": "node_string",
            "inputplugs": [
                {
                    "multiline": true,
                    "type": "str",
                    "name": "string",
                    "value": "[ \n[ 0,  0,  1,1,1,0,0,0,0,0],\n[1, 0, 2,1,2,0,0,0,0,0],\n[1, 1, 3,1,3,0,0,0,0,0],\n[0, 1, 4,2,2,2,0,0,0,0],\n[-1, 1, 5,1,5,0,0,0,0,0],\n[-1, 0, 6,2,2,3,0,0,0,0],\n[-1, -1, 7,1,7,0,0,0,0,0],\n[0, -1, 8,3,2,2,2,0,0,0],\n[1, -1, 9,2,3,3,0,0,0,0],\n[2, -1, 10,2,2,5,0,0,0,0], \n[2, 0, 11,1,11,0,0,0,0,0],\n[2, 1, 12,3,2,2,3,0,0,0],\n[2, 2, 13,1,13,0,0,0,0,0],\n[1, 2, 14,2,2,7,0,0,0,0],\n[0, 2, 15,2,3,5,0,0,0,0],\n[-1, 2, 16,4,2,2,2,2,0,0],\n[-2, 2, 17,1,17,0,0,0,0,0],\n[-2, 1, 18,3,2,3,3,0,0,0],\n[-2, 0, 19,1,19,0,0,0,0,0],\n[-2, -1, 20,3,2,2,5,0,0,0],  \n[-2, -2, 21,2,3,7,0,0,0,0],\n[-1, -2, 22,2,2,11,0,0,0,0],\n[0, -2, 23,1,23,0,0,0,0,0],\n[1, -2, 24,4,2,2,2,3,0,0],\n[2, -2, 25,2,5,5,0,0,0,0],\n[3, -2, 26,2,2,13,0,0,0,0],\n[3, -1, 27,3,3,3,3,0,0,0],\n[3, 0, 28,3,2,2,7,0,0,0],\n[3, 1, 29,1,29,0,0,0,0,0],\n[3, 2, 30,3,2,3,5,0,0,0],\t\n[3, 3, 31,1,31,0,0,0,0,0],\n[2, 3, 32,5,2,2,2,2,2,0],\n[1, 3, 33,2,3,11,0,0,0,0],\n[0, 3, 34,2,2,17,0,0,0,0],\n[-1, 3, 35,2,5,7,0,0,0,0,0],\n[-2, 3, 36,4,2,2,3,3,0,0]\n]"
                }
            ],
            "typename": "Node_string",
            "version": 1,
            "y": -5544.539176454206,
            "x": -19944.056892136592
        },
        {
            "name": "node_cube",
            "inputplugs": [
                {
                    "tip": "x size of cube",
                    "type": "str",
                    "name": "sizex",
                    "value": "wuerfelseite"
                },
                {
                    "tip": "y size of cube",
                    "type": "str",
                    "name": "sizey",
                    "value": "wuerfelseite"
                },
                {
                    "tip": "z size of cube",
                    "type": "str",
                    "name": "sizez",
                    "value": "wuerfelseite"
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "-wuerfelseite/2"
                },
                {
                    "tip": "y translation of output object",
                    "type": "str",
                    "name": "ty",
                    "value": "-wuerfelseite/2"
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
            "y": -5091.632491153332,
            "x": -19860.751354878095
        },
        {
            "name": "node_color",
            "inputplugs": [
                {
                    "tip": "input 3D object",
                    "connection": "node_cube.object",
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
                    "value": "0"
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
            "y": -5103.718394916514,
            "x": -19668.18755967493
        },
        {
            "name": "node_color0",
            "inputplugs": [
                {
                    "tip": "input 3D object",
                    "connection": "node_cube.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "alias": "red",
                    "tip": "red  (expression or string from 0 to 1)",
                    "type": "str",
                    "name": "r",
                    "value": "1"
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
                    "value": "1"
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
            "y": -4919.422163355028,
            "x": -19670.745270107305
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
                    "value": "feldbreite"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "45"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -5734.455235914818,
            "x": -19460.969196782986
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
                    "value": "wuerfelseite"
                },
                {
                    "type": "str",
                    "name": "string",
                    "value": "30"
                }
            ],
            "typename": "Node_param",
            "version": 1,
            "y": -5734.8890866674565,
            "x": -19187.0203797281
        },
        {
            "name": "node_for",
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
                    "value": "len(primefield)-1"
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
            "y": -5123.61530683447,
            "x": -18762.163039660376
        },
        {
            "name": "node_translate",
            "inputplugs": [
                {
                    "connection": "node_switchcase.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "type": "str",
                    "name": "tx",
                    "value": "primefield[i][0]*feldbreite"
                },
                {
                    "type": "str",
                    "name": "ty",
                    "value": "primefield[i][1]*feldbreite"
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
            "y": -5179.386119686793,
            "x": -19019.521996869735
        },
        {
            "name": "node_color1",
            "inputplugs": [
                {
                    "tip": "input 3D object",
                    "connection": "node_cube.object",
                    "type": "object",
                    "name": "object",
                    "value": ""
                },
                {
                    "alias": "red",
                    "tip": "red  (expression or string from 0 to 1)",
                    "type": "str",
                    "name": "r",
                    "value": "1"
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
            "y": -5290.894826622674,
            "x": -19665.49654496764
        },
        {
            "name": "node_comment",
            "inputplugs": [
                {
                    "tip": "comment string to display on background",
                    "type": "str",
                    "name": "comment",
                    "value": "Ulam spiral from precomputed position and factorisation (primefield)\nThe data set is :\npos0: x-position on spiral\npos1: y-position on spiral\npos2: number\npos3: number of prime factors of number (1 for number 1)\npos4-pos9: prime factors of number or 0"
                }
            ],
            "typename": "Node_comment",
            "version": 1,
            "y": -5762.490807613125,
            "x": -20477.293272376293
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
                    "value": ""
                },
                {
                    "tip": "viewport rotation",
                    "type": "str",
                    "name": "$vpr",
                    "value": "[60,0,300]"
                },
                {
                    "tip": "viewport translation",
                    "type": "str",
                    "name": "$vpt",
                    "value": "[22,22,15]"
                },
                {
                    "tip": "viewport camera distance",
                    "type": "str",
                    "name": "$vpd",
                    "value": "780"
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
            "y": -5548.731125895885,
            "x": -19687.915774904584
        },
        {
            "name": "node_switchcase",
            "inputplugs": [
                {
                    "tip": "boolean expression1 to evaluate",
                    "type": "str",
                    "name": "expression1",
                    "value": "primefield[i][2]==1"
                },
                {
                    "tip": "object to output if exression1 is true",
                    "connection": "node_color1.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "boolean expression2 to evaluate",
                    "type": "str",
                    "name": "expression2",
                    "value": "primefield[i][3]==1"
                },
                {
                    "tip": "object to output if exression2 is true",
                    "connection": "node_color.object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "boolean expression3 to evaluate",
                    "type": "str",
                    "name": "expression3",
                    "value": ""
                },
                {
                    "tip": "object to output if exression3 is true",
                    "connection": "node_color0.object",
                    "type": "object",
                    "name": "object3",
                    "value": ""
                },
                {
                    "tip": "boolean expression4 to evaluate",
                    "type": "str",
                    "name": "expression4",
                    "value": ""
                },
                {
                    "tip": "object to output if exression4 is true",
                    "type": "object",
                    "name": "object4",
                    "value": ""
                },
                {
                    "tip": "boolean expression5 to evaluate",
                    "type": "str",
                    "name": "expression5",
                    "value": ""
                },
                {
                    "tip": "object to output if exression5 is true",
                    "type": "object",
                    "name": "object5",
                    "value": ""
                },
                {
                    "tip": "boolean expression6 to evaluate",
                    "type": "str",
                    "name": "expression6",
                    "value": ""
                },
                {
                    "tip": "object to output if exression6 is true",
                    "type": "object",
                    "name": "object6",
                    "value": ""
                },
                {
                    "tip": "boolean expression7 to evaluate",
                    "type": "str",
                    "name": "expression7",
                    "value": ""
                },
                {
                    "tip": "object to output if exression7 is true",
                    "type": "object",
                    "name": "object7",
                    "value": ""
                },
                {
                    "tip": "boolean expression8 to evaluate",
                    "type": "str",
                    "name": "expression8",
                    "value": ""
                },
                {
                    "tip": "object to output if exression8 is true",
                    "type": "object",
                    "name": "object8",
                    "value": ""
                },
                {
                    "tip": "boolean expression9 to evaluate",
                    "type": "str",
                    "name": "expression9",
                    "value": ""
                },
                {
                    "tip": "object to output if exression9 is true",
                    "type": "object",
                    "name": "object9",
                    "value": ""
                },
                {
                    "tip": "boolean expression10 to evaluate",
                    "type": "str",
                    "name": "expression10",
                    "value": ""
                },
                {
                    "tip": "object to output if exression10 is true",
                    "type": "object",
                    "name": "object10",
                    "value": ""
                }
            ],
            "typename": "Node_switchcase",
            "version": 1,
            "y": -5224.314194126834,
            "x": -19331.4444532286
        },
        {
            "name": "node_comment0",
            "inputplugs": [
                {
                    "tip": "comment string to display on background",
                    "type": "str",
                    "name": "comment",
                    "value": "THIS EXAMPLE WAS CREATED BY Kpacnaja_Shapotshka"
                }
            ],
            "typename": "Node_comment",
            "version": 1,
            "y": -5833.258693187343,
            "x": -20482.420660989617
        }
    ],
    "version": 2
}ENDGRAPHSCAD*/