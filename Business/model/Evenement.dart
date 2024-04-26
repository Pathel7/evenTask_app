class Evenement {
  int id;
  String titre;
  String description;
  String auteur;
  String categorie;
  String typeEvent;
  String lieu;
  String dateDebut;
  String dateFin;
  String heureDebut;
  String heureFin;
  String statut;
  String affiche;
  String dateCreation;

  Evenement({
    required this.id,
    this.titre = "",
    this.description = "",
    this.auteur = "",
    this.categorie = "",
    this.typeEvent = "",
    this.lieu = "",
    this.dateDebut = "",
    this.dateFin = "",
    this.heureDebut = "",
    this.heureFin = "",
    this.statut = "",
    this.affiche = "",
    this.dateCreation = ""
  });
}
