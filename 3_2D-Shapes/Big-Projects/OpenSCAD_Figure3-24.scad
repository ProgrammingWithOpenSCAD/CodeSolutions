$fn=100;

length = 100;
width= 75;
height = 50;
thickness = 5;
corner_roundness = 2;
 
//Box
difference(){
minkowski(){
linear_extrude(height=height) square([length, width]);
    sphere(corner_roundness);
}
translate([0,0,thickness]) linear_extrude(height=height) offset(-4) square([length, width]);
}

//Lid
translate([0, width*1.5,0])
difference(){
    union(){
        minkowski(){
        linear_extrude(height=thickness) square([length, width]);
         sphere(corner_roundness);
        }
        linear_extrude(height=2*thickness) offset(-4) square([length-2, width-2]);
    }
    
    union(){
    translate([.1*length,.3*width,3*thickness])rotate([180,0,0])linear_extrude(height=4*thickness, convexity=5) text("Storytelling");
    translate([.1*length,.5*width,3*thickness])rotate([180,0,0])linear_extrude(height=4*thickness, convexity=5) text("Dice");
    }
}
