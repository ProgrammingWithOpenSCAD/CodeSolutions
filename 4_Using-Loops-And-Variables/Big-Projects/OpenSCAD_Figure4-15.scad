$fn=100;

//base
difference(){
 cube([184, 184, 10], center=true);
 for(y=[-90:60:90]){
     translate([0,y,6]) cube([200, 4, 6], center=true);
 }
 for(x=[-90:60:90]){
      translate([x,0,6]) cube([4, 200, 6], center=true);
 }
}

//poles
for(y=[-60:60:60]){
    for(x=[-60:60:60]){
        translate([x,y,5]) cylinder(h=20, r1=5, r2=5);
    }
}

for(n=[0:1:4]){
  translate([-143, 41-55*n, 0 ]) {
    difference(){
      union() {
        rotate(45) cube([55,18,15], center=true);
        rotate(-45) cube([55,18,15], center=true);
      }
      cylinder(h=30, r1=7, r2=7, center=true);
    }
  }
}
for(n=[0:1:3]){
  translate([-198, 41-55*n, 0 ]) {
    difference(){
      cylinder(h=15, r=25, center=true);
      cylinder(h=30, r=7, center=true);
    }
  }
}