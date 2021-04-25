use <../Examples/skyscraper.scad>

for(x=[0:1:4]){
    translate([x*225,0,0]) union(){
        street(75, 500, true);
        translate([0,500+75,0]) street(75, 500, false);
    }
}

module street(road_width, road_length, intersection){
    block(floor(rands(4,10,1)[0]), road_width, road_length);
    translate([road_width*2, 0,0]) block(floor(rands(4,10,1)[0]), road_width, road_length);
    translate([-.5*road_width,0,0]) cube([road_width*3, road_length, 5]);
    if(intersection==true)
      translate([-.5*75,500,0])cube([225, 75, 5]);
}

module block(num_buildings, curb_width, block_length){
    b_length = block_length/num_buildings;
    for(n=[0:1:num_buildings-1]){
       translate([0,n*b_length,4]) 
            skyscraper(floor( rands(10,curb_width*.8,1)[0]), floor( rands(30,b_length,1)[0]), floor( rands(60,200,1)[0]), floor( rands(2,4,1)[0]), floor( rands(3,6,1)[0]));
    }
    
    translate([-curb_width/2,0,5]) cube([curb_width, num_buildings*b_length, 5]);
 }
