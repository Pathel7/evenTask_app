import '../model/Evenement.dart';
import '../model/Participant.dart';
import '../model/Utilisateur.dart';

abstract class EvenementService {
  // utilisateur
  Future<bool> creerUtilisateur(Utilisateur data);
  Future<List<Utilisateur>> recupererListeUtilisateur();
  Future<Utilisateur> recupererUtilisateurByID(int id);
  Future<bool> metteAjourUtilisateur(
    int id,
    String motDePasse,
  );
  Future<bool> desactiverUtilisateur(int id);

  // evenement
  Future<bool> creerEvenement(Evenement data);
  Future<List<Evenement>> recupererListeEvenement();
  Future<Evenement> recupererEvenementParId(int id);
  Future<bool> mettreAjourEvenement(int id, String lieu, String dateDebut,
      String dateFin, String heureDebut, String heureFin);
  Future<bool> desactiverEvenement(int id);
  Future<bool> cloturerEvenement(int id);

  // Participant
  Future<bool> creerParticipant(Participant data);
  Future<List<Participant>> recupererlisteParticipant();
  Future<bool> mettreAjourParticipant(int id, bool presence, bool interesse);
  Future<bool> desactiverParticipant(int id);
}
