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
  _CalculateClicked calculateClicked(
      Gender currentSelectedGender,
      WeightType currentSelectedWeightType,
      int currentWeight,
      int currentActivityInMinutes) {
    return _CalculateClicked(
      currentSelectedGender,
      currentSelectedWeightType,
      currentWeight,
      currentActivityInMinutes,
    );
  }
}

// ignore: unused_element
const $CalculateWaterIntakeEvent = _$CalculateWaterIntakeEventTearOff();

mixin _$CalculateWaterIntakeEvent {
  Gender get currentSelectedGender;
  WeightType get currentSelectedWeightType;
  int get currentWeight;
  int get currentActivityInMinutes;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result calculateClicked(
            Gender currentSelectedGender,
            WeightType currentSelectedWeightType,
            int currentWeight,
            int currentActivityInMinutes),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result calculateClicked(
        Gender currentSelectedGender,
        WeightType currentSelectedWeightType,
        int currentWeight,
        int currentActivityInMinutes),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result calculateClicked(_CalculateClicked value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result calculateClicked(_CalculateClicked value),
    @required Result orElse(),
  });

  $CalculateWaterIntakeEventCopyWith<CalculateWaterIntakeEvent> get copyWith;
}

abstract class $CalculateWaterIntakeEventCopyWith<$Res> {
  factory $CalculateWaterIntakeEventCopyWith(CalculateWaterIntakeEvent value,
          $Res Function(CalculateWaterIntakeEvent) then) =
      _$CalculateWaterIntakeEventCopyWithImpl<$Res>;
  $Res call(
      {Gender currentSelectedGender,
      WeightType currentSelectedWeightType,
      int currentWeight,
      int currentActivityInMinutes});
}

class _$CalculateWaterIntakeEventCopyWithImpl<$Res>
    implements $CalculateWaterIntakeEventCopyWith<$Res> {
  _$CalculateWaterIntakeEventCopyWithImpl(this._value, this._then);

  final CalculateWaterIntakeEvent _value;
  // ignore: unused_field
  final $Res Function(CalculateWaterIntakeEvent) _then;

  @override
  $Res call({
    Object currentSelectedGender = freezed,
    Object currentSelectedWeightType = freezed,
    Object currentWeight = freezed,
    Object currentActivityInMinutes = freezed,
  }) {
    return _then(_value.copyWith(
      currentSelectedGender: currentSelectedGender == freezed
          ? _value.currentSelectedGender
          : currentSelectedGender as Gender,
      currentSelectedWeightType: currentSelectedWeightType == freezed
          ? _value.currentSelectedWeightType
          : currentSelectedWeightType as WeightType,
      currentWeight: currentWeight == freezed
          ? _value.currentWeight
          : currentWeight as int,
      currentActivityInMinutes: currentActivityInMinutes == freezed
          ? _value.currentActivityInMinutes
          : currentActivityInMinutes as int,
    ));
  }
}

abstract class _$CalculateClickedCopyWith<$Res>
    implements $CalculateWaterIntakeEventCopyWith<$Res> {
  factory _$CalculateClickedCopyWith(
          _CalculateClicked value, $Res Function(_CalculateClicked) then) =
      __$CalculateClickedCopyWithImpl<$Res>;
  @override
  $Res call(
      {Gender currentSelectedGender,
      WeightType currentSelectedWeightType,
      int currentWeight,
      int currentActivityInMinutes});
}

class __$CalculateClickedCopyWithImpl<$Res>
    extends _$CalculateWaterIntakeEventCopyWithImpl<$Res>
    implements _$CalculateClickedCopyWith<$Res> {
  __$CalculateClickedCopyWithImpl(
      _CalculateClicked _value, $Res Function(_CalculateClicked) _then)
      : super(_value, (v) => _then(v as _CalculateClicked));

  @override
  _CalculateClicked get _value => super._value as _CalculateClicked;

  @override
  $Res call({
    Object currentSelectedGender = freezed,
    Object currentSelectedWeightType = freezed,
    Object currentWeight = freezed,
    Object currentActivityInMinutes = freezed,
  }) {
    return _then(_CalculateClicked(
      currentSelectedGender == freezed
          ? _value.currentSelectedGender
          : currentSelectedGender as Gender,
      currentSelectedWeightType == freezed
          ? _value.currentSelectedWeightType
          : currentSelectedWeightType as WeightType,
      currentWeight == freezed ? _value.currentWeight : currentWeight as int,
      currentActivityInMinutes == freezed
          ? _value.currentActivityInMinutes
          : currentActivityInMinutes as int,
    ));
  }
}

class _$_CalculateClicked implements _CalculateClicked {
  const _$_CalculateClicked(
      this.currentSelectedGender,
      this.currentSelectedWeightType,
      this.currentWeight,
      this.currentActivityInMinutes)
      : assert(currentSelectedGender != null),
        assert(currentSelectedWeightType != null),
        assert(currentWeight != null),
        assert(currentActivityInMinutes != null);

