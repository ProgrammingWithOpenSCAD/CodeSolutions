// Inside length of the box
innerLength=200; // [10:10:400]
// Inside width of the box
innerWidth=150; // [10:10:200]
// Inside height of the box
innerHeight=80; // [30:10:200]
// Wall thickness
wallThickness=5; // [1,2,3,4,5]

Box(innerLength, innerWidth, innerHeight);

module Box(innerLength, innerWidth, innerHeight) {
    difference() {
        cube([innerLength + 2*wallThickness,
              innerWidth + 2*wallThickness,
              innerHeight]);
        translate([wallThickness, wallThickness, wallThickness]) cube([innerLength, innerWidth, innerHeight]);
    }
}
