$fn=50;

/*
difference(){
    group(){
cylinder(r=25, h=2,center=false);

    }//group

translate([0,0,-1])     cylinder(r=8, h=20,center=false);

 }//diff
   
//translate([-6,-13,0]) cube([131,26,2],center=false);

    difference(){
    group(){
translate([0,0,2])     cylinder(r=25, h=7,center=false);

    }//group

translate([0,0,-1])     cylinder(r=11.5, h=20,center=false);

 }//diff
   
 */
 
 /*
 
module Arduino(){
//color ("green") translate([0,0,2]) cube([68.6,53.3,2],center=false);  // PCB
//translate([14,2.5,-5])     cylinder(r=2, h=50,center=false); //Schraubenloch U L
//translate([14,2.5,0])     cylinder(r=2+1.4, h=2,center=false); //Auflage U L

//translate([14+1.3,2.5+5.1+27.9+15.2,-5])     cylinder(r=2, h=50,center=false); //Schraubenloch O L
//translate([14+1.3,2.5+5.1+27.9+15.2,0])     cylinder(r=2+1.4, h=2,center=false); //Auflage O L

//Deckel:
//translate([14+1.3+50.8,2.5+5.1,-5])     cylinder(r=2, h=10,center=false); //Schraubenloch U R
//translate([14+1.3+50.8,2.5+5.1,0])     cylinder(r=2+1.4, h=2,center=false); //Auflage U R
//translate([14+1.3+50.8,2.5+5.1+27.9,-5])     cylinder(r=2, h=10,center=false); //Schraubenloch O R
//translate([14+1.3+50.8,2.5+5.1+27.9,0])     cylinder(r=2+1.4, h=2,center=false); //Auflage O R


//translate([-1.3,34,4]) cube([5.5,8,3],center=false); //Micro USB
//translate([-1.3-10,34-1.5,0]) cube([15,11,9],center=false); //Micro USB Stecker

}//module Arduino

translate([0,0,0]) Arduino();

difference(){
translate([20-2,0,6]) cube([14+4,5+2,33+3+2-6],center=false);  //Schraubzwinge L Ummantelung Kürzer wg PCB!
translate([20,0,-4]) cube([14,5,55],center=false);  //Schraubzwinge L Loch
}//diff


difference(){
translate([90-2,0,0]) cube([14+4,5+2,33+3+2],center=false);  //Schraubzwinge R Ummantelung
translate([90,0,-4]) cube([14,5,55],center=false);  //Schraubzwinge R Loch
}//diff

difference(){
translate([14,2.5,4])     cylinder(r=2+1.4, h=35,center=false); //Auflage U L
translate([14,2.5,-5])     cylinder(r=2, h=50,center=false); //Schraubenloch U L
}//diff

difference(){
translate([14+1.3,2.5+5.1+27.9+15.2,4])     cylinder(r=2+1.4, h=35,center=false); //Auflage O L
translate([14+1.3,2.5+5.1+27.9+15.2,-5])     cylinder(r=2, h=50,center=false); //Schraubenloch O L
}//diff



module Schalter(){
// Deckelschalter: d=12 mm
translate([0,0,0])     cylinder(d=12, h=10,center=false);

// Taster: d=11.6 mm
translate([19,0,0])     cylinder(d=11.6, h=10,center=false);

// Wippe 1x: 12.3 x 18.5 mm
translate([19+10,-18.5/2,0]) cube([12.3,18.5,20],center=false);

// Wippe 2x: 11 x 25.7 mm
translate([19+10+17,-25.7/2,0]) cube([11,25.7,20],center=false);

// Kippschalter: d=11.7 mm
translate([19+10+17+21,0,0])     cylinder(d=11.7, h=10,center=false);

// Zugschalter: d= 7.8 mm
translate([19+10+17+21+25,0,0])     cylinder(d=7.8, h=10,center=false);
}//module Schalter


//translate([0,0,20]) cube([6+3+19+10+17+21+25+8,53.3,2],center=false);  // Front (109)


difference(){
group(){ //Voll
translate([-3,-3,-3]) cube([6+3+19+10+17+21+25+8+3+3,53.3+3+3,33+3+2+3+3],center=false);  // Gehause Aussen
translate([-3,-9,33+3+2]) cube([6+3+19+10+17+21+25+8+6,3+6,3],center=false);  // Gehause Tischanschlag

}//group Voll

group(){  //Minus
translate([0,0,0]) cube([6+3+19+10+17+21+25+8,53.3,33+3+2],center=false);  // Gehause Innenvolumen
translate([6+3,53.3/2,33]) Schalter();
translate([20,0,-4]) cube([14,5,55],center=false);  //Schraubzwinge L Loch
translate([90,0,-4]) cube([14,5,55],center=false);  //Schraubzwinge R Loch
translate([14,2.5,-5])     cylinder(r=2, h=50,center=false); //Schraubenloch U L
translate([14+1.3,2.5+5.1+27.9+15.2,-5])     cylinder(r=2, h=50,center=false); //Schraubenloch O L

    
translate([-4,-4,-4+0.1]) cube([6+3+19+10+17+21+25+8+3+3+2,53.3+3+3+2,4],center=false);  // Minus Deckel  
translate([-1.3-10,34-1.5,0]) cube([15,11,9],center=false); //Micro USB Stecker
  
  
}//group
}//diff

*/

//Nur Deckel:
difference(){
group(){ //Voll
translate([-3,-3,-3]) cube([6+3+19+10+17+21+25+8+3+3,53.3+3+3,3],center=false);  // Gehause Aussen
translate([14+1.3+50.8,2.5+5.1,0])     cylinder(r=2+1.4, h=2,center=false); //Auflage U R
translate([14+1.3+50.8,2.5+5.1+27.9,0])     cylinder(r=2+1.4, h=2,center=false); //Auflage O R
translate([14,2.5,0])     cylinder(r=2+1.4, h=2,center=false); //Auflage U L
translate([14+1.3,2.5+5.1+27.9+15.2,0])     cylinder(r=2+1.4, h=2,center=false); //Auflage O L

}//group Voll

group(){  //Minus

translate([14,2.5,-5])     cylinder(r=2, h=50,center=false); //Schraubenloch U L

translate([14+1.3,2.5+5.1+27.9+15.2,-5])     cylinder(r=2, h=50,center=false); //Schraubenloch O L


translate([14+1.3+50.8,2.5+5.1,-5])     cylinder(r=2, h=10,center=false); //Schraubenloch U R
translate([14+1.3+50.8,2.5+5.1+27.9,-5])     cylinder(r=2, h=10,center=false); //Schraubenloch O R
//translate([20,0,-4]) cube([14,5,55],center=false);  //Schraubzwinge L Loch (PCB ist im Weg)
translate([90,0,-4]) cube([14,5,55],center=false);  //Schraubzwinge R Loch
    
//Auflage anfraesen
translate([-3,-3,0]) cube([25,3,3],center=false);  // UL
translate([-3,2.5+5.1+27.9+15.2+3,0]) cube([25,3,3],center=false);  // OL


}//group
}//diff
translate([6+3+19+10+17+21+25+8-3,0,0]) cube([3,53.3,3],center=false);  //Zentrierung
// //Deckel
