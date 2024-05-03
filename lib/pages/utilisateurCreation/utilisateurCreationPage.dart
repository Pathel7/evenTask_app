import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class UtilisateurCreationPage extends StatelessWidget {
  const UtilisateurCreationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            _imageUtilisateur(),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    _titreText(),
                    SizedBox(
                      height: 20.0,
                    ),
                    _usernameField(),
                    _emailField(),
                    _passwordField(),
                    _confirmpasswordField(),
                    SizedBox(
                      height: 35.0,
                    ),
                    _validerBtn(context),

                    _connecterText(),
                    SizedBox(
                      height: 15.0,
                    ),
                    _connecterBtn(context),
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
      "Créer votre compte",
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
        margin: EdgeInsets.symmetric(horizontal: 30.0),
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
              side: BorderSide(
                color: Color(0xFFD60B52),
                //width: 1.0
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),
              foregroundColor: Color(0xFFD60B52),
            backgroundColor: Colors.white,
          ),
          onPressed: () {},
          icon: Icon(
            Ionicons.logo_google,
            size: 16.0,
          ),
          label: Text("Connexion avec Google"),
        ),
      ),
    );
  }


  Widget _validerBtn(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 30.0),
        child: ElevatedButton(
          child: Text("Valider"),
          style: ElevatedButton.styleFrom(
              //padding: EdgeInsets.symmetric(horizontal: 20),
              backgroundColor: Color(0xFFD60B52),
              foregroundColor: Colors.white),
          onPressed: () {},
          
        ),
      ),
    );
  }



  Widget _connecterText() {
    return Text(
      "Ou",
      style: TextStyle(
        color: Color(0xFFD60B52),
        fontWeight: FontWeight.bold,
        fontSize: 11.0,
      ),
    );
  }

  Widget _usernameField1() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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

  Widget _usernameField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
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
          )),
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
            //labelText: "Email",
            hintText: "Email",
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
              hintStyle: TextStyle(
                color: Colors.grey,
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
              //labelText: " Mot de passe",
              hintText: " Mot de passe",
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

  Widget _confirmpasswordField() {
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
              hintStyle: TextStyle(
                color: Colors.grey,
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
              //labelText: "Confirmer Mot de passe",
              hintText: "Confirmer Mot de passe",
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
