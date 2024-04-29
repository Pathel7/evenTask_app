class ParticipantCreationCtrl {
  String? valider(String email, int evenementId){
    if(email == "") {
      return "email obligatoire";
    };

    if(evenementId == Null || evenementId == "") {
      return "Evenement obligatoire";
    };
      return null;
  }

  

}

void main(){
  var ctrl = ParticipantCreationCtrl();
  var resultat = ctrl.valider("Akashi89@gmail.com", 1);
  print("Resultat de la validation: $resultat");
}