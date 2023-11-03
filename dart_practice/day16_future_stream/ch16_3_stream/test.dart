import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int calFun(int x) {
    return x * x;
  }

  Stream<int> test() {
    Duration duration = Duration(seconds: 3);
    Stream<int> stream = Stream<int>.periodic(duration, calFun);
    return stream.take(5);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TEST"),
        ),
        body: Center(
          child: StreamBuilder(
            stream: test(),
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return const Center(
                  child: Text(
                    "Completed",
                    style: TextStyle(
                      fontSize: 30.0,
                    )
                  )
                );
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: CircularProgressIndicator(),
                      ),
                      Text(
                        "Waiting...",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  )
                );
              } else {
                return Center(
                  child: Text(
                    "data: ${snapshot.data}",
                    style: const TextStyle(
                      fontSize: 30.0,
                    )
                  )
                );
              }
            }
          )
        )
      )
    );
  }
}