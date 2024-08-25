// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalForecastImpl _$$LocalForecastImplFromJson(Map<String, dynamic> json) =>
    _$LocalForecastImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      lastUsed: json['lastUsed'] as String,
      forecast: Forecast.fromJson(json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocalForecastImplToJson(_$LocalForecastImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lastUsed': instance.lastUsed,
      'forecast': instance.forecast,
    };
