import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/core/helpers/serializers.dart';

part 'current_units.g.dart';

abstract class CurrentUnits
    implements Built<CurrentUnits, CurrentUnitsBuilder> {
  CurrentUnits._();

  factory CurrentUnits([Function(CurrentUnitsBuilder b) updates]) =
      _$CurrentUnits;

  @BuiltValueField(wireName: 'time')
  String get time;
  @BuiltValueField(wireName: 'interval')
  String get interval;
  @BuiltValueField(wireName: 'temperature_2m')
  String get temperature2m;
  @BuiltValueField(wireName: 'weather_code')
  String get weatherCode;
  String toJson() {
    return json
        .encode(serializers.serializeWith(CurrentUnits.serializer, this));
  }

  static CurrentUnits? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CurrentUnits.serializer, json.decode(jsonString));
  }

  static Serializer<CurrentUnits> get serializer => _$currentUnitsSerializer;
}
