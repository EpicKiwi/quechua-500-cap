use<threads-scad/threads.scad>

// Pitch - Distance entre deux dents d'un filtage

// Diametre joint : 40 mm
// Epaisseur joint : 1.5 mm


  difference() {
    translate([0, 0, -2]) cylinder(h=4, d=50, $fn=100);  // Cylindre de base
    translate([0, 0, -5]) cylinder(h=5.01, d=45, $fn=100);difference() {                 // Emplacement du joint
        cylinder(h=1.5, d=42.5, $fn=100);
        translate([0, 0, -1]) cylinder(h=3.5, d=33.5, $fn=100);
    }
  }