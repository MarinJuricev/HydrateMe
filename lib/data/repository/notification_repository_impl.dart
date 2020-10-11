import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../core/failure/base_failure.dart';
import '../../domain/repository/notification_repository.dart';
import '../service/notification_service.dart';

class NotificationRepositoryImpl extends NotificationRepository {
  final NotificationService notificationService;

  NotificationRepositoryImpl({@required this.notificationService});

  @override
  Future<Either<Failure, void>> scheduleDailyNotifications(
    TimeOfDay wakeUpTime,
    TimeOfDay sleepTime,
  ) async {
    final firstNotificationTime = wakeUpTime.hour + 1;
    final secondNotificationTime = sleepTime.hour - wakeUpTime.hour;
    final thirdNotificationTime = sleepTime.hour - 1;

    return Right(
      Future.wait(
        [
          notificationService.scheduleDailyNotification(firstNotificationTime),
          notificationService.scheduleDailyNotification(secondNotificationTime),
          notificationService.scheduleDailyNotification(thirdNotificationTime),
          notificationService.scheduleInstantNotification(),
        ],
      ),
    );
  }
}
