mirror([10, 0, 0]) translate([0,10,0]) rotate([0,90,0]) cylinder(h=10, r1=5, r2=2);
%translate([0,10,0]) rotate([0,90,0]) cylinder(h=10, r1=5, r2=2);

color("green") rotate([0,90,0]) {
      cylinder(h=8, r1=0.2, r2=0.2);
      translate([0, 0, 8]) cylinder(h=2, r1=0.5, r2=0);
   }

color("LightBlue", 0.3) rotate([0, -90, 0]) translate([0,7.5,0]) cube([30, 30, 0.1], center=true);

