import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:weather/features/weather/data/models/forecast/current.dart';
import 'package:weather/features/weather/data/models/forecast/current_units.dart';
import 'package:weather/features/weather/data/models/forecast/daily.dart';
import 'package:weather/features/weather/data/models/forecast/daily_units.dart';
import 'package:weather/features/weather/data/models/forecast/forecast.dart';
import 'package:weather/features/weather/data/models/forecast/local_forecast.dart';

part 'serializers.g.dart';

@SerializersFor([
  Forecast,
  Daily,
  DailyUnits,
  Current,
  CurrentUnits,
  LocalForecast,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
