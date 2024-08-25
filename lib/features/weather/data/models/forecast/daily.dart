import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/core/helpers/serializers.dart';

part 'daily.g.dart';

abstract class Daily implements Built<Daily, DailyBuilder> {
  Daily._();

  factory Daily([Function(DailyBuilder b) updates]) = _$Daily;

  @BuiltValueField(wireName: 'time')
  BuiltList<String> get time;
  @BuiltValueField(wireName: 'weather_code')
  BuiltList<double> get weatherCode;
  @BuiltValueField(wireName: 'apparent_temperature_max')
  BuiltList<double> get apparentTemperatureMax;
  String toJson() {
    return json.encode(serializers.serializeWith(Daily.serializer, this));
  }

  static Daily? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Daily.serializer, json.decode(jsonString));
  }

  static Serializer<Daily> get serializer => _$dailySerializer;
}
