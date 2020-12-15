// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'current_water_intake_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CurrentWaterIntakeEventTearOff {
  const _$CurrentWaterIntakeEventTearOff();

// ignore: unused_element
  WaterIntakeUpdatedEvent updated(
      {@required double updatedValue, @required double waterMaximumHeight}) {
    return WaterIntakeUpdatedEvent(
      updatedValue: updatedValue,
      waterMaximumHeight: waterMaximumHeight,
    );
  }

// ignore: unused_element
  WaterIntakeStaredEvent started() {
    return const WaterIntakeStaredEvent();
  }

// ignore: unused_element
  WaterIntakeManualAddEvent manualIncrease({@required String waterToAdd}) {
    return WaterIntakeManualAddEvent(
      waterToAdd: waterToAdd,
    );
  }

// ignore: unused_element
  WaterIntakeManualDecreaseEvent manualDecrease(
      {@required String waterToSubtract}) {
    return WaterIntakeManualDecreaseEvent(
      waterToSubtract: waterToSubtract,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CurrentWaterIntakeEvent = _$CurrentWaterIntakeEventTearOff();

/// @nodoc
mixin _$CurrentWaterIntakeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updated(double updatedValue, double waterMaximumHeight),
    @required TResult started(),
    @required TResult manualIncrease(String waterToAdd),
    @required TResult manualDecrease(String waterToSubtract),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updated(double updatedValue, double waterMaximumHeight),
    TResult started(),
    TResult manualIncrease(String waterToAdd),
    TResult manualDecrease(String waterToSubtract),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updated(WaterIntakeUpdatedEvent value),
    @required TResult started(WaterIntakeStaredEvent value),
    @required TResult manualIncrease(WaterIntakeManualAddEvent value),
    @required TResult manualDecrease(WaterIntakeManualDecreaseEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updated(WaterIntakeUpdatedEvent value),
    TResult started(WaterIntakeStaredEvent value),
    TResult manualIncrease(WaterIntakeManualAddEvent value),
    TResult manualDecrease(WaterIntakeManualDecreaseEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CurrentWaterIntakeEventCopyWith<$Res> {
  factory $CurrentWaterIntakeEventCopyWith(CurrentWaterIntakeEvent value,
          $Res Function(CurrentWaterIntakeEvent) then) =
      _$CurrentWaterIntakeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrentWaterIntakeEventCopyWithImpl<$Res>
    implements $CurrentWaterIntakeEventCopyWith<$Res> {
  _$CurrentWaterIntakeEventCopyWithImpl(this._value, this._then);

  final CurrentWaterIntakeEvent _value;
  // ignore: unused_field
  final $Res Function(CurrentWaterIntakeEvent) _then;
}

/// @nodoc
abstract class $WaterIntakeUpdatedEventCopyWith<$Res> {
  factory $WaterIntakeUpdatedEventCopyWith(WaterIntakeUpdatedEvent value,
          $Res Function(WaterIntakeUpdatedEvent) then) =
      _$WaterIntakeUpdatedEventCopyWithImpl<$Res>;
  $Res call({double updatedValue, double waterMaximumHeight});
}

/// @nodoc
class _$WaterIntakeUpdatedEventCopyWithImpl<$Res>
    extends _$CurrentWaterIntakeEventCopyWithImpl<$Res>
    implements $WaterIntakeUpdatedEventCopyWith<$Res> {
  _$WaterIntakeUpdatedEventCopyWithImpl(WaterIntakeUpdatedEvent _value,
      $Res Function(WaterIntakeUpdatedEvent) _then)
      : super(_value, (v) => _then(v as WaterIntakeUpdatedEvent));

  @override
  WaterIntakeUpdatedEvent get _value => super._value as WaterIntakeUpdatedEvent;

  @override
  $Res call({
    Object updatedValue = freezed,
    Object waterMaximumHeight = freezed,
  }) {
    return _then(WaterIntakeUpdatedEvent(
      updatedValue: updatedValue == freezed
          ? _value.updatedValue
          : updatedValue as double,
      waterMaximumHeight: waterMaximumHeight == freezed
          ? _value.waterMaximumHeight
          : waterMaximumHeight as double,
    ));
  }
}

/// @nodoc
class _$WaterIntakeUpdatedEvent
    with DiagnosticableTreeMixin
    implements WaterIntakeUpdatedEvent {
  const _$WaterIntakeUpdatedEvent(
      {@required this.updatedValue, @required this.waterMaximumHeight})
      : assert(updatedValue != null),
        assert(waterMaximumHeight != null);

  @override
  final double updatedValue;
  @override
  final double waterMaximumHeight;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentWaterIntakeEvent.updated(updatedValue: $updatedValue, waterMaximumHeight: $waterMaximumHeight)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrentWaterIntakeEvent.updated'))
      ..add(DiagnosticsProperty('updatedValue', updatedValue))
      ..add(DiagnosticsProperty('waterMaximumHeight', waterMaximumHeight));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WaterIntakeUpdatedEvent &&
            (identical(other.updatedValue, updatedValue) ||
                const DeepCollectionEquality()
                    .equals(other.updatedValue, updatedValue)) &&
            (identical(other.waterMaximumHeight, waterMaximumHeight) ||
                const DeepCollectionEquality()
                    .equals(other.waterMaximumHeight, waterMaximumHeight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(updatedValue) ^
      const DeepCollectionEquality().hash(waterMaximumHeight);

  @override
  $WaterIntakeUpdatedEventCopyWith<WaterIntakeUpdatedEvent> get copyWith =>
      _$WaterIntakeUpdatedEventCopyWithImpl<WaterIntakeUpdatedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updated(double updatedValue, double waterMaximumHeight),
    @required TResult started(),
    @required TResult manualIncrease(String waterToAdd),
    @required TResult manualDecrease(String waterToSubtract),
  }) {
    assert(updated != null);
    assert(started != null);
    assert(manualIncrease != null);
    assert(manualDecrease != null);
    return updated(updatedValue, waterMaximumHeight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updated(double updatedValue, double waterMaximumHeight),
    TResult started(),
    TResult manualIncrease(String waterToAdd),
    TResult manualDecrease(String waterToSubtract),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(updatedValue, waterMaximumHeight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updated(WaterIntakeUpdatedEvent value),
    @required TResult started(WaterIntakeStaredEvent value),
    @required TResult manualIncrease(WaterIntakeManualAddEvent value),
    @required TResult manualDecrease(WaterIntakeManualDecreaseEvent value),
  }) {
    assert(updated != null);
    assert(started != null);
    assert(manualIncrease != null);
    assert(manualDecrease != null);
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updated(WaterIntakeUpdatedEvent value),
    TResult started(WaterIntakeStaredEvent value),
    TResult manualIncrease(WaterIntakeManualAddEvent value),
    TResult manualDecrease(WaterIntakeManualDecreaseEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class WaterIntakeUpdatedEvent implements CurrentWaterIntakeEvent {
  const factory WaterIntakeUpdatedEvent(
      {@required double updatedValue,
      @required double waterMaximumHeight}) = _$WaterIntakeUpdatedEvent;

  double get updatedValue;
  double get waterMaximumHeight;
  $WaterIntakeUpdatedEventCopyWith<WaterIntakeUpdatedEvent> get copyWith;
}

/// @nodoc
abstract class $WaterIntakeStaredEventCopyWith<$Res> {
  factory $WaterIntakeStaredEventCopyWith(WaterIntakeStaredEvent value,
          $Res Function(WaterIntakeStaredEvent) then) =
      _$WaterIntakeStaredEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WaterIntakeStaredEventCopyWithImpl<$Res>
    extends _$CurrentWaterIntakeEventCopyWithImpl<$Res>
    implements $WaterIntakeStaredEventCopyWith<$Res> {
  _$WaterIntakeStaredEventCopyWithImpl(WaterIntakeStaredEvent _value,
      $Res Function(WaterIntakeStaredEvent) _then)
      : super(_value, (v) => _then(v as WaterIntakeStaredEvent));

  @override
  WaterIntakeStaredEvent get _value => super._value as WaterIntakeStaredEvent;
}

/// @nodoc
class _$WaterIntakeStaredEvent
    with DiagnosticableTreeMixin
    implements WaterIntakeStaredEvent {
  const _$WaterIntakeStaredEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentWaterIntakeEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'CurrentWaterIntakeEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WaterIntakeStaredEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updated(double updatedValue, double waterMaximumHeight),
    @required TResult started(),
    @required TResult manualIncrease(String waterToAdd),
    @required TResult manualDecrease(String waterToSubtract),
  }) {
    assert(updated != null);
    assert(started != null);
    assert(manualIncrease != null);
    assert(manualDecrease != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updated(double updatedValue, double waterMaximumHeight),
    TResult started(),
    TResult manualIncrease(String waterToAdd),
    TResult manualDecrease(String waterToSubtract),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updated(WaterIntakeUpdatedEvent value),
    @required TResult started(WaterIntakeStaredEvent value),
    @required TResult manualIncrease(WaterIntakeManualAddEvent value),
    @required TResult manualDecrease(WaterIntakeManualDecreaseEvent value),
  }) {
    assert(updated != null);
    assert(started != null);
    assert(manualIncrease != null);
    assert(manualDecrease != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updated(WaterIntakeUpdatedEvent value),
    TResult started(WaterIntakeStaredEvent value),
    TResult manualIncrease(WaterIntakeManualAddEvent value),
    TResult manualDecrease(WaterIntakeManualDecreaseEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class WaterIntakeStaredEvent implements CurrentWaterIntakeEvent {
  const factory WaterIntakeStaredEvent() = _$WaterIntakeStaredEvent;
}

/// @nodoc
abstract class $WaterIntakeManualAddEventCopyWith<$Res> {
  factory $WaterIntakeManualAddEventCopyWith(WaterIntakeManualAddEvent value,
          $Res Function(WaterIntakeManualAddEvent) then) =
      _$WaterIntakeManualAddEventCopyWithImpl<$Res>;
  $Res call({String waterToAdd});
}

/// @nodoc
class _$WaterIntakeManualAddEventCopyWithImpl<$Res>
    extends _$CurrentWaterIntakeEventCopyWithImpl<$Res>
    implements $WaterIntakeManualAddEventCopyWith<$Res> {
  _$WaterIntakeManualAddEventCopyWithImpl(WaterIntakeManualAddEvent _value,
      $Res Function(WaterIntakeManualAddEvent) _then)
      : super(_value, (v) => _then(v as WaterIntakeManualAddEvent));

  @override
  WaterIntakeManualAddEvent get _value =>
      super._value as WaterIntakeManualAddEvent;

  @override
  $Res call({
    Object waterToAdd = freezed,
  }) {
    return _then(WaterIntakeManualAddEvent(
      waterToAdd:
          waterToAdd == freezed ? _value.waterToAdd : waterToAdd as String,
    ));
  }
}

/// @nodoc
class _$WaterIntakeManualAddEvent
    with DiagnosticableTreeMixin
    implements WaterIntakeManualAddEvent {
  const _$WaterIntakeManualAddEvent({@required this.waterToAdd})
      : assert(waterToAdd != null);

  @override
  final String waterToAdd;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentWaterIntakeEvent.manualIncrease(waterToAdd: $waterToAdd)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CurrentWaterIntakeEvent.manualIncrease'))
      ..add(DiagnosticsProperty('waterToAdd', waterToAdd));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WaterIntakeManualAddEvent &&
            (identical(other.waterToAdd, waterToAdd) ||
                const DeepCollectionEquality()
                    .equals(other.waterToAdd, waterToAdd)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(waterToAdd);

  @override
  $WaterIntakeManualAddEventCopyWith<WaterIntakeManualAddEvent> get copyWith =>
      _$WaterIntakeManualAddEventCopyWithImpl<WaterIntakeManualAddEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updated(double updatedValue, double waterMaximumHeight),
    @required TResult started(),
    @required TResult manualIncrease(String waterToAdd),
    @required TResult manualDecrease(String waterToSubtract),
  }) {
    assert(updated != null);
    assert(started != null);
    assert(manualIncrease != null);
    assert(manualDecrease != null);
    return manualIncrease(waterToAdd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updated(double updatedValue, double waterMaximumHeight),
    TResult started(),
    TResult manualIncrease(String waterToAdd),
    TResult manualDecrease(String waterToSubtract),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (manualIncrease != null) {
      return manualIncrease(waterToAdd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updated(WaterIntakeUpdatedEvent value),
    @required TResult started(WaterIntakeStaredEvent value),
    @required TResult manualIncrease(WaterIntakeManualAddEvent value),
    @required TResult manualDecrease(WaterIntakeManualDecreaseEvent value),
  }) {
    assert(updated != null);
    assert(started != null);
    assert(manualIncrease != null);
    assert(manualDecrease != null);
    return manualIncrease(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updated(WaterIntakeUpdatedEvent value),
    TResult started(WaterIntakeStaredEvent value),
    TResult manualIncrease(WaterIntakeManualAddEvent value),
    TResult manualDecrease(WaterIntakeManualDecreaseEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (manualIncrease != null) {
      return manualIncrease(this);
    }
    return orElse();
  }
}

abstract class WaterIntakeManualAddEvent implements CurrentWaterIntakeEvent {
  const factory WaterIntakeManualAddEvent({@required String waterToAdd}) =
      _$WaterIntakeManualAddEvent;

  String get waterToAdd;
  $WaterIntakeManualAddEventCopyWith<WaterIntakeManualAddEvent> get copyWith;
}

/// @nodoc
abstract class $WaterIntakeManualDecreaseEventCopyWith<$Res> {
  factory $WaterIntakeManualDecreaseEventCopyWith(
          WaterIntakeManualDecreaseEvent value,
          $Res Function(WaterIntakeManualDecreaseEvent) then) =
      _$WaterIntakeManualDecreaseEventCopyWithImpl<$Res>;
  $Res call({String waterToSubtract});
}

/// @nodoc
class _$WaterIntakeManualDecreaseEventCopyWithImpl<$Res>
    extends _$CurrentWaterIntakeEventCopyWithImpl<$Res>
    implements $WaterIntakeManualDecreaseEventCopyWith<$Res> {
  _$WaterIntakeManualDecreaseEventCopyWithImpl(
      WaterIntakeManualDecreaseEvent _value,
      $Res Function(WaterIntakeManualDecreaseEvent) _then)
      : super(_value, (v) => _then(v as WaterIntakeManualDecreaseEvent));

  @override
  WaterIntakeManualDecreaseEvent get _value =>
      super._value as WaterIntakeManualDecreaseEvent;

  @override
  $Res call({
    Object waterToSubtract = freezed,
  }) {
    return _then(WaterIntakeManualDecreaseEvent(
      waterToSubtract: waterToSubtract == freezed
          ? _value.waterToSubtract
          : waterToSubtract as String,
    ));
  }
}

/// @nodoc
class _$WaterIntakeManualDecreaseEvent
    with DiagnosticableTreeMixin
    implements WaterIntakeManualDecreaseEvent {
  const _$WaterIntakeManualDecreaseEvent({@required this.waterToSubtract})
      : assert(waterToSubtract != null);

  @override
  final String waterToSubtract;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentWaterIntakeEvent.manualDecrease(waterToSubtract: $waterToSubtract)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CurrentWaterIntakeEvent.manualDecrease'))
      ..add(DiagnosticsProperty('waterToSubtract', waterToSubtract));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WaterIntakeManualDecreaseEvent &&
            (identical(other.waterToSubtract, waterToSubtract) ||
                const DeepCollectionEquality()
                    .equals(other.waterToSubtract, waterToSubtract)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(waterToSubtract);

  @override
  $WaterIntakeManualDecreaseEventCopyWith<WaterIntakeManualDecreaseEvent>
      get copyWith => _$WaterIntakeManualDecreaseEventCopyWithImpl<
          WaterIntakeManualDecreaseEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updated(double updatedValue, double waterMaximumHeight),
    @required TResult started(),
    @required TResult manualIncrease(String waterToAdd),
    @required TResult manualDecrease(String waterToSubtract),
  }) {
    assert(updated != null);
    assert(started != null);
    assert(manualIncrease != null);
    assert(manualDecrease != null);
    return manualDecrease(waterToSubtract);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updated(double updatedValue, double waterMaximumHeight),
    TResult started(),
    TResult manualIncrease(String waterToAdd),
    TResult manualDecrease(String waterToSubtract),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (manualDecrease != null) {
      return manualDecrease(waterToSubtract);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updated(WaterIntakeUpdatedEvent value),
    @required TResult started(WaterIntakeStaredEvent value),
    @required TResult manualIncrease(WaterIntakeManualAddEvent value),
    @required TResult manualDecrease(WaterIntakeManualDecreaseEvent value),
  }) {
    assert(updated != null);
    assert(started != null);
    assert(manualIncrease != null);
    assert(manualDecrease != null);
    return manualDecrease(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updated(WaterIntakeUpdatedEvent value),
    TResult started(WaterIntakeStaredEvent value),
    TResult manualIncrease(WaterIntakeManualAddEvent value),
    TResult manualDecrease(WaterIntakeManualDecreaseEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (manualDecrease != null) {
      return manualDecrease(this);
    }
    return orElse();
  }
}

abstract class WaterIntakeManualDecreaseEvent
    implements CurrentWaterIntakeEvent {
  const factory WaterIntakeManualDecreaseEvent(
      {@required String waterToSubtract}) = _$WaterIntakeManualDecreaseEvent;

  String get waterToSubtract;
  $WaterIntakeManualDecreaseEventCopyWith<WaterIntakeManualDecreaseEvent>
      get copyWith;
}

/// @nodoc
class _$CurrentWaterIntakeStateTearOff {
  const _$CurrentWaterIntakeStateTearOff();

// ignore: unused_element
  WaterIntakeInitialState initial(HydrateStatus initalHydrateStatus) {
    return WaterIntakeInitialState(
      initalHydrateStatus,
    );
  }

// ignore: unused_element
  WaterIntakeLoadingState loading() {
    return const WaterIntakeLoadingState();
  }

// ignore: unused_element
  WaterIntakeUpdatedState updated(HydrateStatus updatedHydrateStatus) {
    return WaterIntakeUpdatedState(
      updatedHydrateStatus,
    );
  }

// ignore: unused_element
  WaterIntakeErrorState error(String errorMessage) {
    return WaterIntakeErrorState(
      errorMessage,
    );
  }

// ignore: unused_element
  WaterIntakeCompletedState completed() {
    return const WaterIntakeCompletedState();
  }
}

/// @nodoc
// ignore: unused_element
const $CurrentWaterIntakeState = _$CurrentWaterIntakeStateTearOff();

/// @nodoc
mixin _$CurrentWaterIntakeState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(HydrateStatus initalHydrateStatus),
    @required TResult loading(),
    @required TResult updated(HydrateStatus updatedHydrateStatus),
    @required TResult error(String errorMessage),
    @required TResult completed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(HydrateStatus initalHydrateStatus),
    TResult loading(),
    TResult updated(HydrateStatus updatedHydrateStatus),
    TResult error(String errorMessage),
    TResult completed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(WaterIntakeInitialState value),
    @required TResult loading(WaterIntakeLoadingState value),
    @required TResult updated(WaterIntakeUpdatedState value),
    @required TResult error(WaterIntakeErrorState value),
    @required TResult completed(WaterIntakeCompletedState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(WaterIntakeInitialState value),
    TResult loading(WaterIntakeLoadingState value),
    TResult updated(WaterIntakeUpdatedState value),
    TResult error(WaterIntakeErrorState value),
    TResult completed(WaterIntakeCompletedState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CurrentWaterIntakeStateCopyWith<$Res> {
  factory $CurrentWaterIntakeStateCopyWith(CurrentWaterIntakeState value,
          $Res Function(CurrentWaterIntakeState) then) =
      _$CurrentWaterIntakeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrentWaterIntakeStateCopyWithImpl<$Res>
    implements $CurrentWaterIntakeStateCopyWith<$Res> {
  _$CurrentWaterIntakeStateCopyWithImpl(this._value, this._then);

  final CurrentWaterIntakeState _value;
  // ignore: unused_field
  final $Res Function(CurrentWaterIntakeState) _then;
}

/// @nodoc
abstract class $WaterIntakeInitialStateCopyWith<$Res> {
  factory $WaterIntakeInitialStateCopyWith(WaterIntakeInitialState value,
          $Res Function(WaterIntakeInitialState) then) =
      _$WaterIntakeInitialStateCopyWithImpl<$Res>;
  $Res call({HydrateStatus initalHydrateStatus});

  $HydrateStatusCopyWith<$Res> get initalHydrateStatus;
}

/// @nodoc
class _$WaterIntakeInitialStateCopyWithImpl<$Res>
    extends _$CurrentWaterIntakeStateCopyWithImpl<$Res>
    implements $WaterIntakeInitialStateCopyWith<$Res> {
  _$WaterIntakeInitialStateCopyWithImpl(WaterIntakeInitialState _value,
      $Res Function(WaterIntakeInitialState) _then)
      : super(_value, (v) => _then(v as WaterIntakeInitialState));

  @override
  WaterIntakeInitialState get _value => super._value as WaterIntakeInitialState;

  @override
  $Res call({
    Object initalHydrateStatus = freezed,
  }) {
    return _then(WaterIntakeInitialState(
      initalHydrateStatus == freezed
          ? _value.initalHydrateStatus
          : initalHydrateStatus as HydrateStatus,
    ));
  }

  @override
  $HydrateStatusCopyWith<$Res> get initalHydrateStatus {
    if (_value.initalHydrateStatus == null) {
      return null;
    }
    return $HydrateStatusCopyWith<$Res>(_value.initalHydrateStatus, (value) {
      return _then(_value.copyWith(initalHydrateStatus: value));
    });
  }
}

/// @nodoc
class _$WaterIntakeInitialState
    with DiagnosticableTreeMixin
    implements WaterIntakeInitialState {
  const _$WaterIntakeInitialState(this.initalHydrateStatus)
      : assert(initalHydrateStatus != null);

  @override
  final HydrateStatus initalHydrateStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentWaterIntakeState.initial(initalHydrateStatus: $initalHydrateStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrentWaterIntakeState.initial'))
      ..add(DiagnosticsProperty('initalHydrateStatus', initalHydrateStatus));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WaterIntakeInitialState &&
            (identical(other.initalHydrateStatus, initalHydrateStatus) ||
                const DeepCollectionEquality()
                    .equals(other.initalHydrateStatus, initalHydrateStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initalHydrateStatus);

  @override
  $WaterIntakeInitialStateCopyWith<WaterIntakeInitialState> get copyWith =>
      _$WaterIntakeInitialStateCopyWithImpl<WaterIntakeInitialState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(HydrateStatus initalHydrateStatus),
    @required TResult loading(),
    @required TResult updated(HydrateStatus updatedHydrateStatus),
    @required TResult error(String errorMessage),
    @required TResult completed(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updated != null);
    assert(error != null);
    assert(completed != null);
    return initial(initalHydrateStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(HydrateStatus initalHydrateStatus),
    TResult loading(),
    TResult updated(HydrateStatus updatedHydrateStatus),
    TResult error(String errorMessage),
    TResult completed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(initalHydrateStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(WaterIntakeInitialState value),
    @required TResult loading(WaterIntakeLoadingState value),
    @required TResult updated(WaterIntakeUpdatedState value),
    @required TResult error(WaterIntakeErrorState value),
    @required TResult completed(WaterIntakeCompletedState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updated != null);
    assert(error != null);
    assert(completed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(WaterIntakeInitialState value),
    TResult loading(WaterIntakeLoadingState value),
    TResult updated(WaterIntakeUpdatedState value),
    TResult error(WaterIntakeErrorState value),
    TResult completed(WaterIntakeCompletedState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class WaterIntakeInitialState implements CurrentWaterIntakeState {
  const factory WaterIntakeInitialState(HydrateStatus initalHydrateStatus) =
      _$WaterIntakeInitialState;

  HydrateStatus get initalHydrateStatus;
  $WaterIntakeInitialStateCopyWith<WaterIntakeInitialState> get copyWith;
}

/// @nodoc
abstract class $WaterIntakeLoadingStateCopyWith<$Res> {
  factory $WaterIntakeLoadingStateCopyWith(WaterIntakeLoadingState value,
          $Res Function(WaterIntakeLoadingState) then) =
      _$WaterIntakeLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WaterIntakeLoadingStateCopyWithImpl<$Res>
    extends _$CurrentWaterIntakeStateCopyWithImpl<$Res>
    implements $WaterIntakeLoadingStateCopyWith<$Res> {
  _$WaterIntakeLoadingStateCopyWithImpl(WaterIntakeLoadingState _value,
      $Res Function(WaterIntakeLoadingState) _then)
      : super(_value, (v) => _then(v as WaterIntakeLoadingState));

  @override
  WaterIntakeLoadingState get _value => super._value as WaterIntakeLoadingState;
}

/// @nodoc
class _$WaterIntakeLoadingState
    with DiagnosticableTreeMixin
    implements WaterIntakeLoadingState {
  const _$WaterIntakeLoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentWaterIntakeState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'CurrentWaterIntakeState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WaterIntakeLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(HydrateStatus initalHydrateStatus),
    @required TResult loading(),
    @required TResult updated(HydrateStatus updatedHydrateStatus),
    @required TResult error(String errorMessage),
    @required TResult completed(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updated != null);
    assert(error != null);
    assert(completed != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(HydrateStatus initalHydrateStatus),
    TResult loading(),
    TResult updated(HydrateStatus updatedHydrateStatus),
    TResult error(String errorMessage),
    TResult completed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(WaterIntakeInitialState value),
    @required TResult loading(WaterIntakeLoadingState value),
    @required TResult updated(WaterIntakeUpdatedState value),
    @required TResult error(WaterIntakeErrorState value),
    @required TResult completed(WaterIntakeCompletedState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updated != null);
    assert(error != null);
    assert(completed != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(WaterIntakeInitialState value),
    TResult loading(WaterIntakeLoadingState value),
    TResult updated(WaterIntakeUpdatedState value),
    TResult error(WaterIntakeErrorState value),
    TResult completed(WaterIntakeCompletedState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WaterIntakeLoadingState implements CurrentWaterIntakeState {
  const factory WaterIntakeLoadingState() = _$WaterIntakeLoadingState;
}

/// @nodoc
abstract class $WaterIntakeUpdatedStateCopyWith<$Res> {
  factory $WaterIntakeUpdatedStateCopyWith(WaterIntakeUpdatedState value,
          $Res Function(WaterIntakeUpdatedState) then) =
      _$WaterIntakeUpdatedStateCopyWithImpl<$Res>;
  $Res call({HydrateStatus updatedHydrateStatus});

  $HydrateStatusCopyWith<$Res> get updatedHydrateStatus;
}

/// @nodoc
class _$WaterIntakeUpdatedStateCopyWithImpl<$Res>
    extends _$CurrentWaterIntakeStateCopyWithImpl<$Res>
    implements $WaterIntakeUpdatedStateCopyWith<$Res> {
  _$WaterIntakeUpdatedStateCopyWithImpl(WaterIntakeUpdatedState _value,
      $Res Function(WaterIntakeUpdatedState) _then)
      : super(_value, (v) => _then(v as WaterIntakeUpdatedState));

  @override
  WaterIntakeUpdatedState get _value => super._value as WaterIntakeUpdatedState;

  @override
  $Res call({
    Object updatedHydrateStatus = freezed,
  }) {
    return _then(WaterIntakeUpdatedState(
      updatedHydrateStatus == freezed
          ? _value.updatedHydrateStatus
          : updatedHydrateStatus as HydrateStatus,
    ));
  }

  @override
  $HydrateStatusCopyWith<$Res> get updatedHydrateStatus {
    if (_value.updatedHydrateStatus == null) {
      return null;
    }
    return $HydrateStatusCopyWith<$Res>(_value.updatedHydrateStatus, (value) {
      return _then(_value.copyWith(updatedHydrateStatus: value));
    });
  }
}

/// @nodoc
class _$WaterIntakeUpdatedState
    with DiagnosticableTreeMixin
    implements WaterIntakeUpdatedState {
  const _$WaterIntakeUpdatedState(this.updatedHydrateStatus)
      : assert(updatedHydrateStatus != null);

  @override
  final HydrateStatus updatedHydrateStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentWaterIntakeState.updated(updatedHydrateStatus: $updatedHydrateStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrentWaterIntakeState.updated'))
      ..add(DiagnosticsProperty('updatedHydrateStatus', updatedHydrateStatus));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WaterIntakeUpdatedState &&
            (identical(other.updatedHydrateStatus, updatedHydrateStatus) ||
                const DeepCollectionEquality()
                    .equals(other.updatedHydrateStatus, updatedHydrateStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(updatedHydrateStatus);

  @override
  $WaterIntakeUpdatedStateCopyWith<WaterIntakeUpdatedState> get copyWith =>
      _$WaterIntakeUpdatedStateCopyWithImpl<WaterIntakeUpdatedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(HydrateStatus initalHydrateStatus),
    @required TResult loading(),
    @required TResult updated(HydrateStatus updatedHydrateStatus),
    @required TResult error(String errorMessage),
    @required TResult completed(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updated != null);
    assert(error != null);
    assert(completed != null);
    return updated(updatedHydrateStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(HydrateStatus initalHydrateStatus),
    TResult loading(),
    TResult updated(HydrateStatus updatedHydrateStatus),
    TResult error(String errorMessage),
    TResult completed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(updatedHydrateStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(WaterIntakeInitialState value),
    @required TResult loading(WaterIntakeLoadingState value),
    @required TResult updated(WaterIntakeUpdatedState value),
    @required TResult error(WaterIntakeErrorState value),
    @required TResult completed(WaterIntakeCompletedState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updated != null);
    assert(error != null);
    assert(completed != null);
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(WaterIntakeInitialState value),
    TResult loading(WaterIntakeLoadingState value),
    TResult updated(WaterIntakeUpdatedState value),
    TResult error(WaterIntakeErrorState value),
    TResult completed(WaterIntakeCompletedState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class WaterIntakeUpdatedState implements CurrentWaterIntakeState {
  const factory WaterIntakeUpdatedState(HydrateStatus updatedHydrateStatus) =
      _$WaterIntakeUpdatedState;

  HydrateStatus get updatedHydrateStatus;
  $WaterIntakeUpdatedStateCopyWith<WaterIntakeUpdatedState> get copyWith;
}

/// @nodoc
abstract class $WaterIntakeErrorStateCopyWith<$Res> {
  factory $WaterIntakeErrorStateCopyWith(WaterIntakeErrorState value,
          $Res Function(WaterIntakeErrorState) then) =
      _$WaterIntakeErrorStateCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$WaterIntakeErrorStateCopyWithImpl<$Res>
    extends _$CurrentWaterIntakeStateCopyWithImpl<$Res>
    implements $WaterIntakeErrorStateCopyWith<$Res> {
  _$WaterIntakeErrorStateCopyWithImpl(
      WaterIntakeErrorState _value, $Res Function(WaterIntakeErrorState) _then)
      : super(_value, (v) => _then(v as WaterIntakeErrorState));

  @override
  WaterIntakeErrorState get _value => super._value as WaterIntakeErrorState;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(WaterIntakeErrorState(
      errorMessage == freezed ? _value.errorMessage : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$WaterIntakeErrorState
    with DiagnosticableTreeMixin
    implements WaterIntakeErrorState {
  const _$WaterIntakeErrorState(this.errorMessage)
      : assert(errorMessage != null);

  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentWaterIntakeState.error(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrentWaterIntakeState.error'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WaterIntakeErrorState &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @override
  $WaterIntakeErrorStateCopyWith<WaterIntakeErrorState> get copyWith =>
      _$WaterIntakeErrorStateCopyWithImpl<WaterIntakeErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(HydrateStatus initalHydrateStatus),
    @required TResult loading(),
    @required TResult updated(HydrateStatus updatedHydrateStatus),
    @required TResult error(String errorMessage),
    @required TResult completed(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updated != null);
    assert(error != null);
    assert(completed != null);
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(HydrateStatus initalHydrateStatus),
    TResult loading(),
    TResult updated(HydrateStatus updatedHydrateStatus),
    TResult error(String errorMessage),
    TResult completed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(WaterIntakeInitialState value),
    @required TResult loading(WaterIntakeLoadingState value),
    @required TResult updated(WaterIntakeUpdatedState value),
    @required TResult error(WaterIntakeErrorState value),
    @required TResult completed(WaterIntakeCompletedState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updated != null);
    assert(error != null);
    assert(completed != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(WaterIntakeInitialState value),
    TResult loading(WaterIntakeLoadingState value),
    TResult updated(WaterIntakeUpdatedState value),
    TResult error(WaterIntakeErrorState value),
    TResult completed(WaterIntakeCompletedState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WaterIntakeErrorState implements CurrentWaterIntakeState {
  const factory WaterIntakeErrorState(String errorMessage) =
      _$WaterIntakeErrorState;

  String get errorMessage;
  $WaterIntakeErrorStateCopyWith<WaterIntakeErrorState> get copyWith;
}

/// @nodoc
abstract class $WaterIntakeCompletedStateCopyWith<$Res> {
  factory $WaterIntakeCompletedStateCopyWith(WaterIntakeCompletedState value,
          $Res Function(WaterIntakeCompletedState) then) =
      _$WaterIntakeCompletedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WaterIntakeCompletedStateCopyWithImpl<$Res>
    extends _$CurrentWaterIntakeStateCopyWithImpl<$Res>
    implements $WaterIntakeCompletedStateCopyWith<$Res> {
  _$WaterIntakeCompletedStateCopyWithImpl(WaterIntakeCompletedState _value,
      $Res Function(WaterIntakeCompletedState) _then)
      : super(_value, (v) => _then(v as WaterIntakeCompletedState));

  @override
  WaterIntakeCompletedState get _value =>
      super._value as WaterIntakeCompletedState;
}

/// @nodoc
class _$WaterIntakeCompletedState
    with DiagnosticableTreeMixin
    implements WaterIntakeCompletedState {
  const _$WaterIntakeCompletedState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentWaterIntakeState.completed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'CurrentWaterIntakeState.completed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WaterIntakeCompletedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(HydrateStatus initalHydrateStatus),
    @required TResult loading(),
    @required TResult updated(HydrateStatus updatedHydrateStatus),
    @required TResult error(String errorMessage),
    @required TResult completed(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updated != null);
    assert(error != null);
    assert(completed != null);
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(HydrateStatus initalHydrateStatus),
    TResult loading(),
    TResult updated(HydrateStatus updatedHydrateStatus),
    TResult error(String errorMessage),
    TResult completed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(WaterIntakeInitialState value),
    @required TResult loading(WaterIntakeLoadingState value),
    @required TResult updated(WaterIntakeUpdatedState value),
    @required TResult error(WaterIntakeErrorState value),
    @required TResult completed(WaterIntakeCompletedState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updated != null);
    assert(error != null);
    assert(completed != null);
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(WaterIntakeInitialState value),
    TResult loading(WaterIntakeLoadingState value),
    TResult updated(WaterIntakeUpdatedState value),
    TResult error(WaterIntakeErrorState value),
    TResult completed(WaterIntakeCompletedState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class WaterIntakeCompletedState implements CurrentWaterIntakeState {
  const factory WaterIntakeCompletedState() = _$WaterIntakeCompletedState;
}
