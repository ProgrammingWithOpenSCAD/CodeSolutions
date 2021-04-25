building(20, 30, 60, 5, 4, true);
translate([0,40,0]) building(30, 20, 50, 2, 3, true);
translate([0,70,0]) building(50, 40, 80, 10, 4, true);

module building(b_width, b_length, b_height, window_cols, window_rows, doors){
  windows(b_width/2, b_length, b_height,window_cols, window_rows );
   mirror([1,0,0]) windows(b_width/2, b_length, b_height, window_cols,  window_rows);
}//building

module windows(b_width, b_length, b_height, window_cols, window_rows){
    
  w_length = b_length/(2*window_cols+1);
  w_height = b_height/(2*window_rows+1);

  difference(){
    cube([b_width, b_length, b_height]); 
        
    for(z=[w_height:2*w_height:b_height-w_height]){
      for(y=[ w_length : 2* w_length : b_length-w_length]){
          translate([b_width-1,y,z]) cube([2,  w_length , w_height]);
      }
    }//windows
  }//difference
}//facade