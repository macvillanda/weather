import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather/core/helpers/geo_locator.dart';
import 'package:weather/core/helpers/result.dart';
import 'package:weather/core/helpers/weather_asset_map.dart';
import 'package:weather/di.dart';
import 'package:weather/features/weather/data/datasources/local/shared_pref_storage.dart';
import 'package:weather/features/weather/data/models/forecast/daily.dart';
import 'package:weather/features/weather/data/models/forecast/forecast.dart';
import 'package:weather/features/weather/data/models/forecast/local_forecast.dart';
import 'package:weather/features/weather/domain/entities/city_search.dart';
import 'package:weather/features/weather/domain/entities/location2d.dart';
import 'package:weather/features/weather/domain/entities/location_entity.dart';
import 'package:weather/features/weather/domain/entities/location_forecast.dart';
import 'package:weather/features/weather/domain/repositories/forecast_repository.dart';
import 'package:weather/features/weather/presentation/cubit/weather_cubit.dart';
import 'package:weather/features/weather/presentation/widgets/daily_weather.dart';
import 'dart:convert';

import 'package:weather/features/weather/presentation/widgets/weather.dart';

String sampleDaily = """
{
  "daily": {
    "time": [
      "2024-08-23",
      "2024-08-24",
      "2024-08-25",
      "2024-08-26",
      "2024-08-27",
      "2024-08-28",
      "2024-08-29"
    ],
    "weather_code": [
      3,
      3,
      61,
      3,
      3,
      2,
      3
    ],
    "apparent_temperature_max": [
      28,
      30.7,
      23.5,
      22.4,
      24.9,
      30.2,
      30.4
    ]
  }
}
""";

String sampleForecast = """
{
  "latitude": 52.52,
  "longitude": 13.419998,
  "generationtime_ms": 0.16701221466064453,
  "utc_offset_seconds": 0,
  "timezone": "GMT",
  "timezone_abbreviation": "GMT",
  "elevation": 38,
  "current_units": {
    "time": "iso8601",
    "interval": "seconds",
    "temperature_2m": "°C",
    "weather_code": "wmo code"
  },
  "current": {
    "time": "2024-08-23T15:30",
    "interval": 900,
    "temperature_2m": 30.2,
    "weather_code": 2
  },
  "daily_units": {
    "time": "iso8601",
    "weather_code": "wmo code",
    "apparent_temperature_max": "°C"
  },
  "daily": {
    "time": [
      "2024-08-23",
      "2024-08-24",
      "2024-08-25",
      "2024-08-26",
      "2024-08-27",
      "2024-08-28",
      "2024-08-29"
    ],
    "weather_code": [
      3,
      3,
      61,
      3,
      3,
      2,
      3
    ],
    "apparent_temperature_max": [
      28,
      30.7,
      23.5,
      22.4,
      24.9,
      30.2,
      30.4
    ]
  }
}
""";

class ForecastRepositoryNoImpl extends ForecastRepository {
  final List<LocationForecast> _testForecasts = [];

  Forecast _sampleForecast() {
    return Forecast.fromJson(sampleForecast)!;
  }

  @override
  Future<ResultListForecast> getAllForecasts() async {
    return Success(data: _testForecasts);
  }

  @override
  Future<ResultForecast> getForecast(LocationEntity location,
      Map<String, List<String>> others, bool checkCache) async {
    final locForecast = LocationForecast(
        id: "2",
        name: "sample",
        lastUsed: DateTime.now(),
        forecast: _sampleForecast());
    final localForecast = _createFrom(locForecast);

    await saveForecast(localForecast);
    return Success(data: locForecast);
  }

  LocalForecast _createFrom(LocationForecast item) {
    final jsonMap = {
      "id": item.id,
      "name": item.name,
      "lastUsed": "${item.lastUsed.millisecondsSinceEpoch}",
      "forecast": item.forecast
    };
    final jsonString = jsonEncode(jsonMap)
        .replaceAll('\\"', '"')
        .replaceAll('"forecast":"', '"forecast":')
        .replaceAll('}}"}', '}}}');
    return LocalForecast.fromJson(jsonString)!;
  }

  @override
  Future<bool> saveForecast(LocalForecast forecast) async {
    final locForecast = LocationForecast(
        id: forecast.id,
        name: forecast.name,
        lastUsed:
            DateTime.fromMillisecondsSinceEpoch(int.parse(forecast.lastUsed)),
        forecast: _sampleForecast());
    _testForecasts.add(locForecast);
    return true;
  }

