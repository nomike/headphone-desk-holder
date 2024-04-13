/*
Parametric Headphone Desk Holder

Copyright 2024 nomike[AT]nomike[DOT]com

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS “AS IS” AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

width = 20;
wall_strength = 5;
length_under_desk = 55;
desk_thickness = 19.12;
headphone_width = 40;
slip_off_protection_height = 5;

union() {
    color("red") cube([length_under_desk + wall_strength, width, wall_strength]);
    translate([0, 0, desk_thickness + wall_strength]) color("blue") cube([length_under_desk + wall_strength, width, wall_strength]);
    translate([length_under_desk, 0, wall_strength]) color("green") cube([wall_strength, width, desk_thickness]);
    translate([length_under_desk + wall_strength, 0, 0]) color("yellow") cube([headphone_width, width, wall_strength]);
    translate([length_under_desk + wall_strength + headphone_width, 0, 0]) color("orange") cube([wall_strength, width, wall_strength + slip_off_protection_height]);
}