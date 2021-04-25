for (x=[1:1:10]) {
    height = x*x;
    x_position = 5*x;
    translate([x_position, 0, 0]) cylinder(h=height, r1=2, r2=2);
}