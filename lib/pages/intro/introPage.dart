import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(30.0)),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade200, offset: Offset(0, 8))
                  ]),
              height: 130.0,
              width: 200.0,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Image.asset(
                  "assets/images/logo1.png",
                ),
              ),
            ),
            
          ],
        ),
      ),
    ));
  }
}
