import 'package:flutter/material.dart';
import 'package:weather/di.dart';
import 'package:weather/features/weather/presentation/pages/weather/weather_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpConfigs();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: WeatherPage(),
    );
  }
}
