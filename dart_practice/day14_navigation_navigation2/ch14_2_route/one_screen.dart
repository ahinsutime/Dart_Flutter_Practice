import 'package:flutter/material.dart';
import 'user.dart';

class OneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text("SCREEN ONE")
            ),
            body: Container(
                color: Colors.red,
                child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "Screen One",
                            style: TextStyle(color: Colors.white, fontSize: 30)
                        ),
                        ElevatedButton(
                            onPressed: () async {
                              final result = await Navigator.pushNamed(context, "/two",
                              arguments: {
                                "arg1": 10,
                                "arg2": "hello",
                                "arg3": User("kkang", "seoul")
                              });

                              print("result: ${(result as User).name}");
                            },
                            child: Text("Go Two")
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.maybePop(context);
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