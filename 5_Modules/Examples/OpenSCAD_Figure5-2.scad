module cross(width=30, length=100) {
    square([length, width], center=true);
    square([width, length], center=true);
}

linear_extrude(30) {
    difference() {
        cross(40, 80);
        offset(-2) cross(40, 80);
    }
}

translate([100,0,0])linear_extrude(30) {
    difference() {
        cross(10, 80);
        offset(-2) cross(10, 80);
    }
}

translate([100,100,0])linear_extrude(30) {
    difference() {
        cross(30, 50);
        offset(-2) cross(30, 50);
    }
}

translate([0,100,0])linear_extrude(30) {
    difference() {
        cross(100, 80);
        offset(-2) cross(100, 80);
    }
}