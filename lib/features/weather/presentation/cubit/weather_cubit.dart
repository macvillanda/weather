import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:weather/core/helpers/geo_locator.dart';
import 'package:weather/core/helpers/result.dart';
import 'package:weather/di.dart';
import 'package:weather/features/weather/data/models/forecast/local_forecast.dart';
import 'package:weather/features/weather/data/repositories/forecast_respository_impl.dart';
import 'package:weather/features/weather/domain/entities/city_search.dart';
import 'package:weather/features/weather/domain/entities/forecast_request.dart';
import 'package:weather/features/weather/domain/entities/location2d.dart';
import 'package:weather/features/weather/domain/entities/location_entity.dart';
import 'package:weather/features/weather/domain/entities/location_forecast.dart';
import 'package:weather/features/weather/domain/repositories/forecast_repository.dart';
import 'package:weather/features/weather/domain/usecases/forcast_update_usecase.dart';
import 'package:weather/features/weather/domain/usecases/forecast_get_usecase.dart';
import 'package:weather/features/weather/domain/usecases/forecasts_get_all_usecase.dart';
import 'package:weather/features/weather/presentation/cubit/weather_state.dart';

class WeatherCubit extends HydratedCubit<WeatherState> {
  WeatherCubit()
      : super((WeatherStateBuilder()
              ..isLoading = false
              ..allForecasts = ListBuilder<LocalForecast>())
            .build());
  ForecastRepository? _repository;
  ForecastsGetAllUseCase? _getAllUseCase;
  ForecastGetUseCase? _getUseCase;
  ForecastUpdateUseCase? _updateUseCase;
  bool _getCurrentLocation = true;
  bool _hasCheckedFirstIndex = false;

  void setDependecies(ForecastRepository? repository, bool getCurrentLocation) {
    _getCurrentLocation = getCurrentLocation;
    _repository = repository;
  }

  Future<void> getAll() async {
    final repository = _repository ?? ForecastRepositoryImpl();

    _getAllUseCase ??= ForecastsGetAllUseCase(repository);
    _getUseCase ??= ForecastGetUseCase(repository);
    _updateUseCase ??= ForecastUpdateUseCase(repository);
    emit(state.rebuild((s) => s..isLoading = true));
    try {
      
      final allForecasts = state.allForecasts;
      if (allForecasts.isEmpty) {
          final userLocation = await _getLocation();
          await _addLocation(LocationEntity(
            name: "My location",
            location2d: userLocation,
            id: "0",
        ));
      } else if (!_hasCheckedFirstIndex) {
        _hasCheckedFirstIndex = true;
        final firstItem = allForecasts.firstOrNull;
        if (firstItem != null) {
          _update(LocationForecast.from(firstItem));
        }
      } else {
        emit(state);
      }
    } catch (e) {
      emit(state.rebuild((s) => s..isLoading = false));
    }
  }

  Future<Location2D> _getLocation() async {
    if (_getCurrentLocation) {
      try {
        final geolocator = getIt<GeoLocator>();
        final position = await geolocator.getCurrentPosition();
        return Location2D(
            latitude: position.latitude, longitude: position.longitude);
      } catch (e) {
        return Location2D(
            latitude: 14.599512, longitude: 120.984222); // manila
      }
    } else {
      return Location2D(latitude: 14.599512, longitude: 120.984222); // manila
    }
  }

  MapList _defaultParameters() {
    return {
      "current": ["temperature_2m", "weather_code"],
      "daily": ["weather_code", "apparent_temperature_max"]
    };
  }

  Future<void> _addLocation(LocationEntity newLocation) async {
    final request =
        ForecastRequest(
      location: newLocation,
      others: _defaultParameters(),
      lastUpdated: DateTime.now(),
    );
    final newForecast = await _getUseCase?.call(params: request);
    if (newForecast is Success<LocationForecast>) {
      emit(state
          .rebuild((s) => s..allForecasts.add(newForecast.data.createLocal())));
    }
  }

  String getWeatherAsset(int weatherCode) {
    return "";
  }

  Future<void> addNewLocation(CitySearch city) async {
    final cityLocation =
        LocationEntity(id: city.id, name: city.name, location2d: city.location);
    await _addLocation(cityLocation);
  }

  Future<void> _update(LocationForecast currentForecast) async {
    final item = LocationEntity(
      name: currentForecast.name,
      location2d: Location2D(
          latitude: currentForecast.forecast.latitude,
          longitude: currentForecast.forecast.longitude),
      id: currentForecast.id,
    );
    final updated = await _updateUseCase?.call(
      params: ForecastRequest(
        location: item,
        others: _defaultParameters(),
        lastUpdated: currentForecast.lastUsed,
      ),
    );
    if (updated is Success<LocationForecast>) {
      final itemIndex = state.allForecasts.indexWhere((e) => e.id == item.id);
      if (itemIndex >= 0) {
        emit(state.rebuild(
            (s) => s..allForecasts[itemIndex] = updated.data.createLocal()));
      }
    }

  }

  Future<void> didChangePageIndex(int index) async {
    final pageItem = state.allForecasts.elementAtOrNull(index);
    if (pageItem != null) {
      _update(LocationForecast.from(pageItem));
    }
  }

  @override
  WeatherState? fromJson(Map<String, dynamic> json) {
    try {
      final jsonString = jsonEncode(json);
      final initialData = WeatherState.fromJson(jsonString);
      return initialData;
    } catch (e) {
      return (WeatherStateBuilder()
            ..isLoading = false
            ..allForecasts = ListBuilder<LocalForecast>())
          .build();
    }
  }

  @override
  Map<String, dynamic>? toJson(WeatherState state) {
    final jsonString = state.toJson();
    return jsonDecode(jsonString);
  }
}
