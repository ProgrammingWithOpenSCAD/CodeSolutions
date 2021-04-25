skyscraper(20, 30, 60, 5, 4, 1);

module skyscraper(b_width, b_length, b_height, window_cols, window_rows, watertower) {
  windows(b_width/2, b_length, b_height, window_cols, window_rows);
  mirror([1,0,0]) windows(b_width/2, b_length, b_height, window_cols,  window_rows);
    
  if (watertower) {
    translate([b_width/6, 5, b_height]) watertower(b_width/4);
  }
} // skyscraper

module windows(b_width, b_length, b_height, window_cols, window_rows) {
    
  w_length = b_length/(2*window_cols+1);
  w_height = b_height/(2*window_rows+1);

  difference() {
    cube([b_width, b_length, b_height]); 
        
    for (z = [0:1:window_rows-1]) {
      for (x = [0:1:window_cols-1]) {
        if (z == 0) {
          translate([b_width-1, (2*x+1)*w_length, 0]) cube([2,  w_length , w_height*2]);
        }
        else {
          translate([b_width-1, (2*x+1)*w_length, (2*z+1)*w_height]) cube([2,  w_length , w_height]);
        }
      }
    } // windows
  } // difference
} // facade

module watertower(width) {
  $fn = 20;
  cylinder(h=5, r1=width/2, r2=width/2);
  translate([0, 0, 5]) cylinder(h=5, r1=width/2, r2=0);
}
