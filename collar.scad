// This is a screw-on collar to attach two UK milk jugs neck-to-neck.
// See http://pozorvlak.livejournal.com/150072.html for why you might want to
// do this.
// Designed by Miles Gould, February 2013

// Outer collar
difference() {
	cylinder(h=22, r=21);
	cylinder(h=22, r=19);
}

// Helix based on code by Andrew Plumb, 2010
// See http://rocklinux.net/pipermail/openscad/2010-January/000098.html

module helix_footprint(helix_r=50
	,arm_r=10
	) {
	translate([ -helix_r,0])
      circle(arm_r,0);
}

module helix_coil(helix_r=50
	, arm_r=10
	, helix_h=100
	, helix_twist=360.0
	) {
  linear_extrude(height=helix_h, convexity=10, twist=helix_twist)
	helix_footprint(helix_r=helix_r
		,arm_r=arm_r
	);
}

helix_coil(helix_h=22
	,arm_r=2
	,helix_r=19
	,helix_twist=-1931
	);
