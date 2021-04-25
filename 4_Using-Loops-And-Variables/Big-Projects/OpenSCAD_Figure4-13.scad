
difference(){
    
  union(){
    cube([90,190,5]);
  
    for(thickness = [0.1: 0.2: 3]){
        translate([10, thickness*60, 1]) cube([20, thickness, 6]);
        translate([40, thickness*60, 1]) linear_extrude(height = 6) text(str(thickness, " mm"),  size = 4, halign="center", valign="center");
    }
    
  }//union
  
  union(){
    for(thickness = [0.1: 0.2: 3]){
        translate([50, thickness*60, 2]) cube([20, thickness, 6]);  
    }  
      
   translate([80, 100, -5]) rotate([0,0,90]) linear_extrude(height = 20, convexity=4) text( "Detail Test",  size = 12, halign="center", valign="center");
  
  }
 }//difference


