
for(i=[0:1:10]){
    if(i%2==0)
        translate([i*10,0,0]) rotate([0,-180,0]) cylinder(h=10, r1=5, r2=0);
    else
        translate([i*10,0,0]) cylinder(h=10, r1=5, r2=0);
}