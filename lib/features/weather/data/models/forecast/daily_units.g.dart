// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_units.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DailyUnits> _$dailyUnitsSerializer = new _$DailyUnitsSerializer();

class _$DailyUnitsSerializer implements StructuredSerializer<DailyUnits> {
  @override
  final Iterable<Type> types = const [DailyUnits, _$DailyUnits];
  @override
  final String wireName = 'DailyUnits';

  @override
  Iterable<Object?> serialize(Serializers serializers, DailyUnits object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(String)),
      'weather_code',
      serializers.serialize(object.weatherCode,
          specifiedType: const FullType(String)),
      'apparent_temperature_max',
      serializers.serialize(object.apparentTemperatureMax,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  DailyUnits deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DailyUnitsBuilder();

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
        case 'weather_code':
          result.weatherCode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'apparent_temperature_max':
          result.apparentTemperatureMax = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DailyUnits extends DailyUnits {
  @override
  final String time;
  @override
  final String weatherCode;
  @override
  final String apparentTemperatureMax;

  factory _$DailyUnits([void Function(DailyUnitsBuilder)? updates]) =>
      (new DailyUnitsBuilder()..update(updates))._build();

  _$DailyUnits._(
      {required this.time,
      required this.weatherCode,
      required this.apparentTemperatureMax})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(time, r'DailyUnits', 'time');
    BuiltValueNullFieldError.checkNotNull(
        weatherCode, r'DailyUnits', 'weatherCode');
    BuiltValueNullFieldError.checkNotNull(
        apparentTemperatureMax, r'DailyUnits', 'apparentTemperatureMax');
  }

  @override
  DailyUnits rebuild(void Function(DailyUnitsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyUnitsBuilder toBuilder() => new DailyUnitsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyUnits &&
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
    return (newBuiltValueToStringHelper(r'DailyUnits')
          ..add('time', time)
          ..add('weatherCode', weatherCode)
          ..add('apparentTemperatureMax', apparentTemperatureMax))
        .toString();
  }
}

class DailyUnitsBuilder implements Builder<DailyUnits, DailyUnitsBuilder> {
  _$DailyUnits? _$v;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _weatherCode;
  String? get weatherCode => _$this._weatherCode;
  set weatherCode(String? weatherCode) => _$this._weatherCode = weatherCode;

  String? _apparentTemperatureMax;
  String? get apparentTemperatureMax => _$this._apparentTemperatureMax;
  set apparentTemperatureMax(String? apparentTemperatureMax) =>
      _$this._apparentTemperatureMax = apparentTemperatureMax;

  DailyUnitsBuilder();

  DailyUnitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _time = $v.time;
      _weatherCode = $v.weatherCode;
      _apparentTemperatureMax = $v.apparentTemperatureMax;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyUnits other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DailyUnits;
  }

  @override
  void update(void Function(DailyUnitsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyUnits build() => _build();

  _$DailyUnits _build() {
    final _$result = _$v ??
        new _$DailyUnits._(
            time: BuiltValueNullFieldError.checkNotNull(
                time, r'DailyUnits', 'time'),
            weatherCode: BuiltValueNullFieldError.checkNotNull(
                weatherCode, r'DailyUnits', 'weatherCode'),
            apparentTemperatureMax: BuiltValueNullFieldError.checkNotNull(
                apparentTemperatureMax,
                r'DailyUnits',
                'apparentTemperatureMax'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
