difference() {
translate([0,0,-6.5])
    linear_extrude(height=13)
    polygon(points=[
    [0,0],
    [78,0],
    [78-14,14],
    [14,14],
    [14,3],
    [78-14,3],
    [78-14,10],
    [14,10]
    ], paths=[
    [0,1,2,3],
    [4,5,6,7]
    ]);



translate([14+25,-1,0])
    rotate([-90,0,0])
    cylinder(h=16,r1=4.5,r2=4.5,$fn=30);

for(x=[0:1])
translate([20+x*(78-20-20),0,0])
rotate([-90,0,0]) {
    translate([0,0,2.2])
        cylinder(h=16,r1=3.5,r2=3.5,$fn=30);
    translate([0,0,0.701])
        cylinder(h=1.5,r1=1.95,r2=3.5,$fn=30);
    translate([0,0,-0.01])
        cylinder(h=16,r1=1.95,r2=1.95,$fn=30);
}
translate([14+25,12.3,0])
    rotate([-90,0,0])
    cylinder(h=2,r1=25,r2=25,$fn=60);

}



