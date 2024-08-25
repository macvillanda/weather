import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/features/weather/domain/entities/location_forecast.dart';

part 'weather_state.freezed.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    @Default(false) bool isLoading,
    @Default([]) List<LocationForecast> allForecasts,
  }) = _WeatherState;
}
