import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NativePluginWidget(),
    );
  }
}

class NativePluginWidget extends StatefulWidget {
  @override
  NativePluginWidgetState createState() => NativePluginWidgetState();
}

class NativePluginWidgetState extends State<NativePluginWidget> {
  XFile? _image;

  Future getGalleryImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  Future getCameraImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker Demo')
      ),
      body: Container(
        color: Colors.indigo,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: getGalleryImage,
                child: const Text("Gallery")
              ),
              Center(
                child: _image == null
                    ? const Text(
                  "No image selected",
                  style: TextStyle(color: Colors.white)
                      )
                    : CircleAvatar(
                  backgroundImage: FileImage(File(_image!.path)),
                  radius: 100,
                )
              ),
              ElevatedButton(
                  onPressed: () {
                    getCameraImage();
                  },
                  child: const Text("Camera"))

            ],
          )
        ),
      )
    );
  }
}