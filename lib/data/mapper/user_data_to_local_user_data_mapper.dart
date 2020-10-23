import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/model/local_user_data.dart';
import 'package:HydrateMe/domain/model/user_data.dart';

class UserDataToLocalUserDataMapper extends Mapper<LocalUserData, UserData> {
  @override
  Future<LocalUserData> map(UserData origin) async {
    return Future.value(
      LocalUserData(
        activityLevel: origin.activityLevel,
        currentWeight: origin.currentWeight,
        gender: origin.gender,
        sleepTime: origin.sleepTime,
        wakeUpTime: origin.wakeUpTime,
        weightType: origin.weightType,
      ),
    );
  }
}
