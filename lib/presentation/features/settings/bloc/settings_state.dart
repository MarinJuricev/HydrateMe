part of 'settings_bloc.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = _Initial;
  const factory SettingsState.error(String errorMessage) = _Error;
  const factory SettingsState.loaded(UiUserData uiUserData) = _Loaded;
}
