import 'package:flutter/material.dart';

class AccueilPage extends StatelessWidget {
  const AccueilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _enTete(),
          SizedBox(
            height: 15.0,
          ),
          _search(),
        ],
      ),
    ));
  }

  Widget _returnText({required String monText}) {
    return Text(
      monText,
      strutStyle: StrutStyle(
          fontStyle: FontStyle.italic,
          fontSize: 18,
          fontWeight: FontWeight.bold),
    );
  }

  Widget _enTete() {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        children: [
          Row(
            textDirection: TextDirection.ltr,
            children: [
              Text(
                "Pret pour gerer vos évènements",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 38.0,
              ),
              CircleAvatar(
                radius: 17.0,
                backgroundImage: AssetImage(
                  "assets/images/wom.jpg",
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _search() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: SizedBox(
            width: 260.0,
            height: 34.0,
            child: TextFormField(
                keyboardType: TextInputType.name,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  //floatingLabelAlignment: FloatingLabelAlignment.center,
                  floatingLabelStyle: TextStyle(color: Color(0xFFD60B52)),
                  filled: true,
                  labelStyle: TextStyle(
                      color: Color.fromARGB(255, 26, 23, 23),
                      fontSize: 13.0,
                      fontStyle: FontStyle.italic),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide:
                        BorderSide(color: Colors.black.withOpacity(0.3)),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 2.0, horizontal: 3.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide: BorderSide.none,
                  ),
                  //labelText: "recherche",
                  hintText: "recherche",
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 26, 23, 23),
                      fontSize: 13.0,
                      fontStyle: FontStyle.italic),
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    color: Color.fromARGB(255, 129, 88, 102),
                  ),
                )),
          ),
        ),
        Icon(Icons.add_circle_rounded),
      ],
    );
  }

  Widget _searchBar() {
    return Column(
      children: [
        Row(
          textDirection: TextDirection.ltr,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  keyboardType: TextInputType.name,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    floatingLabelStyle: TextStyle(color: Color(0xFFD60B52)),
                    filled: true,
                    labelStyle: TextStyle(
                        color: Color.fromARGB(255, 26, 23, 23),
                        fontSize: 13.0,
                        fontStyle: FontStyle.italic),
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
                    labelText: "recherche",
                    prefixIcon: Icon(
                      Icons.search_off_rounded,
                      color: Color.fromARGB(255, 129, 88, 102),
                    ),
                  )),
            ),
            SizedBox(
              width: 38.0,
            ),
            /*  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.plus_one_rounded),
            ) */
          ],
        ),
      ],
    );
  }
}
