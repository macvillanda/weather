// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultItemImpl _$$SearchResultItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultItemImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      elevation: (json['elevation'] as num?)?.toInt(),
      featureCode: json['feature_code'] as String?,
      countryCode: json['country_code'] as String?,
      admin1Id: (json['admin1_id'] as num?)?.toInt(),
      admin2Id: (json['admin2_id'] as num?)?.toInt(),
      admin3Id: (json['admin3_id'] as num?)?.toInt(),
      timezone: json['timezone'] as String?,
      population: (json['population'] as num?)?.toInt(),
      countryId: (json['country_id'] as num?)?.toInt(),
      country: json['country'] as String?,
      admin1: json['admin1'] as String?,
      admin2: json['admin2'] as String?,
      admin3: json['admin3'] as String?,
      postcodes: (json['postcodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      admin4Id: (json['admin4_id'] as num?)?.toInt(),
      admin4: json['admin4'] as String?,
    );

Map<String, dynamic> _$$SearchResultItemImplToJson(
        _$SearchResultItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'elevation': instance.elevation,
      'feature_code': instance.featureCode,
      'country_code': instance.countryCode,
      'admin1_id': instance.admin1Id,
      'admin2_id': instance.admin2Id,
      'admin3_id': instance.admin3Id,
      'timezone': instance.timezone,
      'population': instance.population,
      'country_id': instance.countryId,
      'country': instance.country,
      'admin1': instance.admin1,
      'admin2': instance.admin2,
      'admin3': instance.admin3,
      'postcodes': instance.postcodes,
      'admin4_id': instance.admin4Id,
      'admin4': instance.admin4,
    };
