width = 20;
wall_strength = 5;
length_under_desk = 55;
desk_thickness = 19.12;
headphone_width = 40;
slip_off_protection_heigth = 5;

union() {
    color("red") cube([length_under_desk + wall_strength, width, wall_strength]);
    translate([0, 0, desk_thickness + wall_strength]) color("blue") cube([length_under_desk + wall_strength, width, wall_strength]);
    translate([length_under_desk, 0, wall_strength]) color("green") cube([wall_strength, width, desk_thickness]);
    translate([length_under_desk + wall_strength, 0, 0]) color("yellow") cube([headphone_width, width, wall_strength]);
    translate([length_under_desk + wall_strength + headphone_width, 0, 0]) color("orange") cube([wall_strength, width, wall_strength + slip_off_protection_heigth]);
}