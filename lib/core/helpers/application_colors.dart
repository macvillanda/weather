import 'package:flutter/material.dart';

class ApplicationColors {
  static const Color midnightStartColor = Colors.black;
  static final Color midnightEndColor = Colors.deepPurple.shade900;
  static final Color nightStartColor = Colors.deepPurple.shade900;
  static const Color nightEndColor = Colors.indigo;
  static const Color twilightStartColor = Colors.indigo;
  static const Color twilightEndColor = Colors.purple;
  static const Color dawnDuskStartColor = Colors.indigo;
  static const Color dawnDuskEndColor = Colors.pinkAccent;
  static final Color morningEveStartColor = Colors.blue.shade700;
  static final Color morningEveEndColor = Colors.pink.shade200;
  static final Color dayStartColor = Colors.blue.shade700;
  static final Color dayEndColor = Colors.lightBlue.shade500;
  static final Color middayStartColor = Colors.blue.shade700;
  static const Color middayEndColor = Colors.lightBlue;
  static const Color swiperInactiveDotColor = Colors.white54;
  static const Color swiperActiveDotColor = Colors.white;

  LinearGradient buildGradient(Color startColor, Color endColor) {
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: const [0.2, 0.99],
      colors: [
        startColor,
        endColor,
      ],
    );
  }

  LinearGradient getNightGradient(double percentage) {
    if (percentage <= 0.1) {
      return buildGradient(ApplicationColors.dawnDuskStartColor,
          ApplicationColors.dawnDuskEndColor);
    } else if (percentage <= 0.2) {
      return buildGradient(ApplicationColors.twilightStartColor,
          ApplicationColors.twilightEndColor);
    } else if (percentage <= 0.6) {
      return buildGradient(
          ApplicationColors.nightStartColor, ApplicationColors.nightEndColor);
    } else {
      return buildGradient(ApplicationColors.midnightStartColor,
          ApplicationColors.midnightEndColor);
    }
  }

  LinearGradient getDayGradient(double percentage) {
    if (percentage <= 0.1 || percentage >= 0.9) {
      return buildGradient(ApplicationColors.dawnDuskStartColor,
          ApplicationColors.dawnDuskEndColor);
    } else if (percentage <= 0.2 || percentage >= 0.8) {
      return buildGradient(ApplicationColors.morningEveStartColor,
          ApplicationColors.morningEveEndColor);
    } else if (percentage <= 0.4 || percentage >= 0.6) {
      return buildGradient(
          ApplicationColors.dayStartColor, ApplicationColors.dayEndColor);
    } else {
      return buildGradient(
          ApplicationColors.middayStartColor, ApplicationColors.middayEndColor);
    }
  }

  LinearGradient gradientCycle(int testHour, int testMinutes) {
    final DateTime testDate = DateTime.now();
    final int testMs = DateTime(
            testDate.year, testDate.month, testDate.day, testHour, testMinutes)
        .millisecondsSinceEpoch;
    // Test sunrise is at 08:00
    final int sunriseMs =
        DateTime(testDate.year, testDate.month, testDate.day, 8)
            .millisecondsSinceEpoch;
    // Test sunset is at 18:00
    final int sunsetMs =
        DateTime(testDate.year, testDate.month, testDate.day, 18)
            .millisecondsSinceEpoch;

    if (testMs < sunriseMs) {
      final int lastMidnight =
          DateTime(testDate.year, testDate.month, testDate.day)
              .millisecondsSinceEpoch;
      return getNightGradient(
          (sunriseMs - testMs) / (sunriseMs - lastMidnight));
    } else if (testMs > sunsetMs) {
      final int nextMidnight =
          DateTime(testDate.year, testDate.month, testDate.day + 1)
              .millisecondsSinceEpoch;
      return getNightGradient((testMs - sunsetMs) / (nextMidnight - sunsetMs));
    } else {
      return getDayGradient((testMs - sunriseMs) / (sunsetMs - sunriseMs));
    }
  }
}
