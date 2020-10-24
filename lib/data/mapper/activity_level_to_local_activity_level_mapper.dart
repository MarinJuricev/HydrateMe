import '../../core/mapper/base_mapper.dart';
import '../../domain/model/activity_level.dart';
import '../model/local_activity_level.dart';

class ActivityLevelToLocalActivityLevelMapper
    extends Mapper<LocalActivityLevel, ActivityLevel> {
  @override
  Future<LocalActivityLevel> map(ActivityLevel origin) {
    switch (origin) {
      case ActivityLevel.low:
        return Future.value(LocalActivityLevel.low);
        break;
      case ActivityLevel.active:
        return Future.value(LocalActivityLevel.active);
        break;
      case ActivityLevel.veryActive:
        return Future.value(LocalActivityLevel.veryActive);
        break;
      default:
        {
          throw Exception('Not implemented activityLevel: $origin');
        }
    }
  }
}
