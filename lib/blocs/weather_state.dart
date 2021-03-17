import 'package:flutter_weather_app/models/weather.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';


// first class
abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}


// first class
class WeatherInitial extends WeatherState {}

//2end
class WeatherLoadInProgress extends WeatherState {}


//3rd and the most important
class WeatherLoadSuccess extends WeatherState {
  final Weather weather;

  const WeatherLoadSuccess({@required this.weather}) : assert(weather != null);

  @override
  List<Object> get props => [weather];
}


//4th
class WeatherLoadFailure extends WeatherState {}