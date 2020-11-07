import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'local_hydrate_status.g.dart';

@HiveType(typeId: 1)
class LocalHydrateStatus extends HiveObject with EquatableMixin {
  @HiveField(0)
  final double hydrationPercentage;
  @HiveField(1)
  final String formattedCurrentIntake;
  @HiveField(2)
  final int dailyIntakeGoal;
  @HiveField(3)
  final int currentIntake;
  @HiveField(4)
  final DateTime date;

  LocalHydrateStatus({
    @required this.hydrationPercentage,
    @required this.formattedCurrentIntake,
    @required this.dailyIntakeGoal,
    @required this.currentIntake,
    @required this.date,
  });

  @override
  List<Object> get props => [
        hydrationPercentage,
        formattedCurrentIntake,
        dailyIntakeGoal,
        currentIntake,
        date
      ];
}
