 for(s = [45:45:360]){ 
    rotate([s,0,0]) translate ([30,0,0])  cylinder(h=4, r=4); 
}

for(s = [45:45:360]){ 
    rotate([s,0,0]) translate ([-30,10,0])  cylinder(h=4, r=4); 
}

 for(s = [45:45:360]){ 
    rotate([s,90,0]) translate ([0,0,10])  cylinder(h=4, r=4); 
}

 for(s = [45:45:360]){ 
    rotate([s,0,0]) translate ([50,0,10])  rotate([0,90,0]) cylinder(h=4, r=4); 
}
 

