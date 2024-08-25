import 'package:dio/dio.dart';
import 'package:weather/core/helpers/result.dart';
import 'package:weather/features/weather/data/models/search/search_result/search_result.dart';

class SearchService {
  final Dio _dio;

  SearchService(this._dio);

  Future<Result<SearchResult>> search(String query) async {
    try {
      const String url = "https://geocoding-api.open-meteo.com/v1/search";
      final response = await _dio.get(url, queryParameters: {"name": query});
      if (response.statusCode == 200) {
        final listResults = SearchResult.fromJson(response.data);
        return Success(data: listResults);
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
