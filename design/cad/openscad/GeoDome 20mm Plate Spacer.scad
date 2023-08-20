$fn = 100;
epsilon = 0.2;

tolerance = 0.25;

pipe_id = 16;
conic = 0.2;

plate_thickness = 3;

hole_size = 4.3;
hole_spacing = 25;
holes = 2;

length = (holes+1)*hole_spacing;

intersection() {
    difference() {
        rotate([90,0,0]) cylinder(h=length, d1=pipe_id-tolerance*2, d2=pipe_id-tolerance*2-conic, center=true);
        cube([pipe_id+epsilon, length+2*epsilon, plate_thickness+tolerance*2], center=true);
        for (i = [0:holes]) {
            translate([0, -length/2 + hole_spacing/2 + hole_spacing*i, 0]) cylinder(h=pipe_id+2*epsilon, d=hole_size, center=true);
        }
    }
    translate([0,0,pipe_id/4]) cube([pipe_id+2*epsilon, length+2*epsilon, pipe_id/2+epsilon], center=true);
}