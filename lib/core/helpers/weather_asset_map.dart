import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeatherAsset {
  final dateFormat = DateFormat("yyyy-MM-dd'T'HH:mm");

  bool _isMorning(String locationTime) {
    final dateTime = dateFormat.parse(locationTime, true).toLocal();
    final hour = dateTime.hour;
    return hour <= 17;
  }

  // 2024-08-24T14:30
  // WMO Weather interpretation codes (WW)
  String getWeatherAsset(int weatherCode, String locationTime) {
    var isMorning = _isMorning(locationTime);
    if (weatherCode == 0) {
      return isMorning ? "clear.json" : "night_clear.json";
    } else if ([1, 2, 3].contains(weatherCode)) {
      return isMorning ? "cloudy.json" : "night_cloudy.json";
    } else if ([45, 48].contains(weatherCode)) {
      return "fog.json";
    } else if ([51, 53, 55].contains(weatherCode)) {
      return isMorning ? "shower.json" : "night_shower.json";
    } else if ([61, 63, 65].contains(weatherCode)) {
      return "storm.json";
    } else if ([56, 57].contains(weatherCode)) {
      return isMorning ? "shower.json" : "night_shower.json";
    } else if ([66, 67].contains(weatherCode)) {
      return isMorning ? "snow_sunny.json" : "snow_night.json";
    } else if ([71, 73, 75].contains(weatherCode)) {
      return "snow.json";
    } else if (weatherCode == 77) {
      return "snow.json";
    } else if ([80, 81, 82].contains(weatherCode)) {
      return isMorning ? "shower.json" : "night_shower.json";
    } else if ([85, 86].contains(weatherCode)) {
      return isMorning ? "snow_sunny.json" : "snow_night.json";
    } else if (weatherCode == 95) {
      return "thunder.json";
    } else if ([96, 99].contains(weatherCode)) {
      return "thunder.json";
    }
    return isMorning ? "cloudy.json" : "night_cloudy.json";
  }

  String getDailyIconAsset(int weatherCode) {
    if (weatherCode == 0) {
      return "icon_sun.png";
    } else if ([1, 2, 3].contains(weatherCode)) {
      return "icon_cloud.png";
    } else if ([45, 48].contains(weatherCode)) {
      return "icon_dust.png";
    } else if ([51, 53, 55].contains(weatherCode)) {
      return "icon_cloud_little_rain.png";
    } else if ([61, 63, 65].contains(weatherCode)) {
      return "icon_thunder.png";
    } else if ([56, 57].contains(weatherCode)) {
      return "icon_rain.png";
    } else if ([66, 67].contains(weatherCode)) {
      return "icon_snow.png";
    } else if ([71, 73, 75].contains(weatherCode)) {
      return "icon_snow.png";
    } else if (weatherCode == 77) {
      return "icon_snow.png";
    } else if ([80, 81, 82].contains(weatherCode)) {
      return "icon_cloud_little_rain.png";
    } else if ([85, 86].contains(weatherCode)) {
      return "icon_snow.png";
    } else if (weatherCode == 95) {
      return "icon_thunder.png";
    } else if ([96, 99].contains(weatherCode)) {
      return "icon_thunder.png";
    }
    return "icon_cloud_sun.png";
  }
}
