import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _usernameField(),
        ],
      ),
    );
  }

  Widget _logo() {
    return Container(
      padding: const EdgeInsets.only(top: 20.0),
      child: Image.asset(
        "assets/images/logo3.png",
      ),
    );
  }

  Widget _titreText() {
    return Text("Enregistrement");
  }

  Widget _usernameField() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: TextFormField(
          cursorColor: Color.fromARGB(255, 177, 65, 104),
          decoration: InputDecoration(
              floatingLabelAlignment: FloatingLabelAlignment.center,
              labelStyle: TextStyle(
                color: Colors.black,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.black),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 3.0),
              fillColor: Color(0xFFD60B52),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              labelText: " Nom d'utilisateur",
              prefixIcon: Icon(Icons.person_rounded),
              iconColor: Color.fromARGB(255, 194, 62, 108))),
    );
  }

  Widget _usernameField2() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: TextFormField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
              floatingLabelAlignment: FloatingLabelAlignment.center,
              filled: true,
              labelStyle: TextStyle(
                color: Colors.black,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 3.0),
              fillColor: Color.fromARGB(255, 248, 229, 236),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              labelText: " Nom d'utilisateur",
              prefixIcon: Icon(Icons.person_rounded),
              iconColor: Color.fromARGB(255, 194, 62, 108))),
    );
  }

  Widget _passwordField() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: TextFormField(
          obscureText: true,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 3.0),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              labelText: " Mot de passe",
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility_off))),
    );
  }

  Widget _validationBtn1(BuildContext context, String montext) {
    return Container(
      width: double.infinity,
      height: 45.0,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 20),
            backgroundColor: Color(0xFFD60B52),
            foregroundColor: Colors.white),
        onPressed: () {},
        child: Text(montext, style: TextStyle(fontSize: 20)),
      ),
    );
  }

  Widget _validationBtn2(BuildContext context, String montext) {
    return Container(
      width: double.infinity,
      height: 45.0,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            side: BorderSide(
              color: Color(0xFFD60B52),
              //width: 1.0
            ),
            padding: EdgeInsets.symmetric(horizontal: 20),
            foregroundColor: Color(0xFFD60B52)),
        onPressed: () {},
        child: Text(montext, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
