import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/core/helpers/serializers.dart';
import 'package:weather/features/weather/data/models/forecast/forecast.dart';
import 'package:weather/features/weather/data/models/forecast/local_forecast.dart';

part 'weather_state.g.dart';

abstract class WeatherState
    implements Built<WeatherState, WeatherStateBuilder> {
  WeatherState._();

  factory WeatherState([Function(WeatherStateBuilder b) updates]) =
      _$WeatherState;

  @BuiltValueField(wireName: 'isLoading')
  bool get isLoading;
  @BuiltValueField(wireName: 'allForecasts')
  BuiltList<LocalForecast> get allForecasts;
  String toJson() {
    return json
        .encode(serializers.serializeWith(WeatherState.serializer, this));
  }

  static WeatherState? fromJson(String jsonString) {
    return serializers.deserializeWith(
        WeatherState.serializer, json.decode(jsonString));
  }

  static Serializer<WeatherState> get serializer => _$weatherStateSerializer;
}
