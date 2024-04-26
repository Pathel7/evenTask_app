import '../../framwork/page.dart';
import '../../utils/zoneSaisie.dart';
import 'acceuilCtrl.dart';

class AccueilPage implements Page {
  var option;
  @override
  void rendu() {
    print("Menu principal");
    print("==============");
    print("1. créer utilisateur");
    print("2. créer des evenements");
    print("3. Créer participant");
    print("4. Liste des evenements");
    print("5. Liste des participants");

    option = zoneSaisie("choisissez votre option: ");
    valider(option).rendu();
  }
}
