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
}

// ignore: unused_element
const $WaterIntakeEvent = _$WaterIntakeEventTearOff();

mixin _$WaterIntakeEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updated(double updatedValue, double waterMaximumHeight),
    @required Result started(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updated(double updatedValue, double waterMaximumHeight),
    Result started(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updated(WaterIntakeUpdatedEvent value),
    @required Result started(WaterIntakeStaredEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updated(WaterIntakeUpdatedEvent value),
    Result started(WaterIntakeStaredEvent value),
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

abstract class $WaterIntakeUpdatedEventCopyWith<$Res> {
  factory $WaterIntakeUpdatedEventCopyWith(WaterIntakeUpdatedEvent value,
          $Res Function(WaterIntakeUpdatedEvent) then) =
      _$WaterIntakeUpdatedEventCopyWithImpl<$Res>;
  $Res call({double updatedValue, double waterMaximumHeight});
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
    return 'WaterIntakeEvent.updated(updatedValue: $updatedValue, waterMaximumHeight: $waterMaximumHeight)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WaterIntakeEvent.updated'))
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
  Result when<Result extends Object>({
    @required Result updated(double updatedValue, double waterMaximumHeight),
    @required Result started(),
  }) {
    assert(updated != null);
    assert(started != null);
    return updated(updatedValue, waterMaximumHeight);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updated(double updatedValue, double waterMaximumHeight),
    Result started(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(updatedValue, waterMaximumHeight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updated(WaterIntakeUpdatedEvent value),
    @required Result started(WaterIntakeStaredEvent value),
  }) {
    assert(updated != null);
    assert(started != null);
    return updated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updated(WaterIntakeUpdatedEvent value),
    Result started(WaterIntakeStaredEvent value),
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
  const factory WaterIntakeUpdatedEvent(
      {@required double updatedValue,
      @required double waterMaximumHeight}) = _$WaterIntakeUpdatedEvent;

  double get updatedValue;
  double get waterMaximumHeight;
  $WaterIntakeUpdatedEventCopyWith<WaterIntakeUpdatedEvent> get copyWith;
}

abstract class $WaterIntakeStaredEventCopyWith<$Res> {
  factory $WaterIntakeStaredEventCopyWith(WaterIntakeStaredEvent value,
          $Res Function(WaterIntakeStaredEvent) then) =
      _$WaterIntakeStaredEventCopyWithImpl<$Res>;
}

class _$WaterIntakeStaredEventCopyWithImpl<$Res>
    extends _$WaterIntakeEventCopyWithImpl<$Res>
    implements $WaterIntakeStaredEventCopyWith<$Res> {
  _$WaterIntakeStaredEventCopyWithImpl(WaterIntakeStaredEvent _value,
      $Res Function(WaterIntakeStaredEvent) _then)
      : super(_value, (v) => _then(v as WaterIntakeStaredEvent));

  @override
  WaterIntakeStaredEvent get _value => super._value as WaterIntakeStaredEvent;
}

class _$WaterIntakeStaredEvent
    with DiagnosticableTreeMixin
    implements WaterIntakeStaredEvent {
  const _$WaterIntakeStaredEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WaterIntakeEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WaterIntakeEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WaterIntakeStaredEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updated(double updatedValue, double waterMaximumHeight),
    @required Result started(),
  }) {
    assert(updated != null);
    assert(started != null);
    return started();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updated(double updatedValue, double waterMaximumHeight),
    Result started(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updated(WaterIntakeUpdatedEvent value),
    @required Result started(WaterIntakeStaredEvent value),
  }) {
    assert(updated != null);
    assert(started != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updated(WaterIntakeUpdatedEvent value),
    Result started(WaterIntakeStaredEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class WaterIntakeStaredEvent implements WaterIntakeEvent {
  const factory WaterIntakeStaredEvent() = _$WaterIntakeStaredEvent;
}

class _$WaterIntakeStateTearOff {
  const _$WaterIntakeStateTearOff();

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

// ignore: unused_element
const $WaterIntakeState = _$WaterIntakeStateTearOff();

mixin _$WaterIntakeState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(HydrateStatus initalHydrateStatus),
    @required Result loading(),
    @required Result updated(HydrateStatus updatedHydrateStatus),
    @required Result error(String errorMessage),
    @required Result completed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(HydrateStatus initalHydrateStatus),
    Result loading(),
    Result updated(HydrateStatus updatedHydrateStatus),
    Result error(String errorMessage),
    Result completed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(WaterIntakeInitialState value),
    @required Result loading(WaterIntakeLoadingState value),
    @required Result updated(WaterIntakeUpdatedState value),
    @required Result error(WaterIntakeErrorState value),
    @required Result completed(WaterIntakeCompletedState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(WaterIntakeInitialState value),
    Result loading(WaterIntakeLoadingState value),
    Result updated(WaterIntakeUpdatedState value),
    Result error(WaterIntakeErrorState value),
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
  $Res call({HydrateStatus initalHydrateStatus});

  $HydrateStatusCopyWith<$Res> get initalHydrateStatus;
}

class _$WaterIntakeInitialStateCopyWithImpl<$Res>
    extends _$WaterIntakeStateCopyWithImpl<$Res>
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

class _$WaterIntakeInitialState
    with DiagnosticableTreeMixin
    implements WaterIntakeInitialState {
  const _$WaterIntakeInitialState(this.initalHydrateStatus)
      : assert(initalHydrateStatus != null);

  @override
  final HydrateStatus initalHydrateStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WaterIntakeState.initial(initalHydrateStatus: $initalHydrateStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WaterIntakeState.initial'))
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
  Result when<Result extends Object>({
    @required Result initial(HydrateStatus initalHydrateStatus),
    @required Result loading(),
    @required Result updated(HydrateStatus updatedHydrateStatus),
    @required Result error(String errorMessage),
    @required Result completed(),
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
  Result maybeWhen<Result extends Object>({
    Result initial(HydrateStatus initalHydrateStatus),
    Result loading(),
    Result updated(HydrateStatus updatedHydrateStatus),
    Result error(String errorMessage),
    Result completed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(initalHydrateStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(WaterIntakeInitialState value),
    @required Result loading(WaterIntakeLoadingState value),
    @required Result updated(WaterIntakeUpdatedState value),
    @required Result error(WaterIntakeErrorState value),
    @required Result completed(WaterIntakeCompletedState value),
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
  Result maybeMap<Result extends Object>({
    Result initial(WaterIntakeInitialState value),
    Result loading(WaterIntakeLoadingState value),
    Result updated(WaterIntakeUpdatedState value),
    Result error(WaterIntakeErrorState value),
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
  const factory WaterIntakeInitialState(HydrateStatus initalHydrateStatus) =
      _$WaterIntakeInitialState;

  HydrateStatus get initalHydrateStatus;
  $WaterIntakeInitialStateCopyWith<WaterIntakeInitialState> get copyWith;
}

abstract class $WaterIntakeLoadingStateCopyWith<$Res> {
  factory $WaterIntakeLoadingStateCopyWith(WaterIntakeLoadingState value,
          $Res Function(WaterIntakeLoadingState) then) =
      _$WaterIntakeLoadingStateCopyWithImpl<$Res>;
}

class _$WaterIntakeLoadingStateCopyWithImpl<$Res>
    extends _$WaterIntakeStateCopyWithImpl<$Res>
    implements $WaterIntakeLoadingStateCopyWith<$Res> {
  _$WaterIntakeLoadingStateCopyWithImpl(WaterIntakeLoadingState _value,
      $Res Function(WaterIntakeLoadingState) _then)
      : super(_value, (v) => _then(v as WaterIntakeLoadingState));

  @override
  WaterIntakeLoadingState get _value => super._value as WaterIntakeLoadingState;
}

class _$WaterIntakeLoadingState
    with DiagnosticableTreeMixin
    implements WaterIntakeLoadingState {
  const _$WaterIntakeLoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WaterIntakeState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WaterIntakeState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WaterIntakeLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(HydrateStatus initalHydrateStatus),
    @required Result loading(),
    @required Result updated(HydrateStatus updatedHydrateStatus),
    @required Result error(String errorMessage),
    @required Result completed(),
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
  Result maybeWhen<Result extends Object>({
    Result initial(HydrateStatus initalHydrateStatus),
    Result loading(),
    Result updated(HydrateStatus updatedHydrateStatus),
    Result error(String errorMessage),
    Result completed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(WaterIntakeInitialState value),
    @required Result loading(WaterIntakeLoadingState value),
    @required Result updated(WaterIntakeUpdatedState value),
    @required Result error(WaterIntakeErrorState value),
    @required Result completed(WaterIntakeCompletedState value),
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
  Result maybeMap<Result extends Object>({
    Result initial(WaterIntakeInitialState value),
    Result loading(WaterIntakeLoadingState value),
    Result updated(WaterIntakeUpdatedState value),
    Result error(WaterIntakeErrorState value),
    Result completed(WaterIntakeCompletedState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WaterIntakeLoadingState implements WaterIntakeState {
  const factory WaterIntakeLoadingState() = _$WaterIntakeLoadingState;
}

abstract class $WaterIntakeUpdatedStateCopyWith<$Res> {
  factory $WaterIntakeUpdatedStateCopyWith(WaterIntakeUpdatedState value,
          $Res Function(WaterIntakeUpdatedState) then) =
      _$WaterIntakeUpdatedStateCopyWithImpl<$Res>;
  $Res call({HydrateStatus updatedHydrateStatus});

  $HydrateStatusCopyWith<$Res> get updatedHydrateStatus;
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

class _$WaterIntakeUpdatedState
    with DiagnosticableTreeMixin
    implements WaterIntakeUpdatedState {
  const _$WaterIntakeUpdatedState(this.updatedHydrateStatus)
      : assert(updatedHydrateStatus != null);

  @override
  final HydrateStatus updatedHydrateStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WaterIntakeState.updated(updatedHydrateStatus: $updatedHydrateStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WaterIntakeState.updated'))
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
  Result when<Result extends Object>({
    @required Result initial(HydrateStatus initalHydrateStatus),
    @required Result loading(),
    @required Result updated(HydrateStatus updatedHydrateStatus),
    @required Result error(String errorMessage),
    @required Result completed(),
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
  Result maybeWhen<Result extends Object>({
    Result initial(HydrateStatus initalHydrateStatus),
    Result loading(),
    Result updated(HydrateStatus updatedHydrateStatus),
    Result error(String errorMessage),
    Result completed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(updatedHydrateStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(WaterIntakeInitialState value),
    @required Result loading(WaterIntakeLoadingState value),
    @required Result updated(WaterIntakeUpdatedState value),
    @required Result error(WaterIntakeErrorState value),
    @required Result completed(WaterIntakeCompletedState value),
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
  Result maybeMap<Result extends Object>({
    Result initial(WaterIntakeInitialState value),
    Result loading(WaterIntakeLoadingState value),
    Result updated(WaterIntakeUpdatedState value),
    Result error(WaterIntakeErrorState value),
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
  const factory WaterIntakeUpdatedState(HydrateStatus updatedHydrateStatus) =
      _$WaterIntakeUpdatedState;

  HydrateStatus get updatedHydrateStatus;
  $WaterIntakeUpdatedStateCopyWith<WaterIntakeUpdatedState> get copyWith;
}

abstract class $WaterIntakeErrorStateCopyWith<$Res> {
  factory $WaterIntakeErrorStateCopyWith(WaterIntakeErrorState value,
          $Res Function(WaterIntakeErrorState) then) =
      _$WaterIntakeErrorStateCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

class _$WaterIntakeErrorStateCopyWithImpl<$Res>
    extends _$WaterIntakeStateCopyWithImpl<$Res>
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

class _$WaterIntakeErrorState
    with DiagnosticableTreeMixin
    implements WaterIntakeErrorState {
  const _$WaterIntakeErrorState(this.errorMessage)
      : assert(errorMessage != null);

  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WaterIntakeState.error(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WaterIntakeState.error'))
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
  Result when<Result extends Object>({
    @required Result initial(HydrateStatus initalHydrateStatus),
    @required Result loading(),
    @required Result updated(HydrateStatus updatedHydrateStatus),
    @required Result error(String errorMessage),
    @required Result completed(),
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
  Result maybeWhen<Result extends Object>({
    Result initial(HydrateStatus initalHydrateStatus),
    Result loading(),
    Result updated(HydrateStatus updatedHydrateStatus),
    Result error(String errorMessage),
    Result completed(),
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
    @required Result initial(WaterIntakeInitialState value),
    @required Result loading(WaterIntakeLoadingState value),
    @required Result updated(WaterIntakeUpdatedState value),
    @required Result error(WaterIntakeErrorState value),
    @required Result completed(WaterIntakeCompletedState value),
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
  Result maybeMap<Result extends Object>({
    Result initial(WaterIntakeInitialState value),
    Result loading(WaterIntakeLoadingState value),
    Result updated(WaterIntakeUpdatedState value),
    Result error(WaterIntakeErrorState value),
    Result completed(WaterIntakeCompletedState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WaterIntakeErrorState implements WaterIntakeState {
  const factory WaterIntakeErrorState(String errorMessage) =
      _$WaterIntakeErrorState;

  String get errorMessage;
  $WaterIntakeErrorStateCopyWith<WaterIntakeErrorState> get copyWith;
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
    @required Result initial(HydrateStatus initalHydrateStatus),
    @required Result loading(),
    @required Result updated(HydrateStatus updatedHydrateStatus),
    @required Result error(String errorMessage),
    @required Result completed(),
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
  Result maybeWhen<Result extends Object>({
    Result initial(HydrateStatus initalHydrateStatus),
    Result loading(),
    Result updated(HydrateStatus updatedHydrateStatus),
    Result error(String errorMessage),
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
    @required Result loading(WaterIntakeLoadingState value),
    @required Result updated(WaterIntakeUpdatedState value),
    @required Result error(WaterIntakeErrorState value),
    @required Result completed(WaterIntakeCompletedState value),
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
  Result maybeMap<Result extends Object>({
    Result initial(WaterIntakeInitialState value),
    Result loading(WaterIntakeLoadingState value),
    Result updated(WaterIntakeUpdatedState value),
    Result error(WaterIntakeErrorState value),
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
