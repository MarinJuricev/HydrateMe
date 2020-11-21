import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/model/gender.dart';
import 'package:HydrateMe/domain/model/user_data.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:HydrateMe/presentation/features/settings/model/ui_user_data.dart';

class UserDataToUiUserDataMapper extends Mapper<UiUserData, UserData> {
  @override
  Future<UiUserData> map(UserData origin) {
    return Future.value(
      UiUserData(
        wakeUpTime: origin.wakeUpTime,
        sleepTime: origin.sleepTime,
        currentWeight: origin.currentWeight,
        gender: extractGenderValue(origin.gender),
        weightType: extractWeightType(origin.weightType),
        activityLevel: extractActivityLevel(origin.activityLevel),
      ),
    );
  }

  String extractGenderValue(Gender gender) {
    switch (gender) {
      case Gender.male:
        return 'Male';
        break;
      case Gender.female:
        return 'Female';
        break;
      default:
        {
          throw Exception('Not implemented gender: $gender');
        }
    }
  }

  String extractWeightType(WeightType weightType) {
    switch (weightType) {
      case WeightType.kg:
        return 'Kg';
        break;
      case WeightType.lbs:
        return 'Lbs';
        break;
      default:
        {
          throw Exception('Not implemented weightType: $weightType');
        }
    }
  }

  String extractActivityLevel(ActivityLevel activityLevel) {
    switch (activityLevel) {
      case ActivityLevel.low:
        return 'Low';
        break;
      case ActivityLevel.active:
        return 'Active';
        break;
      case ActivityLevel.veryActive:
        return 'Very Active';
        break;
      default:
        {
          throw Exception('Not implemented activityLevel: $activityLevel');
        }
    }
  }
}
