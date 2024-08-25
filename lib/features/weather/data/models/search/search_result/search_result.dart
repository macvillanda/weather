import 'package:freezed_annotation/freezed_annotation.dart';

import 'search_result_item.dart';

part 'search_result.freezed.dart';
part 'search_result.g.dart';

@freezed
class SearchResult with _$SearchResult {
  factory SearchResult({
    List<SearchResultItem>? results,
    @JsonKey(name: 'generationtime_ms') double? generationtimeMs,
  }) = _SearchResult;

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}
