import '../../framwork/page.dart';
import '../../utils/zoneSaisie.dart';
import 'utilisateurCreationCtrl.dart';

class UtilisateurCreationPage implements Page {
  String nom = " ";
  String motDepasse = " ";
  String email = "";
  UtilisateurCreationctrl? ctrl;

  UtilisateurCreationPage({this.ctrl});

  @override
  void rendu() {
    print("Nouveau nom");

    nom = zoneSaisie("Nom:KITERA ");

    print('nom saisie est $nom');

    motDepasse = zoneSaisie('motdepasse: 1234');
    email = zoneSaisie('email: nkr06@gmail.com');

    print(' motdepasse saisie est $motDepasse');
    print(' email est $email');
    ctrl?. valider( nom ,  motDepasse ,  email);
  }
}

void main() {
  var page = UtilisateurCreationPage();
  }