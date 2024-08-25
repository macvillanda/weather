// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_units.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentUnitsImpl _$$CurrentUnitsImplFromJson(Map<String, dynamic> json) =>
    _$CurrentUnitsImpl(
      time: json['time'] as String?,
      interval: json['interval'] as String?,
      temperature2m: json['temperature_2m'] as String?,
      weatherCode: json['weather_code'] as String?,
    );

Map<String, dynamic> _$$CurrentUnitsImplToJson(_$CurrentUnitsImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'interval': instance.interval,
      'temperature_2m': instance.temperature2m,
      'weather_code': instance.weatherCode,
    };
