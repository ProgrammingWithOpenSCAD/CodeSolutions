 linear_extrude(height = 10, scale=[2,5], $fn=100)
 difference(){
    circle(5, $fn=100);
    circle(4.5, $fn=100);
 }
 cylinder(height=2, r1=6, r2=6, $fn=100);