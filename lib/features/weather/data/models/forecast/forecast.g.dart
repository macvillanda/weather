// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Forecast> _$forecastSerializer = new _$ForecastSerializer();

class _$ForecastSerializer implements StructuredSerializer<Forecast> {
  @override
  final Iterable<Type> types = const [Forecast, _$Forecast];
  @override
  final String wireName = 'Forecast';

  @override
  Iterable<Object?> serialize(Serializers serializers, Forecast object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(double)),
      'generationtime_ms',
      serializers.serialize(object.generationtimeMs,
          specifiedType: const FullType(double)),
      'utc_offset_seconds',
      serializers.serialize(object.utcOffsetSeconds,
          specifiedType: const FullType(double)),
      'timezone',
      serializers.serialize(object.timezone,
          specifiedType: const FullType(String)),
      'timezone_abbreviation',
      serializers.serialize(object.timezoneAbbreviation,
          specifiedType: const FullType(String)),
      'elevation',
      serializers.serialize(object.elevation,
          specifiedType: const FullType(double)),
      'current_units',
      serializers.serialize(object.currentUnits,
          specifiedType: const FullType(CurrentUnits)),
      'current',
      serializers.serialize(object.current,
          specifiedType: const FullType(Current)),
      'daily_units',
      serializers.serialize(object.dailyUnits,
          specifiedType: const FullType(DailyUnits)),
      'daily',
      serializers.serialize(object.daily, specifiedType: const FullType(Daily)),
    ];

    return result;
  }

  @override
  Forecast deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ForecastBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'generationtime_ms':
          result.generationtimeMs = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'utc_offset_seconds':
          result.utcOffsetSeconds = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'timezone':
          result.timezone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'timezone_abbreviation':
          result.timezoneAbbreviation = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'elevation':
          result.elevation = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'current_units':
          result.currentUnits.replace(serializers.deserialize(value,
              specifiedType: const FullType(CurrentUnits))! as CurrentUnits);
          break;
        case 'current':
          result.current.replace(serializers.deserialize(value,
              specifiedType: const FullType(Current))! as Current);
          break;
        case 'daily_units':
          result.dailyUnits.replace(serializers.deserialize(value,
              specifiedType: const FullType(DailyUnits))! as DailyUnits);
          break;
        case 'daily':
          result.daily.replace(serializers.deserialize(value,
              specifiedType: const FullType(Daily))! as Daily);
          break;
      }
    }

    return result.build();
  }
}

class _$Forecast extends Forecast {
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double generationtimeMs;
  @override
  final double utcOffsetSeconds;
  @override
  final String timezone;
  @override
  final String timezoneAbbreviation;
  @override
  final double elevation;
  @override
  final CurrentUnits currentUnits;
  @override
  final Current current;
  @override
  final DailyUnits dailyUnits;
  @override
  final Daily daily;

  factory _$Forecast([void Function(ForecastBuilder)? updates]) =>
      (new ForecastBuilder()..update(updates))._build();

  _$Forecast._(
      {required this.latitude,
      required this.longitude,
      required this.generationtimeMs,
      required this.utcOffsetSeconds,
      required this.timezone,
      required this.timezoneAbbreviation,
      required this.elevation,
      required this.currentUnits,
      required this.current,
      required this.dailyUnits,
      required this.daily})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(latitude, r'Forecast', 'latitude');
    BuiltValueNullFieldError.checkNotNull(longitude, r'Forecast', 'longitude');
    BuiltValueNullFieldError.checkNotNull(
        generationtimeMs, r'Forecast', 'generationtimeMs');
    BuiltValueNullFieldError.checkNotNull(
        utcOffsetSeconds, r'Forecast', 'utcOffsetSeconds');
    BuiltValueNullFieldError.checkNotNull(timezone, r'Forecast', 'timezone');
    BuiltValueNullFieldError.checkNotNull(
        timezoneAbbreviation, r'Forecast', 'timezoneAbbreviation');
    BuiltValueNullFieldError.checkNotNull(elevation, r'Forecast', 'elevation');
    BuiltValueNullFieldError.checkNotNull(
        currentUnits, r'Forecast', 'currentUnits');
    BuiltValueNullFieldError.checkNotNull(current, r'Forecast', 'current');
    BuiltValueNullFieldError.checkNotNull(
        dailyUnits, r'Forecast', 'dailyUnits');
    BuiltValueNullFieldError.checkNotNull(daily, r'Forecast', 'daily');
  }

  @override
  Forecast rebuild(void Function(ForecastBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastBuilder toBuilder() => new ForecastBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Forecast &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        generationtimeMs == other.generationtimeMs &&
        utcOffsetSeconds == other.utcOffsetSeconds &&
        timezone == other.timezone &&
        timezoneAbbreviation == other.timezoneAbbreviation &&
        elevation == other.elevation &&
        currentUnits == other.currentUnits &&
        current == other.current &&
        dailyUnits == other.dailyUnits &&
        daily == other.daily;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, generationtimeMs.hashCode);
    _$hash = $jc(_$hash, utcOffsetSeconds.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, timezoneAbbreviation.hashCode);
    _$hash = $jc(_$hash, elevation.hashCode);
    _$hash = $jc(_$hash, currentUnits.hashCode);
    _$hash = $jc(_$hash, current.hashCode);
    _$hash = $jc(_$hash, dailyUnits.hashCode);
    _$hash = $jc(_$hash, daily.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Forecast')
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('generationtimeMs', generationtimeMs)
          ..add('utcOffsetSeconds', utcOffsetSeconds)
          ..add('timezone', timezone)
          ..add('timezoneAbbreviation', timezoneAbbreviation)
          ..add('elevation', elevation)
          ..add('currentUnits', currentUnits)
          ..add('current', current)
          ..add('dailyUnits', dailyUnits)
          ..add('daily', daily))
        .toString();
  }
}

