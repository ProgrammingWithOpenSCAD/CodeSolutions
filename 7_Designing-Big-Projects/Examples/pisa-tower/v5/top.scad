//top.scad v5



module top_section(width, height){
   radius= 0.4*width;
   col_width= 2;
   num_cols= 15;
   angle_width= 360/num_cols;
   archway_angle= 3*angle_width;
    
   //lip
   translate([0,0,0.9*height])
   cylinder(h=0.1*height, r1=1.1*radius, r2=1.1*radius);  


   difference(){
      cylinder(h=height, r1=radius, r2=radius);  
      
      cylinder(h=2*height+1, r1=.75*radius, r2=.75*radius, center=true);
      for(angle=[0:angle_width:360]){
          if(angle%archway_angle==0){
            rotate([0,0,angle])
              translate([radius-2,0,.25*height]) 
                archway(.6*height, .35*height, .5*radius);
          }else if (angle%archway_angle==24){
             rotate([0,0,angle+.5*angle_width])
              translate([radius-2,0,.6*height]) 
                archway(.25*height, .15*height, .5*radius);
          }
      }
    }
    
   translate([0,0,height]) 
     fence(15, 3, radius,1);  
   fence(20, 3, width/2, 1);  
}

module fence(num_posts, fence_height, fence_radius, post_width){
  angle_size= 360/num_posts;
  ring_height= 0.5;
  post_height= fence_height-ring_height;

  translate([0,0,post_height]) 
    ring(fence_radius-post_width, fence_radius, ring_height);
  translate([0,0,post_height/2]) 
    ring(fence_radius-post_width, fence_radius, ring_height);

  for(angle=[0:angle_size:360]){
     rotate([0,0,angle])
      translate([fence_radius-post_width/2,0,0])
        cylinder(h=post_height, r1=post_width/2, r2=post_width/2);
  }
}

module ring(inner_radius, outer_radius, height){
  difference(){
    cylinder(h=height, r1=outer_radius, r2=outer_radius);
    translate([0,0,1])
      cylinder(h=height+2, r1=inner_radius, r2=inner_radius, center=true);
  }
}

module archway(height, width, depth){
   radius = width/2;
    
   rotate([90,0,-90]) 
    union(){
      translate([0,(height-radius)/2,-depth/2])
        cylinder(h=depth, r1=radius,r2=radius);
      cube([width, height-radius, depth], center=true);
    }
}