  @override
  Future<ResultForecast?> updateForecast(
      LocationEntity location, Map<String, List<String>> others) async {
    final locForecast = LocationForecast(
        id: "2",
        name: "sample",
        lastUsed: DateTime.now(),
        forecast: _sampleForecast());
    _testForecasts[0] = locForecast;
    return Success(data: locForecast);
  }
}

void main() {
  setUpAll(() {
    getIt.registerSingleton<Dio>(Dio());
    getIt.registerSingleton<GeoLocator>(GeoLocator());
    getIt.registerSingleton<SharedPreferenceStorage>(SharedPreferenceStorage());
  });

  Widget wrapWidgetWithLocalizationApp(Widget widget) {
    return MaterialApp(
      home: Container(child: widget),
      debugShowCheckedModeBanner: false,
    );
  }

  testWidgets('DailyWeather test', (WidgetTester tester) async {
    await tester.pumpWidget(wrapWidgetWithLocalizationApp(DailyWeather(
      daily: null,
    )));
    await tester.pump(const Duration(seconds: 1));

    expect(find.byKey(const Key("daily_date")), findsNothing);
    expect(find.byKey(const Key("daily_temp")), findsNothing);
    final daily = Daily.fromJson(sampleDaily);

    await tester.pumpWidget(wrapWidgetWithLocalizationApp(DailyWeather(
      daily: daily,
    )));
    await tester.pump(const Duration(seconds: 1));

    expect(find.byKey(const Key("daily_date")),
        findsExactly(daily?.time.toList().length ?? 0));
    expect(find.byKey(const Key("daily_temp")),
        findsExactly(daily?.time.toList().length ?? 0));
  });

  testWidgets('Weather test', (WidgetTester tester) async {
    final forecast = Forecast.fromJson(sampleForecast);

    final locationForecast = LocationForecast(
        id: "1", name: "test", lastUsed: DateTime.now(), forecast: forecast!);

    await tester.pumpWidget(wrapWidgetWithLocalizationApp(Weather(
      forecast: locationForecast,
    )));
    await tester.pump(const Duration(seconds: 1));

    expect(find.byKey(const Key("weather_name")), findsOne);
    expect(find.byKey(const Key("weather_temp")), findsOne);
    expect(find.byKey(const Key("weather_daily")), findsOne);

    final Text txtName = tester.widget(find.byKey(const Key("weather_name")));
    expect(txtName.data, locationForecast.name);

    final Text txtTemp = tester.widget(find.byKey(const Key("weather_temp")));
    expect(txtTemp.data,
        "${locationForecast.forecast.current.temperature2m} ${locationForecast.forecast.currentUnits.temperature2m}");
  });

  test('WeatherCubit', () async {
    final cubit = WeatherCubit();
    cubit.setDependecies(ForecastRepositoryNoImpl(), false);
    await cubit.getAll();
    // should be zero since it will call the getall again after adding the
    // location item
    expect(cubit.state.allForecasts.length, equals(0));
    // we already have added the initial item
    await cubit.getAll();
    expect(cubit.state.allForecasts.length, equals(1));
    await cubit.addNewLocation(CitySearch(
        name: "sample",
        location: Location2D(latitude: 1, longitude: 1),
        id: "3",
        country: "Philippines",
        flag: ""));
    expect(cubit.state.allForecasts.length, equals(2));
  });

  test('Weather Assets', () async {
    final weatherAsset = WeatherAsset();

    final weatherSnow = weatherAsset.getWeatherAsset(77, "2024-08-24T14:30");
    expect(weatherSnow, "snow.json");

    final weatherFog = weatherAsset.getWeatherAsset(45, "2024-08-24T08:30");
    expect(weatherFog, "fog.json");

    final weatherShower = weatherAsset.getWeatherAsset(56, "2024-08-24T08:30");
    expect(weatherShower, "shower.json");

    final weatherShowerNight =
        weatherAsset.getWeatherAsset(56, "2024-08-24T12:30");
    expect(weatherShowerNight, "night_shower.json");

    final allCodes = [
      0,
      1,
      2,
      3,
      45,
      48,
      51,
      53,
      55,
      61,
      63,
      65,
      56,
      57,
      66,
      67,
      71,
      73,
      75,
      77,
      80,
      81,
      82,
      85,
      86,
      95,
      96,
      99
    ];
    for (int code in allCodes) {
      String mainAsset = weatherAsset.getWeatherAsset(code, "2024-08-24T18:30");
      expect(mainAsset, isNotEmpty);
      String iconAsset = weatherAsset.getDailyIconAsset(code);
      expect(iconAsset, isNotEmpty);
    }
  });
}
