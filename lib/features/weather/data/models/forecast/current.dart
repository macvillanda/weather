import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/core/helpers/serializers.dart';

part 'current.g.dart';

abstract class Current implements Built<Current, CurrentBuilder> {
  Current._();

  factory Current([Function(CurrentBuilder b) updates]) = _$Current;

  @BuiltValueField(wireName: 'time')
  String get time;
  @BuiltValueField(wireName: 'interval')
  double get interval;
  @BuiltValueField(wireName: 'temperature_2m')
  double get temperature2m;
  @BuiltValueField(wireName: 'weather_code')
  double get weatherCode;
  String toJson() {
    return json.encode(serializers.serializeWith(Current.serializer, this));
  }

  static Current? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Current.serializer, json.decode(jsonString));
  }

  static Serializer<Current> get serializer => _$currentSerializer;
}
