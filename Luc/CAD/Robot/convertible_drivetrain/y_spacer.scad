module main() {
	difference() {
		cube([40, 30, 50]);

		translate([5, 0, 5])
			cube([30, 30, 40]);

		for(x = [5:10:35])
			for(y = [5:10:25])
				translate([x, y, 40])
					cylinder(d = 3, h = 10);

		for(x = [0, 30])
			for(y = [5:10:25])
				for(z = [5:10:45])
					translate([x, y, z])
						rotate([0, 90, 0])
							cylinder(d = 3, h = 10);

		for(y = [5, 25])
			for(z = [15, 35])
				translate([0, y, z])
					rotate([0, 90, 0])
						cylinder(d = 8, h = 10);

		translate([0, 30 + 70/2, 25])
			rotate([0, 90, 0])
				cylinder(d = 74, h = 40, $fn = 50);
	}
}

main();
