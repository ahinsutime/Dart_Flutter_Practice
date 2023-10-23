import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Test"),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyWidgetState();
  }
}

class _MyWidgetState extends State<MyWidget> {
  bool enabled = false;
  String stateText = "disable";

  void changeCheck() {
    setState( (){
      if (enabled) {
        stateText = "disable";
        enabled = false;
      } else {
        stateText = "enable";
        enabled = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            color: Colors.red,
            onPressed: changeCheck,
            icon: enabled
                ? Icon(Icons.check_box, size: 20)
                : Icon(Icons.check_box_outline_blank, size: 20)
          ),
          Container(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              "$stateText",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                  ),
              ),
            ),
        ],
      )
    );
  }
}