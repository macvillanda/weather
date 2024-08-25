import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:weather/core/helpers/weather_asset_map.dart';
import 'package:weather/features/weather/data/models/forecast/daily.dart';

class DailyWeather extends StatelessWidget {
  final Daily? daily;
  DailyWeather({super.key, required this.daily});
  final _weatherAsset = WeatherAsset();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: (daily?.time ?? []).mapIndexed((index, element) {
            final timeSplit = element.split("-");
            return Container(
              margin: const EdgeInsets.only(right: 8),
              height: 80,
              width: 60,
              child: Column(
                children: [
                  Text(
                    key: const Key("daily_date"),
                    "${timeSplit[1]}/${timeSplit[2]}",
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(color: Colors.white),
                  ),
                  SizedBox.fromSize(
                    size: const Size.fromHeight(4),
                  ),
                  SizedBox.fromSize(
                    size: const Size(32, 32),
                    child: Image.asset(
                        "assets/images/${_weatherAsset.getDailyIconAsset(daily?.weatherCode?[index] ?? 0)}"),
                  ),
                  SizedBox.fromSize(
                    size: const Size.fromHeight(4),
                  ),
                  Text("${daily?.apparentTemperatureMax?[index] ?? 0.0} °C",
                      key: const Key("daily_temp"),
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall
                          ?.copyWith(color: Colors.white)),
                ],
              ),
            );
          }).toList()),
    );
  }
}
