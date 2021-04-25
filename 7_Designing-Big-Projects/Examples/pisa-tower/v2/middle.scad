//middle.scad v2

color("white") level(50, 25);

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
    
    //lip
    translate([0,0,level_height-lip_height])
      cylinder(h=lip_height, r1=level_radius, r2=level_radius);
    
    //overhang
    translate([0,0,0.60*level_height]) 
       cylinder(h=overhang_height,r1=overhang_radius, r2=overhang_radius); 
    
    //inner structure
    cylinder(h=level_height, r1=inner_radius, r2=inner_radius);
}