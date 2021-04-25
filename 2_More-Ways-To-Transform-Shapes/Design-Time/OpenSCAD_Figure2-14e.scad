// Transforming Shapes - Design Time: Modern Table

$fn = 50;

scale([3, 1.5, 1]) cylinder(h=2, r1=10, r2=10); // table top

translate([-15, -10, -13]) rotate([-10, 20, 0]) cylinder(h=15, r1=1, r2=1); // left legs
translate([-15, 10, -13]) rotate([10, 20, 0]) cylinder(h=15, r1=1, r2=1);

translate([15, -10, -13]) rotate([-10, -20, 0]) cylinder(h=15, r1=1, r2=1); // right legs
translate([15, 10,-13]) rotate([10, -20, 0]) cylinder(h=15, r1=1, r2=1);

