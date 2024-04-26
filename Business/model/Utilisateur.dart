class Utilisateur {
  int id;
  String nom;
  String motDePasse;
  String email;

  Utilisateur({
    required this.id,
    this.nom = "",
    this.motDePasse = "",
    this.email = "",
  });
}
