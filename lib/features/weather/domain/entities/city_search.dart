import 'package:weather/features/weather/domain/entities/location2d.dart';

class CitySearch {
  final String name;
  final Location2D location;
  final String id;
  final String country;
  final String flag;

  CitySearch({
    required this.name,
    required this.location,
    required this.id,
    required this.country,
    required this.flag,
  });
}
