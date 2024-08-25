import 'package:weather/core/helpers/use_case.dart';
import 'package:weather/core/helpers/result.dart';
import 'package:weather/features/weather/domain/entities/forecast_request.dart';
import 'package:weather/features/weather/domain/repositories/forecast_repository.dart';

class ForecastsGetAllUseCase implements UseCase<ResultListForecast, Null> {
  final ForecastRepository _repository;
  ForecastsGetAllUseCase(this._repository);

  @override
  Future<ResultListForecast> call({ForecastRequest? params}) async {
    try {
      final result = await _repository.getAllForecasts();
      return result;
    } catch (e) {
      return Future.error(Error(exception: (e as Error).exception));
    }
  }
}
