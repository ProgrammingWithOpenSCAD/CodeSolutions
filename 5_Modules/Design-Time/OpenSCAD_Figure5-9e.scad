width = 8;
holeSize = 2;
thickness = 3;

module RawHook(width, height, thickness) {
    translate([0,0,-width/2]) linear_extrude(width, convexity=2) {
        difference() {
            union() {
                square([thickness, height]);
                square([thickness+4+2, 5]);
            }
            translate([thickness,3]) square([4,10]);
        }
    }
}

module Hole(holeSize) {
    translate([1,0,0]) rotate([0,90,180]) {
        $fn=32;
        cylinder(h=8, d=holeSize);
        cylinder(h=tan(89.9/2)*holeSize*2, d1=holeSize*2, d2=0);
    }
}

module Hook(width=8, holeSize=2, thickness=3) {
    height = width * 3;
    difference() {
        RawHook(width, height, thickness);
        translate([thickness,height*3/4,0]) Hole(holeSize);
        translate([thickness,height*1/2,0]) Hole(holeSize);
    }
}


rotate([90,0,-90]) Hook(width, holeSize, thickness);

