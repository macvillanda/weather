import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/core/helpers/serializers.dart';

part 'daily_units.g.dart';

abstract class DailyUnits implements Built<DailyUnits, DailyUnitsBuilder> {
  DailyUnits._();

  factory DailyUnits([Function(DailyUnitsBuilder b) updates]) = _$DailyUnits;

  @BuiltValueField(wireName: 'time')
  String get time;
  @BuiltValueField(wireName: 'weather_code')
  String get weatherCode;
  @BuiltValueField(wireName: 'apparent_temperature_max')
  String get apparentTemperatureMax;
  String toJson() {
    return json.encode(serializers.serializeWith(DailyUnits.serializer, this));
  }

  static DailyUnits? fromJson(String jsonString) {
    return serializers.deserializeWith(
        DailyUnits.serializer, json.decode(jsonString));
  }

  static Serializer<DailyUnits> get serializer => _$dailyUnitsSerializer;
}
