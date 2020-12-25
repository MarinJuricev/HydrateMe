import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/core/usecase/base_usecase.dart';
import 'package:HydrateMe/domain/model/settings_item.dart';
import 'package:HydrateMe/domain/usecases/get_settings_data.dart';
import 'package:HydrateMe/domain/usecases/update_settings_data.dart';
import 'package:HydrateMe/presentation/features/settings/bloc/settings_bloc.dart';
import 'package:HydrateMe/presentation/features/settings/model/ui_user_data.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockGetSettingsData extends Mock implements GetSettingsData {}

class MockUpdateSettingsData extends Mock implements UpdateSettingsData {}

void main() {
  MockGetSettingsData _mockGetSettingsData;
  MockUpdateSettingsData _mockUpdateSettingsData;
  final UiUserData testUiUserData = UiUserData(
    wakeUpTime: TimeOfDay.now(),
    sleepTime: TimeOfDay.now(),
    currentWeight: 75,
    gender: 'Male',
    weightType: 'Kg',
    activityLevel: 'Active',
  );
  const newWeight = 80;
  const SettingsItem testSettingsItem =
      SettingsItem.updateCurrentWeight(updatedWeight: newWeight);

  setUp(() {
    _mockGetSettingsData = MockGetSettingsData();
    _mockUpdateSettingsData = MockUpdateSettingsData();
  });

  group(
    'settingsEvent started -',
    () {
      blocTest(
        'should emit SettingsState.error when getSettingsData returns a failure',
        build: () {
          when(_mockGetSettingsData(NoParams())).thenAnswer((_) =>
              Future.value(const Left(GeneralFailure(genericErrorMessage))));

          return SettingsBloc(
            getSettingsData: _mockGetSettingsData,
            updateSettingsData: _mockUpdateSettingsData,
          );
        },
        act: (SettingsBloc bloc) => bloc.add(const SettingsEvent.started()),
        expect: [const SettingsState.error(genericErrorMessage)],
      );

      blocTest(
        'should emit SettingsState.loaded when getSettingsData returns a success',
        build: () {
          when(_mockGetSettingsData(NoParams()))
              .thenAnswer((_) => Future.value(Right(testUiUserData)));

          return SettingsBloc(
            getSettingsData: _mockGetSettingsData,
            updateSettingsData: _mockUpdateSettingsData,
          );
        },
        act: (SettingsBloc bloc) => bloc.add(const SettingsEvent.started()),
        expect: [SettingsState.loaded(testUiUserData)],
      );
    },
  );

  group(
    'settingsEvent onSettingsChanged -',
    () {
      blocTest(
        'should emit SettingsState.error when updateSettingsData returns a failure',
        build: () {
          when(_mockUpdateSettingsData(testSettingsItem)).thenAnswer((_) =>
              Future.value(const Left(GeneralFailure(genericErrorMessage))));

          return SettingsBloc(
            getSettingsData: _mockGetSettingsData,
            updateSettingsData: _mockUpdateSettingsData,
          );
        },
        act: (SettingsBloc bloc) =>
            bloc.add(const SettingsEvent.onSettingsChanged(testSettingsItem)),
        expect: [const SettingsState.error(genericErrorMessage)],
      );

      blocTest(
        'should emit SettingsState.loaded when getSettingsData returns a success',
        build: () {
          when(_mockUpdateSettingsData(testSettingsItem))
              .thenAnswer((_) => Future.value(Right(testUiUserData)));

          return SettingsBloc(
            getSettingsData: _mockGetSettingsData,
            updateSettingsData: _mockUpdateSettingsData,
          );
        },
        act: (SettingsBloc bloc) =>
            bloc.add(const SettingsEvent.onSettingsChanged(testSettingsItem)),
        expect: [SettingsState.loaded(testUiUserData)],
      );
    },
  );
}
