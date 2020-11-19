// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'ui_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UiUserDataTearOff {
  const _$UiUserDataTearOff();

// ignore: unused_element
  _UiUserData call(
      {@required TimeOfDay wakeUpTime,
      @required TimeOfDay sleepTime,
      @required int currentWeight,
      @required String gender,
      @required String weightType,
      @required String activityLevel}) {
    return _UiUserData(
      wakeUpTime: wakeUpTime,
      sleepTime: sleepTime,
      currentWeight: currentWeight,
      gender: gender,
      weightType: weightType,
      activityLevel: activityLevel,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UiUserData = _$UiUserDataTearOff();

/// @nodoc
mixin _$UiUserData {
  TimeOfDay get wakeUpTime;
  TimeOfDay get sleepTime;
  int get currentWeight;
  String get gender;
  String get weightType;
  String get activityLevel;

  $UiUserDataCopyWith<UiUserData> get copyWith;
}

/// @nodoc
abstract class $UiUserDataCopyWith<$Res> {
  factory $UiUserDataCopyWith(
          UiUserData value, $Res Function(UiUserData) then) =
      _$UiUserDataCopyWithImpl<$Res>;
  $Res call(
      {TimeOfDay wakeUpTime,
      TimeOfDay sleepTime,
      int currentWeight,
      String gender,
      String weightType,
      String activityLevel});
}

/// @nodoc
class _$UiUserDataCopyWithImpl<$Res> implements $UiUserDataCopyWith<$Res> {
  _$UiUserDataCopyWithImpl(this._value, this._then);

  final UiUserData _value;
  // ignore: unused_field
  final $Res Function(UiUserData) _then;

  @override
  $Res call({
    Object wakeUpTime = freezed,
    Object sleepTime = freezed,
    Object currentWeight = freezed,
    Object gender = freezed,
    Object weightType = freezed,
    Object activityLevel = freezed,
  }) {
    return _then(_value.copyWith(
      wakeUpTime:
          wakeUpTime == freezed ? _value.wakeUpTime : wakeUpTime as TimeOfDay,
      sleepTime:
          sleepTime == freezed ? _value.sleepTime : sleepTime as TimeOfDay,
      currentWeight: currentWeight == freezed
          ? _value.currentWeight
          : currentWeight as int,
      gender: gender == freezed ? _value.gender : gender as String,
      weightType:
          weightType == freezed ? _value.weightType : weightType as String,
      activityLevel: activityLevel == freezed
          ? _value.activityLevel
          : activityLevel as String,
    ));
  }
}

/// @nodoc
abstract class _$UiUserDataCopyWith<$Res> implements $UiUserDataCopyWith<$Res> {
  factory _$UiUserDataCopyWith(
          _UiUserData value, $Res Function(_UiUserData) then) =
      __$UiUserDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {TimeOfDay wakeUpTime,
      TimeOfDay sleepTime,
      int currentWeight,
      String gender,
      String weightType,
      String activityLevel});
}

/// @nodoc
class __$UiUserDataCopyWithImpl<$Res> extends _$UiUserDataCopyWithImpl<$Res>
    implements _$UiUserDataCopyWith<$Res> {
  __$UiUserDataCopyWithImpl(
      _UiUserData _value, $Res Function(_UiUserData) _then)
      : super(_value, (v) => _then(v as _UiUserData));

  @override
  _UiUserData get _value => super._value as _UiUserData;

  @override
  $Res call({
    Object wakeUpTime = freezed,
    Object sleepTime = freezed,
    Object currentWeight = freezed,
    Object gender = freezed,
    Object weightType = freezed,
    Object activityLevel = freezed,
  }) {
    return _then(_UiUserData(
      wakeUpTime:
          wakeUpTime == freezed ? _value.wakeUpTime : wakeUpTime as TimeOfDay,
      sleepTime:
          sleepTime == freezed ? _value.sleepTime : sleepTime as TimeOfDay,
      currentWeight: currentWeight == freezed
          ? _value.currentWeight
          : currentWeight as int,
      gender: gender == freezed ? _value.gender : gender as String,
      weightType:
          weightType == freezed ? _value.weightType : weightType as String,
      activityLevel: activityLevel == freezed
          ? _value.activityLevel
          : activityLevel as String,
    ));
  }
}

/// @nodoc
class _$_UiUserData with DiagnosticableTreeMixin implements _UiUserData {
  _$_UiUserData(
      {@required this.wakeUpTime,
      @required this.sleepTime,
      @required this.currentWeight,
      @required this.gender,
      @required this.weightType,
      @required this.activityLevel})
      : assert(wakeUpTime != null),
        assert(sleepTime != null),
        assert(currentWeight != null),
        assert(gender != null),
        assert(weightType != null),
        assert(activityLevel != null);

  @override
  final TimeOfDay wakeUpTime;
  @override
  final TimeOfDay sleepTime;
  @override
  final int currentWeight;
  @override
  final String gender;
  @override
  final String weightType;
  @override
  final String activityLevel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UiUserData(wakeUpTime: $wakeUpTime, sleepTime: $sleepTime, currentWeight: $currentWeight, gender: $gender, weightType: $weightType, activityLevel: $activityLevel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UiUserData'))
      ..add(DiagnosticsProperty('wakeUpTime', wakeUpTime))
      ..add(DiagnosticsProperty('sleepTime', sleepTime))
      ..add(DiagnosticsProperty('currentWeight', currentWeight))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('weightType', weightType))
      ..add(DiagnosticsProperty('activityLevel', activityLevel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UiUserData &&
            (identical(other.wakeUpTime, wakeUpTime) ||
                const DeepCollectionEquality()
                    .equals(other.wakeUpTime, wakeUpTime)) &&
            (identical(other.sleepTime, sleepTime) ||
                const DeepCollectionEquality()
                    .equals(other.sleepTime, sleepTime)) &&
            (identical(other.currentWeight, currentWeight) ||
                const DeepCollectionEquality()
                    .equals(other.currentWeight, currentWeight)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.weightType, weightType) ||
                const DeepCollectionEquality()
                    .equals(other.weightType, weightType)) &&
            (identical(other.activityLevel, activityLevel) ||
                const DeepCollectionEquality()
                    .equals(other.activityLevel, activityLevel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(wakeUpTime) ^
      const DeepCollectionEquality().hash(sleepTime) ^
      const DeepCollectionEquality().hash(currentWeight) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(weightType) ^
      const DeepCollectionEquality().hash(activityLevel);

  @override
  _$UiUserDataCopyWith<_UiUserData> get copyWith =>
      __$UiUserDataCopyWithImpl<_UiUserData>(this, _$identity);
}

abstract class _UiUserData implements UiUserData {
  factory _UiUserData(
      {@required TimeOfDay wakeUpTime,
      @required TimeOfDay sleepTime,
      @required int currentWeight,
      @required String gender,
      @required String weightType,
      @required String activityLevel}) = _$_UiUserData;

  @override
  TimeOfDay get wakeUpTime;
  @override
  TimeOfDay get sleepTime;
  @override
  int get currentWeight;
  @override
  String get gender;
  @override
  String get weightType;
  @override
  String get activityLevel;
  @override
  _$UiUserDataCopyWith<_UiUserData> get copyWith;
}
