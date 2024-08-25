import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/core/helpers/serializers.dart';
import 'package:weather/features/weather/data/models/forecast/current.dart';
import 'package:weather/features/weather/data/models/forecast/current_units.dart';
import 'package:weather/features/weather/data/models/forecast/daily.dart';
import 'package:weather/features/weather/data/models/forecast/daily_units.dart';

part 'forecast.g.dart';

abstract class Forecast implements Built<Forecast, ForecastBuilder> {
  Forecast._();

  factory Forecast([Function(ForecastBuilder b) updates]) = _$Forecast;

  @BuiltValueField(wireName: 'latitude')
  double get latitude;
  @BuiltValueField(wireName: 'longitude')
  double get longitude;
  @BuiltValueField(wireName: 'generationtime_ms')
  double get generationtimeMs;
  @BuiltValueField(wireName: 'utc_offset_seconds')
  double get utcOffsetSeconds;
  @BuiltValueField(wireName: 'timezone')
  String get timezone;
  @BuiltValueField(wireName: 'timezone_abbreviation')
  String get timezoneAbbreviation;
  @BuiltValueField(wireName: 'elevation')
  double get elevation;
  @BuiltValueField(wireName: 'current_units')
  CurrentUnits get currentUnits;
  @BuiltValueField(wireName: 'current')
  Current get current;
  @BuiltValueField(wireName: 'daily_units')
  DailyUnits get dailyUnits;
  @BuiltValueField(wireName: 'daily')
  Daily get daily;
  String toJson() {
    return json.encode(serializers.serializeWith(Forecast.serializer, this));
  }

  static Forecast? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Forecast.serializer, json.decode(jsonString));
  }

  static Serializer<Forecast> get serializer => _$forecastSerializer;
}
