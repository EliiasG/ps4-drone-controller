$fn = 64;
let
(
    roofHeight = 5,
    diameter = 22,
    attachmentDiameter = 5,
    extentionHeight = 2
){
    difference()
    {
        union()
        {
            rotate([180, 0, 0])
                cylinder(d1 = diameter, d2 = diameter - extentionHeight * 2, h = extentionHeight);
            cylinder(d = diameter, h = 4.999);
            translate([0, 0, 4.998])
                cylinder(d1 = diameter, d2 = diameter - roofHeight * 2, h = roofHeight);
        }
        KnobCutout();
        cylinder(d = attachmentDiameter, h = 100);
    }
}

module KnobCutout(height = 5, diameter = 20, angle = 1)
{
    
    rotate([180, 0, 0])
        cylinder(d1 = diameter, d2 = 0, h = diameter / angle * 0.5);
    translate([0, 0, -0.001])
    cylinder(d = diameter, h = height);
}