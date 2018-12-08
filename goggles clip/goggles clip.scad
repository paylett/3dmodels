difference() {
    linear_extrude(height=2)
        translate([1,1])
    minkowski() {
        square([11,11]);
        circle(r=1,$fn=50);
    }
    translate([2,2,-1])
        cube([3.5,9,4]);
    translate([7.5,2,-1])
        cube([3.5,9,4]);
    translate([10,5.8,-1])
        cube([4,1.4,4]);
}
