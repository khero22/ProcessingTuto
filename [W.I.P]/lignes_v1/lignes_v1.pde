/*
 premier essai de creation des lines tous en memorisant les coordonnees et propriete des points et lines
 pour un future utilisation. le projet est en [WIP]
  le: 08/01/2017
 par: NAIB Kheireddine
      knaib22@gmail.com  
*/


// declaration des variables globaux
ArrayList<monPoint> p=new ArrayList<monPoint>();
propriete pp;
static boolean etat=false;



// initialisation
void setup(){
  size(500,600);
}



//gere l'evenement du clique de souris pour creation d'un point
void mousePressed(){
  // ajouter un point dans la liste
  if (etat){
    println("objet existe deja");
  }else{
     p.add(new monPoint(mouseX,mouseY,10));

  }
}



//function pour dessiner en loop
void draw(){
  background(233);
  for(int i=0; i<p.size();i++){
    //verifier si on est dessus et recuperer les propriete aproprier
    pp=p.get(i).verifierSiDessus();
    etat=p.get(i).verifierSiDessusSP();
    // dessiner//
    p.get(i).dessiner(pp.dm,pp.col);
     for(int j=1;j<p.size();j++){
       // dessiner les lignes suivant les position des points
     line(p.get(j-1).x,p.get(j-1).y,p.get(j).x,p.get(j).y);
     }
  }
}