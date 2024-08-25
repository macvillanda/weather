// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyImpl _$$DailyImplFromJson(Map<String, dynamic> json) => _$DailyImpl(
      time: (json['time'] as List<dynamic>?)?.map((e) => e as String).toList(),
      weatherCode: (json['weather_code'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      apparentTemperatureMax:
          (json['apparent_temperature_max'] as List<dynamic>?)
              ?.map((e) => e as num)
              .toList(),
    );

Map<String, dynamic> _$$DailyImplToJson(_$DailyImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'weather_code': instance.weatherCode,
      'apparent_temperature_max': instance.apparentTemperatureMax,
    };
