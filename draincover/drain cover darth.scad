module ring(outer) {
    r = outer/2;
    difference() {
        cylinder(h=11, r1=r, r2=r, $fn=100);
        translate([0,0,-1])
            cylinder(h=13, r1=r-4, r2=r-4, $fn=100);
    }
}

scale([1,1,4/11])
ring(139.5);
ring(132);
ring(102);
for(a=[0:7])
    rotate([0,0,a*45])
        translate([34,-2,0])
            cube([30,4,11]);

difference() {
    cylinder(h=11, r1=72/2, r2=72/2, $fn=100);
    translate([0,0,50])
        scale([0.42, 0.42, 1])
            surface(file = "darth4.png", center = true, invert=true);
}
