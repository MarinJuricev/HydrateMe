import 'dart:async';

import 'package:HydrateMe/core/usecase/base_usecase.dart';
import 'package:HydrateMe/domain/model/user_data.dart';
import 'package:HydrateMe/domain/usecases/get_user_data.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final GetUserData getUserData;

  SettingsBloc({
    @required this.getUserData,
  }) : super(_Initial());

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    yield* event.map(
      started: (params) => _handleSettingsStarted(),
    );
  }

  Stream<SettingsState> _handleSettingsStarted() async* {
    final useCaseResult = await getUserData(NoParams());

    yield useCaseResult.fold(
      (error) => SettingsState.error(error.message),
      (userData) => SettingsState.loaded(userData),
    );
  }
}
