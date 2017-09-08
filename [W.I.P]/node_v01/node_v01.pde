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



import controlP5.*;


ArrayList<Node> nodes;
ControlP5 cp;
boolean visibilite=true;

void setup(){
 
 size(500,600);
  nodes = new ArrayList<Node>();
 nodes.add(new Node(150,250,100,40,"node01"));
 cp = new ControlP5(this);

 

}

void draw(){
  background(130);
  for(Node node:nodes){
    node.afficherNode();
    
  }
  ReaRenger(nodes);
  cliquer();
  
}

void cliquer(){
  if (mouseButton == RIGHT){
    if(visibilite){
     cp.setVisible(true);
     cp.addTextfield("Ajouter Node")
       .setPosition(mouseX,mouseY)
       .setSize(200,40)
       .setFont(createFont("arial",14))
       .setAutoClear(false)
       .setId(1);
       ; 
         text(cp.get(Textfield.class,"Ajouter Node").getText(), 360,130);
    }  
        
   }
   if (mouseButton == LEFT){
     if(visibilite ==false){
       cp.setVisible(false);
       visibilite=true;
     }
   }
}


//methode pour retourner le texte entree dans le textField
void controlEvent(ControlEvent theEvent) {

  switch(theEvent.getController().getId()) {
    case(1):
    if(theEvent.getController().getStringValue().equals("")){
      cp.setVisible(false);
      break;
    }else{
      nodes.add(new Node(mouseX,mouseY,100,40,theEvent.getController().getStringValue())) ;
      visibilite=false;
    }
    
  }
}

 //cet methode a pour but de verifier si les nodes sont supperposer et arrange leur disposition
  public  boolean ReaRenger(final ArrayList<Node> array)
    {
      for (int i = 0; i < array.size(); i++)
      {
          for (int j = 0; j < i; j++) {
              final float o1 = array.get(i).x;
              final float o2 = array.get(j).x;      
                  if (o1 == o2) {
                      array.get(i).x +=15;
                      array.get(i).y +=15;
                      return true;
                  }
          }
      }
      return false;
  }