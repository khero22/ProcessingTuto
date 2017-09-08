/*
 Node v1: 
 l'idee est de creer un system nodale comme par exemple grasshopper3d chaque node a ses propre propriete 
 et a des entree et des sortie,chaque node transmet des donnees a un autre pour un resultat donné.
 j'utilise la bibliotheque controlP5 pour afficher des controle comme un textfield ou un button
 pour l'entree des donnees; on peux deplacer les nodes et j'ai meme rajouter une methode pour gerer
 la supperposition des noeux... le projet est en phase de  developpement [wip] votre contribution est la bienvenu.
 
 utilisation: pour ajouter un node il faux un clique droit de la souris puis entree un nom puis entree du clavier.
  
  le: 04/03/2017
 par: NAIB Kheireddine 
      knaib22@gmail.com  
*/

class Node{
  float x;
  float y;
  float longeurNode;
  float largeurNode;
  float rayonNode=2.5;
  String nomNode ;
  
  //le constructeur
  public Node(float _x,float _y,float longeur,float largeur,String nomNode){
    this.x = _x;
    this.y=_y;
    this.longeurNode=longeur;
    this.largeurNode=largeur;
    this.nomNode=nomNode;
  }
  //methode pour afficher le node
  public void afficherNode(){
    isTop();
    strokeWeight(2);
    fill(213);
    rect(x,y,longeurNode,largeurNode,rayonNode);
    fill(0);
    textAlign(CENTER);
    text(nomNode,x+(longeurNode/2),y+(largeurNode/2));
    move();
  }
  
  //methode pour verifier si le curseur est dessus du Node
  public boolean isTop(){
    //verifier si le curseur est dessus du Node 
    if(dist(x,y,mouseX,mouseY) <= longeurNode && dist(x,y,mouseX,mouseY) <= largeurNode){
      stroke(250,0,0);
      return true;
    }else{
      stroke(0);
      return false;
    } 
  }
  //methode pour deplacer le Node
  public void move(){
    if(isTop()){
      if(mousePressed){
        cursor(MOVE);
        this.x=mouseX;
        this.y=mouseY;
      }else{
        cursor(ARROW);
      }

    }
  }
  //methode pour afficher tous les Nodes supperposer
  public void supperposer(float distance){
    this.x += distance;
    this.y += distance;
  }
  
 
}