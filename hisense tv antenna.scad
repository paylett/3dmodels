difference() {
translate([0,0,-10])
linear_extrude(height=20) {
polygon(points=[
[0,0],
[56.5,0],
[58,1.5],
[58,7],
[57,8],
[55,8],
[55,3],
[39,3],
[39,6],
[31,6],
[0,40]]);

polygon(points=[
[4,-0.01],
[5,25],
[9,30],
[13,25],
[14,-0.01]]);

}
translate([3+4.5,23.89,0])
    rotate([90,0,0])
        cylinder(h=24,r1=7/2,r2=8.9/2);
translate([3+4.5,27.88,0])
    rotate([90,0,0])
        cylinder(h=4,r1=0,r2=7/2);

}

translate([0,0,-50])
linear_extrude(height=100) {
polygon(points=[
[31,2],
[33,0],
[37,0],
[39,2],
[39,6],
[31,6]]);
}