import 'package:hive/hive.dart';

part 'local_activity_level.g.dart';

@HiveType(typeId: 3)
enum LocalActivityLevel {
  @HiveField(0)
  low,
  @HiveField(1)
  active,
  @HiveField(2)
  veryActive,
}
