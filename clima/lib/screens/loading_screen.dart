import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getLocation();
    getData(35, 139);
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
  }

  void getData(double lat, double lon) async {
    const appid = 'b6907d289e10d714a6e88b30761fae22';
    http.Response response = await http.get(
        'https://samples.openweathermap.org/data/2.5/weather?appid=$appid&lat=$lat&lon=$lon',
    );
    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}