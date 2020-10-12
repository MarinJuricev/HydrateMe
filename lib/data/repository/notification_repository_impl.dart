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
    final firstNotificationTime = TimeOfDay(
      hour: wakeUpTime.hour + 1,
      minute: wakeUpTime.minute,
    );
    final secondNotificationTime = TimeOfDay(
      hour: sleepTime.hour - wakeUpTime.hour,
      minute: wakeUpTime.minute,
    );
    final thirdNotificationTime = TimeOfDay(
      hour: sleepTime.hour - 1,
      minute: sleepTime.minute,
    );

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
