module LEGO(studs_per_row=4) {
    $fn=30;
    
    length = studs_per_row * 8;

    cube([length, 16, 9.6]);
    
    for (x_position=[4 : 8 : length-4]) {
        translate([x_position, 4, 1.7]) cylinder(h=9.6, d=4.8);
        translate([x_position, 12, 1.7]) cylinder(h=9.6, d=4.8);
    }
}

LEGO(4);


