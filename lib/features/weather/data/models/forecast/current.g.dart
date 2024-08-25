// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Current> _$currentSerializer = new _$CurrentSerializer();

class _$CurrentSerializer implements StructuredSerializer<Current> {
  @override
  final Iterable<Type> types = const [Current, _$Current];
  @override
  final String wireName = 'Current';

  @override
  Iterable<Object?> serialize(Serializers serializers, Current object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(String)),
      'interval',
      serializers.serialize(object.interval,
          specifiedType: const FullType(double)),
      'temperature_2m',
      serializers.serialize(object.temperature2m,
          specifiedType: const FullType(double)),
      'weather_code',
      serializers.serialize(object.weatherCode,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Current deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrentBuilder();

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
              specifiedType: const FullType(double))! as double;
          break;
        case 'temperature_2m':
          result.temperature2m = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'weather_code':
          result.weatherCode = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Current extends Current {
  @override
  final String time;
  @override
  final double interval;
  @override
  final double temperature2m;
  @override
  final double weatherCode;

  factory _$Current([void Function(CurrentBuilder)? updates]) =>
      (new CurrentBuilder()..update(updates))._build();

  _$Current._(
      {required this.time,
      required this.interval,
      required this.temperature2m,
      required this.weatherCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(time, r'Current', 'time');
    BuiltValueNullFieldError.checkNotNull(interval, r'Current', 'interval');
    BuiltValueNullFieldError.checkNotNull(
        temperature2m, r'Current', 'temperature2m');
    BuiltValueNullFieldError.checkNotNull(
        weatherCode, r'Current', 'weatherCode');
  }

  @override
  Current rebuild(void Function(CurrentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrentBuilder toBuilder() => new CurrentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Current &&
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
    return (newBuiltValueToStringHelper(r'Current')
          ..add('time', time)
          ..add('interval', interval)
          ..add('temperature2m', temperature2m)
          ..add('weatherCode', weatherCode))
        .toString();
  }
}

class CurrentBuilder implements Builder<Current, CurrentBuilder> {
  _$Current? _$v;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  double? _interval;
  double? get interval => _$this._interval;
  set interval(double? interval) => _$this._interval = interval;

  double? _temperature2m;
  double? get temperature2m => _$this._temperature2m;
  set temperature2m(double? temperature2m) =>
      _$this._temperature2m = temperature2m;

  double? _weatherCode;
  double? get weatherCode => _$this._weatherCode;
  set weatherCode(double? weatherCode) => _$this._weatherCode = weatherCode;

  CurrentBuilder();

  CurrentBuilder get _$this {
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
  void replace(Current other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Current;
  }

  @override
  void update(void Function(CurrentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Current build() => _build();

  _$Current _build() {
    final _$result = _$v ??
        new _$Current._(
            time:
                BuiltValueNullFieldError.checkNotNull(time, r'Current', 'time'),
            interval: BuiltValueNullFieldError.checkNotNull(
                interval, r'Current', 'interval'),
            temperature2m: BuiltValueNullFieldError.checkNotNull(
                temperature2m, r'Current', 'temperature2m'),
            weatherCode: BuiltValueNullFieldError.checkNotNull(
                weatherCode, r'Current', 'weatherCode'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
