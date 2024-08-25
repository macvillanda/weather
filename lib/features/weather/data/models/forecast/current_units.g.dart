// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_units.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CurrentUnits> _$currentUnitsSerializer =
    new _$CurrentUnitsSerializer();

class _$CurrentUnitsSerializer implements StructuredSerializer<CurrentUnits> {
  @override
  final Iterable<Type> types = const [CurrentUnits, _$CurrentUnits];
  @override
  final String wireName = 'CurrentUnits';

  @override
  Iterable<Object?> serialize(Serializers serializers, CurrentUnits object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(String)),
      'interval',
      serializers.serialize(object.interval,
          specifiedType: const FullType(String)),
      'temperature_2m',
      serializers.serialize(object.temperature2m,
          specifiedType: const FullType(String)),
      'weather_code',
      serializers.serialize(object.weatherCode,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CurrentUnits deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrentUnitsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'interval':
          result.interval = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'temperature_2m':
          result.temperature2m = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'weather_code':
          result.weatherCode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CurrentUnits extends CurrentUnits {
  @override
  final String time;
  @override
  final String interval;
  @override
  final String temperature2m;
  @override
  final String weatherCode;

  factory _$CurrentUnits([void Function(CurrentUnitsBuilder)? updates]) =>
      (new CurrentUnitsBuilder()..update(updates))._build();

  _$CurrentUnits._(
      {required this.time,
      required this.interval,
      required this.temperature2m,
      required this.weatherCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(time, r'CurrentUnits', 'time');
    BuiltValueNullFieldError.checkNotNull(
        interval, r'CurrentUnits', 'interval');
    BuiltValueNullFieldError.checkNotNull(
        temperature2m, r'CurrentUnits', 'temperature2m');
    BuiltValueNullFieldError.checkNotNull(
        weatherCode, r'CurrentUnits', 'weatherCode');
  }

  @override
  CurrentUnits rebuild(void Function(CurrentUnitsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrentUnitsBuilder toBuilder() => new CurrentUnitsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrentUnits &&
        time == other.time &&
        interval == other.interval &&
        temperature2m == other.temperature2m &&
        weatherCode == other.weatherCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, temperature2m.hashCode);
    _$hash = $jc(_$hash, weatherCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CurrentUnits')
          ..add('time', time)
          ..add('interval', interval)
          ..add('temperature2m', temperature2m)
          ..add('weatherCode', weatherCode))
        .toString();
  }
}

class CurrentUnitsBuilder
    implements Builder<CurrentUnits, CurrentUnitsBuilder> {
  _$CurrentUnits? _$v;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _interval;
  String? get interval => _$this._interval;
  set interval(String? interval) => _$this._interval = interval;

  String? _temperature2m;
  String? get temperature2m => _$this._temperature2m;
  set temperature2m(String? temperature2m) =>
      _$this._temperature2m = temperature2m;

  String? _weatherCode;
  String? get weatherCode => _$this._weatherCode;
  set weatherCode(String? weatherCode) => _$this._weatherCode = weatherCode;

  CurrentUnitsBuilder();

  CurrentUnitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _time = $v.time;
      _interval = $v.interval;
      _temperature2m = $v.temperature2m;
      _weatherCode = $v.weatherCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrentUnits other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CurrentUnits;
  }

  @override
  void update(void Function(CurrentUnitsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CurrentUnits build() => _build();

  _$CurrentUnits _build() {
    final _$result = _$v ??
        new _$CurrentUnits._(
            time: BuiltValueNullFieldError.checkNotNull(
                time, r'CurrentUnits', 'time'),
            interval: BuiltValueNullFieldError.checkNotNull(
                interval, r'CurrentUnits', 'interval'),
            temperature2m: BuiltValueNullFieldError.checkNotNull(
                temperature2m, r'CurrentUnits', 'temperature2m'),
            weatherCode: BuiltValueNullFieldError.checkNotNull(
                weatherCode, r'CurrentUnits', 'weatherCode'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
