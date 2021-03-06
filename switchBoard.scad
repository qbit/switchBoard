use <MCAD/boxes.scad>

//font = "Anonymous PRO Bold";
font = "Liberation Sans:style=Bold";
mainBox=[90, 80, 5];

module hole() {
    cylinder(h=5.1, r1=11.7/2, r2=11.7/2, center=true);
}

module screwHole() {
    cylinder(h=5.1, r1=4.3/2, r2=4.3/2, center=true);
}

difference() {
    roundedBox(mainBox, 4, true);
    translate([mainBox[0]*.40, mainBox[1]*.40, 0]) {
        screwHole();
    }
    translate([mainBox[0]*-0.40, mainBox[1]*.40, 0]) {
        screwHole();
    }
    translate([0,mainBox[1]*.15,0]) {
        linear_extrude(height = 3) {
            text("FanControl", size = 8, font = font, halign = "center");
        }
    }
    translate([mainBox[0]*0.24,mainBox[1]*-0.2,0]) { 
       translate([0,mainBox[1]*.19,0]) {
        linear_extrude(height = 3) {
            text("Right", size = 5, font = font, halign = "center");
        }
    }
        hole(); 
    }
    translate([0,mainBox[1]*-0.2,0]) {
       translate([0,mainBox[1]*.19,0]) {
            linear_extrude(height = 3) {
                text("All", size = 5, font = font, halign = "center");
            }
        }
        hole();
    }
    translate([mainBox[0]*-0.24,mainBox[1]*-0.2,0]) {
        translate([0,mainBox[1]*.19,0]) {
            linear_extrude(height = 3) {
                text("Left", size = 5, font = font, halign = "center");
            }
        }
        hole();
    }
}