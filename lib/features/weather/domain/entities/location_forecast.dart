import 'package:weather/features/weather/data/models/forecast/forecast.dart';

class LocationForecast {
  final String name;
  final String id;
  final DateTime lastUsed;
  final Forecast forecast;

  LocationForecast({
    required this.id,
    required this.name,
    required this.lastUsed,
    required this.forecast,
  });
}
