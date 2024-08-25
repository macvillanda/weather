import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily.freezed.dart';
part 'daily.g.dart';

@freezed
class Daily with _$Daily {
  factory Daily({
    List<String>? time,
    @JsonKey(name: 'weather_code') List<int>? weatherCode,
    @JsonKey(name: 'apparent_temperature_max')
    List<num>? apparentTemperatureMax,
  }) = _Daily;

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);
}
