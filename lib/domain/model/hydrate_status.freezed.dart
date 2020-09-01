// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'hydrate_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HydrateStatusTearOff {
  const _$HydrateStatusTearOff();

// ignore: unused_element
  _HydrateStatus call(
      {@required double hydrationPercentage, @required String percentage}) {
    return _HydrateStatus(
      hydrationPercentage: hydrationPercentage,
      percentage: percentage,
    );
  }
}

// ignore: unused_element
const $HydrateStatus = _$HydrateStatusTearOff();

mixin _$HydrateStatus {
  double get hydrationPercentage;
  String get percentage;

  $HydrateStatusCopyWith<HydrateStatus> get copyWith;
}

abstract class $HydrateStatusCopyWith<$Res> {
  factory $HydrateStatusCopyWith(
          HydrateStatus value, $Res Function(HydrateStatus) then) =
      _$HydrateStatusCopyWithImpl<$Res>;
  $Res call({double hydrationPercentage, String percentage});
}

class _$HydrateStatusCopyWithImpl<$Res>
    implements $HydrateStatusCopyWith<$Res> {
  _$HydrateStatusCopyWithImpl(this._value, this._then);

  final HydrateStatus _value;
  // ignore: unused_field
  final $Res Function(HydrateStatus) _then;

  @override
  $Res call({
    Object hydrationPercentage = freezed,
    Object percentage = freezed,
  }) {
    return _then(_value.copyWith(
      hydrationPercentage: hydrationPercentage == freezed
          ? _value.hydrationPercentage
          : hydrationPercentage as double,
      percentage:
          percentage == freezed ? _value.percentage : percentage as String,
    ));
  }
}

abstract class _$HydrateStatusCopyWith<$Res>
    implements $HydrateStatusCopyWith<$Res> {
  factory _$HydrateStatusCopyWith(
          _HydrateStatus value, $Res Function(_HydrateStatus) then) =
      __$HydrateStatusCopyWithImpl<$Res>;
  @override
  $Res call({double hydrationPercentage, String percentage});
}

class __$HydrateStatusCopyWithImpl<$Res>
    extends _$HydrateStatusCopyWithImpl<$Res>
    implements _$HydrateStatusCopyWith<$Res> {
  __$HydrateStatusCopyWithImpl(
      _HydrateStatus _value, $Res Function(_HydrateStatus) _then)
      : super(_value, (v) => _then(v as _HydrateStatus));

  @override
  _HydrateStatus get _value => super._value as _HydrateStatus;

  @override
  $Res call({
    Object hydrationPercentage = freezed,
    Object percentage = freezed,
  }) {
    return _then(_HydrateStatus(
      hydrationPercentage: hydrationPercentage == freezed
          ? _value.hydrationPercentage
          : hydrationPercentage as double,
      percentage:
          percentage == freezed ? _value.percentage : percentage as String,
    ));
  }
}

class _$_HydrateStatus with DiagnosticableTreeMixin implements _HydrateStatus {
  _$_HydrateStatus(
      {@required this.hydrationPercentage, @required this.percentage})
      : assert(hydrationPercentage != null),
        assert(percentage != null);

  @override
  final double hydrationPercentage;
  @override
  final String percentage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HydrateStatus(hydrationPercentage: $hydrationPercentage, percentage: $percentage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HydrateStatus'))
      ..add(DiagnosticsProperty('hydrationPercentage', hydrationPercentage))
      ..add(DiagnosticsProperty('percentage', percentage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HydrateStatus &&
            (identical(other.hydrationPercentage, hydrationPercentage) ||
                const DeepCollectionEquality()
                    .equals(other.hydrationPercentage, hydrationPercentage)) &&
            (identical(other.percentage, percentage) ||
                const DeepCollectionEquality()
                    .equals(other.percentage, percentage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hydrationPercentage) ^
      const DeepCollectionEquality().hash(percentage);

  @override
  _$HydrateStatusCopyWith<_HydrateStatus> get copyWith =>
      __$HydrateStatusCopyWithImpl<_HydrateStatus>(this, _$identity);
}

abstract class _HydrateStatus implements HydrateStatus {
  factory _HydrateStatus(
      {@required double hydrationPercentage,
      @required String percentage}) = _$_HydrateStatus;

  @override
  double get hydrationPercentage;
  @override
  String get percentage;
  @override
  _$HydrateStatusCopyWith<_HydrateStatus> get copyWith;
}
