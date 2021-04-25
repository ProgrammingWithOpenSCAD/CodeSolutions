module Hole_Lego(DotsPerRow){

    DotEnd=2+(DotsPerRow-1)*3;
    length=DotEnd+2;
    
    difference(){
        union(){
            cube ([length,length,4]);
            for(Xposition=[2: 3: DotEnd]){
              for(Yposition=[2: 3: DotEnd]){
               translate ([Xposition,Yposition,0]) cylinder(h=5, r=1, $fn=16);
              }
            }
        }
       
        if(DotsPerRow>2) 
            translate([length/2,length/2,2])cube([length-7,length-7,7], center=true);
    }
}

for(size=[1:1:4]){
  translate([(size)*(1.5*size),0,0]) Hole_Lego(size);
}
    