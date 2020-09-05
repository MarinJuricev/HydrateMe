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
  _WeightEntered weightEntered(int weight, WeightType weightType) {
    return _WeightEntered(
      weight,
      weightType,
    );
  }

// ignore: unused_element
  _ActivityEntered activityEntered(int activeMinutes) {
    return _ActivityEntered(
      activeMinutes,
    );
  }
}

// ignore: unused_element
const $CalculateWaterIntakeEvent = _$CalculateWaterIntakeEventTearOff();

mixin _$CalculateWaterIntakeEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result weightEntered(int weight, WeightType weightType),
    @required Result activityEntered(int activeMinutes),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result weightEntered(int weight, WeightType weightType),
    Result activityEntered(int activeMinutes),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result weightEntered(_WeightEntered value),
    @required Result activityEntered(_ActivityEntered value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result weightEntered(_WeightEntered value),
    Result activityEntered(_ActivityEntered value),
    @required Result orElse(),
  });
}

abstract class $CalculateWaterIntakeEventCopyWith<$Res> {
  factory $CalculateWaterIntakeEventCopyWith(CalculateWaterIntakeEvent value,
          $Res Function(CalculateWaterIntakeEvent) then) =
      _$CalculateWaterIntakeEventCopyWithImpl<$Res>;
}

class _$CalculateWaterIntakeEventCopyWithImpl<$Res>
    implements $CalculateWaterIntakeEventCopyWith<$Res> {
  _$CalculateWaterIntakeEventCopyWithImpl(this._value, this._then);

  final CalculateWaterIntakeEvent _value;
  // ignore: unused_field
  final $Res Function(CalculateWaterIntakeEvent) _then;
}

