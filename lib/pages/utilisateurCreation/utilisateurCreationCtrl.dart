class UtilisateurCreationctrl{
  String? valider(String nom , String motDepasse , String email){
    if(nom == ""){
      return" Nom obligatoire";  
    }
    if(motDepasse == ""){
      return" mot de passe";  
    }
    if(email== ""){
      return" email ";  
    }
     return null;

  }
  void envoyerFormulaire(){

  }
   }


void main(){
  var ctrl= UtilisateurCreationctrl ();
  var resultat = ctrl.valider("","","");
  print("resultat de la validation: $resultat");
}