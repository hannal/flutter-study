import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:flutter/material.dart';

import 'package:geolocator/geolocator.dart';
import 'package:clima/services/networking.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;
    const appid = 'b6907d289e10d714a6e88b30761fae22';
    NetworkHelper networkHelper = NetworkHelper(
      'https://samples.openweathermap.org/data/2.5/weather?appid=$appid&lat=$latitude&lon=$longitude'
    );
    final weatherData = await networkHelper.getData();
    final double temperature = weatherData['main']['temp'];
    final int condition = weatherData['weather'][0]['id'];
    final String cityName = weatherData['name'];
    print(weatherData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}