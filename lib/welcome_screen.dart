import 'package:flutter/material.dart';
import 'package:my_app/category_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/category");
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => CategoryScreen()));
              },
              icon: Icon(Icons.category))
        ],
      ),
      body: ListView(children: [
        const Padding(
          padding: const EdgeInsets.all(20),
          child: Text("ITI Aswan Branch"),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Text("Front end and Cross platform "),
        ),
        Image.asset("Assets/Images/iti-logo.png"),
      ]),
    );
  }
}
