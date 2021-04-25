//bottom.scad

module bottom_section(width, height){
    radius=0.5*width;
    cylinder(h=height, r1=radius, r2=radius);
}