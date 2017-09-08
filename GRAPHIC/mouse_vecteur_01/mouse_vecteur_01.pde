/*
  Essai pointeur de souris avec effect scale
  le: 12/04/2017
 par: NAIB Kheireddine
      knaib22@gmail.com  
*/

ArrayList<PVector> liste=new ArrayList<PVector>();
PVector cercle;


void setup() {
  size(400, 500);
}

void draw() {
  background(255);
  stroke(0);
  PVector cercle=new PVector(mouseX, mouseY);
  liste.add(cercle);
  if (liste.size()>20) {
    liste.remove(0);
  }
  for (int i=0; i<liste.size(); i++) {
    noStroke();
    fill(255-i*5,0,i*5);
    PVector c=liste.get(i);
    ellipse(c.x, c.y,i,i);
  }
}