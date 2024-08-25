import 'dart:convert';

import 'package:weather/features/weather/data/models/forecast/forecast.dart';
import 'package:weather/features/weather/data/models/forecast/local_forecast.dart';

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

  static LocationForecast from(LocalForecast local) {
    return LocationForecast(
      forecast: local.forecast,
      id: local.id,
      name: local.name,
      lastUsed: DateTime.fromMillisecondsSinceEpoch(int.parse(local.lastUsed)),
    );
  }

  LocalForecast createLocal() {
    return (LocalForecastBuilder()
          ..id = id
          ..name = name
          ..lastUsed = "${lastUsed.millisecondsSinceEpoch}"
          ..forecast = forecast.toBuilder())
        .build();
  }
}
