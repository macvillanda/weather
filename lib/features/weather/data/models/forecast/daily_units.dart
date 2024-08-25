import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_units.freezed.dart';
part 'daily_units.g.dart';

@freezed
class DailyUnits with _$DailyUnits {
  factory DailyUnits({
    String? time,
    @JsonKey(name: 'weather_code') String? weatherCode,
    @JsonKey(name: 'apparent_temperature_max') String? apparentTemperatureMax,
  }) = _DailyUnits;

  factory DailyUnits.fromJson(Map<String, dynamic> json) =>
      _$DailyUnitsFromJson(json);
}
