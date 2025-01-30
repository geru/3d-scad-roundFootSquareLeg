include <BOSL2/std.scad>
include <BOSL2/shapes3d.scad>


$fn=90;

h = 19;   // overall outer height
is = 16.1;  // inner square sides
t = 3;    // thickness at bottom
id = is * sqrt(2);
echo(id);
od_1 = id + 3*t;
od_2 = id + 2*t;

difference() {
  cyl(h=h, d1=od_1, d2=od_2, chamfer=2, anchor=TOP);
  cube(is, anchor=TOP);
}
