import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  List<Widget> getWidgets() {
    List<Widget> widgets = [];
    for (var i=0; i<100; i++) {
      widgets.add(ListTile(
        title: Text("Hello World Item $i")
      ));
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: IconButton(
                icon: Icon(Icons.expand),
                onPressed: () {},
              ),
              expandedHeight: 200,
              floating: true,
              pinned: false,
              snap: true,
              elevation: 50,
              backgroundColor: Colors.pink,
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/big.jpeg"),
                    fit: BoxFit.fill),
                  ),
                ),
              title: Text("Appbar Title"),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.add_alert),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.phone),
                  onPressed: () {},
                ),
              ]
            ),
            SliverFixedExtentList(
                itemExtent: 50.0,
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return ListTile(
                        title: Text("Hello World Item $index"),
                      );
                    }
                ),
            )
          ],
        )
      )
    );
  }
}