import '../../framwork/page.dart';
import '../../utils/zoneSaisie.dart';
import 'evenementCreationCtrl.dart';

class EvenementCreationPage implements Page {
  // int id = 0;
  String titre = "";
  String description = "";
  String auteur = "";
  String categorie = "";
  String typeEvent = "";
  String lieu = "";
  String dateDebut = "";
  String dateFin = "";
  String heureDebut = "";
  String heureFin = "";
  // String statut = "";
  String affiche = "";
  // String dateCreation = "";
  EvenementCreationCtrl? ctrl;

  EvenementCreationPage({this.ctrl});

  @override
  void rendu() {
    print("Nouvel Evenement");

    titre = zoneSaisie("Titre: ");
    description = zoneSaisie("Description: ");
    auteur = zoneSaisie("Auteur: ");
    categorie = zoneSaisie("Categorie: ");
    typeEvent = zoneSaisie("Type: ");
    dateDebut = zoneSaisie("Date de debut: ");
    dateFin = zoneSaisie("Date de fin: ");
    heureDebut = zoneSaisie("Heure de debut: ");
    heureFin = zoneSaisie("Heure de fin: ");
    lieu = zoneSaisie("Lieu: ");
    affiche = zoneSaisie("Affiche: ");

    ctrl?.valider(titre, description, auteur, categorie, typeEvent, dateDebut,
        dateFin, heureDebut, heureFin, lieu, affiche);
    print('le titre saisi est $titre');
    print('la description saisie est $description');
    print('l\'auteur saisi est $auteur');
    print('la catégorie saisie est $categorie');
    print('le type saisi est $typeEvent');
    print('la date de debut saisie est $dateDebut');
    print('la date de fin saisie est $dateFin');
    print('l\'heure de debut saisie est $heureDebut');
    print('l\;heure de fin saisie est $heureFin');
    print('le lieu saisi est $lieu');
    print('l\'affiche choisie est $affiche');
  }
}

void main() {
  var page = EvenementCreationPage();
  page.rendu();
}
