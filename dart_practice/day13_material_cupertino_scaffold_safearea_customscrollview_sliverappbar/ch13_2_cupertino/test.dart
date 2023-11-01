import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget platformUI() {
    if (Platform.isIOS) {
      return CupertinoApp(
        debugShowCheckedModeBanner: false,
        theme: CupertinoThemeData(brightness: Brightness.light),
        home: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(middle: Text("Cupertino Title")),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CupertinoButton(
                  onPressed: () {},
                  child: const Text("Click"),
              ),
              const Center(
                child: Text("Hello, World")
              )
            ],
          )
        )
      );
    } else if (Platform.isAndroid) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Material Title"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: const Text("Click"),
              ),
              const Center(
                child: Text("Hello, World")
              )
            ],
          )
        )
      );
    } else {
      return const Text("Unknown Device",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return platformUI();
  }
}