import 'package:bloc/bloc.dart';
import 'package:weather/core/helpers/geo_locator.dart';
import 'package:weather/core/helpers/result.dart';
import 'package:weather/di.dart';
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

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(const WeatherState());
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
    emit(state.copyWith(isLoading: true));
    try {
      final allForecasts = await _getAllUseCase?.call();
      if (allForecasts is Success<List<LocationForecast>>) {
        if (allForecasts.data.isEmpty) {
          final userLocation = await _getLocation();
          await _addLocation(LocationEntity(
            name: "My location",
            location2d: userLocation,
            id: "0",
          ));
          return;
        } else {
          if (!_hasCheckedFirstIndex) {
            _hasCheckedFirstIndex = true;
            final firstItem = allForecasts.data.firstOrNull;
            if (firstItem != null) {
              _update(firstItem);
              return;
            }
          }
          emit(state.copyWith(
              isLoading: false, allForecasts: allForecasts.data));
        }
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false));
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
            latitude: 14.599512, longitude: -120.984222); // manila
      }
    } else {
      return Location2D(latitude: 14.599512, longitude: -120.984222); // manila
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
        ForecastRequest(location: newLocation, others: _defaultParameters());
    await _getUseCase?.call(params: request);
    await getAll();
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
      id: "0",
    );
    await _updateUseCase?.call(
        params: ForecastRequest(
      location: item,
      others: _defaultParameters(),
    ));
    await getAll();
  }

  Future<void> didChangePageIndex(int index) async {
    final pageItem = state.allForecasts.elementAtOrNull(index);
    if (pageItem != null) {
      _update(pageItem);
    }
  }
}
