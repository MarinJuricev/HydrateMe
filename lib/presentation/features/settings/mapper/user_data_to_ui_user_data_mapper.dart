import 'package:HydrateMe/domain/model/user_data.dart';

class GenderToLocalGenderMapper extends Mapper<UiUserData, UserData> {
  @override
  Future<LocalGender> map(Gender origin) {
    switch (origin) {
      case Gender.male:
        return Future.value(LocalGender.male);
        break;
      case Gender.female:
        return Future.value(LocalGender.female);
        break;
      default:
        {
          throw Exception('Not implemented gender: $origin');
        }
    }
  }
}
