use <../Examples/skyscraper.scad>

street(100, 75, 500);


module street(r_width, curb_width, s_length){ 
   
    num_buildings = floor(rands(5,10,1)[0]);
    translate([curb_width/2,0,5]) 
       block(num_buildings, s_length/(num_buildings), curb_width);
    
    difference(){
        cube([r_width+2*curb_width, s_length, 10]);
        translate([curb_width,0,6]) cube([r_width, s_length, 5]);
    }
    
    num_buildings2 = floor(rands(5,10,1)[0]);
    translate([curb_width+r_width+curb_width/2,0,5]) 
       block(num_buildings, s_length/(num_buildings), curb_width);
}

module block(num_buildings, b_length, curb_width){
    for(n=[0:1:num_buildings-1]){
       translate([0,n*b_length,0]) 
            skyscraper(floor( rands(10,curb_width-20,1)[0]), floor( rands(30,b_length,1)[0]), floor( rands(60,200,1)[0]), floor( rands(2,6,1)[0]), floor( rands(3,10,1)[0]));
    }
}
