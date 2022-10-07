$fn = 64;
let
(
    roofHeight = 5,
    diameter = 21.5,
    attachmentDiameter = 5,
    extentionHeight = 1.4
){
    difference()
    {
        union()
        {
            rotate([180, 0, 0])
                cylinder(d1 = diameter, d2 = diameter - extentionHeight * 2, h = extentionHeight);
            cylinder(d = diameter, h = 2.749);
            translate([0, 0, 2.748])
                cylinder(d1 = diameter, d2 = diameter - roofHeight * 2, h = roofHeight);
        }
        KnobCutout();
        cylinder(d = attachmentDiameter, h = 100);
    }
}

module KnobCutout(height = 2.75, diameter = 19.5, angle = 1)
{
    
    rotate([180, 0, 0])
        cylinder(d1 = diameter, d2 = 0, h = diameter / angle * 0.5);
    translate([0, 0, -0.001])
    cylinder(d = diameter, h = height);
}