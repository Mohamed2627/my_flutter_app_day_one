import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() {
    return CounterScreenState();
  }
}

class CounterScreenState extends State<CounterScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                    print("INcrement ${count}");
                  },
                  icon: Icon(Icons.add)),
              IconButton(
                  onPressed: () {
                    setState(() {
                      count--;
                    });
                    print("Decrement ${count}");
                  },
                  icon: Icon(Icons.remove)),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Text(
              count.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Go back"))
        ],
      ),
    );
  }
}
