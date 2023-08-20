difference() {
    translate([-5,0,0]) cube([45,40,20], true);
    translate([0,0,0]) rotate([0,0,45]) cube([27/sqrt(2),27/sqrt(2),21], true);
    translate([27/2,0,0]) cube([27,27,21], true);
    rotate([0,90,0]) cylinder(d=4.3, h=70, center=true, $fn=5);
    rotate([0,90,0]) cylinder(d=10, h=30, center=true, $fn=5);
    rotate([0,0,55]) translate([20,0,0]) rotate([0,90,0]) cylinder(d=4.3, h=42, center=true, $fn=5);
    rotate([0,0,-55]) translate([20,0,0]) rotate([0,90,0]) cylinder(d=4.3, h=42, center=true, $fn=5);
}