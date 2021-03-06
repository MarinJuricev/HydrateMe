import 'dart:async';

import 'package:HydrateMe/domain/model/settings_item.dart';
import 'package:HydrateMe/domain/usecases/update_settings_data.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/base_usecase.dart';
import '../../../../domain/usecases/get_settings_data.dart';
import '../model/ui_user_data.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final GetSettingsData getSettingsData;
  final UpdateSettingsData updateSettingsData;

  SettingsBloc({
    @required this.getSettingsData,
    @required this.updateSettingsData,
  }) : super(const _Initial());

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    yield* event.map(
        started: (params) => _handleSettingsStarted(),
        onSettingsChanged: (params) =>
            _handleOnSettingsChanged(params.settingsItemChanged));
  }

  Stream<SettingsState> _handleSettingsStarted() async* {
    final useCaseResult = await getSettingsData(NoParams());

    yield useCaseResult.fold(
      (error) => SettingsState.error(error.message),
      (uiUserData) => SettingsState.loaded(uiUserData),
    );
  }

  Stream<SettingsState> _handleOnSettingsChanged(
      SettingsItem newSettingsItem) async* {
    final useCaseResult = await updateSettingsData(newSettingsItem);

    yield useCaseResult.fold(
      (error) => SettingsState.error(error.message),
      (uiUserData) => SettingsState.loaded(uiUserData),
    );
  }
}
