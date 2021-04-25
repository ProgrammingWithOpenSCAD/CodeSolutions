//column.scad v5
 
color("white") column(100, 20);
 
 module column(height, width){
    radius = 0.5*width;
     
    translate([-radius, -radius,0.95*height]) 
        cube([2*radius,2*radius,.05*height]);
    cylinder(h=height, r1=radius, r2=radius);
    translate([-radius, -radius,0]) 
        cube([2*radius,2*radius,.05*height]);
 }

  
 