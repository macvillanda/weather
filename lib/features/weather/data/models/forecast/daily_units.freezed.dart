// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_units.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyUnits _$DailyUnitsFromJson(Map<String, dynamic> json) {
  return _DailyUnits.fromJson(json);
}

/// @nodoc
mixin _$DailyUnits {
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_code')
  String? get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'apparent_temperature_max')
  String? get apparentTemperatureMax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyUnitsCopyWith<DailyUnits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyUnitsCopyWith<$Res> {
  factory $DailyUnitsCopyWith(
          DailyUnits value, $Res Function(DailyUnits) then) =
      _$DailyUnitsCopyWithImpl<$Res, DailyUnits>;
  @useResult
  $Res call(
      {String? time,
      @JsonKey(name: 'weather_code') String? weatherCode,
      @JsonKey(name: 'apparent_temperature_max')
      String? apparentTemperatureMax});
}

/// @nodoc
class _$DailyUnitsCopyWithImpl<$Res, $Val extends DailyUnits>
    implements $DailyUnitsCopyWith<$Res> {
  _$DailyUnitsCopyWithImpl(this._value, this._then);

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
              as String?,
      weatherCode: freezed == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as String?,
      apparentTemperatureMax: freezed == apparentTemperatureMax
          ? _value.apparentTemperatureMax
          : apparentTemperatureMax // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyUnitsImplCopyWith<$Res>
    implements $DailyUnitsCopyWith<$Res> {
  factory _$$DailyUnitsImplCopyWith(
          _$DailyUnitsImpl value, $Res Function(_$DailyUnitsImpl) then) =
      __$$DailyUnitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? time,
      @JsonKey(name: 'weather_code') String? weatherCode,
      @JsonKey(name: 'apparent_temperature_max')
      String? apparentTemperatureMax});
}

/// @nodoc
class __$$DailyUnitsImplCopyWithImpl<$Res>
    extends _$DailyUnitsCopyWithImpl<$Res, _$DailyUnitsImpl>
    implements _$$DailyUnitsImplCopyWith<$Res> {
  __$$DailyUnitsImplCopyWithImpl(
      _$DailyUnitsImpl _value, $Res Function(_$DailyUnitsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? weatherCode = freezed,
    Object? apparentTemperatureMax = freezed,
  }) {
    return _then(_$DailyUnitsImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      weatherCode: freezed == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as String?,
      apparentTemperatureMax: freezed == apparentTemperatureMax
          ? _value.apparentTemperatureMax
          : apparentTemperatureMax // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyUnitsImpl implements _DailyUnits {
  _$DailyUnitsImpl(
      {this.time,
      @JsonKey(name: 'weather_code') this.weatherCode,
      @JsonKey(name: 'apparent_temperature_max') this.apparentTemperatureMax});

  factory _$DailyUnitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyUnitsImplFromJson(json);

  @override
  final String? time;
  @override
  @JsonKey(name: 'weather_code')
  final String? weatherCode;
  @override
  @JsonKey(name: 'apparent_temperature_max')
  final String? apparentTemperatureMax;

  @override
  String toString() {
    return 'DailyUnits(time: $time, weatherCode: $weatherCode, apparentTemperatureMax: $apparentTemperatureMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyUnitsImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.weatherCode, weatherCode) ||
                other.weatherCode == weatherCode) &&
            (identical(other.apparentTemperatureMax, apparentTemperatureMax) ||
                other.apparentTemperatureMax == apparentTemperatureMax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, time, weatherCode, apparentTemperatureMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyUnitsImplCopyWith<_$DailyUnitsImpl> get copyWith =>
      __$$DailyUnitsImplCopyWithImpl<_$DailyUnitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyUnitsImplToJson(
      this,
    );
  }
}

abstract class _DailyUnits implements DailyUnits {
  factory _DailyUnits(
      {final String? time,
      @JsonKey(name: 'weather_code') final String? weatherCode,
      @JsonKey(name: 'apparent_temperature_max')
      final String? apparentTemperatureMax}) = _$DailyUnitsImpl;

  factory _DailyUnits.fromJson(Map<String, dynamic> json) =
      _$DailyUnitsImpl.fromJson;

  @override
  String? get time;
  @override
  @JsonKey(name: 'weather_code')
  String? get weatherCode;
  @override
  @JsonKey(name: 'apparent_temperature_max')
  String? get apparentTemperatureMax;
  @override
  @JsonKey(ignore: true)
  _$$DailyUnitsImplCopyWith<_$DailyUnitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
