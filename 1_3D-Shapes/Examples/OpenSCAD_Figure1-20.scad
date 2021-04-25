difference(){
     cube([10, 10, 10]);
      
     translate([0,2.5,2.5]) cube([10, 5, 5]);
     translate([2.5,2.5,0]) cube([5, 5, 10]);
}