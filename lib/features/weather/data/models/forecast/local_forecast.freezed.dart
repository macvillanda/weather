// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocalForecast _$LocalForecastFromJson(Map<String, dynamic> json) {
  return _LocalForecast.fromJson(json);
}

/// @nodoc
mixin _$LocalForecast {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get lastUsed => throw _privateConstructorUsedError;
  Forecast get forecast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalForecastCopyWith<LocalForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalForecastCopyWith<$Res> {
  factory $LocalForecastCopyWith(
          LocalForecast value, $Res Function(LocalForecast) then) =
      _$LocalForecastCopyWithImpl<$Res, LocalForecast>;
  @useResult
  $Res call({String id, String name, String lastUsed, Forecast forecast});

  $ForecastCopyWith<$Res> get forecast;
}

/// @nodoc
class _$LocalForecastCopyWithImpl<$Res, $Val extends LocalForecast>
    implements $LocalForecastCopyWith<$Res> {
  _$LocalForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lastUsed = null,
    Object? forecast = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastUsed: null == lastUsed
          ? _value.lastUsed
          : lastUsed // ignore: cast_nullable_to_non_nullable
              as String,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as Forecast,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastCopyWith<$Res> get forecast {
    return $ForecastCopyWith<$Res>(_value.forecast, (value) {
      return _then(_value.copyWith(forecast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocalForecastImplCopyWith<$Res>
    implements $LocalForecastCopyWith<$Res> {
  factory _$$LocalForecastImplCopyWith(
          _$LocalForecastImpl value, $Res Function(_$LocalForecastImpl) then) =
      __$$LocalForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String lastUsed, Forecast forecast});

  @override
  $ForecastCopyWith<$Res> get forecast;
}

/// @nodoc
class __$$LocalForecastImplCopyWithImpl<$Res>
    extends _$LocalForecastCopyWithImpl<$Res, _$LocalForecastImpl>
    implements _$$LocalForecastImplCopyWith<$Res> {
  __$$LocalForecastImplCopyWithImpl(
      _$LocalForecastImpl _value, $Res Function(_$LocalForecastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lastUsed = null,
    Object? forecast = null,
  }) {
    return _then(_$LocalForecastImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastUsed: null == lastUsed
          ? _value.lastUsed
          : lastUsed // ignore: cast_nullable_to_non_nullable
              as String,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as Forecast,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalForecastImpl implements _LocalForecast {
  _$LocalForecastImpl(
      {required this.id,
      required this.name,
      required this.lastUsed,
      required this.forecast});

  factory _$LocalForecastImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalForecastImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String lastUsed;
  @override
  final Forecast forecast;

  @override
  String toString() {
    return 'LocalForecast(id: $id, name: $name, lastUsed: $lastUsed, forecast: $forecast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalForecastImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastUsed, lastUsed) ||
                other.lastUsed == lastUsed) &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, lastUsed, forecast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalForecastImplCopyWith<_$LocalForecastImpl> get copyWith =>
      __$$LocalForecastImplCopyWithImpl<_$LocalForecastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalForecastImplToJson(
      this,
    );
  }
}

abstract class _LocalForecast implements LocalForecast {
  factory _LocalForecast(
      {required final String id,
      required final String name,
      required final String lastUsed,
      required final Forecast forecast}) = _$LocalForecastImpl;

  factory _LocalForecast.fromJson(Map<String, dynamic> json) =
      _$LocalForecastImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get lastUsed;
  @override
  Forecast get forecast;
  @override
  @JsonKey(ignore: true)
  _$$LocalForecastImplCopyWith<_$LocalForecastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
