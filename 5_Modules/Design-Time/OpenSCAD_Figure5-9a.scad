module Ring(hole_diameter, thickness, height){
    $fn=64;
  difference(){
    cylinder(h=height, d=hole_diameter+thickness, center=true);
    cylinder(h=height+1, d=hole_diameter, center=true);
  }
}

Ring(26, 4, 4);