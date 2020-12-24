import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/core/usecase/base_usecase.dart';
import 'package:HydrateMe/domain/model/settings_item.dart';
import 'package:HydrateMe/domain/model/user_data.dart';
import 'package:HydrateMe/domain/usecases/get_user_data.dart';
import 'package:HydrateMe/domain/usecases/save_user_data.dart';
import 'package:HydrateMe/presentation/features/settings/model/ui_user_data.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'get_settings_data.dart';

class UpdateSettingsData extends BaseUseCase<UiUserData, SettingsItem> {
  final GetUserData getUserData;
  final GetSettingsData getSettingsData;
  final SaveUserData saveUserData;

  UpdateSettingsData({
    @required this.getUserData,
    @required this.getSettingsData,
    @required this.saveUserData,
  });

  @override
  Future<Either<Failure, UiUserData>> call(SettingsItem params) async {
    final currentSettingsDataEither = await getUserData(NoParams());

    return currentSettingsDataEither.fold(
      (failure) => Future.value(Left(failure)),
      (currentSettingsData) =>
          updateCurrentSettingsData(currentSettingsData, params),
    );
  }

  Future<Either<Failure, UiUserData>> updateCurrentSettingsData(
    UserData currentSettingsData,
    SettingsItem params,
  ) async {
    final updatedItem = params.map(
      updateWakeUpTime: (updatedItem) => currentSettingsData.copyWith(
        wakeUpTime: updatedItem.newWakeUpTime,
      ),
      updateSleepTime: (updatedItem) => currentSettingsData.copyWith(
        sleepTime: updatedItem.newSleepTime,
      ),
      updateCurrentWeight: (updatedItem) => currentSettingsData.copyWith(
        currentWeight: updatedItem.updatedWeight,
      ),
      updateGender: (updatedItem) => currentSettingsData.copyWith(
        gender: updatedItem.updatedGender,
      ),
      updateWeightType: (updatedItem) => currentSettingsData.copyWith(
        weightType: updatedItem.updatedWeightType,
      ),
      updateActivityLevel: (updatedItem) => currentSettingsData.copyWith(
        activityLevel: updatedItem.updatedActivityLevel,
      ),
    );

    await saveUserData(
      SaveUserDataParams(
        wakeUpTime: updatedItem.wakeUpTime,
        sleepTime: updatedItem.sleepTime,
        currentWeight: updatedItem.currentWeight,
        gender: updatedItem.gender,
        weightType: updatedItem.weightType,
        activityLevel: updatedItem.activityLevel,
      ),
    );

    // We'd favor a reactive approach where saving the data into the storage would
    // automatically refresh the down-stream... in this case we do both the read/write
    // manually with calling different use-cases, far from ideal.
    return getSettingsData(NoParams());
  }
}
