import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/core/helpers/serializers.dart';
import 'package:weather/features/weather/data/models/forecast/forecast.dart';

part 'local_forecast.g.dart';

abstract class LocalForecast
    implements Built<LocalForecast, LocalForecastBuilder> {
  LocalForecast._();

  factory LocalForecast([Function(LocalForecastBuilder b) updates]) =
      _$LocalForecast;

  @BuiltValueField(wireName: 'id')
  String get id;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'lastUsed')
  String get lastUsed;
  @BuiltValueField(wireName: 'forecast')
  Forecast get forecast;
  String toJson() {
    return json
        .encode(serializers.serializeWith(LocalForecast.serializer, this));
  }

  static LocalForecast? fromJson(String jsonString) {
    return serializers.deserializeWith(
        LocalForecast.serializer, json.decode(jsonString));
  }

  static Serializer<LocalForecast> get serializer => _$localForecastSerializer;
}
