%cube([20, 10, 10]); 
translate([-10, 20, 0]) cube([20, 10, 10]); 
$fn=32;
color("Red") translate([-10, 0, 0]) rotate([0,90,0]) {
    translate([0,0,1]) cylinder(h=9, r=0.1);
    cylinder(h=1, r1=0, r2=0.3);
}
color("Green") translate([-10, 20, 0]) rotate([90,0,0]) {
    translate([0,0,1]) cylinder(h=19, r=0.1);
    cylinder(h=1, r1=0, r2=0.3);
}