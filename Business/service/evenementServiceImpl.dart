import '../model/Evenement.dart';
import '../model/Participant.dart';
import '../model/Utilisateur.dart';
import 'evenementService.dart';

class TestEvenementServiceImpl implements EvenementService {
  List<Evenement> listeEvenements = [];
  List<Utilisateur> listeUtilisateurs = [];
  List<Participant> listeParticipants = [];

  @override
  Future<bool> cloturerEvenement(int id) {
    // TODO: implement cloturerEvenement
    throw UnimplementedError();
  }

  @override
  Future<bool> creerEvenement(Evenement data) {
    // TODO: implement creerEvenement
    listeEvenements.add(data);
    return Future.value(true);
  }

  @override
  Future<bool> creerParticipant(Participant data) {
    // TODO: implement creerParticipant
    listeParticipants.add(data);
    return Future.value(true);
  }

  @override
  Future<bool> creerUtilisateur(Utilisateur data) {
    // TODO: implement creerUtilisateur
    listeUtilisateurs.add(data);
    return Future.value(true);
  }

  @override
  Future<bool> desactiverEvenement(int id) {
    // TODO: implement desactiverEvenement
    throw UnimplementedError();
  }

  @override
  Future<bool> desactiverParticipant(int id) {
    // TODO: implement desactiverParticipant
    throw UnimplementedError();
  }

  @override
  Future<bool> desactiverUtilisateur(int idUtilisateur) {
    // TODO: implement desactiverUtilisateur
    throw UnimplementedError();
  }

  @override
  Future<bool> metteAjourUtilisateur(int idUtilisateur, String motDePasse) {
    // TODO: implement metteAjourUtilisateur
    throw UnimplementedError();
  }

  @override
  Future<bool> mettreAjourEvenement(int id, String lieu, String dateDebut,
      String dateFin, String heureDebut, String heureFin) {
    // TODO: implement mettreAjourEvenement
    throw UnimplementedError();
  }

  @override
  Future<bool> mettreAjourParticipant(int id, bool presence, bool interesse) {
    // TODO: implement mettreAjourParticipant
    throw UnimplementedError();
  }

  @override
  Future<Evenement> recupererEvenementParId(int id) {
    // TODO: implement recupererEvenementParId
    throw UnimplementedError();
  }

  @override
  Future<List<Evenement>> recupererListeEvenement() {
    // TODO: implement recupererListeEvenement
    return Future.value(listeEvenements);
  }

  @override
  Future<List<Utilisateur>> recupererListeUtilisateur() {
    // TODO: implement recupererListeUtilisateur
    return Future.value(listeUtilisateurs);
  }

  @override
  Future<Utilisateur> recupererUtilisateurByID(int id) {
    // TODO: implement recupererUtilisateurByID
    throw UnimplementedError();
  }

  @override
  Future<List<Participant>> recupererlisteParticipant() {
    // TODO: implement recupererlisteParticipant
    return Future.value(listeParticipants);
  }
}

void main() async {
  print(
      "___________________________Implementation_______________________________");
  print("");
  var service = TestEvenementServiceImpl();

  var nouveauParticipant = Participant(
      id: 1,
      nom: "Mario Bros",
      email: "mariobros15@gmail.com",
      present: false,
      interesse: true);

  var resultatParticipant = await service.creerParticipant(nouveauParticipant);
  print("resultat création nouveau participant: $resultatParticipant");

  var listeParticipants = await service.recupererlisteParticipant();

  listeParticipants.forEach((participant) {
    print("");
    print("Participant: ${participant.nom}" + "${participant.email}");
  });

  // evenement data
  var nouvelleEvenement = Evenement(
      id: 1,
      titre: "Conference",
      description:
          "L'apport de la nouvelle technologie dans la gestion de projet",
      auteur: "Junior Walker",
      categorie: "En presenciel",
      typeEvent: "Public",
      lieu: "Kinshasa, République Démocratique du Congo",
      dateDebut: "2024-04-20",
      dateFin: "2024-04-20",
      heureDebut: "14:00",
      heureFin: "17:00",
      statut: "En attente",
      affiche: "adc.png",
      dateCreation: "2024-04-16");

  // Utilisateur
  var nouveauUtilisateur = Utilisateur(
      id: 1,
      nom: "WASUTA",
      motDePasse: "1234",
      email: "rchNd06@gmail.com",
      numeroTel: "+243847272824");

  var nouveauUtilisateur2 = Utilisateur(
      id: 2,
      nom: "Esther",
      motDePasse: "1234",
      email: "Esth1@gmail.com",
      numeroTel: "+24382767227");

  var resultatUtilisateur = await service.creerUtilisateur(nouveauUtilisateur);
  print("");
  print("resultat creation nouveau Utilisateur : $resultatUtilisateur");

  var resultatUtilisateur2 =
      await service.creerUtilisateur(nouveauUtilisateur2);
  print("");
  print("resultat creation nouveau Utilisateur2 : $resultatUtilisateur2");

  var listeUtilisateur = await service.recupererListeUtilisateur();
  listeUtilisateur.forEach((utilisateur) {
    print("");
    print("Utilisateur : ${utilisateur.nom}");
  });

  // resultat de la creation des evenements
  var resultatEvenement = await service.creerEvenement(nouvelleEvenement);
  print("");
  print("Resultat de la création du nouvel evenement: $resultatEvenement");

  // affichage des evenements
  var listeEvenement = await service.recupererListeEvenement();
  listeEvenement.forEach((evenement) {
    print("");
    print("Evenement detail");
    print("");
    print("""
    Titre: ${evenement.titre} \n
    Description: ${evenement.description} \n
    Auteur: ${evenement.auteur} \n
    Categorie: ${evenement.categorie} \n
    Type: ${evenement.typeEvent} \n
    Lieu: ${evenement.lieu} \n
    Du: ${evenement.dateDebut} \n
    Au: ${evenement.dateFin} \n
    Heure: de ${evenement.heureDebut} à ${evenement.heureFin} \n
    Statut de l'evenement: ${evenement.statut}
    """);
  });
}
