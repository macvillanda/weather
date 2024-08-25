import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/core/helpers/geo_locator.dart';
import 'package:weather/features/weather/data/datasources/local/shared_pref_storage.dart';

final getIt = GetIt.instance;

void setUpConfigs() async {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<GeoLocator>(GeoLocator());
  getIt.registerSingleton<SharedPreferenceStorage>(SharedPreferenceStorage());
}
