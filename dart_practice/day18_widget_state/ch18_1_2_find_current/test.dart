import 'package:flutter/material.dart';

void main() {
  runApp(ParentWidget());
}

class ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ParentWidgetState();
  }
}

class ParentWidgetState extends State<ParentWidget> {
  bool favorited = false;
  int favoriteCount = 10;
  GlobalKey<ChildWidgetState> childKey = GlobalKey();
  int childCount = 0;

  void toggleFavorite() {
    setState(() {
      if (favorited) {
        favoriteCount -= 1;
        favorited = false;
      } else {
        favoriteCount += 1;
        favorited = true;
      }
    });
  }

  void getChildData() {
    ChildWidgetState? childState = childKey.currentState;
    setState(() {
      childCount = childState?.childCount ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("State Test"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("I am Parent, child count: $childCount"),
                ElevatedButton(onPressed: getChildData, child: Text("Get Child Data"))
              ],
            ),
            ChildWidget(key: childKey),
            IconWidget(),
            ContentWidget()
          ],
        )
      )
    );
  }
}

class ChildWidget extends StatefulWidget {
  ChildWidget({Key? key}): super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ChildWidgetState();
  }
}

class ChildWidgetState extends State<ChildWidget> {
  int childCount = 0;

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("I am Child, $childCount"),
        ElevatedButton(
            onPressed: () {
              setState(() {
                childCount++;
              });
            }, child: const Text("Increment"))
      ],
    );
  }
}

class IconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ParentWidgetState? state = context.findAncestorStateOfType<ParentWidgetState>();
    return Center(
      child: IconButton(
        icon: ((state?.favorited ?? false)) ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
        color: Colors.red,
        iconSize: 200,
        onPressed: state?.toggleFavorite,
      )
    );
  }
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ParentWidgetState? state =
        context.findAncestorStateOfType<ParentWidgetState>();
    return Center(
      child: Text(
        "favoriteCount: ${state?.favoriteCount}",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )
    );
  }
}