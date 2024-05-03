import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _logo(),
            _sloganText(),
            SizedBox(
              height: 40.0,
            ),
            _dotPoint(),
            SizedBox(
              height: 40.0,
            ),
            _seConnecterBtn(context, "Se connecter"),
            SizedBox(
              height: 15.0,
            ),
            _crerCompteBtn(context, "Créer un compte")
          ],
        ),
      ),
    );
  }

  Widget _logo() {
    return Container(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Image.asset(
        "assets/images/logo3.png",
      ),
    );
  }

  Widget _sloganText() {
    return Column(
      children: [
        Text("Gerer éfficacements tous vos évènements"),
        Text.rich(TextSpan(text: "avec", children: [
          TextSpan(
              text: " evenTask", style: TextStyle(color: Color(0xFFD60B52)))
        ])),
      ],
    );
  }

  Widget _dotPoint() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.0),
                color: Color(0xFFD60B52),
              ),
              width: 5.0,
              height: 5.0,
            )),
        Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.0),
                color: Color.fromARGB(255, 241, 82, 138),
              ),
              width: 5.0,
              height: 5.0,
            )),
        Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.0),
                color: Color.fromARGB(255, 247, 186, 207),
              ),
              width: 5.0,
              height: 5.0,
            )),
      ],
    );
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

  Widget _seConnecterBtn(BuildContext context, String montext) {
    return Container(
      width: double.infinity,
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

  Widget _crerCompteBtn(BuildContext context, String montext) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            side: BorderSide(
              color: Color(0xFFD60B52),
              width: 2.0
            ),
            padding: EdgeInsets.symmetric(horizontal: 20),
            foregroundColor: Color(0xFFD60B52)),
        onPressed: () {},
        child: Text(montext, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
