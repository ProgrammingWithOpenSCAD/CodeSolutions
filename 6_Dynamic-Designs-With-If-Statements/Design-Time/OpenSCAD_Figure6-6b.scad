b_height=40;
b_width=120;
b_length=50;
mortar=10;

for ( z = [0: 1: 10]){
    for ( x = [0: 1: 8]){
        if(z%2==0){
         translate ([x*(b_width+mortar),0,z*(b_height+mortar)]) 
            cube([b_width, b_length, b_height]); 
        }
        else{
         translate ([x*(b_width+mortar)-.5*b_width,0,z*(b_height+mortar)]) 
            cube([b_width, b_length, b_height]);
        }
    } 
} 
