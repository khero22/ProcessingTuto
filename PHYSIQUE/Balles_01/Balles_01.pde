/*
  Essai de simulation des propritete physique tel que gravite et vent avec l'option d'ajouter d'autres 
  balles et les enregistrer dans le fichier Json comme sa il seront charger des le lancement du programme.
  le: 13/01/2017
 par: NAIB Kheireddine
      knaib22@gmail.com  
*/


ArrayList<balle> balles;
JSONArray jsonBalles;



void setup() {

  size(400, 600);
  cursor(1);
  balles=new ArrayList<balle>(); 
  //charger les balles depui le fichier json -----------------------------------
  JSONArray chargerBalles= loadJSONArray("data/balles.json");
  for (int i=0; i< chargerBalles.size(); i++) {
    JSONObject maBalle= chargerBalles.getJSONObject(i);

    balles.add(new balle(maBalle.getFloat("x"), 
      maBalle.getFloat("y"), 
      maBalle.getFloat("r"), 
      color(maBalle.getFloat("couleur.r"), maBalle.getFloat("couleur.v"), maBalle.getFloat("couleur.b"))
      )
      );
  }
  //----------------------------------------------------------------------------
  jsonBalles=new JSONArray();
}



void draw() {
  background(255);
  for (balle b : balles) {
    b.afficher();
  }
}

void mousePressed() {
  balles.add(new balle(mouseX, mouseY, random(20, 80), color(random(0, 255), random(0, 255), random(0, 255))));
  
  // boucle pour enregistrer une balle dans un objet json ---------------------------
  for (int i=0; i < balles.size(); i++) {
    JSONObject objet= new JSONObject();
    objet.setInt("id balle", i);
    objet.setFloat("x", balles.get(i).point.x);
    objet.setFloat("y", balles.get(i).point.y);
    objet.setFloat("r", balles.get(i).rayon);
    objet.setFloat("couleur.r", red(balles.get(i).couleur));
    objet.setFloat("couleur.v", green(balles.get(i).couleur));
    objet.setFloat("couleur.b", blue(balles.get(i).couleur));
    jsonBalles.setJSONObject(i, objet);
  } //-------------------------------------------------------------------------------
  saveJSONArray(jsonBalles, "data/balles.json"); // enregistrer les balles dans le fichier json
}