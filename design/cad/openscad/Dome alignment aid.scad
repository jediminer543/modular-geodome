$fn = 100;

d = 14;
h = 20;
d_h = 5.5;

angle = 20; // Deg
base_thickness = 2;

epsilon = 0.4;
tool_size = 100;
// y=mx+c; m=tan(theta); x=d/2 => c=mx
c = tan(angle)*d/2;

difference() {
    translate([0,0,h/2]) cylinder(d=d, h=h, center=true);
    translate([0,0,(h-epsilon)/2]) cylinder(d=d_h, h=h+2*epsilon, center=true);
    translate([0,0,c+base_thickness]) rotate([angle,0,0]) translate([0,0,tool_size/2]) cube(tool_size, center=true);
}




