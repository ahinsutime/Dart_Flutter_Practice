import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool enabled = false;
  String stateText = "disable";

  void changeCheck() {
    if (enabled) {
      stateText = "disable";
      enabled = false;

    } else {
      stateText = "enable";
      enabled = true;
    }
    print('enable: $enabled, $stateText');
  }

  @override build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
        appBar: AppBar(
          title: const Text("Stateless Test"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                color: Colors.red,
                onPressed: changeCheck,
                icon: enabled ?
                  Icon(Icons.check_box, size: 20) :
                  Icon(Icons.check_box_outline_blank, size: 20),
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: Text(stateText, style: const TextStyle(fontSize: 30,
                fontWeight: FontWeight.bold)),
              )
            ]
          )
        )
      )
    );
  }
}