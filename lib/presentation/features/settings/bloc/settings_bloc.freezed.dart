// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SettingsEventTearOff {
  const _$SettingsEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _OnSettingsChanged onSettingsChanged(SettingsItem settingsItemChanged) {
    return _OnSettingsChanged(
      settingsItemChanged,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsEvent = _$SettingsEventTearOff();

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult onSettingsChanged(SettingsItem settingsItemChanged),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult onSettingsChanged(SettingsItem settingsItemChanged),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult onSettingsChanged(_OnSettingsChanged value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult onSettingsChanged(_OnSettingsChanged value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  final SettingsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SettingsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult onSettingsChanged(SettingsItem settingsItemChanged),
  }) {
    assert(started != null);
    assert(onSettingsChanged != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult onSettingsChanged(SettingsItem settingsItemChanged),
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
    @required TResult started(_Started value),
    @required TResult onSettingsChanged(_OnSettingsChanged value),
  }) {
    assert(started != null);
    assert(onSettingsChanged != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult onSettingsChanged(_OnSettingsChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SettingsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$OnSettingsChangedCopyWith<$Res> {
  factory _$OnSettingsChangedCopyWith(
          _OnSettingsChanged value, $Res Function(_OnSettingsChanged) then) =
      __$OnSettingsChangedCopyWithImpl<$Res>;
  $Res call({SettingsItem settingsItemChanged});

  $SettingsItemCopyWith<$Res> get settingsItemChanged;
}

/// @nodoc
class __$OnSettingsChangedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$OnSettingsChangedCopyWith<$Res> {
  __$OnSettingsChangedCopyWithImpl(
      _OnSettingsChanged _value, $Res Function(_OnSettingsChanged) _then)
      : super(_value, (v) => _then(v as _OnSettingsChanged));

  @override
  _OnSettingsChanged get _value => super._value as _OnSettingsChanged;

  @override
  $Res call({
    Object settingsItemChanged = freezed,
  }) {
    return _then(_OnSettingsChanged(
      settingsItemChanged == freezed
          ? _value.settingsItemChanged
          : settingsItemChanged as SettingsItem,
    ));
  }

  @override
  $SettingsItemCopyWith<$Res> get settingsItemChanged {
    if (_value.settingsItemChanged == null) {
      return null;
    }
    return $SettingsItemCopyWith<$Res>(_value.settingsItemChanged, (value) {
      return _then(_value.copyWith(settingsItemChanged: value));
    });
  }
}

/// @nodoc
class _$_OnSettingsChanged implements _OnSettingsChanged {
  const _$_OnSettingsChanged(this.settingsItemChanged)
      : assert(settingsItemChanged != null);

  @override
  final SettingsItem settingsItemChanged;

  @override
  String toString() {
    return 'SettingsEvent.onSettingsChanged(settingsItemChanged: $settingsItemChanged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnSettingsChanged &&
            (identical(other.settingsItemChanged, settingsItemChanged) ||
                const DeepCollectionEquality()
                    .equals(other.settingsItemChanged, settingsItemChanged)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(settingsItemChanged);

  @override
  _$OnSettingsChangedCopyWith<_OnSettingsChanged> get copyWith =>
      __$OnSettingsChangedCopyWithImpl<_OnSettingsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult onSettingsChanged(SettingsItem settingsItemChanged),
  }) {
    assert(started != null);
    assert(onSettingsChanged != null);
    return onSettingsChanged(settingsItemChanged);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult onSettingsChanged(SettingsItem settingsItemChanged),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSettingsChanged != null) {
      return onSettingsChanged(settingsItemChanged);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult onSettingsChanged(_OnSettingsChanged value),
  }) {
    assert(started != null);
    assert(onSettingsChanged != null);
    return onSettingsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult onSettingsChanged(_OnSettingsChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSettingsChanged != null) {
      return onSettingsChanged(this);
    }
    return orElse();
  }
}

abstract class _OnSettingsChanged implements SettingsEvent {
  const factory _OnSettingsChanged(SettingsItem settingsItemChanged) =
      _$_OnSettingsChanged;

  SettingsItem get settingsItemChanged;
  _$OnSettingsChangedCopyWith<_OnSettingsChanged> get copyWith;
}

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Error error(String errorMessage) {
    return _Error(
      errorMessage,
    );
  }

// ignore: unused_element
  _Loaded loaded(UiUserData uiUserData) {
    return _Loaded(
      uiUserData,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult error(String errorMessage),
    @required TResult loaded(UiUserData uiUserData),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult error(String errorMessage),
    TResult loaded(UiUserData uiUserData),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult error(_Error value),
    @required TResult loaded(_Loaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult error(_Error value),
    TResult loaded(_Loaded value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SettingsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult error(String errorMessage),
    @required TResult loaded(UiUserData uiUserData),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult error(String errorMessage),
    TResult loaded(UiUserData uiUserData),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult error(_Error value),
    @required TResult loaded(_Loaded value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult error(_Error value),
    TResult loaded(_Loaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SettingsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(_Error(
      errorMessage == freezed ? _value.errorMessage : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$_Error implements _Error {
  const _$_Error(this.errorMessage) : assert(errorMessage != null);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'SettingsState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult error(String errorMessage),
    @required TResult loaded(UiUserData uiUserData),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loaded != null);
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult error(String errorMessage),
    TResult loaded(UiUserData uiUserData),
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
    @required TResult initial(_Initial value),
    @required TResult error(_Error value),
    @required TResult loaded(_Loaded value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loaded != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult error(_Error value),
    TResult loaded(_Loaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SettingsState {
  const factory _Error(String errorMessage) = _$_Error;

  String get errorMessage;
  _$ErrorCopyWith<_Error> get copyWith;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({UiUserData uiUserData});

  $UiUserDataCopyWith<$Res> get uiUserData;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object uiUserData = freezed,
  }) {
    return _then(_Loaded(
      uiUserData == freezed ? _value.uiUserData : uiUserData as UiUserData,
    ));
  }

  @override
  $UiUserDataCopyWith<$Res> get uiUserData {
    if (_value.uiUserData == null) {
      return null;
    }
    return $UiUserDataCopyWith<$Res>(_value.uiUserData, (value) {
      return _then(_value.copyWith(uiUserData: value));
    });
  }
}

/// @nodoc
class _$_Loaded implements _Loaded {
  const _$_Loaded(this.uiUserData) : assert(uiUserData != null);

  @override
  final UiUserData uiUserData;

  @override
  String toString() {
    return 'SettingsState.loaded(uiUserData: $uiUserData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.uiUserData, uiUserData) ||
                const DeepCollectionEquality()
                    .equals(other.uiUserData, uiUserData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uiUserData);

  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult error(String errorMessage),
    @required TResult loaded(UiUserData uiUserData),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loaded != null);
    return loaded(uiUserData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult error(String errorMessage),
    TResult loaded(UiUserData uiUserData),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(uiUserData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult error(_Error value),
    @required TResult loaded(_Loaded value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult error(_Error value),
    TResult loaded(_Loaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SettingsState {
  const factory _Loaded(UiUserData uiUserData) = _$_Loaded;

  UiUserData get uiUserData;
  _$LoadedCopyWith<_Loaded> get copyWith;
}
