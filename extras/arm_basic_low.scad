// A simplified model for the basic low arm part of Darwin-OP.
// The basic arm is with 3 DOF without gripper at the end. 

module arm_gripper() {
    hull() { 
        cube([50, 32, 32], center = true);
        translate([45, 0, -13.5]) cube([45, 32, 5], center = true);
    }
}

arm_gripper();