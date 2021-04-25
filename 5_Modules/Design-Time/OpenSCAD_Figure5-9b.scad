// Diameter of each of the towers
diameter = 80; // [30:5:100]
// Height of the first tower
height1 = 30; // [30:10:200]
// Height of the second tower
height2 = 50; // [30:10:200]
// Height of the third tower
height3 = 100; // [30:10:200]

PencilHolder(height1, height2, height3);

module Container(height) {
    $fn=64;
    difference() {
        cylinder(h=height, d=diameter);
        translate([0, 0, 2]) cylinder(h=height, d=diameter-4);
    }
}

module PencilHolder(height1 = 100, height2 = 50, height3 = 30) {
    Container(height1);
    translate([diameter-1,0,0]) Container(height2);
    translate([(diameter-1)/2,(diameter-1)*sin(60),0]) Container(height3);
}

