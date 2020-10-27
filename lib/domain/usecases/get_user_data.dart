import 'package:HydrateMe/domain/repository/user_data_repository.dart';
import 'package:dartz/dartz.dart';

import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:flutter/foundation.dart';

import '../../core/usecase/base_usecase.dart';
import '../model/user_data.dart';

class GetUserData extends BaseUseCase<UserData, NoParams> {
  final UserDataRepository userDataRepository;

  GetUserData({@required this.userDataRepository});

  @override
  Future<Either<Failure, UserData>> call(NoParams params) async {
    return userDataRepository.getUserData();
  }
}
