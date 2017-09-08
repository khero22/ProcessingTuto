/*
 fonction pour dessiner une courbe parabolique: y'2= 2*px
                         et une courbe parabole semi-cubique: py'2=x'2
  le: 02/01/2017
 par: NAIB Kheireddine
      knaib22@gmail.com  
*/

float x=400;
float rayon=80;
float angle=0;
int direction=-1;
float p=40;
void setup(){
  size(500,400);

}

void draw(){
  stroke(22);
  strokeWeight(1);
  line(0,height/2,width,height/2); // axe' 0
  strokeWeight(3);
  translate(width/2,height/2);


beginShape();
 if (x==0){
   direction=1;
 }
   x+= direction;
   stroke(#F21414);
 vertex(x, direction*sqrt(2*x*p));    // parabole

endShape();
beginShape();
 if (x==0){
   direction=1;
 }
   x+= direction;
   stroke(#14F26A);

 vertex(x, direction*sqrt(pow(x,3)/p)); // parabole semi-cubique
endShape();

}


  // pour convertir cartezien to polair
  //rayon=sqrt(pow(x,2)+pow(y,2));
  //angle=pow(tan(y/x),-1);

  // pour convertir polaire to cartezien
  //x=rayon*sin(i);
  //y=rayon*cos(i);