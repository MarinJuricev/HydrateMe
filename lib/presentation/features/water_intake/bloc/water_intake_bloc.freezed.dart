// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'water_intake_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WaterIntakeEventTearOff {
  const _$WaterIntakeEventTearOff();

// ignore: unused_element
  WaterIntakeChangedEvent changed(double changedValue) {
    return WaterIntakeChangedEvent(
      changedValue,
    );
  }

// ignore: unused_element
  WaterIntakeUpdatedEvent updated(double updatedValue) {
    return WaterIntakeUpdatedEvent(
      updatedValue,
    );
  }

// ignore: unused_element
  WaterIntakeAcceptedEvent accepted(double acceptedValue) {
    return WaterIntakeAcceptedEvent(
      acceptedValue,
    );
  }

// ignore: unused_element
  WaterIntakeCanceledEvent canceled() {
    return const WaterIntakeCanceledEvent();
  }
}

// ignore: unused_element
const $WaterIntakeEvent = _$WaterIntakeEventTearOff();

mixin _$WaterIntakeEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changed(double changedValue),
    @required Result updated(double updatedValue),
    @required Result accepted(double acceptedValue),
    @required Result canceled(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changed(double changedValue),
    Result updated(double updatedValue),
    Result accepted(double acceptedValue),
    Result canceled(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changed(WaterIntakeChangedEvent value),
    @required Result updated(WaterIntakeUpdatedEvent value),
    @required Result accepted(WaterIntakeAcceptedEvent value),
    @required Result canceled(WaterIntakeCanceledEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changed(WaterIntakeChangedEvent value),
    Result updated(WaterIntakeUpdatedEvent value),
    Result accepted(WaterIntakeAcceptedEvent value),
    Result canceled(WaterIntakeCanceledEvent value),
    @required Result orElse(),
  });
}

abstract class $WaterIntakeEventCopyWith<$Res> {
  factory $WaterIntakeEventCopyWith(
          WaterIntakeEvent value, $Res Function(WaterIntakeEvent) then) =
      _$WaterIntakeEventCopyWithImpl<$Res>;
}

class _$WaterIntakeEventCopyWithImpl<$Res>
    implements $WaterIntakeEventCopyWith<$Res> {
  _$WaterIntakeEventCopyWithImpl(this._value, this._then);

  final WaterIntakeEvent _value;
  // ignore: unused_field
  final $Res Function(WaterIntakeEvent) _then;
}

abstract class $WaterIntakeChangedEventCopyWith<$Res> {
  factory $WaterIntakeChangedEventCopyWith(WaterIntakeChangedEvent value,
          $Res Function(WaterIntakeChangedEvent) then) =
      _$WaterIntakeChangedEventCopyWithImpl<$Res>;
  $Res call({double changedValue});
}

class _$WaterIntakeChangedEventCopyWithImpl<$Res>
    extends _$WaterIntakeEventCopyWithImpl<$Res>
    implements $WaterIntakeChangedEventCopyWith<$Res> {
  _$WaterIntakeChangedEventCopyWithImpl(WaterIntakeChangedEvent _value,
      $Res Function(WaterIntakeChangedEvent) _then)
      : super(_value, (v) => _then(v as WaterIntakeChangedEvent));

  @override
  WaterIntakeChangedEvent get _value => super._value as WaterIntakeChangedEvent;

  @override
  $Res call({
    Object changedValue = freezed,
  }) {
    return _then(WaterIntakeChangedEvent(
      changedValue == freezed ? _value.changedValue : changedValue as double,
    ));
  }
}

