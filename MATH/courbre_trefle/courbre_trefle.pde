/*
 fonction pour dessiner une courbe trefle a 4 feuilles: Équation polaire : point=rayon*sin(2*angle)
                         
  le: 03/01/2017
 par: NAIB Kheireddine
      knaib22@gmail.com
*/

float x=0;
float y=0;
float rayon=width;
float angle=0;
float p=0;
void setup(){
  size(600,400);
  
}

void draw(){
  //------------- dessin des deux axes --------------------
  stroke(22);
  strokeWeight(1);
  line(0,height/2,width,height/2); // dessin du axe' 0 de X
  line(width/3,0,width/3,height); // dessin du axe' 0 de Y1
  line((width/3)*2,0,(width/3)*2,height); // dessin du axe' 0 de Y2
  translate(width/3,height/2);
  //-------------- trefle v1 en rouge ----------------------
  //--------------------------------------------------------
  p=rayon*sin(2*angle); // formule de la trefle 
  x=p*cos(angle); //convertion polaire en cartesien pour X
  y=p*sin(angle); //convertion polaire en cartesien pour Y
  //--------------------------------------------------------
  strokeWeight(5);
  stroke(#F70A0A);
  //dessin de la trefle
  beginShape();
    vertex(x,y);  
  endShape();
  //--------------------------------------------------------
  //-------------- trefle v2 en vert  ----------------------
  //--------------------------------------------------------
  translate(width/3,0);
  p=rayon*(sin(2*angle)+sin(6*angle)/4); // formule de la trefle 
  x=p*cos(angle); //convertion polaire en cartesien pour X
  y=p*sin(angle); //convertion polaire en cartesien pour Y
  //--------------------------------------------------------
  strokeWeight(5);
  stroke(#15F70A);
  //dessin de la trefle
  beginShape();
    vertex(x,y);  
  endShape();  
  //--------------------------------------------------------  
  

  angle+=.05;

}