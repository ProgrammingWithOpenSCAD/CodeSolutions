linear_extrude(30) {
  difference() {
    union() {
      square([100, 30], center=true);
      square([30, 100], center=true);
    }
    offset(-2) {
      square([100, 30], center=true);
      square([30, 100], center=true);
    }
  }
}