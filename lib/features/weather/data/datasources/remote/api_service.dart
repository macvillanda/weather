import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather/constants/constants.dart';
import 'package:weather/core/helpers/result.dart';
import 'package:weather/features/weather/data/models/forecast/forecast.dart';
import 'package:weather/features/weather/domain/entities/location_entity.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  // https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&current=temperature_2m,precipitation,weather_code&hourly=temperature_2m,weather_code
  // https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&current=temperature_2m,weather_code&daily=weather_code,apparent_temperature_max
  Future<Result<Forecast>> getForecast(
      LocationEntity location, Map<String, List<String>> others) async {
    const String url = "$appBaseURL/v1/forecast";
    try {
      final Map<String, dynamic> queries = {};
      for (String key in others.keys) {
        final values = others[key];
        final queryValues = values?.join(",") ?? "";
        queries[key] = queryValues;
      }
      queries["latitude"] = location.location2d.latitude;
      queries["longitude"] = location.location2d.longitude;
      log("queries ==> $queries");
      final response = await _dio.get(url, queryParameters: queries);
      if (response.statusCode == 200) {
        final forecast = Forecast.fromJson(response.data);
        return Success(data: forecast);
      } else {
        return Error(exception: Exception(response.data.toString()));
      }
    } on Exception catch (error) {
      if (error is DioException) {
        final message = error.response?.data["error"];
        if (message != null) {
          return Error(exception: Exception(message));
        }
      }
      return Error(exception: error);
    }
  }
}
