module Keychain(name, length, width, height) {
    
    linear_extrude(height=height)
       translate([length/2, width/2])
        resize([length, width]) 
             text(name,font="Chalkboard", halign="center", valign="center");
    
    difference() {
        union() {
            translate([-width/2,0,0]) cube([1.5*length,width,.5*height]);
            translate([-width/2,width/2,0]) cylinder(d=width, h=.5*height);
        }
        translate([-width/2,width/2,0]) cylinder(h=height+1, d=width/2, center=true);
    }
}

Keychain("name tag", 40,20,4);
