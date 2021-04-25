difference() {
  sphere(10);
  render() {
    cube([15,15,15]);
    cylinder(h=15, r=5);
  }
  %color([0.5,0.5,1], alpha=0.3) render() {
    cube([15,15,15]);
    cylinder(h=15, r=5);
  }
}
