import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_units.freezed.dart';
part 'current_units.g.dart';

@freezed
class CurrentUnits with _$CurrentUnits {
  factory CurrentUnits({
    String? time,
    String? interval,
    @JsonKey(name: 'temperature_2m') String? temperature2m,
    @JsonKey(name: 'weather_code') String? weatherCode,
  }) = _CurrentUnits;

  factory CurrentUnits.fromJson(Map<String, dynamic> json) =>
      _$CurrentUnitsFromJson(json);
}
