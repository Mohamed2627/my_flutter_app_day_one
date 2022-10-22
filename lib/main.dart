import 'package:flutter/material.dart';
import 'package:my_app/counter_screen.dart';
import 'package:my_app/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          drawer: const Drawer(
            child: SafeArea(
                child: Text(
              "الله",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 6, 25, 41)),
            )),
          ),
          appBar: AppBar(
            title: Text("بسم الله"),
          ),
          // body: WelcomeScreen(),
          body: CounterScreen(),
        ),
      ),
    );
  }
}
