import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounterController extends GetxController {
  int count = 0;

  @override
  onInit() {
    super.onInit();
  }

  @override
  onClose() {
    super.onClose();
  }

  void increment() {
    count++;
    update();
  }

  void decrement() {
    count--;
    update();
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GetX TEST")
        ),
        body: GetBuilder(
          init: CounterController(),
          builder: (_) {
            return MyWidget();
          }
        )
      )
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(
      builder: (controller) {
        return Container(
          color: Colors.deepOrange,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "GetX: ${controller.count}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  )
                ),
                ElevatedButton(
                    onPressed: () {
                      controller.increment();
                    },
                    child: const Text("Increment")
                ),
                ElevatedButton(
                    onPressed: () {
                      controller.decrement();
                    },
                    child: const Text("Decrement")
                )
              ],
            )
          )
        );
      }
    );
  }
}