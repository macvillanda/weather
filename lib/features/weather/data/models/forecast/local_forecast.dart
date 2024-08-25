import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/features/weather/data/models/forecast/forecast.dart';

part 'local_forecast.freezed.dart';
part 'local_forecast.g.dart';

@freezed
class LocalForecast with _$LocalForecast {
  factory LocalForecast({
    required String id,
    required String name,
    required String lastUsed,
    required Forecast forecast,
  }) = _LocalForecast;

  factory LocalForecast.fromJson(Map<String, dynamic> json) =>
      _$LocalForecastFromJson(json);
}
