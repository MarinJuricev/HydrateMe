part of 'settings_bloc.dart';

@freezed
abstract class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.started() = _Started;
  const factory SettingsEvent.onSettingsChanged(
      SettingsItem settingsItemChanged) = _OnSettingsChanged;
}
