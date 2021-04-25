// 3D Shapes- Smiley Face

// face
difference() {
    cylinder(h=5, r1=40, r2=40);
    
    translate([15, 10, -1]) cylinder(h=7, r1=10, r2=10);
    translate([-15, 10, -1]) cylinder(h=7, r1=10, r2=10);
    
    // mouth
    difference() {
      translate([0, -5, -1]) cylinder(h=7, r1=30, r2=30);
      translate([0, 13, -2]) cylinder(h=9, r1=40, r2=40);
    }
}

// eyes
translate([15, 2, 0]) cylinder(h=5, r1=5, r2=5);
translate([-15, 2, 0]) cylinder(h=5, r1=5, r2=5);

// loop
translate([0, 40, 0]) difference() {
    cylinder(h=5, r1=8, r2=8);
    translate([0, 0, -1]) cylinder(h=7, r1=4, r2=4);
}
