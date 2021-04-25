// 3D Shapes- Hole and Pin Test

// Pins
union() {
    cube([50, 30, 5]);
    translate([10, 15, 0]) cylinder(h=10, r1=5, r2=5);
    translate([35, 15, 0]) cylinder(h=10, r1=10, r2=10);
}

// Holes
translate([0, 40, 0]) difference() {
    cube([50, 30, 5]);
    translate([10, 15, -1]) cylinder(h=10, r1=6, r2=6);
    translate([35, 15, -1]) cylinder(h=10, r1=11, r2=11);
}
