/*
  Essai de simulation des propritete physique tel que gravite et vent avec l'option d'ajouter d'autres 
  balles et les enregistrer dans le fichier Json comme sa il seront charger des le lancement du programme.
  le: 13/01/2017
 par: NAIB Kheireddine
      knaib22@gmail.com  
*/

class balle {
  PVector point;
  float rayon;
  PVector vitesse=new PVector(2.5,0.1);
  PVector gravite=new PVector(0,0.98);
  PVector vent=new PVector(-0.05,0);
  color couleur;
  
  //le constructeur
  balle(float _x,float _y,float _r,color col){
     point=new PVector(_x,_y);
     rayon=_r;
     couleur=col;
  }
  
  //fonction d'affichage des balles
  void afficher(){
    fill(couleur);
    stroke(0);
    strokeWeight(2);
    verifierLimite();
    point.add(vitesse);
    vitesse.add(gravite);
    vitesse.add(vent);
    vitesse.limit(25);//limiter la vitesse a 25
    ellipse(point.x,point.y,rayon,rayon);  
  }
  
  
  // fonction de verification des limites
  void verifierLimite(){
    if (point.x >width || point.x <0){
      vitesse.x=vitesse.x * -0.98;
    }
    if (point.y >height){
      vitesse.y = vitesse.y * -0.98;
      point.y=height;
    }
  }
  
}