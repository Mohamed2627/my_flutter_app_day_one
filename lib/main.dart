import 'package:flutter/material.dart';
import 'package:my_app/category_screen.dart';
import 'package:my_app/counter_screen.dart';
import 'package:my_app/main_screen.dart';
import 'package:my_app/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => MainScreen(),
        "/welcome": (context) => WelcomeScreen(),
        "/counter": (context) => CounterScreen(),
        "/category": (context) => CategoryScreen(),
      },
      theme: ThemeData(
          fontFamily: "",
          // textTheme: TextTheme(bodyText1: TextStyle(color: Colors.purple)),
          primarySwatch: Colors.purple,
          canvasColor: Colors.purple[50]),
    );
  }
}
