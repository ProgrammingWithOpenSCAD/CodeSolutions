//3D Shapes- Design Time: Top

$fn = 30;

intersection() {
    translate([0, 0, -5]) sphere(15);
    cylinder(h=10, r1=0, r2=10);
}
translate([0, 0, 8]) cylinder(h=5, r1=2, r2=2);

