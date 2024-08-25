// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentImpl _$$CurrentImplFromJson(Map<String, dynamic> json) =>
    _$CurrentImpl(
      time: json['time'] as String?,
      interval: (json['interval'] as num?)?.toInt(),
      temperature2m: (json['temperature_2m'] as num?)?.toDouble(),
      weatherCode: (json['weather_code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CurrentImplToJson(_$CurrentImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'interval': instance.interval,
      'temperature_2m': instance.temperature2m,
      'weather_code': instance.weatherCode,
    };
