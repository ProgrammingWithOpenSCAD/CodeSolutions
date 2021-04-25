num_rows = 10;
num_col = 6;

building_width = num_col * 5;
building_height = num_rows * 6;

difference() {
  cube([building_width, 10, building_height]);

  for (z = [1:1:num_rows]) {
    for (x = [0:1:num_col-1]) {
      if (z == 1) {
        translate([x*5 + 1, -1, -1]) cube([3, 3, 8]);
      }
      else {
        translate([x*5 + 1, -1, z*5]) cube([3, 3, 4]);
      }
    }
  }
}

draw_tower = rands(0, 1, 1);

if (draw_tower[0] < 0.5) {
  translate([building_width/6, 5, building_height])
    watertower(building_width/4);
}

module watertower(width) {
  $fn = 20;
  cylinder(h=5, r=width/2);
  translate([0, 0, 5]) cylinder(h=5, r1=width/2, r2=0);
}
