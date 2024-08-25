import 'package:weather/core/helpers/result.dart';
import 'package:weather/features/weather/data/models/forecast/local_forecast.dart';
import 'package:weather/features/weather/domain/entities/location_entity.dart';
import 'package:weather/features/weather/domain/entities/location_forecast.dart';

typedef ResultListForecast = Result<List<LocationForecast>>;
typedef ResultForecast = Result<LocationForecast>;

abstract class ForecastRepository {
  Future<ResultListForecast> getAllForecasts();
  Future<ResultForecast> getForecast(LocationEntity location,
      Map<String, List<String>> others, bool checkCache);
  Future<bool> saveForecast(LocalForecast forecast);
  Future<ResultForecast?> updateForecast(
      LocationEntity location,
      Map<String, List<String>> others, DateTime lastUsed);
}
