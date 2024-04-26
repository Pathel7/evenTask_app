class Participant {
  int utilisateurId;
  int evenementId;
  bool presence;
  bool? interesse;
  bool invite;
  bool confirmer;

  Participant({
    required this.utilisateurId ,
    required this.evenementId,
    this.presence = false,
    this.interesse = false,
    this.invite = false,
    this.confirmer = false
  });
}
