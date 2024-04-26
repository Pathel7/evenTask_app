import '../../framwork/page.dart';
import '../evenementCreation/evenementCreationCtrl.dart';
import '../evenementCreation/evenementCreationPage.dart';
import '../evenementList/evenementListPage.dart';
import '../participantCreation/participantCreationCtrl.dart';
import '../participantCreation/participantCreationPage.dart';
import '../participantList/participantListPage.dart';
import '../utilisateurCreation/utilisateurCreationCtrl.dart';
import '../utilisateurCreation/utilisateurCreationPage.dart';
import 'routes.dart';

Page navigateur(Routes route) {
  Page page;

  switch (route) {
    case Routes.evenementCreation:
      var ctrlP = EvenementCreationCtrl();
      page = EvenementCreationPage(ctrl: ctrlP);
      break;

    case Routes.evenementListe:
      page = EvenementListPage();
      break;

    case Routes.participantCreation:
      var ctrlP = ParticipantCreationCtrl();
      page = ParticipantCreationPage(ctrl: ctrlP);
      break;

    case Routes.participantListe:
      page = ParticipantListepage();
      break;

    case Routes.utilisateurCreation:
      var ctrlP = UtilisateurCreationctrl();
      page = UtilisateurCreationPage(ctrl: ctrlP);
      break;
  }
  return page;
}


// void main(){
//   navigateur(Routes.evenementCreation).rendu();
// }
