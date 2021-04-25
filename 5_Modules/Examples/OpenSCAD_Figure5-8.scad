use <LEGObrick.scad>;

for (Xposition = [0: 24: 100]) {
    translate ([Xposition, 2, 0]) LEGObrick(3);
}

for (Xposition = [16: 24: 100]) {
    translate ([Xposition, 2, 9.6]) LEGObrick(3);
}

for (Xposition = [0: 24: 100]){
    translate ([Xposition, 2, 2*9.6]) LEGObrick(3);
}

for (Xposition = [16: 24: 100]) {
    translate ([Xposition, 2, 3*9.6]) LEGObrick(3);
}
