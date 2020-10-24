import 'package:hive/hive.dart';

part 'local_gender.g.dart';

@HiveType(typeId: 1)
enum LocalGender {
  @HiveField(0)
  male,
  @HiveField(1)
  female,
}
