import 'package:flutter/material.dart';

class TwoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text("SCREEN TWO")
            ),
            body: Container(
                color: Colors.green,
                child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "Screen Two",
                            style: TextStyle(color: Colors.white, fontSize: 30)
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/three");
                            },
                            child: Text("Go Three")
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Pop"))
                      ],
                    )
                )
            )
        )
    );
  }
}