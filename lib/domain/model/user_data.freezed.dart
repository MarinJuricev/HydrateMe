// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserDataTearOff {
  const _$UserDataTearOff();

// ignore: unused_element
  _UserData call(
      {@required TimeOfDay wakeUpTime,
      @required TimeOfDay sleepTime,
      @required int currentWeight,
      @required Gender gender,
      @required WeightType weightType,
      @required ActivityLevel activityLevel}) {
    return _UserData(
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
const $UserData = _$UserDataTearOff();

/// @nodoc
mixin _$UserData {
  TimeOfDay get wakeUpTime;
  TimeOfDay get sleepTime;
  int get currentWeight;
  Gender get gender;
  WeightType get weightType;
  ActivityLevel get activityLevel;

  $UserDataCopyWith<UserData> get copyWith;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call(
      {TimeOfDay wakeUpTime,
      TimeOfDay sleepTime,
      int currentWeight,
      Gender gender,
      WeightType weightType,
      ActivityLevel activityLevel});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  final UserData _value;
  // ignore: unused_field
  final $Res Function(UserData) _then;

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
      gender: gender == freezed ? _value.gender : gender as Gender,
      weightType:
          weightType == freezed ? _value.weightType : weightType as WeightType,
      activityLevel: activityLevel == freezed
          ? _value.activityLevel
          : activityLevel as ActivityLevel,
    ));
  }
}

/// @nodoc
abstract class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) then) =
      __$UserDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {TimeOfDay wakeUpTime,
      TimeOfDay sleepTime,
      int currentWeight,
      Gender gender,
      WeightType weightType,
      ActivityLevel activityLevel});
}

/// @nodoc
class __$UserDataCopyWithImpl<$Res> extends _$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(_UserData _value, $Res Function(_UserData) _then)
      : super(_value, (v) => _then(v as _UserData));

  @override
  _UserData get _value => super._value as _UserData;

  @override
  $Res call({
    Object wakeUpTime = freezed,
    Object sleepTime = freezed,
    Object currentWeight = freezed,
    Object gender = freezed,
    Object weightType = freezed,
    Object activityLevel = freezed,
  }) {
    return _then(_UserData(
      wakeUpTime:
          wakeUpTime == freezed ? _value.wakeUpTime : wakeUpTime as TimeOfDay,
      sleepTime:
          sleepTime == freezed ? _value.sleepTime : sleepTime as TimeOfDay,
      currentWeight: currentWeight == freezed
          ? _value.currentWeight
          : currentWeight as int,
      gender: gender == freezed ? _value.gender : gender as Gender,
      weightType:
          weightType == freezed ? _value.weightType : weightType as WeightType,
      activityLevel: activityLevel == freezed
          ? _value.activityLevel
          : activityLevel as ActivityLevel,
    ));
  }
}

/// @nodoc
class _$_UserData with DiagnosticableTreeMixin implements _UserData {
  _$_UserData(
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
  final Gender gender;
  @override
  final WeightType weightType;
  @override
  final ActivityLevel activityLevel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserData(wakeUpTime: $wakeUpTime, sleepTime: $sleepTime, currentWeight: $currentWeight, gender: $gender, weightType: $weightType, activityLevel: $activityLevel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserData'))
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
        (other is _UserData &&
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
  _$UserDataCopyWith<_UserData> get copyWith =>
      __$UserDataCopyWithImpl<_UserData>(this, _$identity);
}

abstract class _UserData implements UserData {
  factory _UserData(
      {@required TimeOfDay wakeUpTime,
      @required TimeOfDay sleepTime,
      @required int currentWeight,
      @required Gender gender,
      @required WeightType weightType,
      @required ActivityLevel activityLevel}) = _$_UserData;

  @override
  TimeOfDay get wakeUpTime;
  @override
  TimeOfDay get sleepTime;
  @override
  int get currentWeight;
  @override
  Gender get gender;
  @override
  WeightType get weightType;
  @override
  ActivityLevel get activityLevel;
  @override
  _$UserDataCopyWith<_UserData> get copyWith;
}
