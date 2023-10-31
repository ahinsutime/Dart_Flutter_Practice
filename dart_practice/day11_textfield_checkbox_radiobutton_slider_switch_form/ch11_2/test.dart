import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TEST"),
        ),
        body: TestScreen()
      )
    );
  }
}

class TestScreen extends StatefulWidget {
  @override
  TextState createState() => TextState();
}

class TextState extends State<TestScreen> {
  bool? isChecked = true;
  String? selectPlatform;
  double sliderValue = 5.0;
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("CHECKBOX TEST"),
        Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
          ],
        ),
        Text("RADIO TEST"),
        Row(
          children: [
            Radio(
              value: "android",
              groupValue: selectPlatform,
              onChanged: (String? value){
                setState((){
                  selectPlatform = value;
                });
              },
            ),
            Text("android")
          ],
        ),
        Row(
          children: [
            Radio(
              value: "ios",
              groupValue: selectPlatform,
              onChanged: (String? value){
                setState(() {
                  selectPlatform = value;
                });
              },
            ),
            Text("ios")
          ],
        ),
        Text("select platform is $selectPlatform"),
        Text("SLIDER TEST"),
        Slider(
          value: sliderValue,
          min: 0,
          max: 10,
          onChanged: (double value){
            setState(() {
              sliderValue = value;
            });
          },
        ),
        Text("Slider value is $sliderValue"),
        Text("SWITCH TEST"),
        Switch(
          value: switchValue,
          onChanged: (bool value){
            setState((){
              switchValue = value;
            });
          },
        ),
        Text("switch value is $switchValue")
      ],
    );
  }
}