import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/mapper/activity_level_to_local_activity_level_mapper.dart';
import 'package:HydrateMe/data/model/local_activity_level.dart';
import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Mapper<LocalActivityLevel, ActivityLevel> sut;

  setUp(
    () {
      sut = ActivityLevelToLocalActivityLevelMapper();
    },
  );
}
