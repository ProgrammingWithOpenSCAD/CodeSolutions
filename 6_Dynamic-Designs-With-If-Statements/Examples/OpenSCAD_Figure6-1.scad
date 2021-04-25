num_rows = 10;
num_col = 6;

building_width = num_col * 5;
building_height = num_rows * 6;

difference() {
  cube([building_width, 10, building_height]);

  for (z = [1:1:num_rows]) {
    for (x = [0:1:num_col-1]) {
      if (z == 1) {
        translate([x*5+1, -1, -1]) cube([3, 3, 8]); // door
      }
      else {
        translate([x*5+1, -1, z*5]) cube([3, 3, 4]);  // window
      }
    }
  }
}
