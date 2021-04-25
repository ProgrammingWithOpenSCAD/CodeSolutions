$fn = 100;

difference() {
    union() {   
       cylinder(h=19, r=100); 
       
       translate([83, 0, 1]) hour(12, 20);
       translate([-83, 0, 1]) hour(6, 20);
       translate([0, -83, 1]) hour(3, 20);
       translate([0, 83, 1]) hour(9, 20);
       
        for (time = [1:1:12]) {
            
          if (time%3 != 0) {
              if (time>=4 && time<=8) {
                rotate([0, 0, 360 - 30*time]) 
                  translate([77, 0, 1]) 
                    rotate([0, 0, 180]) 
                      hour(time, 12);
              } else {
                rotate([0, 0, 360 - 30*time]) translate([77, 0, 1]) hour(time, 12);
                rotate([0, 0, 360 - 30*time]) translate([60, 0, 18]) sphere(5);
              }
          }
          else{
              rotate([0, 0, 360 - 30*time]) translate([60, 0, 18]) sphere(3);
          }
          
          rotate([0, 0, 30*time - 15]) translate([40, 0, 12]) cube([50, 2, 19], center=true); 
       }
     } //union
       
        
    translate([0,0,-2]) cylinder(h=25, d=15);
}

module hour(number, point_size) {
    rotate([0, 0, -90])
        linear_extrude(height = 22)
	    text(str(number), font="Osaka", size = point_size, halign="center", valign="center");
}
