//tower.scad v2

use <bottom.scad>
use <middle.scad>
use <top.scad>

tower_height= 100;
tower_width= 0.3*tower_height;
bottom_height= 0.2*tower_height;
middle_height= 0.65*tower_height;
top_height= 0.15*tower_height;

base_width= 2*tower_width;
base_height= 0.1*tower_width;

lean_angle= 4;

$fn=20;

rotate([lean_angle,0,0]){
    color("grey") 
        bottom_section(tower_width, bottom_height);
    color("lightgrey") 
        translate([0,0,0.2*tower_height]) 
            middle_section(tower_width, middle_height);
    color("white") 
        translate([0,0,0.85*tower_height]) 
            top_section(tower_width,top_height);
}

color("lightgreen") 
   cube([base_width,base_width,base_height], center=true);