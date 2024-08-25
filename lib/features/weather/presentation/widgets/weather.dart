import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/core/helpers/weather_asset_map.dart';
import 'package:weather/features/weather/domain/entities/location_forecast.dart';
import 'package:weather/features/weather/presentation/widgets/daily_weather.dart';

class Weather extends StatelessWidget {
  final LocationForecast forecast;

  Weather({super.key, required this.forecast});
  final _weatherAsset = WeatherAsset();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox.fromSize(
              size: const Size.fromHeight(50),
            ),
            Lottie.asset(
                'assets/lottie/${_weatherAsset.getWeatherAsset((forecast.forecast.current.weatherCode).toInt(), forecast.forecast.current.time)}'),
            SizedBox.fromSize(
              size: const Size.fromHeight(12),
            ),
            Text(
              forecast.name,
              key: const Key("weather_name"),
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.white),
            ),
            SizedBox.fromSize(
              size: const Size.fromHeight(4),
            ),
            Text(
              "${forecast.forecast.current.temperature2m} ${forecast.forecast.currentUnits.temperature2m}",
              key: const Key("weather_temp"),
              style: Theme.of(context)
                  .textTheme
                  .displayLarge
                  ?.copyWith(color: Colors.white),
            ),
            SizedBox.fromSize(
              size: const Size.fromHeight(16),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: DailyWeather(
                key: const Key("weather_daily"),
                daily: forecast.forecast.daily,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
