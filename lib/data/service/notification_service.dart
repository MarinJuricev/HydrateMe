import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import '../../core/notifications/notification_setup.dart';

abstract class NotificationService {
  Future<void> scheduleDailyNotification(int hourToSchedule);
  Future<void> scheduleInstantNotification();
}

class NotificationServiceImpl extends NotificationService {
  @override
  Future<void> scheduleDailyNotification(int hourToSchedule) async {
    await flutterLocalNotificationsPlugin.zonedSchedule(
        0,
        'HydrateMe',
        'Remember to drink your water',
        _nextInstanceOfProvidedHour(hourToSchedule),
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'HydrateMe daily notification channel id',
            'Daily water intake reminder',
            'Remember to drink your water, a hydrated body is a healthy body',
          ),
        ),
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        scheduledNotificationRepeatFrequency:
            ScheduledNotificationRepeatFrequency.daily);
  }

  tz.TZDateTime _nextInstanceOfProvidedHour(int hourToSchedule) {
    final tz.TZDateTime now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduledDate =
        tz.TZDateTime(tz.local, now.year, now.month, now.day, hourToSchedule);
    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }
    return scheduledDate;
  }

  @override
  Future<void> scheduleInstantNotification() async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
            'HydrateMe daily notification channel id',
            'Daily water intake reminder',
            'Remember to drink your water, a hydrated body is a healthy body',
            importance: Importance.max,
            priority: Priority.high,
            ticker: 'ticker');
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    return await flutterLocalNotificationsPlugin.show(
      0,
      'HydrateMe',
      'Remember to drink your water',
      platformChannelSpecifics,
      payload: 'item x',
    );
  }
}
