// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_forecast.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocalForecast> _$localForecastSerializer =
    new _$LocalForecastSerializer();

class _$LocalForecastSerializer implements StructuredSerializer<LocalForecast> {
  @override
  final Iterable<Type> types = const [LocalForecast, _$LocalForecast];
  @override
  final String wireName = 'LocalForecast';

  @override
  Iterable<Object?> serialize(Serializers serializers, LocalForecast object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'lastUsed',
      serializers.serialize(object.lastUsed,
          specifiedType: const FullType(String)),
      'forecast',
      serializers.serialize(object.forecast,
          specifiedType: const FullType(Forecast)),
    ];

    return result;
  }

  @override
  LocalForecast deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocalForecastBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastUsed':
          result.lastUsed = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'forecast':
          result.forecast.replace(serializers.deserialize(value,
              specifiedType: const FullType(Forecast))! as Forecast);
          break;
      }
    }

    return result.build();
  }
}

class _$LocalForecast extends LocalForecast {
  @override
  final String id;
  @override
  final String name;
  @override
  final String lastUsed;
  @override
  final Forecast forecast;

  factory _$LocalForecast([void Function(LocalForecastBuilder)? updates]) =>
      (new LocalForecastBuilder()..update(updates))._build();

  _$LocalForecast._(
      {required this.id,
      required this.name,
      required this.lastUsed,
      required this.forecast})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'LocalForecast', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'LocalForecast', 'name');
    BuiltValueNullFieldError.checkNotNull(
        lastUsed, r'LocalForecast', 'lastUsed');
    BuiltValueNullFieldError.checkNotNull(
        forecast, r'LocalForecast', 'forecast');
  }

  @override
  LocalForecast rebuild(void Function(LocalForecastBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocalForecastBuilder toBuilder() => new LocalForecastBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocalForecast &&
        id == other.id &&
        name == other.name &&
        lastUsed == other.lastUsed &&
        forecast == other.forecast;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, lastUsed.hashCode);
    _$hash = $jc(_$hash, forecast.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LocalForecast')
          ..add('id', id)
          ..add('name', name)
          ..add('lastUsed', lastUsed)
          ..add('forecast', forecast))
        .toString();
  }
}

class LocalForecastBuilder
    implements Builder<LocalForecast, LocalForecastBuilder> {
  _$LocalForecast? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _lastUsed;
  String? get lastUsed => _$this._lastUsed;
  set lastUsed(String? lastUsed) => _$this._lastUsed = lastUsed;

  ForecastBuilder? _forecast;
  ForecastBuilder get forecast => _$this._forecast ??= new ForecastBuilder();
  set forecast(ForecastBuilder? forecast) => _$this._forecast = forecast;

  LocalForecastBuilder();

  LocalForecastBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _lastUsed = $v.lastUsed;
      _forecast = $v.forecast.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocalForecast other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocalForecast;
  }

  @override
  void update(void Function(LocalForecastBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocalForecast build() => _build();

  _$LocalForecast _build() {
    _$LocalForecast _$result;
    try {
      _$result = _$v ??
          new _$LocalForecast._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'LocalForecast', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'LocalForecast', 'name'),
              lastUsed: BuiltValueNullFieldError.checkNotNull(
                  lastUsed, r'LocalForecast', 'lastUsed'),
              forecast: forecast.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'forecast';
        forecast.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LocalForecast', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
