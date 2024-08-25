import 'package:freezed_annotation/freezed_annotation.dart';

import 'current.dart';
import 'current_units.dart';
import 'daily.dart';
import 'daily_units.dart';

part 'forecast.freezed.dart';
part 'forecast.g.dart';

@freezed
class Forecast with _$Forecast {
  factory Forecast({
    double? latitude,
    double? longitude,
    @JsonKey(name: 'generationtime_ms') double? generationtimeMs,
    @JsonKey(name: 'utc_offset_seconds') int? utcOffsetSeconds,
    String? timezone,
    @JsonKey(name: 'timezone_abbreviation') String? timezoneAbbreviation,
    int? elevation,
    @JsonKey(name: 'current_units') CurrentUnits? currentUnits,
    Current? current,
    @JsonKey(name: 'daily_units') DailyUnits? dailyUnits,
    Daily? daily,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}
