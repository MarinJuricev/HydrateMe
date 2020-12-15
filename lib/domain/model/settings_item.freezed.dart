// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SettingsItemTearOff {
  const _$SettingsItemTearOff();

// ignore: unused_element
  _UpdateWakeUpItem updateWakeUpTime({@required TimeOfDay newWakeUpTime}) {
    return _UpdateWakeUpItem(
      newWakeUpTime: newWakeUpTime,
    );
  }

// ignore: unused_element
  _UpdateSleepItem updateSleepTime({@required TimeOfDay newSleepTime}) {
    return _UpdateSleepItem(
      newSleepTime: newSleepTime,
    );
  }

// ignore: unused_element
  _UpdateCurrentWeightItem updateCurrentWeight({@required int updatedWeight}) {
    return _UpdateCurrentWeightItem(
      updatedWeight: updatedWeight,
    );
  }

// ignore: unused_element
  _UpdateGenderItem updateGender({@required Gender updatedGender}) {
    return _UpdateGenderItem(
      updatedGender: updatedGender,
    );
  }

// ignore: unused_element
  _UpdateWeightType updateWeightType({@required WeightType updatedWeightType}) {
    return _UpdateWeightType(
      updatedWeightType: updatedWeightType,
    );
  }

// ignore: unused_element
  _UpdatedActivityLevel updateActivityLevel(
      {@required ActivityLevel updatedActivityLevel}) {
    return _UpdatedActivityLevel(
      updatedActivityLevel: updatedActivityLevel,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsItem = _$SettingsItemTearOff();

/// @nodoc
mixin _$SettingsItem {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updateWakeUpTime(TimeOfDay newWakeUpTime),
    @required TResult updateSleepTime(TimeOfDay newSleepTime),
    @required TResult updateCurrentWeight(int updatedWeight),
    @required TResult updateGender(Gender updatedGender),
    @required TResult updateWeightType(WeightType updatedWeightType),
    @required TResult updateActivityLevel(ActivityLevel updatedActivityLevel),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateWakeUpTime(TimeOfDay newWakeUpTime),
    TResult updateSleepTime(TimeOfDay newSleepTime),
    TResult updateCurrentWeight(int updatedWeight),
    TResult updateGender(Gender updatedGender),
    TResult updateWeightType(WeightType updatedWeightType),
    TResult updateActivityLevel(ActivityLevel updatedActivityLevel),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateWakeUpTime(_UpdateWakeUpItem value),
    @required TResult updateSleepTime(_UpdateSleepItem value),
    @required TResult updateCurrentWeight(_UpdateCurrentWeightItem value),
    @required TResult updateGender(_UpdateGenderItem value),
    @required TResult updateWeightType(_UpdateWeightType value),
    @required TResult updateActivityLevel(_UpdatedActivityLevel value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateWakeUpTime(_UpdateWakeUpItem value),
    TResult updateSleepTime(_UpdateSleepItem value),
    TResult updateCurrentWeight(_UpdateCurrentWeightItem value),
    TResult updateGender(_UpdateGenderItem value),
    TResult updateWeightType(_UpdateWeightType value),
    TResult updateActivityLevel(_UpdatedActivityLevel value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SettingsItemCopyWith<$Res> {
  factory $SettingsItemCopyWith(
          SettingsItem value, $Res Function(SettingsItem) then) =
      _$SettingsItemCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsItemCopyWithImpl<$Res> implements $SettingsItemCopyWith<$Res> {
  _$SettingsItemCopyWithImpl(this._value, this._then);

  final SettingsItem _value;
  // ignore: unused_field
  final $Res Function(SettingsItem) _then;
}

/// @nodoc
abstract class _$UpdateWakeUpItemCopyWith<$Res> {
  factory _$UpdateWakeUpItemCopyWith(
          _UpdateWakeUpItem value, $Res Function(_UpdateWakeUpItem) then) =
      __$UpdateWakeUpItemCopyWithImpl<$Res>;
  $Res call({TimeOfDay newWakeUpTime});
}

/// @nodoc
class __$UpdateWakeUpItemCopyWithImpl<$Res>
    extends _$SettingsItemCopyWithImpl<$Res>
    implements _$UpdateWakeUpItemCopyWith<$Res> {
  __$UpdateWakeUpItemCopyWithImpl(
      _UpdateWakeUpItem _value, $Res Function(_UpdateWakeUpItem) _then)
      : super(_value, (v) => _then(v as _UpdateWakeUpItem));

  @override
  _UpdateWakeUpItem get _value => super._value as _UpdateWakeUpItem;

  @override
  $Res call({
    Object newWakeUpTime = freezed,
  }) {
    return _then(_UpdateWakeUpItem(
      newWakeUpTime: newWakeUpTime == freezed
          ? _value.newWakeUpTime
          : newWakeUpTime as TimeOfDay,
    ));
  }
}

/// @nodoc
class _$_UpdateWakeUpItem implements _UpdateWakeUpItem {
  const _$_UpdateWakeUpItem({@required this.newWakeUpTime})
      : assert(newWakeUpTime != null);

  @override
  final TimeOfDay newWakeUpTime;

  @override
  String toString() {
    return 'SettingsItem.updateWakeUpTime(newWakeUpTime: $newWakeUpTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateWakeUpItem &&
            (identical(other.newWakeUpTime, newWakeUpTime) ||
                const DeepCollectionEquality()
                    .equals(other.newWakeUpTime, newWakeUpTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newWakeUpTime);

  @override
  _$UpdateWakeUpItemCopyWith<_UpdateWakeUpItem> get copyWith =>
      __$UpdateWakeUpItemCopyWithImpl<_UpdateWakeUpItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updateWakeUpTime(TimeOfDay newWakeUpTime),
    @required TResult updateSleepTime(TimeOfDay newSleepTime),
    @required TResult updateCurrentWeight(int updatedWeight),
    @required TResult updateGender(Gender updatedGender),
    @required TResult updateWeightType(WeightType updatedWeightType),
    @required TResult updateActivityLevel(ActivityLevel updatedActivityLevel),
  }) {
    assert(updateWakeUpTime != null);
    assert(updateSleepTime != null);
    assert(updateCurrentWeight != null);
    assert(updateGender != null);
    assert(updateWeightType != null);
    assert(updateActivityLevel != null);
    return updateWakeUpTime(newWakeUpTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateWakeUpTime(TimeOfDay newWakeUpTime),
    TResult updateSleepTime(TimeOfDay newSleepTime),
    TResult updateCurrentWeight(int updatedWeight),
    TResult updateGender(Gender updatedGender),
    TResult updateWeightType(WeightType updatedWeightType),
    TResult updateActivityLevel(ActivityLevel updatedActivityLevel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateWakeUpTime != null) {
      return updateWakeUpTime(newWakeUpTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateWakeUpTime(_UpdateWakeUpItem value),
    @required TResult updateSleepTime(_UpdateSleepItem value),
    @required TResult updateCurrentWeight(_UpdateCurrentWeightItem value),
    @required TResult updateGender(_UpdateGenderItem value),
    @required TResult updateWeightType(_UpdateWeightType value),
    @required TResult updateActivityLevel(_UpdatedActivityLevel value),
  }) {
    assert(updateWakeUpTime != null);
    assert(updateSleepTime != null);
    assert(updateCurrentWeight != null);
    assert(updateGender != null);
    assert(updateWeightType != null);
    assert(updateActivityLevel != null);
    return updateWakeUpTime(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateWakeUpTime(_UpdateWakeUpItem value),
    TResult updateSleepTime(_UpdateSleepItem value),
    TResult updateCurrentWeight(_UpdateCurrentWeightItem value),
    TResult updateGender(_UpdateGenderItem value),
    TResult updateWeightType(_UpdateWeightType value),
    TResult updateActivityLevel(_UpdatedActivityLevel value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateWakeUpTime != null) {
      return updateWakeUpTime(this);
    }
    return orElse();
  }
}

abstract class _UpdateWakeUpItem implements SettingsItem {
  const factory _UpdateWakeUpItem({@required TimeOfDay newWakeUpTime}) =
      _$_UpdateWakeUpItem;

  TimeOfDay get newWakeUpTime;
  _$UpdateWakeUpItemCopyWith<_UpdateWakeUpItem> get copyWith;
}

/// @nodoc
abstract class _$UpdateSleepItemCopyWith<$Res> {
  factory _$UpdateSleepItemCopyWith(
          _UpdateSleepItem value, $Res Function(_UpdateSleepItem) then) =
      __$UpdateSleepItemCopyWithImpl<$Res>;
  $Res call({TimeOfDay newSleepTime});
}

/// @nodoc
class __$UpdateSleepItemCopyWithImpl<$Res>
    extends _$SettingsItemCopyWithImpl<$Res>
    implements _$UpdateSleepItemCopyWith<$Res> {
  __$UpdateSleepItemCopyWithImpl(
      _UpdateSleepItem _value, $Res Function(_UpdateSleepItem) _then)
      : super(_value, (v) => _then(v as _UpdateSleepItem));

  @override
  _UpdateSleepItem get _value => super._value as _UpdateSleepItem;

  @override
  $Res call({
    Object newSleepTime = freezed,
  }) {
    return _then(_UpdateSleepItem(
      newSleepTime: newSleepTime == freezed
          ? _value.newSleepTime
          : newSleepTime as TimeOfDay,
    ));
  }
}

/// @nodoc
class _$_UpdateSleepItem implements _UpdateSleepItem {
  const _$_UpdateSleepItem({@required this.newSleepTime})
      : assert(newSleepTime != null);

  @override
  final TimeOfDay newSleepTime;

  @override
  String toString() {
    return 'SettingsItem.updateSleepTime(newSleepTime: $newSleepTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateSleepItem &&
            (identical(other.newSleepTime, newSleepTime) ||
                const DeepCollectionEquality()
                    .equals(other.newSleepTime, newSleepTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newSleepTime);

  @override
  _$UpdateSleepItemCopyWith<_UpdateSleepItem> get copyWith =>
      __$UpdateSleepItemCopyWithImpl<_UpdateSleepItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updateWakeUpTime(TimeOfDay newWakeUpTime),
    @required TResult updateSleepTime(TimeOfDay newSleepTime),
    @required TResult updateCurrentWeight(int updatedWeight),
    @required TResult updateGender(Gender updatedGender),
    @required TResult updateWeightType(WeightType updatedWeightType),
    @required TResult updateActivityLevel(ActivityLevel updatedActivityLevel),
  }) {
    assert(updateWakeUpTime != null);
    assert(updateSleepTime != null);
    assert(updateCurrentWeight != null);
    assert(updateGender != null);
    assert(updateWeightType != null);
    assert(updateActivityLevel != null);
    return updateSleepTime(newSleepTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateWakeUpTime(TimeOfDay newWakeUpTime),
    TResult updateSleepTime(TimeOfDay newSleepTime),
    TResult updateCurrentWeight(int updatedWeight),
    TResult updateGender(Gender updatedGender),
    TResult updateWeightType(WeightType updatedWeightType),
    TResult updateActivityLevel(ActivityLevel updatedActivityLevel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateSleepTime != null) {
      return updateSleepTime(newSleepTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateWakeUpTime(_UpdateWakeUpItem value),
    @required TResult updateSleepTime(_UpdateSleepItem value),
    @required TResult updateCurrentWeight(_UpdateCurrentWeightItem value),
    @required TResult updateGender(_UpdateGenderItem value),
    @required TResult updateWeightType(_UpdateWeightType value),
    @required TResult updateActivityLevel(_UpdatedActivityLevel value),
  }) {
    assert(updateWakeUpTime != null);
    assert(updateSleepTime != null);
    assert(updateCurrentWeight != null);
    assert(updateGender != null);
    assert(updateWeightType != null);
    assert(updateActivityLevel != null);
    return updateSleepTime(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateWakeUpTime(_UpdateWakeUpItem value),
    TResult updateSleepTime(_UpdateSleepItem value),
    TResult updateCurrentWeight(_UpdateCurrentWeightItem value),
    TResult updateGender(_UpdateGenderItem value),
    TResult updateWeightType(_UpdateWeightType value),
    TResult updateActivityLevel(_UpdatedActivityLevel value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateSleepTime != null) {
      return updateSleepTime(this);
    }
    return orElse();
  }
}

abstract class _UpdateSleepItem implements SettingsItem {
  const factory _UpdateSleepItem({@required TimeOfDay newSleepTime}) =
      _$_UpdateSleepItem;

  TimeOfDay get newSleepTime;
  _$UpdateSleepItemCopyWith<_UpdateSleepItem> get copyWith;
}

/// @nodoc
abstract class _$UpdateCurrentWeightItemCopyWith<$Res> {
  factory _$UpdateCurrentWeightItemCopyWith(_UpdateCurrentWeightItem value,
          $Res Function(_UpdateCurrentWeightItem) then) =
      __$UpdateCurrentWeightItemCopyWithImpl<$Res>;
  $Res call({int updatedWeight});
}

/// @nodoc
class __$UpdateCurrentWeightItemCopyWithImpl<$Res>
    extends _$SettingsItemCopyWithImpl<$Res>
    implements _$UpdateCurrentWeightItemCopyWith<$Res> {
  __$UpdateCurrentWeightItemCopyWithImpl(_UpdateCurrentWeightItem _value,
      $Res Function(_UpdateCurrentWeightItem) _then)
      : super(_value, (v) => _then(v as _UpdateCurrentWeightItem));

  @override
  _UpdateCurrentWeightItem get _value =>
      super._value as _UpdateCurrentWeightItem;

  @override
  $Res call({
    Object updatedWeight = freezed,
  }) {
    return _then(_UpdateCurrentWeightItem(
      updatedWeight: updatedWeight == freezed
          ? _value.updatedWeight
          : updatedWeight as int,
    ));
  }
}

/// @nodoc
class _$_UpdateCurrentWeightItem implements _UpdateCurrentWeightItem {
  const _$_UpdateCurrentWeightItem({@required this.updatedWeight})
      : assert(updatedWeight != null);

  @override
  final int updatedWeight;

  @override
  String toString() {
    return 'SettingsItem.updateCurrentWeight(updatedWeight: $updatedWeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCurrentWeightItem &&
            (identical(other.updatedWeight, updatedWeight) ||
                const DeepCollectionEquality()
                    .equals(other.updatedWeight, updatedWeight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(updatedWeight);

  @override
  _$UpdateCurrentWeightItemCopyWith<_UpdateCurrentWeightItem> get copyWith =>
      __$UpdateCurrentWeightItemCopyWithImpl<_UpdateCurrentWeightItem>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updateWakeUpTime(TimeOfDay newWakeUpTime),
    @required TResult updateSleepTime(TimeOfDay newSleepTime),
    @required TResult updateCurrentWeight(int updatedWeight),
    @required TResult updateGender(Gender updatedGender),
    @required TResult updateWeightType(WeightType updatedWeightType),
    @required TResult updateActivityLevel(ActivityLevel updatedActivityLevel),
  }) {
    assert(updateWakeUpTime != null);
    assert(updateSleepTime != null);
    assert(updateCurrentWeight != null);
    assert(updateGender != null);
    assert(updateWeightType != null);
    assert(updateActivityLevel != null);
    return updateCurrentWeight(updatedWeight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateWakeUpTime(TimeOfDay newWakeUpTime),
    TResult updateSleepTime(TimeOfDay newSleepTime),
    TResult updateCurrentWeight(int updatedWeight),
    TResult updateGender(Gender updatedGender),
    TResult updateWeightType(WeightType updatedWeightType),
    TResult updateActivityLevel(ActivityLevel updatedActivityLevel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateCurrentWeight != null) {
      return updateCurrentWeight(updatedWeight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateWakeUpTime(_UpdateWakeUpItem value),
    @required TResult updateSleepTime(_UpdateSleepItem value),
    @required TResult updateCurrentWeight(_UpdateCurrentWeightItem value),
    @required TResult updateGender(_UpdateGenderItem value),
    @required TResult updateWeightType(_UpdateWeightType value),
    @required TResult updateActivityLevel(_UpdatedActivityLevel value),
  }) {
    assert(updateWakeUpTime != null);
    assert(updateSleepTime != null);
    assert(updateCurrentWeight != null);
    assert(updateGender != null);
    assert(updateWeightType != null);
    assert(updateActivityLevel != null);
    return updateCurrentWeight(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateWakeUpTime(_UpdateWakeUpItem value),
    TResult updateSleepTime(_UpdateSleepItem value),
    TResult updateCurrentWeight(_UpdateCurrentWeightItem value),
    TResult updateGender(_UpdateGenderItem value),
    TResult updateWeightType(_UpdateWeightType value),
    TResult updateActivityLevel(_UpdatedActivityLevel value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateCurrentWeight != null) {
      return updateCurrentWeight(this);
    }
    return orElse();
  }
}

abstract class _UpdateCurrentWeightItem implements SettingsItem {
  const factory _UpdateCurrentWeightItem({@required int updatedWeight}) =
      _$_UpdateCurrentWeightItem;

  int get updatedWeight;
  _$UpdateCurrentWeightItemCopyWith<_UpdateCurrentWeightItem> get copyWith;
}

/// @nodoc
abstract class _$UpdateGenderItemCopyWith<$Res> {
  factory _$UpdateGenderItemCopyWith(
          _UpdateGenderItem value, $Res Function(_UpdateGenderItem) then) =
      __$UpdateGenderItemCopyWithImpl<$Res>;
  $Res call({Gender updatedGender});
}

/// @nodoc
class __$UpdateGenderItemCopyWithImpl<$Res>
    extends _$SettingsItemCopyWithImpl<$Res>
    implements _$UpdateGenderItemCopyWith<$Res> {
  __$UpdateGenderItemCopyWithImpl(
      _UpdateGenderItem _value, $Res Function(_UpdateGenderItem) _then)
      : super(_value, (v) => _then(v as _UpdateGenderItem));

  @override
  _UpdateGenderItem get _value => super._value as _UpdateGenderItem;

  @override
  $Res call({
    Object updatedGender = freezed,
  }) {
    return _then(_UpdateGenderItem(
      updatedGender: updatedGender == freezed
          ? _value.updatedGender
          : updatedGender as Gender,
    ));
  }
}

/// @nodoc
class _$_UpdateGenderItem implements _UpdateGenderItem {
  const _$_UpdateGenderItem({@required this.updatedGender})
      : assert(updatedGender != null);

  @override
  final Gender updatedGender;

  @override
  String toString() {
    return 'SettingsItem.updateGender(updatedGender: $updatedGender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateGenderItem &&
            (identical(other.updatedGender, updatedGender) ||
                const DeepCollectionEquality()
                    .equals(other.updatedGender, updatedGender)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(updatedGender);

  @override
  _$UpdateGenderItemCopyWith<_UpdateGenderItem> get copyWith =>
      __$UpdateGenderItemCopyWithImpl<_UpdateGenderItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updateWakeUpTime(TimeOfDay newWakeUpTime),
    @required TResult updateSleepTime(TimeOfDay newSleepTime),
    @required TResult updateCurrentWeight(int updatedWeight),
    @required TResult updateGender(Gender updatedGender),
    @required TResult updateWeightType(WeightType updatedWeightType),
    @required TResult updateActivityLevel(ActivityLevel updatedActivityLevel),
  }) {
    assert(updateWakeUpTime != null);
    assert(updateSleepTime != null);
    assert(updateCurrentWeight != null);
    assert(updateGender != null);
    assert(updateWeightType != null);
    assert(updateActivityLevel != null);
    return updateGender(updatedGender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateWakeUpTime(TimeOfDay newWakeUpTime),
    TResult updateSleepTime(TimeOfDay newSleepTime),
    TResult updateCurrentWeight(int updatedWeight),
    TResult updateGender(Gender updatedGender),
    TResult updateWeightType(WeightType updatedWeightType),
    TResult updateActivityLevel(ActivityLevel updatedActivityLevel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateGender != null) {
      return updateGender(updatedGender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateWakeUpTime(_UpdateWakeUpItem value),
    @required TResult updateSleepTime(_UpdateSleepItem value),
    @required TResult updateCurrentWeight(_UpdateCurrentWeightItem value),
    @required TResult updateGender(_UpdateGenderItem value),
    @required TResult updateWeightType(_UpdateWeightType value),
    @required TResult updateActivityLevel(_UpdatedActivityLevel value),
  }) {
    assert(updateWakeUpTime != null);
    assert(updateSleepTime != null);
    assert(updateCurrentWeight != null);
    assert(updateGender != null);
    assert(updateWeightType != null);
    assert(updateActivityLevel != null);
    return updateGender(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateWakeUpTime(_UpdateWakeUpItem value),
    TResult updateSleepTime(_UpdateSleepItem value),
    TResult updateCurrentWeight(_UpdateCurrentWeightItem value),
    TResult updateGender(_UpdateGenderItem value),
    TResult updateWeightType(_UpdateWeightType value),
    TResult updateActivityLevel(_UpdatedActivityLevel value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateGender != null) {
      return updateGender(this);
    }
    return orElse();
  }
}

abstract class _UpdateGenderItem implements SettingsItem {
  const factory _UpdateGenderItem({@required Gender updatedGender}) =
      _$_UpdateGenderItem;

  Gender get updatedGender;
  _$UpdateGenderItemCopyWith<_UpdateGenderItem> get copyWith;
}

/// @nodoc
abstract class _$UpdateWeightTypeCopyWith<$Res> {
  factory _$UpdateWeightTypeCopyWith(
          _UpdateWeightType value, $Res Function(_UpdateWeightType) then) =
      __$UpdateWeightTypeCopyWithImpl<$Res>;
  $Res call({WeightType updatedWeightType});
}

/// @nodoc
class __$UpdateWeightTypeCopyWithImpl<$Res>
    extends _$SettingsItemCopyWithImpl<$Res>
    implements _$UpdateWeightTypeCopyWith<$Res> {
  __$UpdateWeightTypeCopyWithImpl(
      _UpdateWeightType _value, $Res Function(_UpdateWeightType) _then)
      : super(_value, (v) => _then(v as _UpdateWeightType));

  @override
  _UpdateWeightType get _value => super._value as _UpdateWeightType;

  @override
  $Res call({
    Object updatedWeightType = freezed,
  }) {
    return _then(_UpdateWeightType(
      updatedWeightType: updatedWeightType == freezed
          ? _value.updatedWeightType
          : updatedWeightType as WeightType,
    ));
  }
}

/// @nodoc
class _$_UpdateWeightType implements _UpdateWeightType {
  const _$_UpdateWeightType({@required this.updatedWeightType})
      : assert(updatedWeightType != null);

  @override
  final WeightType updatedWeightType;

  @override
  String toString() {
    return 'SettingsItem.updateWeightType(updatedWeightType: $updatedWeightType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateWeightType &&
            (identical(other.updatedWeightType, updatedWeightType) ||
                const DeepCollectionEquality()
                    .equals(other.updatedWeightType, updatedWeightType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(updatedWeightType);

  @override
  _$UpdateWeightTypeCopyWith<_UpdateWeightType> get copyWith =>
      __$UpdateWeightTypeCopyWithImpl<_UpdateWeightType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updateWakeUpTime(TimeOfDay newWakeUpTime),
    @required TResult updateSleepTime(TimeOfDay newSleepTime),
    @required TResult updateCurrentWeight(int updatedWeight),
    @required TResult updateGender(Gender updatedGender),
    @required TResult updateWeightType(WeightType updatedWeightType),
    @required TResult updateActivityLevel(ActivityLevel updatedActivityLevel),
  }) {
    assert(updateWakeUpTime != null);
    assert(updateSleepTime != null);
    assert(updateCurrentWeight != null);
    assert(updateGender != null);
    assert(updateWeightType != null);
    assert(updateActivityLevel != null);
    return updateWeightType(updatedWeightType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateWakeUpTime(TimeOfDay newWakeUpTime),
    TResult updateSleepTime(TimeOfDay newSleepTime),
    TResult updateCurrentWeight(int updatedWeight),
    TResult updateGender(Gender updatedGender),
    TResult updateWeightType(WeightType updatedWeightType),
    TResult updateActivityLevel(ActivityLevel updatedActivityLevel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateWeightType != null) {
      return updateWeightType(updatedWeightType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateWakeUpTime(_UpdateWakeUpItem value),
    @required TResult updateSleepTime(_UpdateSleepItem value),
    @required TResult updateCurrentWeight(_UpdateCurrentWeightItem value),
    @required TResult updateGender(_UpdateGenderItem value),
    @required TResult updateWeightType(_UpdateWeightType value),
    @required TResult updateActivityLevel(_UpdatedActivityLevel value),
  }) {
    assert(updateWakeUpTime != null);
    assert(updateSleepTime != null);
    assert(updateCurrentWeight != null);
    assert(updateGender != null);
    assert(updateWeightType != null);
    assert(updateActivityLevel != null);
    return updateWeightType(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateWakeUpTime(_UpdateWakeUpItem value),
    TResult updateSleepTime(_UpdateSleepItem value),
    TResult updateCurrentWeight(_UpdateCurrentWeightItem value),
    TResult updateGender(_UpdateGenderItem value),
    TResult updateWeightType(_UpdateWeightType value),
    TResult updateActivityLevel(_UpdatedActivityLevel value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateWeightType != null) {
      return updateWeightType(this);
    }
    return orElse();
  }
}

abstract class _UpdateWeightType implements SettingsItem {
  const factory _UpdateWeightType({@required WeightType updatedWeightType}) =
      _$_UpdateWeightType;

  WeightType get updatedWeightType;
  _$UpdateWeightTypeCopyWith<_UpdateWeightType> get copyWith;
}

/// @nodoc
abstract class _$UpdatedActivityLevelCopyWith<$Res> {
  factory _$UpdatedActivityLevelCopyWith(_UpdatedActivityLevel value,
          $Res Function(_UpdatedActivityLevel) then) =
      __$UpdatedActivityLevelCopyWithImpl<$Res>;
  $Res call({ActivityLevel updatedActivityLevel});
}

/// @nodoc
class __$UpdatedActivityLevelCopyWithImpl<$Res>
    extends _$SettingsItemCopyWithImpl<$Res>
    implements _$UpdatedActivityLevelCopyWith<$Res> {
  __$UpdatedActivityLevelCopyWithImpl(
      _UpdatedActivityLevel _value, $Res Function(_UpdatedActivityLevel) _then)
      : super(_value, (v) => _then(v as _UpdatedActivityLevel));

  @override
  _UpdatedActivityLevel get _value => super._value as _UpdatedActivityLevel;

  @override
  $Res call({
    Object updatedActivityLevel = freezed,
  }) {
    return _then(_UpdatedActivityLevel(
      updatedActivityLevel: updatedActivityLevel == freezed
          ? _value.updatedActivityLevel
          : updatedActivityLevel as ActivityLevel,
    ));
  }
}

/// @nodoc
class _$_UpdatedActivityLevel implements _UpdatedActivityLevel {
  const _$_UpdatedActivityLevel({@required this.updatedActivityLevel})
      : assert(updatedActivityLevel != null);

  @override
  final ActivityLevel updatedActivityLevel;

  @override
  String toString() {
    return 'SettingsItem.updateActivityLevel(updatedActivityLevel: $updatedActivityLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdatedActivityLevel &&
            (identical(other.updatedActivityLevel, updatedActivityLevel) ||
                const DeepCollectionEquality()
                    .equals(other.updatedActivityLevel, updatedActivityLevel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(updatedActivityLevel);

  @override
  _$UpdatedActivityLevelCopyWith<_UpdatedActivityLevel> get copyWith =>
      __$UpdatedActivityLevelCopyWithImpl<_UpdatedActivityLevel>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updateWakeUpTime(TimeOfDay newWakeUpTime),
    @required TResult updateSleepTime(TimeOfDay newSleepTime),
    @required TResult updateCurrentWeight(int updatedWeight),
    @required TResult updateGender(Gender updatedGender),
    @required TResult updateWeightType(WeightType updatedWeightType),
    @required TResult updateActivityLevel(ActivityLevel updatedActivityLevel),
  }) {
    assert(updateWakeUpTime != null);
    assert(updateSleepTime != null);
    assert(updateCurrentWeight != null);
    assert(updateGender != null);
    assert(updateWeightType != null);
    assert(updateActivityLevel != null);
    return updateActivityLevel(updatedActivityLevel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateWakeUpTime(TimeOfDay newWakeUpTime),
    TResult updateSleepTime(TimeOfDay newSleepTime),
    TResult updateCurrentWeight(int updatedWeight),
    TResult updateGender(Gender updatedGender),
    TResult updateWeightType(WeightType updatedWeightType),
    TResult updateActivityLevel(ActivityLevel updatedActivityLevel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateActivityLevel != null) {
      return updateActivityLevel(updatedActivityLevel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateWakeUpTime(_UpdateWakeUpItem value),
    @required TResult updateSleepTime(_UpdateSleepItem value),
    @required TResult updateCurrentWeight(_UpdateCurrentWeightItem value),
    @required TResult updateGender(_UpdateGenderItem value),
    @required TResult updateWeightType(_UpdateWeightType value),
    @required TResult updateActivityLevel(_UpdatedActivityLevel value),
  }) {
    assert(updateWakeUpTime != null);
    assert(updateSleepTime != null);
    assert(updateCurrentWeight != null);
    assert(updateGender != null);
    assert(updateWeightType != null);
    assert(updateActivityLevel != null);
    return updateActivityLevel(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateWakeUpTime(_UpdateWakeUpItem value),
    TResult updateSleepTime(_UpdateSleepItem value),
    TResult updateCurrentWeight(_UpdateCurrentWeightItem value),
    TResult updateGender(_UpdateGenderItem value),
    TResult updateWeightType(_UpdateWeightType value),
    TResult updateActivityLevel(_UpdatedActivityLevel value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateActivityLevel != null) {
      return updateActivityLevel(this);
    }
    return orElse();
  }
}

abstract class _UpdatedActivityLevel implements SettingsItem {
  const factory _UpdatedActivityLevel(
      {@required ActivityLevel updatedActivityLevel}) = _$_UpdatedActivityLevel;

  ActivityLevel get updatedActivityLevel;
  _$UpdatedActivityLevelCopyWith<_UpdatedActivityLevel> get copyWith;
}
