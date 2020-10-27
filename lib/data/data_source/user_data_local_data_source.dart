import 'package:HydrateMe/data/data_source/local_persistence_provider.dart';
import 'package:HydrateMe/data/mapper/local_user_data_to_user_data_mapper.dart';
import 'package:HydrateMe/data/mapper/user_data_to_local_user_data_mapper.dart';
import 'package:HydrateMe/domain/model/user_data.dart';
import 'package:flutter/foundation.dart';

abstract class UserDataLocalDataSource {
  Future<void> saveUserData(UserData userData);
  Future<UserData> getUserData();
}

class UserDataLocalDataSourceImpl extends UserDataLocalDataSource {
  final LocalPersistenceProvider localPersistenceProvider;
  final UserDataToLocalUserDataMapper userDataToLocalUserDataMapper;
  final LocalUserDataToUserDataMapper localUserDataToUserDataMapper;

  static const USER_DATA_BOX = 'USER_DATA_BOX';

  UserDataLocalDataSourceImpl({
    @required this.localPersistenceProvider,
    @required this.userDataToLocalUserDataMapper,
    @required this.localUserDataToUserDataMapper,
  });

  @override
  Future<void> saveUserData(UserData userData) async {
    return await localPersistenceProvider.saveKeyValuePair(
      boxToSaveInto: USER_DATA_BOX,
      valueToSave: await userDataToLocalUserDataMapper.map(userData),
    );
  }

  @override
  Future<UserData> getUserData() async {
    final localResult = await localPersistenceProvider.getFromKeyValuePair(
        boxToGetDataFrom: USER_DATA_BOX);

    return await localUserDataToUserDataMapper.map(localResult);
  }
}
