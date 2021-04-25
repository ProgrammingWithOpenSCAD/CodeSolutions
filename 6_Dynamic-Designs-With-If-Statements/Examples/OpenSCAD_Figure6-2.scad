ruler(5);

module ruler(inches) {
  gap_size = 1; // 1 unit per quarter inch
  total_marks = 4 * inches; // inch, half-inch, quarter-inch

  width = gap_size * total_marks;
  length = 4 * gap_size;
  height = 0.5 * gap_size;

  mark_width = 0.25 * gap_size;
  mark_height = 1.5 * height;

  // main ruler body
  difference() {
    cube([width, length, height]);
    translate([width-gap_size, length-gap_size, -0.5])
      cylinder(h=height+1, r=0.15*length, $fn=20);
  }

  // tick marks
  for(t = [1:1:total_marks-1]) {
    mark_x = gap_size * t - 0.5 * mark_width;

    if (t%4 == 0) { // inch marks and number labels
      translate([gap_size * t, 0.65 * length, 0])
        linear_extrude(mark_height)
          text(str(t/4), size=gap_size, halign="center");
      translate([mark_x, 0, 0])
        cube([mark_width, 0.5 * length, mark_height]);
    }
    else if (t%2 == 0) { // half-inch marks
      translate([mark_x, 0, 0])
        cube([0.75 * mark_width, 0.25 * length, mark_height]);
    }
    else { // quarter-inch marks
      translate([mark_x, 0, 0])
        cube([0.5 * mark_width, 0.125 * length, mark_height]);
    }
  }
}
