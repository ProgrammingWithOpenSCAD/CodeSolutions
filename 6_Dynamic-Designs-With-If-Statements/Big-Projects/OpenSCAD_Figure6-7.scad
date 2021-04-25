$fn=100;

for(x=[0:10:100]){
    for(y=[0:10:100]){
        type = rands(0,1,1)[0];
        h = rands(3,20,1)[0];
        w = rands(1,8,1)[0];
        if (type < .4){
            translate([x,y,0]) bush(h/4);
        }
        else if (type <.8) translate([x,y,0]) fir_tree(h,w);
    }
}

translate([-5,-5,-2]) cube([110, 110, 2]);

module fir_tree(height, width){
    trunk_height= height*.3;
    translate([0,0,height/2+trunk_height])cylinder(h=height, r1=width/2, r2 = 0, center=true);
    translate([0,0,trunk_height/2]) cylinder(h=trunk_height, r1=width/5, r2=width/5, center=true);
}

module bush(radius){
    trunk_height= radius*.3;
    translate([0,0,1.2*radius])sphere(radius);
    translate([0,0,trunk_height/2]) cylinder(h=trunk_height, r1=radius/3, r2=radius/3, center=true);
}