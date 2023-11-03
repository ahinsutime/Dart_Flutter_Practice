import 'package:flutter/material.dart';
import 'package:flutter_lab/ch19_1_provider/test.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier {
  int _count = 0;
  int get count => _count;
  void increment() {
    _count++;
    notifyListeners();
  }
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TEST"),
        ),
        body: ChangeNotifierProvider<Counter>.value(
          value: Counter(),
          child: SubWidget(),
        )
      )
    );
  }
}

class SubWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context);
    return Container(
      color: Colors.orange,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Provider count: ${counter.count}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )
            ),
            ElevatedButton(
                onPressed: () {
                  counter.increment();
                },
                child: const Text("Increment"))
          ],
        )
      )
    );
  }
}