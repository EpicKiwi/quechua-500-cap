use<threads-scad/threads.scad>

// Epaisseur du joint
sealThickness = 1.5;
// Taille du trous du joint
sealHoleDiameter = 33.5;
// Diametre externe du joint
sealOuterDiameter = 42.5;

difference(){
ScrewHole(46, 15, pitch=3.5)
  difference() {
    translate([0, 0, -2]) cylinder(h=20, d=50, $fn=100);  // Cylindre de base
    translate([0, 0, 15]) difference() {                 // Emplacement du joint
        cylinder(h=sealThickness, d=sealOuterDiameter, $fn=100);
        translate([0, 0, -1]) cylinder(h=sealThickness+2, d=sealHoleDiameter, $fn=100);
    }
    translate([0, 0, -5]) cylinder(h=5, d=45, $fn=100);   // Amorce du bouchon
  }
  
    // Biseau interne
    rotate_extrude($fn=100)
        translate([16.5, -5, 0])
                polygon(points=[[0,0], [0,10], [10,0]]);
}

minkowski(){
    hull(){
        for(i = [0:5]) {
            rotate([0,0, i * (360/5)])
                translate([25, 0, 20])
                    cylinder(h=10, r=10);
        };
    };
    sphere(r=2, $fn=25);
}