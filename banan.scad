include <nut_banana.scad>


$fn = 64;
diam_hole = 5.4 + 0.5;

difference() {
    banana();
    translate([0,-40/2,  0])
    cube([20+1, 40+1, 25+1], center=true);
}
support();

module support() {
    difference() {
    translate([-2, -2, -2])
    cube([20-3-1, 40-3-1, 25-3-1], center=true);
    translate([-85/2-4, 0, 0])
    cylinder(d = 80+5/2+1, h = 150, center=true); 
 
    translate([-85/2-5, 0, -15])
    cylinder(d=90+1, h=10, center=true); 
   } 
 
}


//translate([0, 0, -25/2-0.5])
//banana();
//translate([0, 20/2, -5])
//rotate([0, 0, 90])
//nut();
//
//translate([0, -20/2, -5])
//rotate([0, 0, 90])
//nut();
//color("red")
//translate([-3, 0, 0])
//cube([20, 40-6, 25-6], center=true);


module banana() {
    difference() {
        base();
        holes_banana();
    }
}
module base() {
    cube([20, 40, 25], center=true);
}

module holes_banana() {
  translate([0, 20/2, 2])
    cylinder(d=diam_hole, h=50,center = true);

  translate([0, -20/2, 2])
    cylinder(d=diam_hole, h=50,center = true);
    
  translate([-3, 0, -3])
  cube([20, 40-6, 25], center=true);  
    
  translate([-85/2-4, 0, 0])
  cylinder(d = 80+5/2, h = 150, center=true);  
    
  translate([-85/2-5, 0, -15])
  cylinder(d=90, h=10, center=true);  
}
