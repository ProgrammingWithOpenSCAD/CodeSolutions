difference() {
    sphere(d=100);
    
    cylinder(d=50, h=125, center1=true, r2=true);
    #rotate([90, 0, 0]) cylinder(r1=25, r2=25, h=125, center=true);
    rotate([0, 90, 0]) cylinder(r1=25, r2=25, h=125, center=true);
}
