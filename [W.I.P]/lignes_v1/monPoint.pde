/*
 premier essai de creation des lines tous en memorisant les coordonnees et propriete des points et lines
 pour un future utilisation. le projet est en [WIP]
  le: 08/01/2017
 par: NAIB Kheireddine
      knaib22@gmail.com  
*/



// class pour creer un point 
class monPoint{
  float x,y;
  float disX,disY;
  int diametre;
  ArrayList<propriete> proprietes = new ArrayList<propriete>();
  
   //constructeur
   monPoint(float x1,float y1,int d){
     x=x1;
     y=y1;
     diametre=d;
   }
   
   //function pour dessiner le point
   void dessiner(int diametre,color c){
     fill(c);
     ellipse(x,y,diametre,diametre); 
   }
   
   // function pour verifier si le curseur est dessus sur le point et affecte le point avec des propriete
   propriete verifierSiDessus(){
    disX = x - mouseX;
    disY = y - mouseY;
    int dTemp=diametre*3;
    proprietes.add(new propriete(dTemp, color(random(0,200),random(0,100),random(0,200))));
    proprietes.add(new propriete(diametre,color(250,0,0)));
    
    if(sqrt(sq(disX) + sq(disY)) < diametre/2){
      return proprietes.get(0);
    } else {
       return proprietes.get(1);
    }
   } 
   //function pour verifier si dessus sur point et retourne un boolean si on cree un point ou non
   boolean verifierSiDessusSP(){
     
     disX = x - mouseX;
     disY = y - mouseY;
     if(sqrt(sq(disX) + sq(disY)) < diametre/2){
       
      return true;
    } else {
        
       return false;
    }
   }
}