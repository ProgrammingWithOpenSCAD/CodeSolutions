//middle.scad v4
use <column.scad>


module middle_section(width, height){
   level_height=height/6;
   level_radius=0.5*width;

   for(h=[0:1:5]){
     floor_offset=h*level_height;
       
     translate([0,0,floor_offset]) 
       level(level_radius, level_height);
   }
}  


module level(level_radius, level_height){
    lip_height= 0.1*level_height;
    inner_radius= 0.7*level_radius;
    overhang_height= 0.3*level_height;
    overhang_radius= 0.95*level_radius;
    
    num_cols=24;
    angle_size= 360/num_cols;
    
    col_height= 0.65*level_height;
    col_width= 0.2*col_height;  
    
    arch_depth= 2*(level_radius-inner_radius);
    
    //lip
    translate([0,0,level_height-lip_height])
      cylinder(h=lip_height, r1=level_radius, r2=level_radius);
    
    
    translate([0,0,0.65*level_height])
       difference(){ 
          //overhang
          cylinder(h=overhang_height,r1=overhang_radius, r2=overhang_radius); 
           
          //arches
          for(angle=[angle_size/2:angle_size:360]){
              rotate([0,0,angle]) 
               translate([inner_radius,0,0]) 
                rotate([0,90,0]) 
                  cylinder(h=arch_depth, r1=col_width,r2=col_width, center=true);
          }
        } 
    
    //inner structure
    cylinder(h=level_height, r1=inner_radius, r2=inner_radius);
    
    //columns
    for(angle=[0:angle_size:360]){
      rotate([0,0,angle])
         translate([overhang_radius-0.5*col_width,0,0]) 
            column(col_height, col_width);
    } 
}
