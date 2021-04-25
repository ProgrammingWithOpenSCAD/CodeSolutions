//Transforming Shapes - Design Time: Heart

$fn = 50;

hull() {
    cylinder(h=1, r1=1, r2=1);
    translate([7, 3, 0]) cylinder(h=1, r1=4, r2=4);
}
mirror([0, 1, 0]) hull() {
    cylinder(h=1, r1=1, r2=1);
    translate([7, 3, 0]) cylinder(h=1, r1=4, r2=4);
}
