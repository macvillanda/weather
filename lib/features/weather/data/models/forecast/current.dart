import 'package:freezed_annotation/freezed_annotation.dart';

part 'current.freezed.dart';
part 'current.g.dart';

@freezed
class Current with _$Current {
  factory Current({
    String? time,
    int? interval,
    @JsonKey(name: 'temperature_2m') double? temperature2m,
    @JsonKey(name: 'weather_code') int? weatherCode,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
}
