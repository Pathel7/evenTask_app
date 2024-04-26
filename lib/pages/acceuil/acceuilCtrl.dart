import '../navigation/navigateur.dart';
import '../navigation/routes.dart';

valider(String choix) {
  if (choix == "1") {
    return navigateur(Routes.utilisateurCreation);
  }
  if (choix == "2") {
    return navigateur(Routes.evenementCreation);
  }
  if (choix == "3") {
    return navigateur(Routes.participantCreation);
  }
  if (choix == "4") {
    return "Date de fin obligatoire";
  }
  if (choix == "5") {
    return "Date de fin obligatoire";
  }
  return null;
}


// void main(){
//   var resultat = valider("2").rendu();
//   print("resultat de la validation: $resultat");
//   resultat;
// }