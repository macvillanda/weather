import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result_item.freezed.dart';
part 'search_result_item.g.dart';

@freezed
class SearchResultItem with _$SearchResultItem {
  factory SearchResultItem({
    int? id,
    String? name,
    double? latitude,
    double? longitude,
    int? elevation,
    @JsonKey(name: 'feature_code') String? featureCode,
    @JsonKey(name: 'country_code') String? countryCode,
    @JsonKey(name: 'admin1_id') int? admin1Id,
    @JsonKey(name: 'admin2_id') int? admin2Id,
    @JsonKey(name: 'admin3_id') int? admin3Id,
    String? timezone,
    int? population,
    @JsonKey(name: 'country_id') int? countryId,
    String? country,
    String? admin1,
    String? admin2,
    String? admin3,
    List<String>? postcodes,
    @JsonKey(name: 'admin4_id') int? admin4Id,
    String? admin4,
  }) = _SearchResultItem;

  factory SearchResultItem.fromJson(Map<String, dynamic> json) =>
      _$SearchResultItemFromJson(json);
}
