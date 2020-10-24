import 'package:hive/hive.dart';

part 'local_weight_type.g.dart';

@HiveType(typeId: 2)
enum LocalWeightType {
  @HiveField(0)
  kg,
  @HiveField(1)
  lbs,
}
