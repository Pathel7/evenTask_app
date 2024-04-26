import '../../framwork/page.dart';
import '../../utils/zoneSaisie.dart';
import 'participantCreationCtrl.dart';

class ParticipantCreationPage implements Page{
  String email = "";
  int evenementId = 0;
  bool present = false;
  bool? interesse = false;
  bool? invite = false;

  ParticipantCreationCtrl? ctrl;
  ParticipantCreationPage({this.ctrl});

  
  @override
  void rendu() {
    
    print("nouvelle période");

    email = zoneSaisie("Email: ");
    evenementId = 1;
    present = false;
    interesse = true;
    invite = true;

    ctrl?.valider(email, evenementId);
    
    print("nom saisie est $email");
    print("DateFin saisie est $evenementId");
    print("dateDebut saisie est $interesse");
    print("dateDebut saisie est $present");
    print("dateDebut saisie est $invite");

  }
  
}

void main(){
  var page = ParticipantCreationPage();
  page.rendu();
}