
difference() {
  cylinder(r=100, h=10, center=true);
  translate([0,0,8]) cylinder(r=90, h=10, center=true);
  for(angle=[0:10:350]) {
    rotate(angle) translate([106,0,0]) cylinder(r=10, h=12, center=true);
  }
}