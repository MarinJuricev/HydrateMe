import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/error/exceptions.dart';
import 'package:HydrateMe/data/data_source/local_persistence_provider.dart';
import 'package:HydrateMe/data/data_source/user_data_local_data_source.dart';
import 'package:HydrateMe/domain/model/user_data.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/domain/repository/user_data_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class UserDataRepositoryImpl extends UserDataRepository {
  final UserDataLocalDataSource userDataLocalDataSource;

  UserDataRepositoryImpl({@required this.userDataLocalDataSource});

  @override
  Future<Either<Failure, UserData>> getUserData() async {
    try {
      final localResult = await userDataLocalDataSource.getUserData();

      return Right(localResult);
    } on CacheException {
      return Left(CacheFailure(ERROR_RETREIVING_LOCAL_DATA));
    }
  }

  @override
  Future<Either<Failure, void>> saveUserData(UserData userData) async {
    try {
      final localResult = await userDataLocalDataSource.saveUserData(userData);

      return Right(localResult);
    } on CacheException {
      return Left(CacheFailure(ERROR_RETREIVING_LOCAL_DATA));
    }
  }
}
