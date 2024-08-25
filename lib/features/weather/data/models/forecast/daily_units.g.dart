// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_units.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyUnitsImpl _$$DailyUnitsImplFromJson(Map<String, dynamic> json) =>
    _$DailyUnitsImpl(
      time: json['time'] as String?,
      weatherCode: json['weather_code'] as String?,
      apparentTemperatureMax: json['apparent_temperature_max'] as String?,
    );

Map<String, dynamic> _$$DailyUnitsImplToJson(_$DailyUnitsImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'weather_code': instance.weatherCode,
      'apparent_temperature_max': instance.apparentTemperatureMax,
    };
