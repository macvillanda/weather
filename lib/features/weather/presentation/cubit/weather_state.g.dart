// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherState> _$weatherStateSerializer =
    new _$WeatherStateSerializer();

class _$WeatherStateSerializer implements StructuredSerializer<WeatherState> {
  @override
  final Iterable<Type> types = const [WeatherState, _$WeatherState];
  @override
  final String wireName = 'WeatherState';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'isLoading',
      serializers.serialize(object.isLoading,
          specifiedType: const FullType(bool)),
      'allForecasts',
      serializers.serialize(object.allForecasts,
          specifiedType:
              const FullType(BuiltList, const [const FullType(LocalForecast)])),
    ];

    return result;
  }

  @override
  WeatherState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'isLoading':
          result.isLoading = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'allForecasts':
          result.allForecasts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(LocalForecast)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherState extends WeatherState {
  @override
  final bool isLoading;
  @override
  final BuiltList<LocalForecast> allForecasts;

  factory _$WeatherState([void Function(WeatherStateBuilder)? updates]) =>
      (new WeatherStateBuilder()..update(updates))._build();

  _$WeatherState._({required this.isLoading, required this.allForecasts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'WeatherState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        allForecasts, r'WeatherState', 'allForecasts');
  }

  @override
  WeatherState rebuild(void Function(WeatherStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherStateBuilder toBuilder() => new WeatherStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherState &&
        isLoading == other.isLoading &&
        allForecasts == other.allForecasts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, allForecasts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherState')
          ..add('isLoading', isLoading)
          ..add('allForecasts', allForecasts))
        .toString();
  }
}

class WeatherStateBuilder
    implements Builder<WeatherState, WeatherStateBuilder> {
  _$WeatherState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  ListBuilder<LocalForecast>? _allForecasts;
  ListBuilder<LocalForecast> get allForecasts =>
      _$this._allForecasts ??= new ListBuilder<LocalForecast>();
  set allForecasts(ListBuilder<LocalForecast>? allForecasts) =>
      _$this._allForecasts = allForecasts;

  WeatherStateBuilder();

  WeatherStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _allForecasts = $v.allForecasts.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherState;
  }

  @override
  void update(void Function(WeatherStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherState build() => _build();

  _$WeatherState _build() {
    _$WeatherState _$result;
    try {
      _$result = _$v ??
          new _$WeatherState._(
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, r'WeatherState', 'isLoading'),
              allForecasts: allForecasts.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allForecasts';
        allForecasts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WeatherState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
