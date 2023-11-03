import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class MyDataModel with ChangeNotifier {
  int data1 = 0;
  int data2 = 10;

  void changeData1() {
    data1++;
    notifyListeners();
  }

  void changeData2() {
    data2++;
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
          title: const Text("SELECTOR TEST"),
        ),
        body: MultiProvider(
          providers: [
            ChangeNotifierProvider<MyDataModel>.value(value: MyDataModel())
          ],
          child: HomeWidget(),
        )
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<MyDataModel>(
              builder: (context, model, child) {
                return Container(
                  color: Colors.green,
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      "Consumer, data1: ${model.data1}, data2: ${model.data2}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      )
                    )
                  )
                );
              }
            ),
            Selector<MyDataModel, int>(
              builder: (context, data, child) {
                return Container(
                  color: Colors.cyan,
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      "Selector, data:$data",
                      style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ))
                  )
                );
              },
              selector: (context, model) => model.data2,
            ),
            Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      var model1 = Provider.of<MyDataModel>(context, listen: false);
                      model1.changeData1();
                    },
                    child: const Text("Model data1 change")),
                ElevatedButton(
                    onPressed: () {
                      var model1 = Provider.of<MyDataModel>(context, listen: false);
                      model1.changeData2();
                    },
                    child: const Text("Model data2 change"))
              ],
            )
          ],
        )
      ));
  }
}