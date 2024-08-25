import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather/core/helpers/result.dart';
import 'package:weather/di.dart';
import 'package:weather/features/weather/data/datasources/remote/search_service.dart';
import 'package:weather/features/weather/data/models/search/search_result/search_result.dart';
import 'package:weather/features/weather/domain/entities/city_search.dart';
import 'package:weather/features/weather/domain/entities/location2d.dart';

class CitySearchDelegate extends SearchDelegate<CitySearch> {
  final _searchService = SearchService(getIt<Dio>());
  Future<List<CitySearch>> _search(String query) async {
    try {
      final results = await _searchService.search(query);
      if (results is Success<SearchResult>) {
        final searchItems = results.data.results?.map((item) {
          return CitySearch(
              country: item.country ?? "",
              name: item.name ?? "",
              location: Location2D(
                  latitude: item.latitude ?? 0.0,
                  longitude: item.longitude ?? 0.0),
              id: "${item.id ?? 1}",
              flag:
                  "https://open-meteo.com/images/country-flags/${item.countryCode?.toLowerCase() ?? ""}.svg");
        }).toList();
        return searchItems ?? [];
      } else {
        throw Exception("Invalid data");
      }
    } catch (e) {
      throw Exception("Error: ${e.toString()}");
    }
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder(
      future: _search(query),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                '${snapshot.error} occurred',
                style: const TextStyle(fontSize: 18),
              ),
            );
          } else if (snapshot.hasData) {
            final data = snapshot.data as List<CitySearch>;
            return ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: SizedBox.fromSize(
                      size: const Size(30, 30),
                      child: SvgPicture.network(
                        data[index].flag,
                        semanticsLabel: 'A shark?!',
                        placeholderBuilder: (BuildContext context) => Container(
                            padding: const EdgeInsets.all(5.0),
                            child: const CircularProgressIndicator()),
                      ),
                    ),
                    title: Text(
                      data[index].name,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(color: Colors.black),
                    ),
                    subtitle: Text(
                      data[index].country,
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall
                          ?.copyWith(color: Colors.black),
                    ),
                    trailing: const Icon(Icons.chevron_right_sharp),
                    onTap: () {
                      close(context, data[index]);
                    },
                  );
                });
          }
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const SizedBox.shrink();
  }
}
