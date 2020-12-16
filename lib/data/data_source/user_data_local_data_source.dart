import 'package:flutter/foundation.dart';

import '../../core/error/exceptions.dart';
import '../../core/mapper/base_mapper.dart';
import '../../domain/model/user_data.dart';
import '../model/local_user_data.dart';
import 'local_persistence_provider.dart';

abstract class UserDataLocalDataSource {
  Future<void> saveUserData(UserData userData);
  Future<UserData> getUserData();
}

class UserDataLocalDataSourceImpl extends UserDataLocalDataSource {
  final LocalPersistenceProvider localPersistenceProvider;
  final Mapper<LocalUserData, UserData> userDataToLocalUserDataMapper;
  final Mapper<UserData, LocalUserData> localUserDataToUserDataMapper;

  static const userDataBox = 'USER_DATA_BOX';

  UserDataLocalDataSourceImpl({
    @required this.localPersistenceProvider,
    @required this.userDataToLocalUserDataMapper,
    @required this.localUserDataToUserDataMapper,
  });

  @override
  Future<void> saveUserData(UserData userData) async {
    return localPersistenceProvider.saveKeyValuePair(
      boxToSaveInto: userDataBox,
      valueToSave: await userDataToLocalUserDataMapper.map(userData),
    );
  }

  @override
  Future<UserData> getUserData() async {
    final LocalUserData localResult = await localPersistenceProvider
        .getFromKeyValuePair(boxToGetDataFrom: userDataBox) as LocalUserData;

    if (localResult != null) {
      return localUserDataToUserDataMapper.map(localResult);
    } else {
      throw CacheException();
    }
  }
}
