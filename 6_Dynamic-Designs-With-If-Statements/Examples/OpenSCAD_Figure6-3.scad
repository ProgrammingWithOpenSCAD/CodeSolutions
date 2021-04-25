$fn = 100;
mode = "print"; // or "design"

cube([200, 60, 10], center=true);

for (x = [-60:60:60]) {
  translate([x, 0, 5]) cylinder(h=70, r=4);
}

if (mode == "design") {
  for (d = [2:1:7]) {
    translate([-60, 0, 10 + (7-d)*10]) disc(d*4, 5);
  }
}
else if (mode == "print") {
  for (d = [2:1:7]) {
    if (d > 4) {
      translate([60*d - 350, 60, 0]) disc(d*4, 5);
    }
    else {
      translate([60*d - 200, 100, 0]) disc(d*4, 5);
    }
  }
}

module disc(disc_radius, hole_radius) {
  difference() {
    cylinder(h=10, r=disc_radius, center=true);
    cylinder(h=11, r=hole_radius, center=true);
  }
}
