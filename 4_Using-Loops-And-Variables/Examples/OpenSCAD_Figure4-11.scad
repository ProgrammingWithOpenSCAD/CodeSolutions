for (r = [0:15:255]) { 
    for (g = [0:15:255]) { 
        for (b = [0:15:255]) { 
            translate([r, g, b]) color([r/255, g/255, b/255]) cube(5); 
        } //b loop
    } //g loop
} //r loop