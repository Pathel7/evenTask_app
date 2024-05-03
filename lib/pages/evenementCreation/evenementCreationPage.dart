import 'package:flutter/material.dart';

class EvenementCreationPage extends StatelessWidget {
  const EvenementCreationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 18.0,),
            _titreText(),
            SizedBox(height: 18.0,),
            _formEvent(context),
          ],
        ),
      ),
    );
  }


  Widget _titreText() {
    return Text(
      "Créer votre évènement",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      ),
    );
  }

  Widget _formEvent(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurStyle: BlurStyle.inner,
              blurRadius: 2.0,
              offset: const Offset(0, 5),
            )
          ],
        ),
        padding: EdgeInsets.all(15.0),
        height: MediaQuery.of(context).size.width - 20,
       child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              _returnTitre(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _returnTitre(){
    return TextFormField(
        keyboardType: TextInputType.name,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          floatingLabelAlignment: FloatingLabelAlignment.center,
          floatingLabelStyle: TextStyle(color: Color(0xFFD60B52)),
          filled: true,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 13.0,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Color(0xFFD60B52).withOpacity(0.3)),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 2.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide.none,
          ),
          //labelText: "Nom d'utilisateur",
          hintText: "Nom d'utilisateur",
          prefixIcon: Icon(
            Icons.person_rounded,
            color: Colors.pink[300],
          ),
        ));
  }
}
