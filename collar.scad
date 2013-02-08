difference() {
	cylinder(h=22, r=21);
	cylinder(h=22, r=19);
}

// Helix test using 2D subsystem.
// By Andrew Plumb, 2010
// code nabbed from http://rocklinux.net/pipermail/openscad/attachments/20100114/50ee67d9/helix.obj

module helix_footprint(helix_r=50
	,arm_r=10
	,arm_offset=1
	,arm_rot=30
	) {
	translate([ -helix_r,0])
      rotate([0,0,arm_rot])
	translate([-arm_offset,0,0])
	circle(arm_r,0);
}

module helix_coil(helix_r=50
	, arm_r=10
	, helix_h=100
	,arm_offset=0
	,arm_rot=0
	, helix_twist=360.0
	) {
  linear_extrude(height=helix_h, convexity=10, twist=helix_twist)
	helix_footprint(helix_r=helix_r
		,arm_r=arm_r
		,arm_offset=arm_offset
		,arm_rot=arm_rot
	);
}

helix_coil(helix_h=22
	,arm_r=2
	,helix_r=19
	,helix_twist=1931
	);
