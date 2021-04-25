// Transforming Shapes - Desktop Organizer

$fn = 50;

height = 20;
width = 10;

// pen holder
difference() {
    cube([width, width, height]);
    translate([1, 1, 1]) cube([width-2, width-2, height]);
    translate([width, width, width/4]) sphere(width/2);
}
// tray
difference() {
    cube([width*2, width*1.5, 4]);
    translate([1, 1, 1]) cube([width*2 - 2, width*1.5 - 2, 5]);
}

mirror([0, 1, 0]) {
    // pencil holder
    difference() {
        cube([width, width, height]);
        translate([1, 1, 1]) cube([width-2, width-2, height]);
        translate([width, width, width/4]) sphere(width/2);
    }
    // tray
    difference() {
        cube([width*2, width*1.5, 4]);
        translate([1, 1, 1]) cube([width*2 - 2, width*1.5 - 2, 5]);
    }
}
