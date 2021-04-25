translate([20,-20,0]) Bend_Lego(3);
translate([20,0,0]) Bend_Lego(4);
translate([20,20,0]) Bend_Lego(5);

translate([40,-20,0]) Wall_Lego(3);
translate([40,0,0]) Wall_Lego(4);
translate([40,20,0]) Wall_Lego(5);

translate([60,-16,0]) rotate([90,0,0]) Double_Sided_Lego(3);
translate([60,4,0]) rotate([90,0,0]) Double_Sided_Lego(4);
translate([60,24,0]) rotate([90,0,0]) Double_Sided_Lego(5);


module Lego(DotsPerRow){

    DotEnd=2+(DotsPerRow-1)*3;
    length=DotEnd+2;

    cube ([length,7,4]);
    for(Xposition=[2: 3: DotEnd]){
       translate ([Xposition,2,0]) cylinder(h=5, r=1, $fn=20);
       translate ([Xposition,5,0]) cylinder(h=5, r=1, $fn=20);
    }
}


module Bend_Lego(DotsPerRow){
    DotEnd=2+(DotsPerRow-1)*3;
    length=DotEnd+2;
    
    Lego(DotsPerRow);
    translate([length,0,0]) rotate([0,0,90]) Lego(DotsPerRow);
}

module Wall_Lego(DotsPerRow){

    DotEnd=2+(DotsPerRow-1)*3;
    length=DotEnd+2;

    Lego(DotsPerRow);
    
    rotate([90,0,0])Lego(DotsPerRow);
}
module Double_Sided_Lego(DotsPerRow){
    Lego(DotsPerRow);
    translate([0,7,4])rotate([-180,0,0])Lego(DotsPerRow);
}