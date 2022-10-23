import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/welcome_screen.dart';

import 'counter_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: const Drawer(
        child: SafeArea(
            child: Text(
          "الله",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 6, 25, 41)),
        )),
      ),
      appBar: AppBar(
        title: Text("بسم الله"),
      ),
      // body: WelcomeScreen(),
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/counter");
              // Navigator.of(context).push(
              //     CupertinoPageRoute(builder: (context) => CounterScreen()));
            },
            child: Text("go to Counter")),
        // TextButton(onPressed: () {}, child: Text("go to Welcome")),
        OutlinedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/welcome");

              // Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context) => WelcomeScreen()));
            },
            child: Text("go to Welcome")),
        // IconButton(onPressed: () {}, icon: Icon(Icons.home)),
      ]),
    ));
  }
}
