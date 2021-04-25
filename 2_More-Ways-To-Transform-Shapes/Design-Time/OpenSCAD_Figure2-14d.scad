// Transforming Shapes - Design Time: Snowman

$fn = 50;

sphere(10);
translate([0, 0, 10]) sphere(8);
translate([0, 0, 18]) sphere(6);
translate([0, 0, 23]) cylinder(h=2, r1=4, r2=4);
translate([0, 0, 25]) cylinder(h=5, r1=3, r2=3);
translate([5, 0, 18]) rotate([0, 90, 0]) cylinder(h=5, r1=2, r2=0);
translate([5, -2, 20]) sphere(1);
translate([5, 2, 20]) sphere(1);




