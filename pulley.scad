bearings=12;
bearingsize=6;
br=12.3;
ir=5;
or=23;
gap=2;
h=8;
m=0.5;

difference() {
    translate([0,0,-h/2])
    rotate_extrude($fn=50) {
        difference() {
            union() {
                // inner block
                translate([ir,0])
                    square([br-ir-gap/2,h]);
                // outer block
                translate([br+gap/2,0])
                    square([or-br-gap/2,h]);
            }
            // rope track
            translate([or,h/2])
                circle(r=h/2+1.5);    
        }
    }

    // bearing track
    translate([0,0])
    scale([1,1,1.02])
    rotate_extrude($fn=100) {
        translate([br,0])
            circle(r=(bearingsize+1)/2);
    }
}

// bearings
for(x=[0:bearings-1]) {
    rotate([0,0,x * 360/bearings])
    translate([br,0,0])
    sphere(r=bearingsize/2, $fn=50);
}
