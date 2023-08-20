$fn = 100;

length = 200;

hole_size = 4.3;
hole_spacing = 25;

pipe_d = 25;

width = 15;

min_height = 2;

epsilon = 0.4;

sag = (pipe_d/2)-sqrt(((pipe_d/2)*(pipe_d/2))-0.25*(width*width));
height = min_height + sag;
holes = floor(length/hole_spacing);

difference() {
    translate([0, 0, height/2]) cube([width, length, height], center = true);
    translate([0,0,pipe_d/2+sag]) rotate([90, 0, 0]) cylinder(d = pipe_d, h=length+2*epsilon, center=true);
    // Hole pattrn
    for (i = [0:holes]) {
        translate([0, -length/2 + hole_spacing/2 + hole_spacing*i, height/2-epsilon]) cylinder(h=height, d=hole_size, center=true);
    }
}