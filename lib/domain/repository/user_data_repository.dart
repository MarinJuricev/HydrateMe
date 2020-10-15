import 'package:dartz/dartz.dart';

import '../../core/failure/base_failure.dart';
import '../model/user_data.dart';

abstract class UserDataRepository {
  Future<Either<Failure, UserData>> getUserData();
  Future<Either<Failure, void>> saveUserData(UserData userData);
}
