use <LEGObrick.scad>

for (n=[0:1:5])
  translate([0,20*n,0]) LEGObrick(n+1);

