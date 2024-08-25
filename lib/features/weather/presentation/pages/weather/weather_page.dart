import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:page_indicator_plus/page_indicator_plus.dart';
import 'package:weather/core/helpers/application_colors.dart';
import 'package:weather/features/weather/domain/repositories/forecast_repository.dart';
import 'package:weather/features/weather/presentation/cubit/weather_cubit.dart';
import 'package:weather/features/weather/presentation/cubit/weather_state.dart';
import 'package:worldtime/worldtime.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/weather/presentation/widgets/search/city_search_delegate.dart';
import 'package:weather/features/weather/presentation/widgets/weather.dart';

// ignore: must_be_immutable
class WeatherPage extends StatefulWidget {
  ForecastRepository? repository;
  bool getLocation;
  WeatherPage({super.key, this.repository, this.getLocation = true});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  late PageController _pageViewController;

  final _cubit = WeatherCubit();
  var _currentSelectedPage = 0;
  final dateFormat = DateFormat("yyyy-MM-dd'T'HH:mm");
  final _worldtime = Worldtime();

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _cubit
        ..setDependecies(widget.repository, widget.getLocation)
        ..getAll(),
      child: BlocBuilder<WeatherCubit, WeatherState>(builder: (context, state) {
        return _body(state);
      }),
    );
  }

  Widget _body(WeatherState state) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          _getAsyncBG(_currentSelectedPage, state),
          PageView(
            controller: _pageViewController,
            onPageChanged: _handlePageViewChanged,
            children: state.allForecasts.map((e) {
              return Weather(forecast: e);
            }).toList(),
          ),
          (state.allForecasts.isNotEmpty)
              ?
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 60),
                    child: PageIndicator(
                controller: _pageViewController,
                count: state.allForecasts.length,
                      size: 8,
                      layout: PageIndicatorLayout.WARM,
                      color: Colors.grey,
                      activeColor: Colors.white,
                      scale: 0.65,
                      space: 10,
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
          child: const Icon(Icons.add_location_alt_sharp),
          onPressed: () async {
            final selectedCity = await showSearch(
              context: context,
              delegate: CitySearchDelegate(),
            );
            if (selectedCity != null) {
              await _cubit.addNewLocation(selectedCity);
              _pageViewController.animateToPage(
                _cubit.state.allForecasts.length,
                duration: const Duration(microseconds: 350),
                curve: Curves.easeIn,
              );
            }
          },
        ),
      ),
    );
  }

  Widget _getAsyncBG(int index, WeatherState state) {
    return FutureBuilder(
      future: _getGradientFor(index, state),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Container(
              decoration: BoxDecoration(
            gradient: (snapshot.data as LinearGradient),
          ));
        } else {
          return Container();
        }
      },
    );
  }

  Future<LinearGradient?> _getGradientFor(int index, WeatherState state) async {
    if (index < state.allForecasts.length) {
      final forecast = state.allForecasts[index];
      final forecastTime = await _worldtime.timeByLocation(
          latitude: forecast.forecast.latitude,
          longitude: forecast.forecast.longitude);
      final hour = forecastTime.hour;
      final minute = forecastTime.minute;
      return ApplicationColors().gradientCycle(hour, minute);
    }
    return null;
  }

  void _handlePageViewChanged(int currentPageIndex) {
    setState(() {
      _currentSelectedPage = currentPageIndex;
    });
    _cubit.didChangePageIndex(currentPageIndex);
  }
}
