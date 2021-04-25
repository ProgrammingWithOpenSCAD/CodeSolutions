for (faces=[3:1:15]) {
    $fn = faces;
    x_position = faces*10;
    translate([x_position, 0, 0]) sphere(r=5);
    echo("faces:", faces, "x-position:", x_position);
}