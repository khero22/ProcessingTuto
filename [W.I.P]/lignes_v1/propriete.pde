/*
 premier essai de creation des lines tous en memorisant les coordonnees et propriete des points et lines
 pour un future utilisation. le projet est en [WIP]
  le: 08/01/2017
 par: NAIB Kheireddine
      knaib22@gmail.com  
*/
  
  // class propriete qui regroupe les propriete du point comme couleur et diametre
   class propriete
   {
     int dm; //diametre
     color col; //couleur point
     //constructeur
     propriete(int _dm,color _col){
       dm=_dm;
       col=_col;
     }
   }