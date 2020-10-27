import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/model/local_activity_level.dart';
import 'package:HydrateMe/domain/model/activity_level.dart';

class LocalActivityLevelToActivityLevelMapper
    extends Mapper<ActivityLevel, LocalActivityLevel> {
  @override
  Future<ActivityLevel> map(LocalActivityLevel origin) {
    switch (origin) {
      case LocalActivityLevel.low:
        return Future.value(ActivityLevel.low);
        break;
      case LocalActivityLevel.active:
        return Future.value(ActivityLevel.active);
        break;
      case LocalActivityLevel.veryActive:
        return Future.value(ActivityLevel.veryActive);
        break;
      default:
        {
          throw Exception('Not implemented activityLevel: $origin');
        }
    }
  }
}
