import 'package:weather/features/weather/domain/entities/location2d.dart';

class LocationEntity {
  final String name;
  final Location2D location2d;
  final String id;

  LocationEntity(
      {required this.name, required this.location2d, required this.id});
}
