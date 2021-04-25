for(angle=[0:20:360]){
    difference(){
        if(angle%30==0){
           rotate([0,angle,0])translate([40,0,0])sphere(5, $fn=100);
        }else{
            rotate([0,angle,0])translate([40,0,0])sphere(3, $fn=100);
        }
    }
}//angle