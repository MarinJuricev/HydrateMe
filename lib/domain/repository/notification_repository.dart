import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

abstract class NotificationRepository {
  Future<Either<Failure, void>> scheduleDailyNotifications(
    TimeOfDay wakeUpTime,
    TimeOfDay sleepTime,
  );
}
