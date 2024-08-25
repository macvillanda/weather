import 'package:weather/features/weather/domain/entities/location_entity.dart';

typedef MapList = Map<String, List<String>>;

class ForecastRequest {
  final LocationEntity location;
  final MapList others;
  final DateTime lastUpdated;

  ForecastRequest({
    required this.location,
    required this.others,
    required this.lastUpdated,
  });
}
