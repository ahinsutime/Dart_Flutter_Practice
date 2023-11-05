import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: NativePluginWidget()
    );
  }
}

class NativePluginWidget extends StatefulWidget {
  @override
  NativePluginWidgetState createState() {
    return NativePluginWidgetState();
  }
}

class NativePluginWidgetState extends State<NativePluginWidget> {
  String? latitude;
  String? longitude;

  getGeoData() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error("Permissions are denied");
      }
    }

    Position position = await Geolocator.getCurrentPosition();
    setState(() {
      latitude = position.latitude.toString();
      longitude = position.longitude.toString();
    });
  }

  @override
  void initState() {
    super.initState();
    getGeoData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Geolocator")),
      body: Container(
        color: Colors.indigo,
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "MyLocation",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20
              )
            ),
            Text(
                "Latitude: $latitude",
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                )
            ),
            Text(
                "Longitude: $longitude",
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                )
            ),
          ],
        )
      )
    ));
  }
}


