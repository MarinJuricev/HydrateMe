part of 'settings_bloc.dart';

@freezed
abstract class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.started() = _Started;
  //TODO FIX TYPO TO LAZY TO RUN BUILD_RUNNER NOW
  const factory SettingsEvent.onSettingedChanged(
      SettingsItem settingsItemChanged) = _OnSettingsChanged;
}
