

$fn = 100; //smooth curves

cylinder(h=4, r=50);

for(s1 = [1:1:4]){
    for(s2 = [-360:15:360]){
        rotate([0,0,s2]) translate([s1*10,0,15]) sphere(s1*3);

    }
}
