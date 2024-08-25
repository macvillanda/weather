// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Daily> _$dailySerializer = new _$DailySerializer();

class _$DailySerializer implements StructuredSerializer<Daily> {
  @override
  final Iterable<Type> types = const [Daily, _$Daily];
  @override
  final String wireName = 'Daily';

  @override
  Iterable<Object?> serialize(Serializers serializers, Daily object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'time',
      serializers.serialize(object.time,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'weather_code',
      serializers.serialize(object.weatherCode,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
      'apparent_temperature_max',
      serializers.serialize(object.apparentTemperatureMax,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
    ];

    return result;
  }

  @override
  Daily deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DailyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'time':
          result.time.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'weather_code':
          result.weatherCode.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
        case 'apparent_temperature_max':
          result.apparentTemperatureMax.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Daily extends Daily {
  @override
  final BuiltList<String> time;
  @override
  final BuiltList<double> weatherCode;
  @override
  final BuiltList<double> apparentTemperatureMax;

  factory _$Daily([void Function(DailyBuilder)? updates]) =>
      (new DailyBuilder()..update(updates))._build();

  _$Daily._(
      {required this.time,
      required this.weatherCode,
      required this.apparentTemperatureMax})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(time, r'Daily', 'time');
    BuiltValueNullFieldError.checkNotNull(weatherCode, r'Daily', 'weatherCode');
    BuiltValueNullFieldError.checkNotNull(
        apparentTemperatureMax, r'Daily', 'apparentTemperatureMax');
  }

  @override
  Daily rebuild(void Function(DailyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyBuilder toBuilder() => new DailyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Daily &&
        time == other.time &&
        weatherCode == other.weatherCode &&
        apparentTemperatureMax == other.apparentTemperatureMax;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, weatherCode.hashCode);
    _$hash = $jc(_$hash, apparentTemperatureMax.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Daily')
          ..add('time', time)
          ..add('weatherCode', weatherCode)
          ..add('apparentTemperatureMax', apparentTemperatureMax))
        .toString();
  }
}

class DailyBuilder implements Builder<Daily, DailyBuilder> {
  _$Daily? _$v;

  ListBuilder<String>? _time;
  ListBuilder<String> get time => _$this._time ??= new ListBuilder<String>();
  set time(ListBuilder<String>? time) => _$this._time = time;

  ListBuilder<double>? _weatherCode;
  ListBuilder<double> get weatherCode =>
      _$this._weatherCode ??= new ListBuilder<double>();
  set weatherCode(ListBuilder<double>? weatherCode) =>
      _$this._weatherCode = weatherCode;

  ListBuilder<double>? _apparentTemperatureMax;
  ListBuilder<double> get apparentTemperatureMax =>
      _$this._apparentTemperatureMax ??= new ListBuilder<double>();
  set apparentTemperatureMax(ListBuilder<double>? apparentTemperatureMax) =>
      _$this._apparentTemperatureMax = apparentTemperatureMax;

  DailyBuilder();

  DailyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _time = $v.time.toBuilder();
      _weatherCode = $v.weatherCode.toBuilder();
      _apparentTemperatureMax = $v.apparentTemperatureMax.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Daily other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Daily;
  }

  @override
  void update(void Function(DailyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Daily build() => _build();

  _$Daily _build() {
    _$Daily _$result;
    try {
      _$result = _$v ??
          new _$Daily._(
              time: time.build(),
              weatherCode: weatherCode.build(),
              apparentTemperatureMax: apparentTemperatureMax.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'time';
        time.build();
        _$failedField = 'weatherCode';
        weatherCode.build();
        _$failedField = 'apparentTemperatureMax';
        apparentTemperatureMax.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Daily', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
