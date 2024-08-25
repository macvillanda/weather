// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Forecast _$ForecastFromJson(Map<String, dynamic> json) {
  return _Forecast.fromJson(json);
}

/// @nodoc
mixin _$Forecast {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'generationtime_ms')
  double? get generationtimeMs => throw _privateConstructorUsedError;
  @JsonKey(name: 'utc_offset_seconds')
  int? get utcOffsetSeconds => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone_abbreviation')
  String? get timezoneAbbreviation => throw _privateConstructorUsedError;
  int? get elevation => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_units')
  CurrentUnits? get currentUnits => throw _privateConstructorUsedError;
  Current? get current => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_units')
  DailyUnits? get dailyUnits => throw _privateConstructorUsedError;
  Daily? get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastCopyWith<Forecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastCopyWith<$Res> {
  factory $ForecastCopyWith(Forecast value, $Res Function(Forecast) then) =
      _$ForecastCopyWithImpl<$Res, Forecast>;
  @useResult
  $Res call(
      {double? latitude,
      double? longitude,
      @JsonKey(name: 'generationtime_ms') double? generationtimeMs,
      @JsonKey(name: 'utc_offset_seconds') int? utcOffsetSeconds,
      String? timezone,
      @JsonKey(name: 'timezone_abbreviation') String? timezoneAbbreviation,
      int? elevation,
      @JsonKey(name: 'current_units') CurrentUnits? currentUnits,
      Current? current,
      @JsonKey(name: 'daily_units') DailyUnits? dailyUnits,
      Daily? daily});

  $CurrentUnitsCopyWith<$Res>? get currentUnits;
  $CurrentCopyWith<$Res>? get current;
  $DailyUnitsCopyWith<$Res>? get dailyUnits;
  $DailyCopyWith<$Res>? get daily;
}

