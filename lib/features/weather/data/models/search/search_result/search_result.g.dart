// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultImpl _$$SearchResultImplFromJson(Map<String, dynamic> json) =>
    _$SearchResultImpl(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => SearchResultItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      generationtimeMs: (json['generationtime_ms'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SearchResultImplToJson(_$SearchResultImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
      'generationtime_ms': instance.generationtimeMs,
    };
