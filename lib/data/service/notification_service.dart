import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import '../../core/notifications/notification_setup.dart';
import '../../domain/repository/water_intake_repository.dart';

abstract class NotificationService {
  Future<void> scheduleDailyNotification(TimeOfDay hourToSchedule);
  Future<void> scheduleInstantNotification();
}

class NotificationServiceImpl extends NotificationService {
  final WaterIntakeRepository waterIntakeRepository;

  NotificationServiceImpl({
    @required this.waterIntakeRepository,
  });

  @override
  Future<void> scheduleDailyNotification(TimeOfDay timeToSchedule) async {
    final repositoryResult =
        await waterIntakeRepository.getCurrentWaterIntake();

    return repositoryResult.fold(
      // Fail silently in case of an error. Idealy we would notify crashliytics
      // of a failure here for whatever reason, but for this mini personal app this is "acceptable"
      (error) => Future.value(),
      (hydrateStatus) async {
        await flutterLocalNotificationsPlugin.zonedSchedule(
            generateNotificationId(timeToSchedule),
            'Remember to drink your water',
            'Current intake ${hydrateStatus.formattedCurrentIntake}',
            _nextInstanceOfProvidedHour(timeToSchedule),
            const NotificationDetails(
              android: AndroidNotificationDetails(
                'HydrateMe daily notification channel id',
                'Daily water intake reminder',
                'Notifications used to remind you of your daily water intake',
              ),
            ),
            androidAllowWhileIdle: true,
            uiLocalNotificationDateInterpretation:
                UILocalNotificationDateInterpretation.absoluteTime,
            scheduledNotificationRepeatFrequency:
                ScheduledNotificationRepeatFrequency.daily);
      },
    );
  }

  tz.TZDateTime _nextInstanceOfProvidedHour(TimeOfDay timeToSchedule) {
    final tz.TZDateTime now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduledDate = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      timeToSchedule.hour,
      timeToSchedule.minute,
    );
    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }
    return scheduledDate;
  }

  @override
  Future<void> scheduleInstantNotification() async {
    final repositoryResult =
        await waterIntakeRepository.getCurrentWaterIntake();

    return repositoryResult.fold(
      // Fail silently in case of an error. Idealy we would notify crashliytics
      // of a failure here for whatever reason, but for this mini personal app this is "acceptable"
      (error) => Future.value(),
      (hydrateStatus) async {
        const AndroidNotificationDetails androidPlatformChannelSpecifics =
            AndroidNotificationDetails(
          'HydrateMe daily notification channel id',
          'Daily water intake reminder',
          'Notifications used to remind you of your daily water intake',
          importance: Importance.max,
          priority: Priority.high,
          ticker: 'ticker',
        );
        const NotificationDetails platformChannelSpecifics =
            NotificationDetails(android: androidPlatformChannelSpecifics);
        await flutterLocalNotificationsPlugin.show(
          0,
          'Remember to drink your water',
          'Current intake ${hydrateStatus.formattedCurrentIntake}',
          platformChannelSpecifics,
          payload: 'item x',
        );
      },
    );
  }

  int generateNotificationId(TimeOfDay timeToSchedule) {
    return timeToSchedule.hour + timeToSchedule.minute;
  }
}
