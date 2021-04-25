use <skyscraper.scad>

num_buildings = 5;

width_list = rands(10, 30, num_buildings);
length_list = rands(20, 30, num_buildings);
height_list = rands(20, 100, num_buildings);

window_row_list = rands(2.5, 10.49, num_buildings);
window_col_list = rands(2.5, 10.49, num_buildings);

watertower_list = rands(0, 1, num_buildings);

for (n=[0:1:num_buildings-1]) {
  width = width_list[n];
  length = length_list[n];
  height = height_list[n];

  window_rows = round(window_row_list[n]);
  window_cols = round(window_col_list[n]);

  watertower = round(watertower_list[n]);

  translate([0, n*30, 0]) {
    skyscraper(width, length, height, window_rows, window_cols, watertower);
  }
}
