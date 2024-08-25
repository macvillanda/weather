import 'package:weather/core/helpers/use_case.dart';
import 'package:weather/core/helpers/result.dart';
import 'package:weather/features/weather/domain/entities/forecast_request.dart';
import 'package:weather/features/weather/domain/repositories/forecast_repository.dart';

class ForecastUpdateUseCase
    implements UseCase<ResultForecast?, ForecastRequest> {
  final ForecastRepository _repository;
  ForecastUpdateUseCase(this._repository);
  @override
  Future<ResultForecast?> call({ForecastRequest? params}) async {
    final requestParam = params;
    if (requestParam == null) {
      return Future.error(
          Error(exception: Exception("no parameters provided")));
    }
    try {
      final result = await _repository.updateForecast(
        requestParam.location,
        requestParam.others,
        requestParam.lastUpdated,
      );
      return result;
    } catch (e) {
      return Future.error(Error(exception: Exception(e.toString())));
    }
  }
}
