echo(version=version());

%import("projection.stl");
include <polyScrewThread.scad>
include <arc.scad>
PI=3.141592;

//variables
square_size = 170;
wall_thick = 3;
base_depth = 15;
indent = 6;

color("green")
difference()
{
  //initial cube
    cube([square_size,square_size,base_depth+indent],true);
    
  //carved out cube
    translate([0, 2, 0])
        cube([square_size-wall_thick,square_size,base_depth],true);

  //carve out holes    
    translate([40, 20, base_depth/2])
        cylinder(10,7,7,true); 
    
    translate([20, 20, base_depth/2])
        cylinder(10,7,7,true);
}