  @override
  final Gender currentSelectedGender;
  @override
  final WeightType currentSelectedWeightType;
  @override
  final int currentWeight;
  @override
  final int currentActivityInMinutes;

  @override
  String toString() {
    return 'CalculateWaterIntakeEvent.calculateClicked(currentSelectedGender: $currentSelectedGender, currentSelectedWeightType: $currentSelectedWeightType, currentWeight: $currentWeight, currentActivityInMinutes: $currentActivityInMinutes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CalculateClicked &&
            (identical(other.currentSelectedGender, currentSelectedGender) ||
                const DeepCollectionEquality().equals(
                    other.currentSelectedGender, currentSelectedGender)) &&
            (identical(other.currentSelectedWeightType,
                    currentSelectedWeightType) ||
                const DeepCollectionEquality().equals(
                    other.currentSelectedWeightType,
                    currentSelectedWeightType)) &&
            (identical(other.currentWeight, currentWeight) ||
                const DeepCollectionEquality()
                    .equals(other.currentWeight, currentWeight)) &&
            (identical(
                    other.currentActivityInMinutes, currentActivityInMinutes) ||
                const DeepCollectionEquality().equals(
                    other.currentActivityInMinutes, currentActivityInMinutes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentSelectedGender) ^
      const DeepCollectionEquality().hash(currentSelectedWeightType) ^
      const DeepCollectionEquality().hash(currentWeight) ^
      const DeepCollectionEquality().hash(currentActivityInMinutes);

  @override
  _$CalculateClickedCopyWith<_CalculateClicked> get copyWith =>
      __$CalculateClickedCopyWithImpl<_CalculateClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result calculateClicked(
            Gender currentSelectedGender,
            WeightType currentSelectedWeightType,
            int currentWeight,
            int currentActivityInMinutes),
  }) {
    assert(calculateClicked != null);
    return calculateClicked(currentSelectedGender, currentSelectedWeightType,
        currentWeight, currentActivityInMinutes);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result calculateClicked(
        Gender currentSelectedGender,
        WeightType currentSelectedWeightType,
        int currentWeight,
        int currentActivityInMinutes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (calculateClicked != null) {
      return calculateClicked(currentSelectedGender, currentSelectedWeightType,
          currentWeight, currentActivityInMinutes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result calculateClicked(_CalculateClicked value),
  }) {
    assert(calculateClicked != null);
    return calculateClicked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result calculateClicked(_CalculateClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (calculateClicked != null) {
      return calculateClicked(this);
    }
    return orElse();
  }
}

abstract class _CalculateClicked implements CalculateWaterIntakeEvent {
  const factory _CalculateClicked(
      Gender currentSelectedGender,
      WeightType currentSelectedWeightType,
      int currentWeight,
      int currentActivityInMinutes) = _$_CalculateClicked;

  @override
  Gender get currentSelectedGender;
  @override
  WeightType get currentSelectedWeightType;
  @override
  int get currentWeight;
  @override
  int get currentActivityInMinutes;
  @override
  _$CalculateClickedCopyWith<_CalculateClicked> get copyWith;
}

class _$CalculateWaterIntakeStateTearOff {
  const _$CalculateWaterIntakeStateTearOff();

// ignore: unused_element
  _CalculateWaterIntakeInitial initial() {
    return const _CalculateWaterIntakeInitial();
  }

// ignore: unused_element
  _CalculationInProgress calculationInProgress() {
    return const _CalculationInProgress();
  }

// ignore: unused_element
  _CalculateWaterIntakeErrorState error(String errorMessage) {
    return _CalculateWaterIntakeErrorState(
      errorMessage,
    );
  }

// ignore: unused_element
  _CalculationFinished calculationFinished() {
    return const _CalculationFinished();
  }
}

// ignore: unused_element
const $CalculateWaterIntakeState = _$CalculateWaterIntakeStateTearOff();

mixin _$CalculateWaterIntakeState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result calculationInProgress(),
    @required Result error(String errorMessage),
    @required Result calculationFinished(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result calculationInProgress(),
    Result error(String errorMessage),
    Result calculationFinished(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_CalculateWaterIntakeInitial value),
    @required Result calculationInProgress(_CalculationInProgress value),
    @required Result error(_CalculateWaterIntakeErrorState value),
    @required Result calculationFinished(_CalculationFinished value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_CalculateWaterIntakeInitial value),
    Result calculationInProgress(_CalculationInProgress value),
    Result error(_CalculateWaterIntakeErrorState value),
    Result calculationFinished(_CalculationFinished value),
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

abstract class _$CalculateWaterIntakeInitialCopyWith<$Res> {
  factory _$CalculateWaterIntakeInitialCopyWith(
          _CalculateWaterIntakeInitial value,
          $Res Function(_CalculateWaterIntakeInitial) then) =
      __$CalculateWaterIntakeInitialCopyWithImpl<$Res>;
}

class __$CalculateWaterIntakeInitialCopyWithImpl<$Res>
    extends _$CalculateWaterIntakeStateCopyWithImpl<$Res>
    implements _$CalculateWaterIntakeInitialCopyWith<$Res> {
  __$CalculateWaterIntakeInitialCopyWithImpl(
      _CalculateWaterIntakeInitial _value,
      $Res Function(_CalculateWaterIntakeInitial) _then)
      : super(_value, (v) => _then(v as _CalculateWaterIntakeInitial));

  @override
  _CalculateWaterIntakeInitial get _value =>
      super._value as _CalculateWaterIntakeInitial;
}

class _$_CalculateWaterIntakeInitial implements _CalculateWaterIntakeInitial {
  const _$_CalculateWaterIntakeInitial();

  @override
  String toString() {
    return 'CalculateWaterIntakeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CalculateWaterIntakeInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result calculationInProgress(),
    @required Result error(String errorMessage),
    @required Result calculationFinished(),
  }) {
    assert(initial != null);
    assert(calculationInProgress != null);
    assert(error != null);
    assert(calculationFinished != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result calculationInProgress(),
    Result error(String errorMessage),
    Result calculationFinished(),
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
    @required Result initial(_CalculateWaterIntakeInitial value),
    @required Result calculationInProgress(_CalculationInProgress value),
    @required Result error(_CalculateWaterIntakeErrorState value),
    @required Result calculationFinished(_CalculationFinished value),
  }) {
    assert(initial != null);
    assert(calculationInProgress != null);
    assert(error != null);
    assert(calculationFinished != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_CalculateWaterIntakeInitial value),
    Result calculationInProgress(_CalculationInProgress value),
    Result error(_CalculateWaterIntakeErrorState value),
    Result calculationFinished(_CalculationFinished value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CalculateWaterIntakeInitial
    implements CalculateWaterIntakeState {
  const factory _CalculateWaterIntakeInitial() = _$_CalculateWaterIntakeInitial;
}

abstract class _$CalculationInProgressCopyWith<$Res> {
  factory _$CalculationInProgressCopyWith(_CalculationInProgress value,
          $Res Function(_CalculationInProgress) then) =
      __$CalculationInProgressCopyWithImpl<$Res>;
}

class __$CalculationInProgressCopyWithImpl<$Res>
    extends _$CalculateWaterIntakeStateCopyWithImpl<$Res>
    implements _$CalculationInProgressCopyWith<$Res> {
  __$CalculationInProgressCopyWithImpl(_CalculationInProgress _value,
      $Res Function(_CalculationInProgress) _then)
      : super(_value, (v) => _then(v as _CalculationInProgress));

  @override
  _CalculationInProgress get _value => super._value as _CalculationInProgress;
}

class _$_CalculationInProgress implements _CalculationInProgress {
  const _$_CalculationInProgress();

  @override
  String toString() {
    return 'CalculateWaterIntakeState.calculationInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CalculationInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result calculationInProgress(),
    @required Result error(String errorMessage),
    @required Result calculationFinished(),
  }) {
    assert(initial != null);
    assert(calculationInProgress != null);
    assert(error != null);
    assert(calculationFinished != null);
    return calculationInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result calculationInProgress(),
    Result error(String errorMessage),
    Result calculationFinished(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (calculationInProgress != null) {
      return calculationInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_CalculateWaterIntakeInitial value),
    @required Result calculationInProgress(_CalculationInProgress value),
    @required Result error(_CalculateWaterIntakeErrorState value),
    @required Result calculationFinished(_CalculationFinished value),
  }) {
    assert(initial != null);
    assert(calculationInProgress != null);
    assert(error != null);
    assert(calculationFinished != null);
    return calculationInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_CalculateWaterIntakeInitial value),
    Result calculationInProgress(_CalculationInProgress value),
    Result error(_CalculateWaterIntakeErrorState value),
    Result calculationFinished(_CalculationFinished value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (calculationInProgress != null) {
      return calculationInProgress(this);
    }
    return orElse();
  }
}

abstract class _CalculationInProgress implements CalculateWaterIntakeState {
  const factory _CalculationInProgress() = _$_CalculationInProgress;
}

abstract class _$CalculateWaterIntakeErrorStateCopyWith<$Res> {
  factory _$CalculateWaterIntakeErrorStateCopyWith(
          _CalculateWaterIntakeErrorState value,
          $Res Function(_CalculateWaterIntakeErrorState) then) =
      __$CalculateWaterIntakeErrorStateCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

class __$CalculateWaterIntakeErrorStateCopyWithImpl<$Res>
    extends _$CalculateWaterIntakeStateCopyWithImpl<$Res>
    implements _$CalculateWaterIntakeErrorStateCopyWith<$Res> {
  __$CalculateWaterIntakeErrorStateCopyWithImpl(
      _CalculateWaterIntakeErrorState _value,
      $Res Function(_CalculateWaterIntakeErrorState) _then)
      : super(_value, (v) => _then(v as _CalculateWaterIntakeErrorState));

  @override
  _CalculateWaterIntakeErrorState get _value =>
      super._value as _CalculateWaterIntakeErrorState;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(_CalculateWaterIntakeErrorState(
      errorMessage == freezed ? _value.errorMessage : errorMessage as String,
    ));
  }
}

class _$_CalculateWaterIntakeErrorState
    implements _CalculateWaterIntakeErrorState {
  const _$_CalculateWaterIntakeErrorState(this.errorMessage)
      : assert(errorMessage != null);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CalculateWaterIntakeState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CalculateWaterIntakeErrorState &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @override
  _$CalculateWaterIntakeErrorStateCopyWith<_CalculateWaterIntakeErrorState>
      get copyWith => __$CalculateWaterIntakeErrorStateCopyWithImpl<
          _CalculateWaterIntakeErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result calculationInProgress(),
    @required Result error(String errorMessage),
    @required Result calculationFinished(),
  }) {
    assert(initial != null);
    assert(calculationInProgress != null);
    assert(error != null);
    assert(calculationFinished != null);
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result calculationInProgress(),
    Result error(String errorMessage),
    Result calculationFinished(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_CalculateWaterIntakeInitial value),
    @required Result calculationInProgress(_CalculationInProgress value),
    @required Result error(_CalculateWaterIntakeErrorState value),
    @required Result calculationFinished(_CalculationFinished value),
  }) {
    assert(initial != null);
    assert(calculationInProgress != null);
    assert(error != null);
    assert(calculationFinished != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_CalculateWaterIntakeInitial value),
    Result calculationInProgress(_CalculationInProgress value),
    Result error(_CalculateWaterIntakeErrorState value),
    Result calculationFinished(_CalculationFinished value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CalculateWaterIntakeErrorState
    implements CalculateWaterIntakeState {
  const factory _CalculateWaterIntakeErrorState(String errorMessage) =
      _$_CalculateWaterIntakeErrorState;

  String get errorMessage;
  _$CalculateWaterIntakeErrorStateCopyWith<_CalculateWaterIntakeErrorState>
      get copyWith;
}

abstract class _$CalculationFinishedCopyWith<$Res> {
  factory _$CalculationFinishedCopyWith(_CalculationFinished value,
          $Res Function(_CalculationFinished) then) =
      __$CalculationFinishedCopyWithImpl<$Res>;
}

class __$CalculationFinishedCopyWithImpl<$Res>
    extends _$CalculateWaterIntakeStateCopyWithImpl<$Res>
    implements _$CalculationFinishedCopyWith<$Res> {
  __$CalculationFinishedCopyWithImpl(
      _CalculationFinished _value, $Res Function(_CalculationFinished) _then)
      : super(_value, (v) => _then(v as _CalculationFinished));

  @override
  _CalculationFinished get _value => super._value as _CalculationFinished;
}

class _$_CalculationFinished implements _CalculationFinished {
  const _$_CalculationFinished();

  @override
  String toString() {
    return 'CalculateWaterIntakeState.calculationFinished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CalculationFinished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result calculationInProgress(),
    @required Result error(String errorMessage),
    @required Result calculationFinished(),
  }) {
    assert(initial != null);
    assert(calculationInProgress != null);
    assert(error != null);
    assert(calculationFinished != null);
    return calculationFinished();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result calculationInProgress(),
    Result error(String errorMessage),
    Result calculationFinished(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (calculationFinished != null) {
      return calculationFinished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_CalculateWaterIntakeInitial value),
    @required Result calculationInProgress(_CalculationInProgress value),
    @required Result error(_CalculateWaterIntakeErrorState value),
    @required Result calculationFinished(_CalculationFinished value),
  }) {
    assert(initial != null);
    assert(calculationInProgress != null);
    assert(error != null);
    assert(calculationFinished != null);
    return calculationFinished(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_CalculateWaterIntakeInitial value),
    Result calculationInProgress(_CalculationInProgress value),
    Result error(_CalculateWaterIntakeErrorState value),
    Result calculationFinished(_CalculationFinished value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (calculationFinished != null) {
      return calculationFinished(this);
    }
    return orElse();
  }
}

abstract class _CalculationFinished implements CalculateWaterIntakeState {
  const factory _CalculationFinished() = _$_CalculationFinished;
}