class ForecastBuilder implements Builder<Forecast, ForecastBuilder> {
  _$Forecast? _$v;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  double? _generationtimeMs;
  double? get generationtimeMs => _$this._generationtimeMs;
  set generationtimeMs(double? generationtimeMs) =>
      _$this._generationtimeMs = generationtimeMs;

  double? _utcOffsetSeconds;
  double? get utcOffsetSeconds => _$this._utcOffsetSeconds;
  set utcOffsetSeconds(double? utcOffsetSeconds) =>
      _$this._utcOffsetSeconds = utcOffsetSeconds;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  String? _timezoneAbbreviation;
  String? get timezoneAbbreviation => _$this._timezoneAbbreviation;
  set timezoneAbbreviation(String? timezoneAbbreviation) =>
      _$this._timezoneAbbreviation = timezoneAbbreviation;

  double? _elevation;
  double? get elevation => _$this._elevation;
  set elevation(double? elevation) => _$this._elevation = elevation;

  CurrentUnitsBuilder? _currentUnits;
  CurrentUnitsBuilder get currentUnits =>
      _$this._currentUnits ??= new CurrentUnitsBuilder();
  set currentUnits(CurrentUnitsBuilder? currentUnits) =>
      _$this._currentUnits = currentUnits;

  CurrentBuilder? _current;
  CurrentBuilder get current => _$this._current ??= new CurrentBuilder();
  set current(CurrentBuilder? current) => _$this._current = current;

  DailyUnitsBuilder? _dailyUnits;
  DailyUnitsBuilder get dailyUnits =>
      _$this._dailyUnits ??= new DailyUnitsBuilder();
  set dailyUnits(DailyUnitsBuilder? dailyUnits) =>
      _$this._dailyUnits = dailyUnits;

  DailyBuilder? _daily;
  DailyBuilder get daily => _$this._daily ??= new DailyBuilder();
  set daily(DailyBuilder? daily) => _$this._daily = daily;

  ForecastBuilder();

  ForecastBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _generationtimeMs = $v.generationtimeMs;
      _utcOffsetSeconds = $v.utcOffsetSeconds;
      _timezone = $v.timezone;
      _timezoneAbbreviation = $v.timezoneAbbreviation;
      _elevation = $v.elevation;
      _currentUnits = $v.currentUnits.toBuilder();
      _current = $v.current.toBuilder();
      _dailyUnits = $v.dailyUnits.toBuilder();
      _daily = $v.daily.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Forecast other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Forecast;
  }

  @override
  void update(void Function(ForecastBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Forecast build() => _build();

  _$Forecast _build() {
    _$Forecast _$result;
    try {
      _$result = _$v ??
          new _$Forecast._(
              latitude: BuiltValueNullFieldError.checkNotNull(
                  latitude, r'Forecast', 'latitude'),
              longitude: BuiltValueNullFieldError.checkNotNull(
                  longitude, r'Forecast', 'longitude'),
              generationtimeMs: BuiltValueNullFieldError.checkNotNull(
                  generationtimeMs, r'Forecast', 'generationtimeMs'),
              utcOffsetSeconds: BuiltValueNullFieldError.checkNotNull(
                  utcOffsetSeconds, r'Forecast', 'utcOffsetSeconds'),
              timezone: BuiltValueNullFieldError.checkNotNull(
                  timezone, r'Forecast', 'timezone'),
              timezoneAbbreviation: BuiltValueNullFieldError.checkNotNull(
                  timezoneAbbreviation, r'Forecast', 'timezoneAbbreviation'),
              elevation: BuiltValueNullFieldError.checkNotNull(
                  elevation, r'Forecast', 'elevation'),
              currentUnits: currentUnits.build(),
              current: current.build(),
              dailyUnits: dailyUnits.build(),
              daily: daily.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currentUnits';
        currentUnits.build();
        _$failedField = 'current';
        current.build();
        _$failedField = 'dailyUnits';
        dailyUnits.build();
        _$failedField = 'daily';
        daily.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Forecast', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