class _$WaterIntakeChangedEvent
    with DiagnosticableTreeMixin
    implements WaterIntakeChangedEvent {
  const _$WaterIntakeChangedEvent(this.changedValue)
      : assert(changedValue != null);

  @override
  final double changedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WaterIntakeEvent.changed(changedValue: $changedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WaterIntakeEvent.changed'))
      ..add(DiagnosticsProperty('changedValue', changedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WaterIntakeChangedEvent &&
            (identical(other.changedValue, changedValue) ||
                const DeepCollectionEquality()
                    .equals(other.changedValue, changedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(changedValue);

  @override
  $WaterIntakeChangedEventCopyWith<WaterIntakeChangedEvent> get copyWith =>
      _$WaterIntakeChangedEventCopyWithImpl<WaterIntakeChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changed(double changedValue),
    @required Result updated(double updatedValue),
    @required Result accepted(double acceptedValue),
    @required Result canceled(),
  }) {
    assert(changed != null);
    assert(updated != null);
    assert(accepted != null);
    assert(canceled != null);
    return changed(changedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changed(double changedValue),
    Result updated(double updatedValue),
    Result accepted(double acceptedValue),
    Result canceled(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changed != null) {
      return changed(changedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changed(WaterIntakeChangedEvent value),
    @required Result updated(WaterIntakeUpdatedEvent value),
    @required Result accepted(WaterIntakeAcceptedEvent value),
    @required Result canceled(WaterIntakeCanceledEvent value),
  }) {
    assert(changed != null);
    assert(updated != null);
    assert(accepted != null);
    assert(canceled != null);
    return changed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changed(WaterIntakeChangedEvent value),
    Result updated(WaterIntakeUpdatedEvent value),
    Result accepted(WaterIntakeAcceptedEvent value),
    Result canceled(WaterIntakeCanceledEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class WaterIntakeChangedEvent implements WaterIntakeEvent {
  const factory WaterIntakeChangedEvent(double changedValue) =
      _$WaterIntakeChangedEvent;

  double get changedValue;
  $WaterIntakeChangedEventCopyWith<WaterIntakeChangedEvent> get copyWith;
}

abstract class $WaterIntakeUpdatedEventCopyWith<$Res> {
  factory $WaterIntakeUpdatedEventCopyWith(WaterIntakeUpdatedEvent value,
          $Res Function(WaterIntakeUpdatedEvent) then) =
      _$WaterIntakeUpdatedEventCopyWithImpl<$Res>;
  $Res call({double updatedValue});
}

class _$WaterIntakeUpdatedEventCopyWithImpl<$Res>
    extends _$WaterIntakeEventCopyWithImpl<$Res>
    implements $WaterIntakeUpdatedEventCopyWith<$Res> {
  _$WaterIntakeUpdatedEventCopyWithImpl(WaterIntakeUpdatedEvent _value,
      $Res Function(WaterIntakeUpdatedEvent) _then)
      : super(_value, (v) => _then(v as WaterIntakeUpdatedEvent));

  @override
  WaterIntakeUpdatedEvent get _value => super._value as WaterIntakeUpdatedEvent;

  @override
  $Res call({
    Object updatedValue = freezed,
  }) {
    return _then(WaterIntakeUpdatedEvent(
      updatedValue == freezed ? _value.updatedValue : updatedValue as double,
    ));
  }
}

class _$WaterIntakeUpdatedEvent
    with DiagnosticableTreeMixin
    implements WaterIntakeUpdatedEvent {
  const _$WaterIntakeUpdatedEvent(this.updatedValue)
      : assert(updatedValue != null);

  @override
  final double updatedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WaterIntakeEvent.updated(updatedValue: $updatedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WaterIntakeEvent.updated'))
      ..add(DiagnosticsProperty('updatedValue', updatedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WaterIntakeUpdatedEvent &&
            (identical(other.updatedValue, updatedValue) ||
                const DeepCollectionEquality()
                    .equals(other.updatedValue, updatedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(updatedValue);

  @override
  $WaterIntakeUpdatedEventCopyWith<WaterIntakeUpdatedEvent> get copyWith =>
      _$WaterIntakeUpdatedEventCopyWithImpl<WaterIntakeUpdatedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changed(double changedValue),
    @required Result updated(double updatedValue),
    @required Result accepted(double acceptedValue),
    @required Result canceled(),
  }) {
    assert(changed != null);
    assert(updated != null);
    assert(accepted != null);
    assert(canceled != null);
    return updated(updatedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changed(double changedValue),
    Result updated(double updatedValue),
    Result accepted(double acceptedValue),
    Result canceled(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(updatedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changed(WaterIntakeChangedEvent value),
    @required Result updated(WaterIntakeUpdatedEvent value),
    @required Result accepted(WaterIntakeAcceptedEvent value),
    @required Result canceled(WaterIntakeCanceledEvent value),
  }) {
    assert(changed != null);
    assert(updated != null);
    assert(accepted != null);
    assert(canceled != null);
    return updated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changed(WaterIntakeChangedEvent value),
    Result updated(WaterIntakeUpdatedEvent value),
    Result accepted(WaterIntakeAcceptedEvent value),
    Result canceled(WaterIntakeCanceledEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class WaterIntakeUpdatedEvent implements WaterIntakeEvent {
  const factory WaterIntakeUpdatedEvent(double updatedValue) =
      _$WaterIntakeUpdatedEvent;

  double get updatedValue;
  $WaterIntakeUpdatedEventCopyWith<WaterIntakeUpdatedEvent> get copyWith;
}

abstract class $WaterIntakeAcceptedEventCopyWith<$Res> {
  factory $WaterIntakeAcceptedEventCopyWith(WaterIntakeAcceptedEvent value,
          $Res Function(WaterIntakeAcceptedEvent) then) =
      _$WaterIntakeAcceptedEventCopyWithImpl<$Res>;
  $Res call({double acceptedValue});
}

class _$WaterIntakeAcceptedEventCopyWithImpl<$Res>
    extends _$WaterIntakeEventCopyWithImpl<$Res>
    implements $WaterIntakeAcceptedEventCopyWith<$Res> {
  _$WaterIntakeAcceptedEventCopyWithImpl(WaterIntakeAcceptedEvent _value,
      $Res Function(WaterIntakeAcceptedEvent) _then)
      : super(_value, (v) => _then(v as WaterIntakeAcceptedEvent));

  @override
  WaterIntakeAcceptedEvent get _value =>
      super._value as WaterIntakeAcceptedEvent;

  @override
  $Res call({
    Object acceptedValue = freezed,
  }) {
    return _then(WaterIntakeAcceptedEvent(
      acceptedValue == freezed ? _value.acceptedValue : acceptedValue as double,
    ));
  }
}

class _$WaterIntakeAcceptedEvent
    with DiagnosticableTreeMixin
    implements WaterIntakeAcceptedEvent {
  const _$WaterIntakeAcceptedEvent(this.acceptedValue)
      : assert(acceptedValue != null);

  @override
  final double acceptedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WaterIntakeEvent.accepted(acceptedValue: $acceptedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WaterIntakeEvent.accepted'))
      ..add(DiagnosticsProperty('acceptedValue', acceptedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WaterIntakeAcceptedEvent &&
            (identical(other.acceptedValue, acceptedValue) ||
                const DeepCollectionEquality()
                    .equals(other.acceptedValue, acceptedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(acceptedValue);

  @override
  $WaterIntakeAcceptedEventCopyWith<WaterIntakeAcceptedEvent> get copyWith =>
      _$WaterIntakeAcceptedEventCopyWithImpl<WaterIntakeAcceptedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changed(double changedValue),
    @required Result updated(double updatedValue),
    @required Result accepted(double acceptedValue),
    @required Result canceled(),
  }) {
    assert(changed != null);
    assert(updated != null);
    assert(accepted != null);
    assert(canceled != null);
    return accepted(acceptedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changed(double changedValue),
    Result updated(double updatedValue),
    Result accepted(double acceptedValue),
    Result canceled(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accepted != null) {
      return accepted(acceptedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changed(WaterIntakeChangedEvent value),
    @required Result updated(WaterIntakeUpdatedEvent value),
    @required Result accepted(WaterIntakeAcceptedEvent value),
    @required Result canceled(WaterIntakeCanceledEvent value),
  }) {
    assert(changed != null);
    assert(updated != null);
    assert(accepted != null);
    assert(canceled != null);
    return accepted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changed(WaterIntakeChangedEvent value),
    Result updated(WaterIntakeUpdatedEvent value),
    Result accepted(WaterIntakeAcceptedEvent value),
    Result canceled(WaterIntakeCanceledEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accepted != null) {
      return accepted(this);
    }
    return orElse();
  }
}

abstract class WaterIntakeAcceptedEvent implements WaterIntakeEvent {
  const factory WaterIntakeAcceptedEvent(double acceptedValue) =
      _$WaterIntakeAcceptedEvent;

  double get acceptedValue;
  $WaterIntakeAcceptedEventCopyWith<WaterIntakeAcceptedEvent> get copyWith;
}

abstract class $WaterIntakeCanceledEventCopyWith<$Res> {
  factory $WaterIntakeCanceledEventCopyWith(WaterIntakeCanceledEvent value,
          $Res Function(WaterIntakeCanceledEvent) then) =
      _$WaterIntakeCanceledEventCopyWithImpl<$Res>;
}

class _$WaterIntakeCanceledEventCopyWithImpl<$Res>
    extends _$WaterIntakeEventCopyWithImpl<$Res>
    implements $WaterIntakeCanceledEventCopyWith<$Res> {
  _$WaterIntakeCanceledEventCopyWithImpl(WaterIntakeCanceledEvent _value,
      $Res Function(WaterIntakeCanceledEvent) _then)
      : super(_value, (v) => _then(v as WaterIntakeCanceledEvent));

  @override
  WaterIntakeCanceledEvent get _value =>
      super._value as WaterIntakeCanceledEvent;
}

class _$WaterIntakeCanceledEvent
    with DiagnosticableTreeMixin
    implements WaterIntakeCanceledEvent {
  const _$WaterIntakeCanceledEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WaterIntakeEvent.canceled()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WaterIntakeEvent.canceled'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WaterIntakeCanceledEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changed(double changedValue),
    @required Result updated(double updatedValue),
    @required Result accepted(double acceptedValue),
    @required Result canceled(),
  }) {
    assert(changed != null);
    assert(updated != null);
    assert(accepted != null);
    assert(canceled != null);
    return canceled();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changed(double changedValue),
    Result updated(double updatedValue),
    Result accepted(double acceptedValue),
    Result canceled(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (canceled != null) {
      return canceled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changed(WaterIntakeChangedEvent value),
    @required Result updated(WaterIntakeUpdatedEvent value),
    @required Result accepted(WaterIntakeAcceptedEvent value),
    @required Result canceled(WaterIntakeCanceledEvent value),
  }) {
    assert(changed != null);
    assert(updated != null);
    assert(accepted != null);
    assert(canceled != null);
    return canceled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changed(WaterIntakeChangedEvent value),
    Result updated(WaterIntakeUpdatedEvent value),
    Result accepted(WaterIntakeAcceptedEvent value),
    Result canceled(WaterIntakeCanceledEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (canceled != null) {
      return canceled(this);
    }
    return orElse();
  }
}

abstract class WaterIntakeCanceledEvent implements WaterIntakeEvent {
  const factory WaterIntakeCanceledEvent() = _$WaterIntakeCanceledEvent;
}

class _$WaterIntakeStateTearOff {
  const _$WaterIntakeStateTearOff();

// ignore: unused_element
  WaterIntakeInitialState initial() {
    return const WaterIntakeInitialState();
  }

// ignore: unused_element
  WaterIntakeUpdatedState updated(double updatedValue) {
    return WaterIntakeUpdatedState(
      updatedValue,
    );
  }

// ignore: unused_element
  WaterIntakeAcceptedState accepted(double acceptedValue) {
    return WaterIntakeAcceptedState(
      acceptedValue,
    );
  }

// ignore: unused_element
  WaterIntakeCompletedState completed() {
    return const WaterIntakeCompletedState();
  }
}

// ignore: unused_element
const $WaterIntakeState = _$WaterIntakeStateTearOff();

mixin _$WaterIntakeState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result updated(double updatedValue),
    @required Result accepted(double acceptedValue),
    @required Result completed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result updated(double updatedValue),
    Result accepted(double acceptedValue),
    Result completed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(WaterIntakeInitialState value),
    @required Result updated(WaterIntakeUpdatedState value),
    @required Result accepted(WaterIntakeAcceptedState value),
    @required Result completed(WaterIntakeCompletedState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(WaterIntakeInitialState value),
    Result updated(WaterIntakeUpdatedState value),
    Result accepted(WaterIntakeAcceptedState value),
    Result completed(WaterIntakeCompletedState value),
    @required Result orElse(),
  });
}

abstract class $WaterIntakeStateCopyWith<$Res> {
  factory $WaterIntakeStateCopyWith(
          WaterIntakeState value, $Res Function(WaterIntakeState) then) =
      _$WaterIntakeStateCopyWithImpl<$Res>;
}

class _$WaterIntakeStateCopyWithImpl<$Res>
    implements $WaterIntakeStateCopyWith<$Res> {
  _$WaterIntakeStateCopyWithImpl(this._value, this._then);

  final WaterIntakeState _value;
  // ignore: unused_field
  final $Res Function(WaterIntakeState) _then;
}

abstract class $WaterIntakeInitialStateCopyWith<$Res> {
  factory $WaterIntakeInitialStateCopyWith(WaterIntakeInitialState value,
          $Res Function(WaterIntakeInitialState) then) =
      _$WaterIntakeInitialStateCopyWithImpl<$Res>;
}

class _$WaterIntakeInitialStateCopyWithImpl<$Res>
    extends _$WaterIntakeStateCopyWithImpl<$Res>
    implements $WaterIntakeInitialStateCopyWith<$Res> {
  _$WaterIntakeInitialStateCopyWithImpl(WaterIntakeInitialState _value,
      $Res Function(WaterIntakeInitialState) _then)
      : super(_value, (v) => _then(v as WaterIntakeInitialState));

  @override
  WaterIntakeInitialState get _value => super._value as WaterIntakeInitialState;
}

class _$WaterIntakeInitialState
    with DiagnosticableTreeMixin
    implements WaterIntakeInitialState {
  const _$WaterIntakeInitialState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WaterIntakeState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WaterIntakeState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WaterIntakeInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result updated(double updatedValue),
    @required Result accepted(double acceptedValue),
    @required Result completed(),
  }) {
    assert(initial != null);
    assert(updated != null);
    assert(accepted != null);
    assert(completed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result updated(double updatedValue),
    Result accepted(double acceptedValue),
    Result completed(),
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
    @required Result initial(WaterIntakeInitialState value),
    @required Result updated(WaterIntakeUpdatedState value),
    @required Result accepted(WaterIntakeAcceptedState value),
    @required Result completed(WaterIntakeCompletedState value),
  }) {
    assert(initial != null);
    assert(updated != null);
    assert(accepted != null);
    assert(completed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(WaterIntakeInitialState value),
    Result updated(WaterIntakeUpdatedState value),
    Result accepted(WaterIntakeAcceptedState value),
    Result completed(WaterIntakeCompletedState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class WaterIntakeInitialState implements WaterIntakeState {
  const factory WaterIntakeInitialState() = _$WaterIntakeInitialState;
}

abstract class $WaterIntakeUpdatedStateCopyWith<$Res> {
  factory $WaterIntakeUpdatedStateCopyWith(WaterIntakeUpdatedState value,
          $Res Function(WaterIntakeUpdatedState) then) =
      _$WaterIntakeUpdatedStateCopyWithImpl<$Res>;
  $Res call({double updatedValue});
}

class _$WaterIntakeUpdatedStateCopyWithImpl<$Res>
    extends _$WaterIntakeStateCopyWithImpl<$Res>
    implements $WaterIntakeUpdatedStateCopyWith<$Res> {
  _$WaterIntakeUpdatedStateCopyWithImpl(WaterIntakeUpdatedState _value,
      $Res Function(WaterIntakeUpdatedState) _then)
      : super(_value, (v) => _then(v as WaterIntakeUpdatedState));

  @override
  WaterIntakeUpdatedState get _value => super._value as WaterIntakeUpdatedState;

  @override
  $Res call({
    Object updatedValue = freezed,
  }) {
    return _then(WaterIntakeUpdatedState(
      updatedValue == freezed ? _value.updatedValue : updatedValue as double,
    ));
  }
}

class _$WaterIntakeUpdatedState
    with DiagnosticableTreeMixin
    implements WaterIntakeUpdatedState {
  const _$WaterIntakeUpdatedState(this.updatedValue)
      : assert(updatedValue != null);

  @override
  final double updatedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WaterIntakeState.updated(updatedValue: $updatedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WaterIntakeState.updated'))
      ..add(DiagnosticsProperty('updatedValue', updatedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WaterIntakeUpdatedState &&
            (identical(other.updatedValue, updatedValue) ||
                const DeepCollectionEquality()
                    .equals(other.updatedValue, updatedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(updatedValue);

  @override
  $WaterIntakeUpdatedStateCopyWith<WaterIntakeUpdatedState> get copyWith =>
      _$WaterIntakeUpdatedStateCopyWithImpl<WaterIntakeUpdatedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result updated(double updatedValue),
    @required Result accepted(double acceptedValue),
    @required Result completed(),
  }) {
    assert(initial != null);
    assert(updated != null);
    assert(accepted != null);
    assert(completed != null);
    return updated(updatedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result updated(double updatedValue),
    Result accepted(double acceptedValue),
    Result completed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(updatedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(WaterIntakeInitialState value),
    @required Result updated(WaterIntakeUpdatedState value),
    @required Result accepted(WaterIntakeAcceptedState value),
    @required Result completed(WaterIntakeCompletedState value),
  }) {
    assert(initial != null);
    assert(updated != null);
    assert(accepted != null);
    assert(completed != null);
    return updated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(WaterIntakeInitialState value),
    Result updated(WaterIntakeUpdatedState value),
    Result accepted(WaterIntakeAcceptedState value),
    Result completed(WaterIntakeCompletedState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class WaterIntakeUpdatedState implements WaterIntakeState {
  const factory WaterIntakeUpdatedState(double updatedValue) =
      _$WaterIntakeUpdatedState;

  double get updatedValue;
  $WaterIntakeUpdatedStateCopyWith<WaterIntakeUpdatedState> get copyWith;
}

abstract class $WaterIntakeAcceptedStateCopyWith<$Res> {
  factory $WaterIntakeAcceptedStateCopyWith(WaterIntakeAcceptedState value,
          $Res Function(WaterIntakeAcceptedState) then) =
      _$WaterIntakeAcceptedStateCopyWithImpl<$Res>;
  $Res call({double acceptedValue});
}

class _$WaterIntakeAcceptedStateCopyWithImpl<$Res>
    extends _$WaterIntakeStateCopyWithImpl<$Res>
    implements $WaterIntakeAcceptedStateCopyWith<$Res> {
  _$WaterIntakeAcceptedStateCopyWithImpl(WaterIntakeAcceptedState _value,
      $Res Function(WaterIntakeAcceptedState) _then)
      : super(_value, (v) => _then(v as WaterIntakeAcceptedState));

  @override
  WaterIntakeAcceptedState get _value =>
      super._value as WaterIntakeAcceptedState;

  @override
  $Res call({
    Object acceptedValue = freezed,
  }) {
    return _then(WaterIntakeAcceptedState(
      acceptedValue == freezed ? _value.acceptedValue : acceptedValue as double,
    ));
  }
}

class _$WaterIntakeAcceptedState
    with DiagnosticableTreeMixin
    implements WaterIntakeAcceptedState {
  const _$WaterIntakeAcceptedState(this.acceptedValue)
      : assert(acceptedValue != null);

  @override
  final double acceptedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WaterIntakeState.accepted(acceptedValue: $acceptedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WaterIntakeState.accepted'))
      ..add(DiagnosticsProperty('acceptedValue', acceptedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WaterIntakeAcceptedState &&
            (identical(other.acceptedValue, acceptedValue) ||
                const DeepCollectionEquality()
                    .equals(other.acceptedValue, acceptedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(acceptedValue);

  @override
  $WaterIntakeAcceptedStateCopyWith<WaterIntakeAcceptedState> get copyWith =>
      _$WaterIntakeAcceptedStateCopyWithImpl<WaterIntakeAcceptedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result updated(double updatedValue),
    @required Result accepted(double acceptedValue),
    @required Result completed(),
  }) {
    assert(initial != null);
    assert(updated != null);
    assert(accepted != null);
    assert(completed != null);
    return accepted(acceptedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result updated(double updatedValue),
    Result accepted(double acceptedValue),
    Result completed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accepted != null) {
      return accepted(acceptedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(WaterIntakeInitialState value),
    @required Result updated(WaterIntakeUpdatedState value),
    @required Result accepted(WaterIntakeAcceptedState value),
    @required Result completed(WaterIntakeCompletedState value),
  }) {
    assert(initial != null);
    assert(updated != null);
    assert(accepted != null);
    assert(completed != null);
    return accepted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(WaterIntakeInitialState value),
    Result updated(WaterIntakeUpdatedState value),
    Result accepted(WaterIntakeAcceptedState value),
    Result completed(WaterIntakeCompletedState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accepted != null) {
      return accepted(this);
    }
    return orElse();
  }
}

abstract class WaterIntakeAcceptedState implements WaterIntakeState {
  const factory WaterIntakeAcceptedState(double acceptedValue) =
      _$WaterIntakeAcceptedState;

  double get acceptedValue;
  $WaterIntakeAcceptedStateCopyWith<WaterIntakeAcceptedState> get copyWith;
}

abstract class $WaterIntakeCompletedStateCopyWith<$Res> {
  factory $WaterIntakeCompletedStateCopyWith(WaterIntakeCompletedState value,
          $Res Function(WaterIntakeCompletedState) then) =
      _$WaterIntakeCompletedStateCopyWithImpl<$Res>;
}

class _$WaterIntakeCompletedStateCopyWithImpl<$Res>
    extends _$WaterIntakeStateCopyWithImpl<$Res>
    implements $WaterIntakeCompletedStateCopyWith<$Res> {
  _$WaterIntakeCompletedStateCopyWithImpl(WaterIntakeCompletedState _value,
      $Res Function(WaterIntakeCompletedState) _then)
      : super(_value, (v) => _then(v as WaterIntakeCompletedState));

  @override
  WaterIntakeCompletedState get _value =>
      super._value as WaterIntakeCompletedState;
}

class _$WaterIntakeCompletedState
    with DiagnosticableTreeMixin
    implements WaterIntakeCompletedState {
  const _$WaterIntakeCompletedState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WaterIntakeState.completed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WaterIntakeState.completed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WaterIntakeCompletedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result updated(double updatedValue),
    @required Result accepted(double acceptedValue),
    @required Result completed(),
  }) {
    assert(initial != null);
    assert(updated != null);
    assert(accepted != null);
    assert(completed != null);
    return completed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result updated(double updatedValue),
    Result accepted(double acceptedValue),
    Result completed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(WaterIntakeInitialState value),
    @required Result updated(WaterIntakeUpdatedState value),
    @required Result accepted(WaterIntakeAcceptedState value),
    @required Result completed(WaterIntakeCompletedState value),
  }) {
    assert(initial != null);
    assert(updated != null);
    assert(accepted != null);
    assert(completed != null);
    return completed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(WaterIntakeInitialState value),
    Result updated(WaterIntakeUpdatedState value),
    Result accepted(WaterIntakeAcceptedState value),
    Result completed(WaterIntakeCompletedState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class WaterIntakeCompletedState implements WaterIntakeState {
  const factory WaterIntakeCompletedState() = _$WaterIntakeCompletedState;
}
