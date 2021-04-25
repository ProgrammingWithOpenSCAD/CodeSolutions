//Game Dice

$fn = 50;
cube_size = 10;
sphere_size = 2;
height = 6; 

difference() {
    // main structure
    minkowski() {
        cube(cube_size, center=true);
        sphere(sphere_size);
    }
   
    // 1
    translate([0, 0, height]) cylinder(h=2, r1=1, r2=1); // center
   
    // 6
    rotate([0, 180, 0]) {
        translate([height/2, height/2, height]) cylinder(h=3, r1=1, r2=1); // lower right
        translate([height/2, -height/2, height]) cylinder(h=3, r1=1, r2=1); // lower left
        translate([-height/2, height/2, height]) cylinder(h=3, r1=1, r2=1); // upper right
        translate([-height/2, -height/2, height]) cylinder(h=3, r1=1, r2=1); // upper left
        translate([0, height/2, height]) cylinder(h=3, r1=1, r2=1); // center right
        translate([0, -height/2, height]) cylinder(h=3, r1=1, r2=1); // center left
     }
    
    // 2
    rotate([90, 90, 0]) {
        translate([height/2, height/2, height]) cylinder(h=3, r1=1, r2=1); // lower right
        translate([-height/2, -height/2, height]) cylinder(h=3, r1=1, r2=1); // upper left
    }
    
    // 5
    rotate([-90, 90, 0]) {
        translate([0, 0, height]) cylinder(h=2, r1=1, r2=1); // center
        translate([height/2, height/2, height]) cylinder(h=3, r1=1, r2=1); // lower right
        translate([height/2, -height/2, height]) cylinder(h=3, r1=1, r2=1); // lower left
        translate([-height/2, height/2, height]) cylinder(h=3, r1=1, r2=1); // upper right
        translate([-height/2, -height/2, height]) cylinder(h=3, r1=1, r2=1); // upper left
    }
    
    // 3
    rotate([0, -90, 0]) {
        translate([0, 0, height]) cylinder(h=2, r1=1, r2=1); // center
        translate([height/2, -height/2, height]) cylinder(h=3, r1=1, r2=1); // lower left
        translate([-height/2, height/2, height]) cylinder(h=3, r1=1, r2=1); // upper right
    }
    
    // 4
    rotate([0, 90, 0]) {
        translate([height/2, height/2, height]) cylinder(h=3, r1=1, r2=1); // lower right
        translate([height/2, -height/2, height]) cylinder(h=3, r1=1, r2=1); // lower left
        translate([-height/2, height/2, height]) cylinder(h=3, r1=1, r2=1); // upper right
        translate([-height/2, -height/2, height]) cylinder(h=3, r1=1, r2=1); // upper left
    }
}