abstract class _$WeightEnteredCopyWith<$Res> {
  factory _$WeightEnteredCopyWith(
          _WeightEntered value, $Res Function(_WeightEntered) then) =
      __$WeightEnteredCopyWithImpl<$Res>;
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
    return 'CalculateWaterIntakeEvent.weightEntered(weight: $weight, weightType: $weightType)';
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
    @required Result weightEntered(int weight, WeightType weightType),
    @required Result activityEntered(int activeMinutes),
  }) {
    assert(weightEntered != null);
    assert(activityEntered != null);
    return weightEntered(weight, weightType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result weightEntered(int weight, WeightType weightType),
    Result activityEntered(int activeMinutes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (weightEntered != null) {
      return weightEntered(weight, weightType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result weightEntered(_WeightEntered value),
    @required Result activityEntered(_ActivityEntered value),
  }) {
    assert(weightEntered != null);
    assert(activityEntered != null);
    return weightEntered(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result weightEntered(_WeightEntered value),
    Result activityEntered(_ActivityEntered value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (weightEntered != null) {
      return weightEntered(this);
    }
    return orElse();
  }
}

abstract class _WeightEntered implements CalculateWaterIntakeEvent {
  const factory _WeightEntered(int weight, WeightType weightType) =
      _$_WeightEntered;

  int get weight;
  WeightType get weightType;
  _$WeightEnteredCopyWith<_WeightEntered> get copyWith;
}

abstract class _$ActivityEnteredCopyWith<$Res> {
  factory _$ActivityEnteredCopyWith(
          _ActivityEntered value, $Res Function(_ActivityEntered) then) =
      __$ActivityEnteredCopyWithImpl<$Res>;
  $Res call({int activeMinutes});
}

class __$ActivityEnteredCopyWithImpl<$Res>
    extends _$CalculateWaterIntakeEventCopyWithImpl<$Res>
    implements _$ActivityEnteredCopyWith<$Res> {
  __$ActivityEnteredCopyWithImpl(
      _ActivityEntered _value, $Res Function(_ActivityEntered) _then)
      : super(_value, (v) => _then(v as _ActivityEntered));

  @override
  _ActivityEntered get _value => super._value as _ActivityEntered;

  @override
  $Res call({
    Object activeMinutes = freezed,
  }) {
    return _then(_ActivityEntered(
      activeMinutes == freezed ? _value.activeMinutes : activeMinutes as int,
    ));
  }
}

class _$_ActivityEntered implements _ActivityEntered {
  const _$_ActivityEntered(this.activeMinutes) : assert(activeMinutes != null);

  @override
  final int activeMinutes;

  @override
  String toString() {
    return 'CalculateWaterIntakeEvent.activityEntered(activeMinutes: $activeMinutes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActivityEntered &&
            (identical(other.activeMinutes, activeMinutes) ||
                const DeepCollectionEquality()
                    .equals(other.activeMinutes, activeMinutes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(activeMinutes);

  @override
  _$ActivityEnteredCopyWith<_ActivityEntered> get copyWith =>
      __$ActivityEnteredCopyWithImpl<_ActivityEntered>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result weightEntered(int weight, WeightType weightType),
    @required Result activityEntered(int activeMinutes),
  }) {
    assert(weightEntered != null);
    assert(activityEntered != null);
    return activityEntered(activeMinutes);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result weightEntered(int weight, WeightType weightType),
    Result activityEntered(int activeMinutes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (activityEntered != null) {
      return activityEntered(activeMinutes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result weightEntered(_WeightEntered value),
    @required Result activityEntered(_ActivityEntered value),
  }) {
    assert(weightEntered != null);
    assert(activityEntered != null);
    return activityEntered(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result weightEntered(_WeightEntered value),
    Result activityEntered(_ActivityEntered value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (activityEntered != null) {
      return activityEntered(this);
    }
    return orElse();
  }
}

abstract class _ActivityEntered implements CalculateWaterIntakeEvent {
  const factory _ActivityEntered(int activeMinutes) = _$_ActivityEntered;

  int get activeMinutes;
  _$ActivityEnteredCopyWith<_ActivityEntered> get copyWith;
}

class _$CalculateWaterIntakeStateTearOff {
  const _$CalculateWaterIntakeStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _WeightEnterSuccess weightEnterSuccess() {
    return const _WeightEnterSuccess();
  }
}

// ignore: unused_element
const $CalculateWaterIntakeState = _$CalculateWaterIntakeStateTearOff();

mixin _$CalculateWaterIntakeState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result weightEnterSuccess(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result weightEnterSuccess(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result weightEnterSuccess(_WeightEnterSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result weightEnterSuccess(_WeightEnterSuccess value),
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
    @required Result weightEnterSuccess(),
  }) {
    assert(initial != null);
    assert(weightEnterSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result weightEnterSuccess(),
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
    @required Result weightEnterSuccess(_WeightEnterSuccess value),
  }) {
    assert(initial != null);
    assert(weightEnterSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result weightEnterSuccess(_WeightEnterSuccess value),
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

abstract class _$WeightEnterSuccessCopyWith<$Res> {
  factory _$WeightEnterSuccessCopyWith(
          _WeightEnterSuccess value, $Res Function(_WeightEnterSuccess) then) =
      __$WeightEnterSuccessCopyWithImpl<$Res>;
}

class __$WeightEnterSuccessCopyWithImpl<$Res>
    extends _$CalculateWaterIntakeStateCopyWithImpl<$Res>
    implements _$WeightEnterSuccessCopyWith<$Res> {
  __$WeightEnterSuccessCopyWithImpl(
      _WeightEnterSuccess _value, $Res Function(_WeightEnterSuccess) _then)
      : super(_value, (v) => _then(v as _WeightEnterSuccess));

  @override
  _WeightEnterSuccess get _value => super._value as _WeightEnterSuccess;
}

class _$_WeightEnterSuccess implements _WeightEnterSuccess {
  const _$_WeightEnterSuccess();

  @override
  String toString() {
    return 'CalculateWaterIntakeState.weightEnterSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WeightEnterSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result weightEnterSuccess(),
  }) {
    assert(initial != null);
    assert(weightEnterSuccess != null);
    return weightEnterSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result weightEnterSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (weightEnterSuccess != null) {
      return weightEnterSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result weightEnterSuccess(_WeightEnterSuccess value),
  }) {
    assert(initial != null);
    assert(weightEnterSuccess != null);
    return weightEnterSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result weightEnterSuccess(_WeightEnterSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (weightEnterSuccess != null) {
      return weightEnterSuccess(this);
    }
    return orElse();
  }
}

abstract class _WeightEnterSuccess implements CalculateWaterIntakeState {
  const factory _WeightEnterSuccess() = _$_WeightEnterSuccess;
}
