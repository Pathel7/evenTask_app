import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          
          Center(child: Text("Bienvenue sur EvenTask")),
        ],
      ),
    ));
  }
}