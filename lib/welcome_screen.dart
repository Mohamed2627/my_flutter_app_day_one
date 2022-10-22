import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const Padding(
        padding: const EdgeInsets.all(20),
        child: Text("ITI Aswan Branch"),
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Text("Front end and Cross platform "),
      ),
      Image.asset("Assets/Images/iti-logo.png"),
    ]);
  }
}
