import 'package:event_manager_app/pages/acceuil/acceuilPage.dart';
import 'package:event_manager_app/pages/connexion/connexionPage.dart';
import 'package:event_manager_app/pages/evenementCreation/evenementCreationPage.dart';
import 'package:event_manager_app/pages/intro/introPage.dart';
import 'package:event_manager_app/pages/utilisateurCreation/utilisateurCreationPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EvenementCreationPage(),
    );
  }
}
