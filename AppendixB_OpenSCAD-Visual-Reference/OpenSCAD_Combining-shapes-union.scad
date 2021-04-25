difference() {
  union() {
      sphere(10);
      cylinder(h=30, r=5, center=true); 
  }
  cube([10, 30, 10], center=true); 
}
%color([0.5,0.5,1], alpha=0.3) cube([10,30,10], center=true); 
