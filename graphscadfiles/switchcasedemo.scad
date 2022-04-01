//------------------------------------------------------------------------------------------
// THIS CODE WAS GENERATED WITH GRAPHSCAD
//------------------------------------------------------------------------------------------
// F:/workspace/graphscad/graphscadfiles/switchcasedemo.scad
//------------------------------------------------------------------------------------------
// Graphscad is a graphical nodal editor to create .SCAD files
//
// More info here : http://graphscad.free.fr
//
// Scad Files created with Graphscad can be edited by graphscad
// Scad Files created with Graphscad can be read by Openscad
//
//------------------------------------------------------------------------------------------
module switchcasedemo()
{
 //////////////////////////////////////////////////////////////////////////////////////////////
 // Public Domain Parametric Involute Spur Gear (and involute helical gear and involute rack)
 // version 1.1
 // by Leemon Baird, 2011, Leemon@Leemon.com
 //http://www.thingiverse.com/thing:5505
 //
 // This file is public domain.  Use it for any purpose, including commercial
 // applications.  Attribution would be nice, but is not required.  There is
 // no warranty of any kind, including its correctness, usefulness, or safety.
 //
 // This is parameterized involute spur (or helical) gear.  It is much simpler and less powerful than
 // others on Thingiverse.  But it is public domain.  I implemented it from scratch from the
 // descriptions and equations on Wikipedia and the web, using Mathematica for calculations and testing,
 // and I now release it into the public domain.
 //
 //        http://en.wikipedia.org/wiki/Involute_gear
 //        http://en.wikipedia.org/wiki/Gear
 //        http://en.wikipedia.org/wiki/List_of_gear_nomenclature
 //        http://gtrebaol.free.fr/doc/catia/spur_gear.html
 //        http://www.cs.cmu.edu/~rapidproto/mechanisms/chpt7.html
 //
 // The module gear() gives an involute spur gear, with reasonable defaults for all the parameters.
 // Normally, you should just choose the first 4 parameters, and let the rest be default values.
 // The module gear() gives a gear in the XY plane, centered on the origin, with one tooth centered on
 // the positive Y axis.  The various functions below it take the same parameters, and return various
 // measurements for the gear.  The most important is pitch_radius, which tells how far apart to space
 // gears that are meshing, and adendum_radius, which gives the size of the region filled by the gear.
 // A gear has a "pitch circle", which is an invisible circle that cuts through the middle of each
 // tooth (though not the exact center). In order for two gears to mesh, their pitch circles should
 // just touch.  So the distance between their centers should be pitch_radius() for one, plus pitch_radius()
 // for the other, which gives the radii of their pitch circles.
 //
 // In order for two gears to mesh, they must have the same mm_per_tooth and pressure_angle parameters.
 // mm_per_tooth gives the number of millimeters of arc around the pitch circle covered by one tooth and one
 // space between teeth.  The pitch angle controls how flat or bulged the sides of the teeth are.  Common
 // values include 14.5 degrees and 20 degrees, and occasionally 25.  Though I've seen 28 recommended for
 // plastic gears. Larger numbers bulge out more, giving stronger teeth, so 28 degrees is the default here.
 //
 // The ratio of number_of_teeth for two meshing gears gives how many times one will make a full
 // revolution when the the other makes one full revolution.  If the two numbers are coprime (i.e.
 // are not both divisible by the same number greater than 1), then every tooth on one gear
 // will meet every tooth on the other, for more even wear.  So coprime numbers of teeth are good.
 //
 // The module rack() gives a rack, which is a bar with teeth.  A rack can mesh with any
 // gear that has the same mm_per_tooth and pressure_angle.
 //
 // Some terminology:
 // The outline of a gear is a smooth circle (the "pitch circle") which has mountains and valleys
 // added so it is toothed.  So there is an inner circle (the "root circle") that touches the
 // base of all the teeth, an outer circle that touches the tips of all the teeth,
 // and the invisible pitch circle in between them.  There is also a "base circle", which can be smaller than
 // all three of the others, which controls the shape of the teeth.  The side of each tooth lies on the path
 // that the end of a string would follow if it were wrapped tightly around the base circle, then slowly unwound.
 // That shape is an "involute", which gives this type of gear its name.
 //
 //////////////////////////////////////////////////////////////////////////////////////////////
 //An involute spur gear, with reasonable defaults for all the parameters.
 //Normally, you should just choose the first 4 parameters, and let the rest be default values.
 //Meshing gears must match in mm_per_tooth, pressure_angle, and twist,
 //and be separated by the sum of their pitch radii, which can be found with pitch_radius().
 module gear (
     mm_per_tooth    = 3,    //this is the "circular pitch", the circumference of the pitch circle divided by the number of teeth
     number_of_teeth = 11,   //total number of teeth around the entire perimeter
     thickness       = 6,    //thickness of gear in mm
     hole_diameter   = 3,    //diameter of the hole in the center, in mm
     twist           = 0,    //teeth rotate this many degrees from bottom of gear to top.  360 makes the gear a screw with each thread going around once
     teeth_to_hide   = 0,    //number of teeth to delete to make this only a fraction of a circle
     pressure_angle  = 28,   //Controls how straight or bulged the tooth sides are. In degrees.
     clearance       = 0.0,  //gap between top of a tooth on one gear and bottom of valley on a meshing gear (in millimeters)
     backlash        = 0.0   //gap between two meshing teeth, in the direction along the circumference of the pitch circle
 )
 {
      pi = 3.1415926;
      p  = mm_per_tooth * number_of_teeth / pi / 2;
    //radius of pitch circle
      c  = p + mm_per_tooth / pi - clearance;
          //radius of outer circle
      b  = p*cos(pressure_angle);
                      //radius of base circle
      r  = p-(c-p)-clearance;
                          //radius of root circle
      t  = mm_per_tooth/2-backlash/2;
                  //tooth thickness at pitch circle
      k  = -gear_iang(b, p) - t/2/p/pi*180;
  {
           //angle to where involute meets base circle on each side of tooth
           difference()
   {
                for (i = [0:number_of_teeth-teeth_to_hide-1] )
                    rotate([0,0,i*360/number_of_teeth])
                        linear_extrude(height = thickness, center = true, convexity = 10, twist = twist)
                            polygon(
                                points=[
                                    [0, -hole_diameter/10],
                                    gear_polar(r, -181/number_of_teeth),
                                    gear_polar(r, r<b ? k : -180/number_of_teeth),
                                    gear_q7(0/5,r,b,c,k, 1),gear_q7(1/5,r,b,c,k, 1),gear_q7(2/5,r,b,c,k, 1),gear_q7(3/5,r,b,c,k, 1),gear_q7(4/5,r,b,c,k, 1),gear_q7(5/5,r,b,c,k, 1),
                                    gear_q7(5/5,r,b,c,k,-1),gear_q7(4/5,r,b,c,k,-1),gear_q7(3/5,r,b,c,k,-1),gear_q7(2/5,r,b,c,k,-1),gear_q7(1/5,r,b,c,k,-1),gear_q7(0/5,r,b,c,k,-1),
                                    gear_polar(r, r<b ? -k : 180/number_of_teeth),
                                    gear_polar(r, 181/number_of_teeth)
                                ],
                                 paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]]
                            );
                cylinder(h=2*thickness+1, r=hole_diameter/2, center=true, $fn=20);
   }
  }
 }
 ;
 //these 4 functions are used by gear
 function gear_polar(r,theta)   = r*[sin(theta), cos(theta)];
                             //convert gear_polar to cartesian coordinates
 function gear_iang(r1,r2)      = sqrt((r2/r1)*(r2/r1) - 1)/3.1415926*180 - acos(r1/r2);
  //unwind a string this many degrees to go from radius r1 to radius r2
 function gear_q7(f,r,b,r2,t,s) = gear_q6(b,s,t,(1-f)*max(b,r)+f*r2);
                          //radius a fraction f up the curved side of the tooth
 function gear_q6(b,s,t,d)      = gear_polar(d,s*(gear_iang(b,d)+t));
                               //point at radius d on the involute curve
 function node_switchcase_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_cube_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_switchcase(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  if(i==1)
  {
   node_cube(i,j,k,l,m,n);
  }
  else
  {
   if(i==2)
   {
    node_cylinder(i,j,k,l,m,n);
   }
   else
   {
    if(i==3)
    {
     node_sphere(i,j,k,l,m,n);
    }
    else
    {
     if(i==4)
     {
      node_roundcube(i,j,k,l,m,n);
     }
     else
     {
      if(true)
      {
       node_gear(i,j,k,l,m,n);
      }
     }
    }
   }
  }
 }
 function node_cube_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_cube(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  cube([1,1,1],center=true);
 }
 function node_cylinder_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_cylinder(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  cylinder(r=1,r1=1,h=1,center=true,$fn=(16+1*3.14116));
 }
 function node_sphere_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_sphere(i=0,j=0,k=0,l=0,m=0,n=0)
 {
   sphere(r=1,$fn=(16+1*3.14116));
 }
 function node_for_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = node_translate_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_for(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  for(i=[1:1:5])
  {
   node_translate(i,j,k,l,m,n);
  }
 }
 function node_translate_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([i*2,0,0])*node_switchcase_matrix(i=i,j=j,k=k,l=l,m=m,n=n);
 module node_translate(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([i*2,0,0])node_switchcase(i,j,k,l,m,n);
 }
 function node_roundcube_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([0,0,0]);
 module node_roundcube(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  if(0.1>0)
  {
   {
    hull()
    {
     translate([-(((1)/2)-0.1),-(((1)/2)-0.1),-(((1)/2)-0.1)]) sphere(r=0.1,$fn=16);
     translate([-(((1)/2)-0.1),-(((1)/2)-0.1), (((1)/2)-0.1)]) sphere(r=0.1,$fn=16);
     translate([-(((1)/2)-0.1), (((1)/2)-0.1),-(((1)/2)-0.1)]) sphere(r=0.1,$fn=16);
     translate([-(((1)/2)-0.1), (((1)/2)-0.1), (((1)/2)-0.1)]) sphere(r=0.1,$fn=16);
     translate([ (((1)/2)-0.1),-(((1)/2)-0.1),-(((1)/2)-0.1)]) sphere(r=0.1,$fn=16);
     translate([ (((1)/2)-0.1),-(((1)/2)-0.1), (((1)/2)-0.1)]) sphere(r=0.1,$fn=16);
     translate([ (((1)/2)-0.1), (((1)/2)-0.1),-(((1)/2)-0.1)]) sphere(r=0.1,$fn=16);
     translate([ (((1)/2)-0.1), (((1)/2)-0.1), (((1)/2)-0.1)]) sphere(r=0.1,$fn=16);
    }
   }
  }
  else
  {
   translate([ 0, 0, 0])cube([1,1,1],center=true);
  }
 }
 function node_gear_matrix(i=0,j=0,k=0,l=0,m=0,n=0) = translate([7.0,0,0]);
 module node_gear(i=0,j=0,k=0,l=0,m=0,n=0)
 {
  translate([7.0,0,0])gear(mm_per_tooth=3,number_of_teeth=10,thickness=1,hole_diameter=3,twist=0,teeth_to_hide=0,pressure_angle=28,clearance=0,backlash=0);
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
switchcasedemo();


/*BEGINGRAPHSCAD{
    "nodes": [
        {
            "name": "node_switchcase",
            "inputplugs": [
                {
                    "tip": "boolean expression1 to evaluate",
                    "type": "str",
                    "name": "expression1",
                    "value": "i==1",
                    "alias": "if1"
                },
                {
                    "tip": "object to output if exression1 is true",
                    "connection": "node_cube.object",
                    "type": "object",
                    "name": "object1",
                    "value": ""
                },
                {
                    "tip": "boolean expression2 to evaluate",
                    "type": "str",
                    "name": "expression2",
                    "value": "i==2",
                    "alias": "else if2"
                },
                {
                    "tip": "object to output if exression2 is true",
                    "connection": "node_cylinder.object",
                    "type": "object",
                    "name": "object2",
                    "value": ""
                },
                {
                    "tip": "boolean expression3 to evaluate",
                    "type": "str",
                    "name": "expression3",
                    "value": "i==3",
                    "alias": "else if3"
                },
                {
                    "tip": "object to output if exression3 is true",
                    "connection": "node_sphere.object",
                    "type": "object",
                    "name": "object3",
                    "value": ""
                },
                {
                    "tip": "boolean expression4 to evaluate",
                    "type": "str",
                    "name": "expression4",
                    "value": "i==4",
                    "alias": "else if4"
                },
                {
                    "tip": "object to output if exression4 is true",
                    "connection": "node_roundcube.object",
                    "type": "object",
                    "name": "object4",
                    "value": ""
                },
                {
                    "tip": "boolean expression5 to evaluate",
                    "type": "str",
                    "name": "expression5",
                    "value": "",
                    "alias": "else if5"
                },
                {
                    "tip": "object to output if exression5 is true",
                    "connection": "node_gear.object",
                    "type": "object",
                    "name": "object5",
                    "value": ""
                },
                {
                    "tip": "boolean expression6 to evaluate",
                    "type": "str",
                    "name": "expression6",
                    "value": "",
                    "alias": "else if6"
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
                    "value": "",
                    "alias": "else if7"
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
                    "value": "",
                    "alias": "else if8"
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
                    "value": "",
                    "alias": "else if9"
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
                    "value": "",
                    "alias": "else if10"
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
            "y": -88.02537235820819,
            "x": 98.16849877519246
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
                    "value": "1"
                },
                {
                    "tip": "z size of cube",
                    "type": "str",
                    "name": "sizez",
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
            "y": -366.32932752953707,
            "x": -359.6973000724671
        },
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
            "y": -25.60154292109644,
            "x": -603.1995049776308
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
                    "value": "0"
                },
                {
                    "tip": "y translation",
                    "type": "str",
                    "name": "ty",
                    "value": "0"
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
            "y": 220.26024802168575,
            "x": -598.4929940140813
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
                    "value": "1"
                },
                {
                    "tip": "target value of variable used in loop",
                    "type": "str",
                    "name": "end",
                    "value": "5"
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
            "y": 36.181006484974176,
            "x": 615.6506614978041
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
                    "value": "i*2"
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
            "y": 184.96057103274302,
            "x": 282.25153894039954
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
                    "name": "rounding",
                    "value": "0.1"
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
            "typename": "Node_roundcube",
            "version": 1,
            "y": 425.23085380503403,
            "x": -605.8914062979106
        },
        {
            "name": "node_comment",
            "inputplugs": [
                {
                    "tip": "comment string to display on background",
                    "type": "str",
                    "name": "comment",
                    "value": "This example show usage of switchcase node\nThis node will avoid to build a cascade of  'IF'"
                }
            ],
            "typename": "Node_comment",
            "version": 1,
            "y": -109.60530702489086,
            "x": -606.530826680304
        },
        {
            "name": "node_gear",
            "inputplugs": [
                {
                    "tip": "units per tooth",
                    "type": "str",
                    "name": "mm_per_tooth",
                    "value": "3"
                },
                {
                    "tip": "number of teeth for gear",
                    "type": "str",
                    "name": "number_of_teeth",
                    "value": "10"
                },
                {
                    "tip": "thickness of gear",
                    "type": "str",
                    "name": "thickness",
                    "value": "1"
                },
                {
                    "tip": "diameter of center hole",
                    "type": "str",
                    "name": "hole_diameter",
                    "value": "3"
                },
                {
                    "tip": "angle twist",
                    "type": "str",
                    "name": "twist",
                    "value": "0"
                },
                {
                    "tip": "count of teeth to hide",
                    "type": "str",
                    "name": "teeth_to_hide",
                    "value": "0"
                },
                {
                    "tip": "pressure angle for teeth shape",
                    "type": "str",
                    "name": "pressure_angle",
                    "value": "28"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "clearance",
                    "value": "0"
                },
                {
                    "tip": "",
                    "type": "str",
                    "name": "backlash",
                    "value": "0"
                },
                {
                    "tip": "x translation of output object",
                    "type": "str",
                    "name": "tx",
                    "value": "7.0"
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
                }
            ],
            "typename": "Node_gear",
            "version": 1,
            "y": 391.4330560046734,
            "x": -154.99944612015383
        }
    ],
    "version": 2
}ENDGRAPHSCAD*/