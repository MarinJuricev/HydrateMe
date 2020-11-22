import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/core/usecase/base_usecase.dart';
import 'package:HydrateMe/domain/model/user_data.dart';
import 'package:HydrateMe/domain/usecases/get_user_data.dart';
import 'package:HydrateMe/presentation/features/settings/model/ui_user_data.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class GetSettingsData extends BaseUseCase<UiUserData, NoParams> {
  final GetUserData getUserData;
  final Mapper<UiUserData, UserData> userDataToUiUserDataMapper;

  GetSettingsData({
    @required this.getUserData,
    @required this.userDataToUiUserDataMapper,
  });

  @override
  Future<Either<Failure, UiUserData>> call(NoParams params) async {
    final userDataEither = await getUserData(params);

    return userDataEither.fold(
      (error) async {
        final Either<Failure, UiUserData> useCaseFailure = Left(error);
        return Future.value(useCaseFailure);
      },
      (userData) async {
        final mappedUiUserData = await userDataToUiUserDataMapper.map(userData);
        return Future.value(Right(mappedUiUserData));
      },
    );
  }
}
