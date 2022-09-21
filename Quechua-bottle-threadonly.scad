use<threads-scad/threads.scad>

// Pitch - Distance entre deux dents d'un filtage

// Rayon joint : 40 mm
// Epaisseur joint : 1.5 mm

//TODO Tester 46 mm dans Outer Diameter

ScrewHole(/* Outer Diameter */ 46, /* Height */ 10, pitch=3.5)
    cylinder(h=10, d=50, $fn=100);