import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ConnexionPage extends StatelessWidget {
  const ConnexionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _imageUtilisateur(),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Column(
              children: [
                _titreText(),
                SizedBox(
                  height: 20.0,
                ),
                _emailField(),
                _passwordField(),
                SizedBox(
                  height: 20,
                ),
                _connecterText(),
                SizedBox(
                  height: 20.0,
                ),
                _connecterBtn(context),
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _imageUtilisateur() {
    return Container(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: Image.asset(
        "assets/images/usertask.png",
      ),
    );
  }

  Widget _titreText() {
    return Text(
      "Connectez-vous",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      ),
    );
  }

  Widget _connecterBtn(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 35.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20),
              backgroundColor: Color(0xFFD60B52),
              foregroundColor: Colors.white),
          onPressed: () {},
          child: Text("Se connecter"),
        ),
      ),
    );
  }

  Widget _connecterText() {
    return Column(
      children: [
        Text(
          "Vous n'avez de compte?",
          style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
        ),
        Text(
          "Créer un compte ?",
          style: TextStyle(
            color: Color(0xFFD60B52),
            fontWeight: FontWeight.bold,
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }

  Widget _emailField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          cursorColor: Colors.black,
          decoration: InputDecoration(
            floatingLabelAlignment: FloatingLabelAlignment.center,
            floatingLabelStyle: TextStyle(color: Color(0xFFD60B52)),
            filled: true,
            labelStyle: TextStyle(
              color: Colors.black,
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
            labelText: "Email",
            prefixIcon: Icon(
              Icons.email_rounded,
              color: Colors.pink[300],
              size: 16.0,
            ),
          )),
    );
  }

  Widget _passwordField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          cursorColor: Colors.black,
          decoration: InputDecoration(
              floatingLabelAlignment: FloatingLabelAlignment.center,
              floatingLabelStyle: TextStyle(color: Color(0xFFD60B52)),
              filled: true,
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 13.0,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide:
                    BorderSide(color: Color(0xFFD60B52).withOpacity(0.3)),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 2.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide.none,
              ),
              labelText: " Mot de passe",
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.pink[300],
                size: 17.0,
              ),
              suffixIcon: Icon(
                Icons.visibility_off,
                size: 17.0,
              ))),
    );
  }
}
