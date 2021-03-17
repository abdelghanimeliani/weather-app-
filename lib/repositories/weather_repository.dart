import 'dart:async';

import 'package:flutter_weather_app/models/weather.dart';
import 'package:flutter_weather_app/repositories/weather_api_client.dart';
import 'package:meta/meta.dart';

class WeatherRepository {
  final WeatherApiClient weatherApiClient;

  WeatherRepository({@required this.weatherApiClient})
      : assert(weatherApiClient != null);


  //kichghol bayna
  Future<Weather> getWeather(String city) async {
    final int locationId = await weatherApiClient.getLocationId(city);
    return weatherApiClient.fetchWeather(locationId);
  }
}