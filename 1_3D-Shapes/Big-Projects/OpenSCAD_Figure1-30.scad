// 3D Shapes- Calibration Pyramid

// level 4
translate([0, 0, 30]) cube(10);

// level 3
translate([0, 0, 20]) cube([10, 20, 10]);
translate([10, 0, 20]) cube(10);

// level 2
translate([0, 0, 10]) cube([20, 20, 10]);
translate([20, 0, 10]) cube(10);
translate([0, 20, 10]) cube(10);

// level 1
cube([30, 20, 10]);
translate([0, 20, 0]) cube([20, 10, 10]);
translate([30, 0, 0]) cube(10);
translate([0, 30, 0]) cube(10);