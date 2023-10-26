import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  onPressed() {
    print("ICON BUTTON IS PRESSED......");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TEST"),
        ),
        body: Column(
          children: [
            GestureDetector(
                child: Image.asset("images/icon/user.png"),
                onTap: () {
                  print("IMAGE CLICKED......");
                },
                onVerticalDragStart: (DragStartDetails details) {
                  print(
                    "Vertical drag start...global position : "
                        "${details.globalPosition.dx}, "
                        "${details.globalPosition.dy}"
                  );
                  print(
                    "Vertical drag start...local position : "
                        "${details.localPosition.dx}, "
                        "${details.localPosition.dy} "
                  );
                },
            ),
            ElevatedButton(
                onPressed: () {
                  print("ElevatedButton click...");
                },
                style: ButtonStyle(
                  backgroundColor:
                    MaterialStateProperty.all(Colors.red)
                ),
                child: const Text("Click Me")
            )
          ],
        )
      )
    );
  }

}