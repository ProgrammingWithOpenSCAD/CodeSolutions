for (angle=[0:45:315]) {
    rotate([0, 0, angle]) translate([10, 0, 0]) cylinder(h=5, r1=2, r2=0);
}