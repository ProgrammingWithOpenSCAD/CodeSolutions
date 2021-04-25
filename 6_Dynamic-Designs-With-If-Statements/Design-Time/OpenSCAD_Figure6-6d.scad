for(x=[0:1:16]){
    for(y=[0:1:16]){
        if(x<4 && y%2==0)
            translate([x*10,y*10,0]) cylinder(h=10, r1=3, r2=3);
        else if(x>4 && y%4 == 0)
            translate([x*10,y*10,0]) cylinder(h=10, r1=2, r2=2);
        else
            translate([x*10,y*10,0]) cylinder(h=10, r1=5, r2=5);
    }
}