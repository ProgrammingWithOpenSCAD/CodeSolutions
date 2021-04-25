
for(s1=[0:90:270]){
    rotate([0,0,s1]) translate([0, -110, 0])
    for(s2=[0:5:100]){
     translate([0,s2,s2]) cube([20,5,5], center=true);
    }
}