//bottom.scad v5

use <column.scad>

module bottom_section(width, height){
  radius= 0.5*width;
    
  lip_height= 0.05*height;
  arches_height= 0.2*height;

  num_cols= 14;
  angle_size= 360/num_cols;
  col_height= height - arches_height;
  col_radius= 0.1*col_height;
 
  //lip
  translate([0,0,height-lip_height])
    cylinder(h=lip_height, r1=1.05*radius,r2= 1.05*radius);
    
  //inner structure
  cylinder(h=height, r1=0.9*radius, r2=0.9*radius);
    
   
  //columns
  for(angle=[0:angle_size:360]){
    rotate([0,0,angle])
      translate([radius-col_radius/2,0,0]) 
        column(col_height, col_radius);
  }
    
  //arches
  translate([0,0,col_height]) 
    difference(){
      cylinder(h=arches_height,r1=radius, r2=radius);         
        
      for(angle=[angle_size/2:angle_size:360]){
        rotate([0,0,angle]) 
          translate([radius,0,0.2*col_radius]) 
            rotate([0,90,0]) 
              cylinder(h=0.2*height, r1=col_radius,r2=col_radius, center=true);
      }
    }
}