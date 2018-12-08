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
ring(72);
ring(42);
for(a=[0:3])
    rotate([0,0,a*45])
        translate([-132/2,-2,0])
            cube([132,4,11]);