/// @nodoc
class _$ForecastCopyWithImpl<$Res, $Val extends Forecast>
    implements $ForecastCopyWith<$Res> {
  _$ForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? generationtimeMs = freezed,
    Object? utcOffsetSeconds = freezed,
    Object? timezone = freezed,
    Object? timezoneAbbreviation = freezed,
    Object? elevation = freezed,
    Object? currentUnits = freezed,
    Object? current = freezed,
    Object? dailyUnits = freezed,
    Object? daily = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      generationtimeMs: freezed == generationtimeMs
          ? _value.generationtimeMs
          : generationtimeMs // ignore: cast_nullable_to_non_nullable
              as double?,
      utcOffsetSeconds: freezed == utcOffsetSeconds
          ? _value.utcOffsetSeconds
          : utcOffsetSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      timezoneAbbreviation: freezed == timezoneAbbreviation
          ? _value.timezoneAbbreviation
          : timezoneAbbreviation // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as int?,
      currentUnits: freezed == currentUnits
          ? _value.currentUnits
          : currentUnits // ignore: cast_nullable_to_non_nullable
              as CurrentUnits?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current?,
      dailyUnits: freezed == dailyUnits
          ? _value.dailyUnits
          : dailyUnits // ignore: cast_nullable_to_non_nullable
              as DailyUnits?,
      daily: freezed == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as Daily?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentUnitsCopyWith<$Res>? get currentUnits {
    if (_value.currentUnits == null) {
      return null;
    }

    return $CurrentUnitsCopyWith<$Res>(_value.currentUnits!, (value) {
      return _then(_value.copyWith(currentUnits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $CurrentCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DailyUnitsCopyWith<$Res>? get dailyUnits {
    if (_value.dailyUnits == null) {
      return null;
    }

    return $DailyUnitsCopyWith<$Res>(_value.dailyUnits!, (value) {
      return _then(_value.copyWith(dailyUnits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DailyCopyWith<$Res>? get daily {
    if (_value.daily == null) {
      return null;
    }

    return $DailyCopyWith<$Res>(_value.daily!, (value) {
      return _then(_value.copyWith(daily: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastImplCopyWith<$Res>
    implements $ForecastCopyWith<$Res> {
  factory _$$ForecastImplCopyWith(
          _$ForecastImpl value, $Res Function(_$ForecastImpl) then) =
      __$$ForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? latitude,
      double? longitude,
      @JsonKey(name: 'generationtime_ms') double? generationtimeMs,
      @JsonKey(name: 'utc_offset_seconds') int? utcOffsetSeconds,
      String? timezone,
      @JsonKey(name: 'timezone_abbreviation') String? timezoneAbbreviation,
      int? elevation,
      @JsonKey(name: 'current_units') CurrentUnits? currentUnits,
      Current? current,
      @JsonKey(name: 'daily_units') DailyUnits? dailyUnits,
      Daily? daily});

  @override
  $CurrentUnitsCopyWith<$Res>? get currentUnits;
  @override
  $CurrentCopyWith<$Res>? get current;
  @override
  $DailyUnitsCopyWith<$Res>? get dailyUnits;
  @override
  $DailyCopyWith<$Res>? get daily;
}

/// @nodoc
class __$$ForecastImplCopyWithImpl<$Res>
    extends _$ForecastCopyWithImpl<$Res, _$ForecastImpl>
    implements _$$ForecastImplCopyWith<$Res> {
  __$$ForecastImplCopyWithImpl(
      _$ForecastImpl _value, $Res Function(_$ForecastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? generationtimeMs = freezed,
    Object? utcOffsetSeconds = freezed,
    Object? timezone = freezed,
    Object? timezoneAbbreviation = freezed,
    Object? elevation = freezed,
    Object? currentUnits = freezed,
    Object? current = freezed,
    Object? dailyUnits = freezed,
    Object? daily = freezed,
  }) {
    return _then(_$ForecastImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      generationtimeMs: freezed == generationtimeMs
          ? _value.generationtimeMs
          : generationtimeMs // ignore: cast_nullable_to_non_nullable
              as double?,
      utcOffsetSeconds: freezed == utcOffsetSeconds
          ? _value.utcOffsetSeconds
          : utcOffsetSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      timezoneAbbreviation: freezed == timezoneAbbreviation
          ? _value.timezoneAbbreviation
          : timezoneAbbreviation // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as int?,
      currentUnits: freezed == currentUnits
          ? _value.currentUnits
          : currentUnits // ignore: cast_nullable_to_non_nullable
              as CurrentUnits?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current?,
      dailyUnits: freezed == dailyUnits
          ? _value.dailyUnits
          : dailyUnits // ignore: cast_nullable_to_non_nullable
              as DailyUnits?,
      daily: freezed == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as Daily?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastImpl implements _Forecast {
  _$ForecastImpl(
      {this.latitude,
      this.longitude,
      @JsonKey(name: 'generationtime_ms') this.generationtimeMs,
      @JsonKey(name: 'utc_offset_seconds') this.utcOffsetSeconds,
      this.timezone,
      @JsonKey(name: 'timezone_abbreviation') this.timezoneAbbreviation,
      this.elevation,
      @JsonKey(name: 'current_units') this.currentUnits,
      this.current,
      @JsonKey(name: 'daily_units') this.dailyUnits,
      this.daily});

  factory _$ForecastImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastImplFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  @JsonKey(name: 'generationtime_ms')
  final double? generationtimeMs;
  @override
  @JsonKey(name: 'utc_offset_seconds')
  final int? utcOffsetSeconds;
  @override
  final String? timezone;
  @override
  @JsonKey(name: 'timezone_abbreviation')
  final String? timezoneAbbreviation;
  @override
  final int? elevation;
  @override
  @JsonKey(name: 'current_units')
  final CurrentUnits? currentUnits;
  @override
  final Current? current;
  @override
  @JsonKey(name: 'daily_units')
  final DailyUnits? dailyUnits;
  @override
  final Daily? daily;

  @override
  String toString() {
    return 'Forecast(latitude: $latitude, longitude: $longitude, generationtimeMs: $generationtimeMs, utcOffsetSeconds: $utcOffsetSeconds, timezone: $timezone, timezoneAbbreviation: $timezoneAbbreviation, elevation: $elevation, currentUnits: $currentUnits, current: $current, dailyUnits: $dailyUnits, daily: $daily)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.generationtimeMs, generationtimeMs) ||
                other.generationtimeMs == generationtimeMs) &&
            (identical(other.utcOffsetSeconds, utcOffsetSeconds) ||
                other.utcOffsetSeconds == utcOffsetSeconds) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezoneAbbreviation, timezoneAbbreviation) ||
                other.timezoneAbbreviation == timezoneAbbreviation) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.currentUnits, currentUnits) ||
                other.currentUnits == currentUnits) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.dailyUnits, dailyUnits) ||
                other.dailyUnits == dailyUnits) &&
            (identical(other.daily, daily) || other.daily == daily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      latitude,
      longitude,
      generationtimeMs,
      utcOffsetSeconds,
      timezone,
      timezoneAbbreviation,
      elevation,
      currentUnits,
      current,
      dailyUnits,
      daily);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastImplCopyWith<_$ForecastImpl> get copyWith =>
      __$$ForecastImplCopyWithImpl<_$ForecastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastImplToJson(
      this,
    );
  }
}

abstract class _Forecast implements Forecast {
  factory _Forecast(
      {final double? latitude,
      final double? longitude,
      @JsonKey(name: 'generationtime_ms') final double? generationtimeMs,
      @JsonKey(name: 'utc_offset_seconds') final int? utcOffsetSeconds,
      final String? timezone,
      @JsonKey(name: 'timezone_abbreviation')
      final String? timezoneAbbreviation,
      final int? elevation,
      @JsonKey(name: 'current_units') final CurrentUnits? currentUnits,
      final Current? current,
      @JsonKey(name: 'daily_units') final DailyUnits? dailyUnits,
      final Daily? daily}) = _$ForecastImpl;

  factory _Forecast.fromJson(Map<String, dynamic> json) =
      _$ForecastImpl.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(name: 'generationtime_ms')
  double? get generationtimeMs;
  @override
  @JsonKey(name: 'utc_offset_seconds')
  int? get utcOffsetSeconds;
  @override
  String? get timezone;
  @override
  @JsonKey(name: 'timezone_abbreviation')
  String? get timezoneAbbreviation;
  @override
  int? get elevation;
  @override
  @JsonKey(name: 'current_units')
  CurrentUnits? get currentUnits;
  @override
  Current? get current;
  @override
  @JsonKey(name: 'daily_units')
  DailyUnits? get dailyUnits;
  @override
  Daily? get daily;
  @override
  @JsonKey(ignore: true)
  _$$ForecastImplCopyWith<_$ForecastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
