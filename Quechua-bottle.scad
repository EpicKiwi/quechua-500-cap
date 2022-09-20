use<threads-scad/threads.scad>

// Pitch - Distance entre deux dents d'un filtage

// Rayon joint : 40 mm
// Epaisseur joint : 1.5 mm

//TODO Tester 46 mm dans Outer Diameter

ScrewHole(/* Outer Diameter */ 45, /* Height */ 16, pitch=3.5)
  difference() {
    translate([0, 0, -4]) cylinder(h=24, d=50, $fn=100);  // Cylindre de base
    translate([0, 0, 16])  difference() {                 // Emplacement du joint
        cylinder(h=1.5, d=40, $fn=100);
        cylinder(h=2, d=35.5, $fn=100);
    }
    translate([0, 0, -5]) cylinder(h=5, d=45, $fn=100);   // Amorce du bouchon
  }