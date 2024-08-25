// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Daily _$DailyFromJson(Map<String, dynamic> json) {
  return _Daily.fromJson(json);
}

/// @nodoc
mixin _$Daily {
  List<String>? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_code')
  List<int>? get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'apparent_temperature_max')
  List<num>? get apparentTemperatureMax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyCopyWith<Daily> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyCopyWith<$Res> {
  factory $DailyCopyWith(Daily value, $Res Function(Daily) then) =
      _$DailyCopyWithImpl<$Res, Daily>;
  @useResult
  $Res call(
      {List<String>? time,
      @JsonKey(name: 'weather_code') List<int>? weatherCode,
      @JsonKey(name: 'apparent_temperature_max')
      List<num>? apparentTemperatureMax});
}

/// @nodoc
class _$DailyCopyWithImpl<$Res, $Val extends Daily>
    implements $DailyCopyWith<$Res> {
  _$DailyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? weatherCode = freezed,
    Object? apparentTemperatureMax = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      weatherCode: freezed == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apparentTemperatureMax: freezed == apparentTemperatureMax
          ? _value.apparentTemperatureMax
          : apparentTemperatureMax // ignore: cast_nullable_to_non_nullable
              as List<num>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyImplCopyWith<$Res> implements $DailyCopyWith<$Res> {
  factory _$$DailyImplCopyWith(
          _$DailyImpl value, $Res Function(_$DailyImpl) then) =
      __$$DailyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? time,
      @JsonKey(name: 'weather_code') List<int>? weatherCode,
      @JsonKey(name: 'apparent_temperature_max')
      List<num>? apparentTemperatureMax});
}

/// @nodoc
class __$$DailyImplCopyWithImpl<$Res>
    extends _$DailyCopyWithImpl<$Res, _$DailyImpl>
    implements _$$DailyImplCopyWith<$Res> {
  __$$DailyImplCopyWithImpl(
      _$DailyImpl _value, $Res Function(_$DailyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? weatherCode = freezed,
    Object? apparentTemperatureMax = freezed,
  }) {
    return _then(_$DailyImpl(
      time: freezed == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      weatherCode: freezed == weatherCode
          ? _value._weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      apparentTemperatureMax: freezed == apparentTemperatureMax
          ? _value._apparentTemperatureMax
          : apparentTemperatureMax // ignore: cast_nullable_to_non_nullable
              as List<num>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyImpl implements _Daily {
  _$DailyImpl(
      {final List<String>? time,
      @JsonKey(name: 'weather_code') final List<int>? weatherCode,
      @JsonKey(name: 'apparent_temperature_max')
      final List<num>? apparentTemperatureMax})
      : _time = time,
        _weatherCode = weatherCode,
        _apparentTemperatureMax = apparentTemperatureMax;

  factory _$DailyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyImplFromJson(json);

  final List<String>? _time;
  @override
  List<String>? get time {
    final value = _time;
    if (value == null) return null;
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _weatherCode;
  @override
  @JsonKey(name: 'weather_code')
  List<int>? get weatherCode {
    final value = _weatherCode;
    if (value == null) return null;
    if (_weatherCode is EqualUnmodifiableListView) return _weatherCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<num>? _apparentTemperatureMax;
  @override
  @JsonKey(name: 'apparent_temperature_max')
  List<num>? get apparentTemperatureMax {
    final value = _apparentTemperatureMax;
    if (value == null) return null;
    if (_apparentTemperatureMax is EqualUnmodifiableListView)
      return _apparentTemperatureMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Daily(time: $time, weatherCode: $weatherCode, apparentTemperatureMax: $apparentTemperatureMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._weatherCode, _weatherCode) &&
            const DeepCollectionEquality().equals(
                other._apparentTemperatureMax, _apparentTemperatureMax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_weatherCode),
      const DeepCollectionEquality().hash(_apparentTemperatureMax));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyImplCopyWith<_$DailyImpl> get copyWith =>
      __$$DailyImplCopyWithImpl<_$DailyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyImplToJson(
      this,
    );
  }
}

abstract class _Daily implements Daily {
  factory _Daily(
      {final List<String>? time,
      @JsonKey(name: 'weather_code') final List<int>? weatherCode,
      @JsonKey(name: 'apparent_temperature_max')
      final List<num>? apparentTemperatureMax}) = _$DailyImpl;

  factory _Daily.fromJson(Map<String, dynamic> json) = _$DailyImpl.fromJson;

  @override
  List<String>? get time;
  @override
  @JsonKey(name: 'weather_code')
  List<int>? get weatherCode;
  @override
  @JsonKey(name: 'apparent_temperature_max')
  List<num>? get apparentTemperatureMax;
  @override
  @JsonKey(ignore: true)
  _$$DailyImplCopyWith<_$DailyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
