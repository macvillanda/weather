import 'dart:convert';
import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:weather/constants/constants.dart';
import 'package:weather/di.dart';
import 'package:weather/features/weather/data/datasources/local/local_storage.dart';
import 'package:weather/features/weather/data/datasources/local/shared_pref_storage.dart';
import 'package:weather/features/weather/data/datasources/remote/api_service.dart';
import 'package:weather/features/weather/data/models/forecast/forecast.dart';
import 'package:weather/features/weather/data/models/forecast/local_forecast.dart';
import 'package:weather/features/weather/domain/entities/location_entity.dart';
import 'package:weather/features/weather/domain/entities/location_forecast.dart';
import 'package:weather/features/weather/domain/repositories/forecast_repository.dart';
import 'package:weather/core/helpers/result.dart';

class ForecastRepositoryImpl implements ForecastRepository {
  final _apiService = ApiService(getIt<Dio>());
  final _localStorage = getIt<SharedPreferenceStorage>();
  @override
  Future<ResultListForecast> getAllForecasts() async {
    try {
      final jsonString = await _localStorage.getValue(StorageKeys.forecasts);
      if (jsonString == null) {
        return const Success(data: []);
      }
      Iterable jsonArray = jsonDecode(jsonString);
      if (jsonArray.isEmpty) {
        return const Success(data: []);
      }
      List<LocalForecast> localForecasts = List<LocalForecast>.from(
          jsonArray.map((e) => LocalForecast.fromJson(e)));

      List<LocationForecast> forecasts = localForecasts.map((local) {
        return LocationForecast(
          forecast: local.forecast,
          name: local.name,
          id: local.id,
          lastUsed:
              DateTime.fromMillisecondsSinceEpoch(int.parse(local.lastUsed)),
        );
      }).toList();
      return Success(data: forecasts);
    } catch (e) {
      log("ERROR: $e");
      return Future.error(Error(exception: Exception(e.toString())));
    }
  }

  @override
  Future<ResultForecast> getForecast(LocationEntity location,
      Map<String, List<String>> others, bool checkCache) async {
    try {
      final allforecast = await getAllForecasts();
      if (allforecast is Success<List<LocationForecast>>) {
        final savedForecast = allforecast.data
            .firstWhereOrNull((element) => element.id == location.id);
        if (savedForecast != null) {
          final lastSaved = savedForecast.lastUsed;
          Duration difference = DateTime.now().difference(lastSaved);
          if (difference.inMinutes < cacheLifeTime) {
            final itemForecast = LocationForecast(
              forecast: savedForecast.forecast,
              id: savedForecast.id,
              name: savedForecast.name,
              lastUsed: lastSaved,
            );
            return Success(data: itemForecast);
          }
        }
      }

      final forecast = await _apiService.getForecast(location, others);
      if (forecast is Success<Forecast>) {
        final itemForecast = LocationForecast(
          forecast: forecast.data,
          id: location.id,
          name: location.name,
          lastUsed: DateTime.now(),
        );

        final localForecast = _createFrom(itemForecast);
        await saveForecast(localForecast);
        return Success(data: itemForecast);
      } else {
        return Future.error(Error(exception: Exception("Invalid data")));
      }
    } catch (e) {
      return Future.error(Error(exception: Exception(e.toString())));
    }
  }

  @override
  Future<bool> saveForecast(LocalForecast forecast) async {
    try {
      final allforecast = await getAllForecasts();
      if (allforecast is Success<List<LocationForecast>>) {
        var allLocalForecast = allforecast.data.map((e) {
          return _createFrom(e);
        }).toList();
        allLocalForecast.add(forecast);

        final json =
            jsonEncode(allLocalForecast.map((e) => e.toJson()).toList());
        _localStorage.save(StorageKeys.forecasts, json);

        return true;
      } else {
        return false;
      }
    } catch (e) {
      return Future.error(Error(exception: Exception(e.toString())));
    }
  }

  @override
  Future<ResultForecast?> updateForecast(
      LocationEntity location, Map<String, List<String>> others) async {
    try {
      final allforecast = await getAllForecasts();
      if (allforecast is Success<List<LocationForecast>>) {
        final forecast = allforecast.data.firstWhereOrNull((elem) {
          return elem.id == location.id;
        });
        if (forecast != null) {
          final lastSaved = forecast.lastUsed;
          Duration difference = DateTime.now().difference(lastSaved);
          if (difference.inMinutes > cacheLifeTime) {
            final newForecast = await _apiService.getForecast(location, others);
            if (newForecast is Success<Forecast>) {
              final oldForecastIndex = allforecast.data.indexWhere((elem) {
                return elem.id == location.id;
              });
              if (oldForecastIndex >= 0) {
                final allForecastData = allforecast.data;
                final newForecastData = newForecast.data;
                final newLocal = LocationForecast(
                    id: location.id,
                    name: location.name,
                    lastUsed: DateTime.now(),
                    forecast: newForecastData);
                allForecastData[oldForecastIndex] = newLocal;

                var allLocalForecast = allForecastData.map((e) {
                  return _createFrom(e);
                }).toList();
                final json = jsonEncode(
                    allLocalForecast.map((e) => e.toJson()).toList());
                _localStorage.save(StorageKeys.forecasts, json);
                return Success(data: newLocal);
              }
            }
          } else {
            return Success(data: forecast);
          }
        }
      }
      return null;
    } catch (e) {
      return Future.error(Error(exception: Exception(e.toString())));
    }
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

}
