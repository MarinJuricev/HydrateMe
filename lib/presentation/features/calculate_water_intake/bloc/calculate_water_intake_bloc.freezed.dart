// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'calculate_water_intake_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CalculateWaterIntakeEventTearOff {
  const _$CalculateWaterIntakeEventTearOff();

// ignore: unused_element
  _WeightEntered started(int weight, WeightType weightType) {
    return _WeightEntered(
      weight,
      weightType,
    );
  }
}

// ignore: unused_element
const $CalculateWaterIntakeEvent = _$CalculateWaterIntakeEventTearOff();

mixin _$CalculateWaterIntakeEvent {
  int get weight;
  WeightType get weightType;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(int weight, WeightType weightType),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(int weight, WeightType weightType),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_WeightEntered value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_WeightEntered value),
    @required Result orElse(),
  });

  $CalculateWaterIntakeEventCopyWith<CalculateWaterIntakeEvent> get copyWith;
}

abstract class $CalculateWaterIntakeEventCopyWith<$Res> {
  factory $CalculateWaterIntakeEventCopyWith(CalculateWaterIntakeEvent value,
          $Res Function(CalculateWaterIntakeEvent) then) =
      _$CalculateWaterIntakeEventCopyWithImpl<$Res>;
  $Res call({int weight, WeightType weightType});
}

class _$CalculateWaterIntakeEventCopyWithImpl<$Res>
    implements $CalculateWaterIntakeEventCopyWith<$Res> {
  _$CalculateWaterIntakeEventCopyWithImpl(this._value, this._then);

  final CalculateWaterIntakeEvent _value;
  // ignore: unused_field
  final $Res Function(CalculateWaterIntakeEvent) _then;

  @override
  $Res call({
    Object weight = freezed,
    Object weightType = freezed,
  }) {
    return _then(_value.copyWith(
      weight: weight == freezed ? _value.weight : weight as int,
      weightType:
          weightType == freezed ? _value.weightType : weightType as WeightType,
    ));
  }
}

abstract class _$WeightEnteredCopyWith<$Res>
    implements $CalculateWaterIntakeEventCopyWith<$Res> {
  factory _$WeightEnteredCopyWith(
          _WeightEntered value, $Res Function(_WeightEntered) then) =
      __$WeightEnteredCopyWithImpl<$Res>;
  @override
  $Res call({int weight, WeightType weightType});
}

class __$WeightEnteredCopyWithImpl<$Res>
    extends _$CalculateWaterIntakeEventCopyWithImpl<$Res>
    implements _$WeightEnteredCopyWith<$Res> {
  __$WeightEnteredCopyWithImpl(
      _WeightEntered _value, $Res Function(_WeightEntered) _then)
      : super(_value, (v) => _then(v as _WeightEntered));

  @override
  _WeightEntered get _value => super._value as _WeightEntered;

  @override
  $Res call({
    Object weight = freezed,
    Object weightType = freezed,
  }) {
    return _then(_WeightEntered(
      weight == freezed ? _value.weight : weight as int,
      weightType == freezed ? _value.weightType : weightType as WeightType,
    ));
  }
}

class _$_WeightEntered implements _WeightEntered {
  const _$_WeightEntered(this.weight, this.weightType)
      : assert(weight != null),
        assert(weightType != null);

  @override
  final int weight;
  @override
  final WeightType weightType;

  @override
  String toString() {
    return 'CalculateWaterIntakeEvent.started(weight: $weight, weightType: $weightType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeightEntered &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.weightType, weightType) ||
                const DeepCollectionEquality()
                    .equals(other.weightType, weightType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(weightType);

  @override
  _$WeightEnteredCopyWith<_WeightEntered> get copyWith =>
      __$WeightEnteredCopyWithImpl<_WeightEntered>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(int weight, WeightType weightType),
  }) {
    assert(started != null);
    return started(weight, weightType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(int weight, WeightType weightType),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(weight, weightType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_WeightEntered value),
  }) {
    assert(started != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_WeightEntered value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _WeightEntered implements CalculateWaterIntakeEvent {
  const factory _WeightEntered(int weight, WeightType weightType) =
      _$_WeightEntered;

  @override
  int get weight;
  @override
  WeightType get weightType;
  @override
  _$WeightEnteredCopyWith<_WeightEntered> get copyWith;
}

class _$CalculateWaterIntakeStateTearOff {
  const _$CalculateWaterIntakeStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }
}

// ignore: unused_element
const $CalculateWaterIntakeState = _$CalculateWaterIntakeStateTearOff();

mixin _$CalculateWaterIntakeState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    @required Result orElse(),
  });
}

abstract class $CalculateWaterIntakeStateCopyWith<$Res> {
  factory $CalculateWaterIntakeStateCopyWith(CalculateWaterIntakeState value,
          $Res Function(CalculateWaterIntakeState) then) =
      _$CalculateWaterIntakeStateCopyWithImpl<$Res>;
}

class _$CalculateWaterIntakeStateCopyWithImpl<$Res>
    implements $CalculateWaterIntakeStateCopyWith<$Res> {
  _$CalculateWaterIntakeStateCopyWithImpl(this._value, this._then);

  final CalculateWaterIntakeState _value;
  // ignore: unused_field
  final $Res Function(CalculateWaterIntakeState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$CalculateWaterIntakeStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CalculateWaterIntakeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
  }) {
    assert(initial != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
  }) {
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CalculateWaterIntakeState {
  const factory _Initial() = _$_Initial;
}
