$fn=100;

//base
cube([200, 60, 10 ], center=true);

//poles
for(x=[-60:60:60]){
translate([x,0,5])cylinder(h=70, r1=4, r2=4);
}

for(d=[7:-1:2]){
    
 translate([-60,0,10+(7-d)*10]) 
    difference(){
        cylinder(h=10, r1=d*4, r2=d*4, center=true);
        cylinder(h=12, r1=5, r2=5, center=true);
    }
}