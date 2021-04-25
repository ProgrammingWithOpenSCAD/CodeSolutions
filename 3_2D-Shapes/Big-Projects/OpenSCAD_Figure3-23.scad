$fn = 50;
cube_size = 10;
sphere_size = 2;
height = 6; 

module ActionDice() {
    difference() {
        // main structure
        minkowski() {
            cube(cube_size, center=true);
            sphere(sphere_size);
        }
       
        // Run
        rotate([0,0, 135]) translate([-height+1, -height/4, height]) linear_extrude(height=2, convexity=5) text("Run", size=3.5); // center

        
        // Walk
        rotate([-90, 90, 0]) {
            rotate([0,0, 45]) translate([-height+1, -height/4, height]) linear_extrude(height=2, convexity=5) text("Walk", size=3.5); // center
        }
        
        // Fly
        rotate([0, -90, 0]) {
            rotate([0,0, -45])translate([-height+3, -height/4, height]) linear_extrude(height=2, convexity=5) text("Fly", size=3.5); // center
        }
            // Jump
        rotate([0, -90, 90]) {
            rotate([0,0, -45])translate([-height, -height/4, height-1])     linear_extrude(height=2, convexity=5) text("Jump", size=3.5); // center
        }
               // Spin
        rotate([90, -90, 90]) {
            rotate([0,0, -45])translate([-height+1, -height/4, height])     linear_extrude(height=2, convexity=5) text("Spin", size=3.5); // center
        }
        
                 // Roll
        rotate([0,180, 90]) {
            rotate([0,0, -45])translate([-height+2, -height/4, height])     linear_extrude(height=2, convexity=5) text("Roll", size=3.5); // center
        }
        
    }
}

module AnimalDice() {
    difference() {
        // main structure
        minkowski() {
            cube(cube_size, center=true);
            sphere(sphere_size);
        }
       
        // Rat
        rotate([0,0, 180])translate([-height+1, -height/4, height]) linear_extrude(height=2, convexity=5) text("Rat", size=4); // center

        
        // Dragon
        rotate([-90, 90, 0]) {
            rotate([0,0, 45]) translate([-height-1, -height/4, height]) linear_extrude(height=2, convexity=5) text("Dragon", size=3); // center
        }
        
        // Alligator
        rotate([0, -90, 0]) {
            rotate([0,0, -45])translate([-height-1, -height/4+.5, height]) linear_extrude(height=2, convexity=5) text("Alligator", size=3); // center
        }
        
    }
}

module DecisionDice() {
    difference() {
        // main structure
        minkowski() {
            cube(cube_size, center=true);
            sphere(sphere_size);
        }
       
        // Yes
        translate([-height+1, -height/4, height]) linear_extrude(height=2, convexity=5) text("Yes", size=4); // center
       
        // Yes
        rotate([0, 180, 0]) {
            translate([-height+1, -height/4, height]) linear_extrude(height=2, convexity=5) text("Yes", size=4); // center
         }
        
        // No
        rotate([90, 90, 0]) {
            translate([-height+2, -height/4, height]) linear_extrude(height=2, convexity=5) text("No", size=4); // center
        }
        
        // No
        rotate([-90, 90, 0]) {
            translate([-height+2, -height/4, height]) linear_extrude(height=2, convexity=5) text("No", size=4); // center
        }
        
        // Maybe
        rotate([0, -90, 0]) {
            rotate([0,0, -45])translate([-height, -height/4, height]) linear_extrude(height=2, convexity=5) text("Maybe", size=3); // center
        }
        
        // Maybe
        rotate([0, 90, 0]) {
            rotate([0,0, 45])translate([-height, -height/4, height]) linear_extrude(height=2, convexity=5) text("Maybe", size=3); // center
        }
    }
}

module TimeDice()
{
    difference() {
        // main structure
        minkowski() {
            cube(cube_size, center=true);
            sphere(sphere_size);
        }
       
        // Today
        rotate([0,0, 180])translate([-height+.5, -height/4, height]) linear_extrude(height=2, convexity=5) text("Today", size=3); // center

        
        // Yesterday
        rotate([-90, 90, 0]) {
            rotate([0,0, 45]) translate([-height, -height/4, height]) linear_extrude(height=2, convexity=5) text("Yesterday", size=2); // center
        }
        
        // Tomorrow
        rotate([0, -90, 0]) {
            rotate([0,0, -45])translate([-height, -height/4, height]) linear_extrude(height=2, convexity=5) text("Tomorrow", size=2); // center
        }
        
    }
}

translate([-10,11,0]) rotate([+28,-45,-135]) ActionDice();
translate([11,11,0]) rotate([+17,22,-230]) AnimalDice();
translate([-11,-11,0]) rotate([+43,+40,110]) DecisionDice();
translate([11,-11,0]) rotate([+57,+27,181]) TimeDice();
