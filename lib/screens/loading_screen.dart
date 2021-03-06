import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app_project/screens/location_screen.dart';
import 'package:weather_app_project/services/weather.dart';





class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  WeatherModel weather = WeatherModel();

  @override
  void initState()  {
    super.initState();
    getLocationData();
  }

  Future<void> getLocationData() async {

    var weatherData = await weather.getWeatherData();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(locationWeather: weatherData);
    }));

  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SpinKitDoubleBounce(
        color: Colors.white,
        size: 100.0,
      ),
    );
  }
}
