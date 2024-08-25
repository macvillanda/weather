// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_units.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentUnits _$CurrentUnitsFromJson(Map<String, dynamic> json) {
  return _CurrentUnits.fromJson(json);
}

/// @nodoc
mixin _$CurrentUnits {
  String? get time => throw _privateConstructorUsedError;
  String? get interval => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m')
  String? get temperature2m => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_code')
  String? get weatherCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentUnitsCopyWith<CurrentUnits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUnitsCopyWith<$Res> {
  factory $CurrentUnitsCopyWith(
          CurrentUnits value, $Res Function(CurrentUnits) then) =
      _$CurrentUnitsCopyWithImpl<$Res, CurrentUnits>;
  @useResult
  $Res call(
      {String? time,
      String? interval,
      @JsonKey(name: 'temperature_2m') String? temperature2m,
      @JsonKey(name: 'weather_code') String? weatherCode});
}

/// @nodoc
class _$CurrentUnitsCopyWithImpl<$Res, $Val extends CurrentUnits>
    implements $CurrentUnitsCopyWith<$Res> {
  _$CurrentUnitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? interval = freezed,
    Object? temperature2m = freezed,
    Object? weatherCode = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature2m: freezed == temperature2m
          ? _value.temperature2m
          : temperature2m // ignore: cast_nullable_to_non_nullable
              as String?,
      weatherCode: freezed == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentUnitsImplCopyWith<$Res>
    implements $CurrentUnitsCopyWith<$Res> {
  factory _$$CurrentUnitsImplCopyWith(
          _$CurrentUnitsImpl value, $Res Function(_$CurrentUnitsImpl) then) =
      __$$CurrentUnitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? time,
      String? interval,
      @JsonKey(name: 'temperature_2m') String? temperature2m,
      @JsonKey(name: 'weather_code') String? weatherCode});
}

/// @nodoc
class __$$CurrentUnitsImplCopyWithImpl<$Res>
    extends _$CurrentUnitsCopyWithImpl<$Res, _$CurrentUnitsImpl>
    implements _$$CurrentUnitsImplCopyWith<$Res> {
  __$$CurrentUnitsImplCopyWithImpl(
      _$CurrentUnitsImpl _value, $Res Function(_$CurrentUnitsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? interval = freezed,
    Object? temperature2m = freezed,
    Object? weatherCode = freezed,
  }) {
    return _then(_$CurrentUnitsImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature2m: freezed == temperature2m
          ? _value.temperature2m
          : temperature2m // ignore: cast_nullable_to_non_nullable
              as String?,
      weatherCode: freezed == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentUnitsImpl implements _CurrentUnits {
  _$CurrentUnitsImpl(
      {this.time,
      this.interval,
      @JsonKey(name: 'temperature_2m') this.temperature2m,
      @JsonKey(name: 'weather_code') this.weatherCode});

  factory _$CurrentUnitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentUnitsImplFromJson(json);

  @override
  final String? time;
  @override
  final String? interval;
  @override
  @JsonKey(name: 'temperature_2m')
  final String? temperature2m;
  @override
  @JsonKey(name: 'weather_code')
  final String? weatherCode;

  @override
  String toString() {
    return 'CurrentUnits(time: $time, interval: $interval, temperature2m: $temperature2m, weatherCode: $weatherCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentUnitsImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.temperature2m, temperature2m) ||
                other.temperature2m == temperature2m) &&
            (identical(other.weatherCode, weatherCode) ||
                other.weatherCode == weatherCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, time, interval, temperature2m, weatherCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentUnitsImplCopyWith<_$CurrentUnitsImpl> get copyWith =>
      __$$CurrentUnitsImplCopyWithImpl<_$CurrentUnitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentUnitsImplToJson(
      this,
    );
  }
}

abstract class _CurrentUnits implements CurrentUnits {
  factory _CurrentUnits(
          {final String? time,
          final String? interval,
          @JsonKey(name: 'temperature_2m') final String? temperature2m,
          @JsonKey(name: 'weather_code') final String? weatherCode}) =
      _$CurrentUnitsImpl;

  factory _CurrentUnits.fromJson(Map<String, dynamic> json) =
      _$CurrentUnitsImpl.fromJson;

  @override
  String? get time;
  @override
  String? get interval;
  @override
  @JsonKey(name: 'temperature_2m')
  String? get temperature2m;
  @override
  @JsonKey(name: 'weather_code')
  String? get weatherCode;
  @override
  @JsonKey(ignore: true)
  _$$CurrentUnitsImplCopyWith<_$CurrentUnitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
