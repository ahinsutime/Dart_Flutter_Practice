import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  onPressed() {
    print("Icon button clicked......");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TEST"),
        ),
        body: Column(children: [
          const Icon(Icons.alarm, size: 100, color: Colors.red),
          const FaIcon(
            FontAwesomeIcons.bell,
            size: 100,
          ),
          IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.alarm,
              size: 100
            ),
          )
        ],)
      )
    );
  }
}

