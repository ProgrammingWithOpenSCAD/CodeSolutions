for (y_pos = [10:10:50]) {
    for (x_pos = [10:10:100]) {
        translate([x_pos, y_pos, 0]) cylinder(h=4, r1=4, r2=4); 
        echo("x:", x_pos, "y:", y_pos);
    } //x_pos loop
} //y_pos loop