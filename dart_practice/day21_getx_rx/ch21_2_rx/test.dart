import 'package:flutter/material.dart';
import 'package:get/get.dart';

class User {
  String name = "";
  int age = 0;
}

class CounterController extends GetxController {
  var count = 0.obs;
  var isChecked = Rx<bool>(false);
  var title = RxString("");
  var user = Rx<User>(User());

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    ever(
      count,
        (value) => print("ever: $value"),
    );

    once(
      count,
        (value) => print("once: $value"),
    );

    debounce(
      count,
        (value) => print("debounce: $value"),
      time: Duration(seconds: 1),
    );

    interval(
      count,
        (value) => print("interval: $value"),
      time: Duration(seconds: 1),
    );
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(CounterController());
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GetX Rx Test")
        ),
        body: MyWidget(),
      )
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetX<CounterController>(
      builder: (controller) => Container(
        color: Colors.deepOrange,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "GetX: ${controller.count}, ${controller.isChecked}, ${controller.title}",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
              ),
            Text(
                "GetX: ${controller.user.value.name}, ${controller.user.value.age}",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
              ),
              ElevatedButton(
                  onPressed: () {
                    controller.count.value++;
                    if (controller.title.value == "hello") {
                      controller.title.value = "world";
                    } else {
                      controller.title.value = "hello";
                    }
                    controller.isChecked.value = !controller.isChecked.value;

                    if (controller.user.value.name == "kkang") {
                      controller.user.value.name = "kim";
                    } else {
                      controller.user.value.name = "kkang";
                    }
                  }
                  , child: const Text("Change"))
            ],
          )
        )
      ),
    );
  }
}