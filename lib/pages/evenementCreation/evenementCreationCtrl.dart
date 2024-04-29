class EvenementCreationCtrl {
  String? valider(
      String titre,
      String description,
      String auteur,
      String categorie,
      String typeEvent,
      String dateDebut,
      String dateFin,
      String heureDebut,
      String heureFin,
      String lieu,
      String affiche) {
    if (titre == "") {
      return "Ttire est obligatoire";
    }
    if (description == "") {
      return "Description obligatoire";
    }
    if (auteur == "") {
      return "Auteur obligatoire";
    }
    if (categorie == "") {
      return "Catégorie obligatoire";
    }
    if (typeEvent == "") {
      return "Type obligatoire";
    }
    if (dateDebut == "") {
      return "Date de debut obligatoire";
    }
    if (dateFin == "") {
      return "Date de fin obligatoire";
    }
    if (heureDebut == "") {
      return "Heure de debut obligatoire";
    }
    if (heureFin == "") {
      return "Heure de fin obligatoire";
    }
    if (lieu == "") {
      return "Lieu de obligatoire";
    }
    return null;
  }

  void envoyerFormulaire() {}
}

// void main() {
//   var ctrl = EvenementCreationCtrl();
//   var resultat = ctrl.valider("conference", "sfsafsd");
//   print("resultat de la validation: $resultat");
// }
