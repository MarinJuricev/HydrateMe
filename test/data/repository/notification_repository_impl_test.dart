import 'package:HydrateMe/data/repository/notification_repository_impl.dart';
import 'package:HydrateMe/data/service/notification_service.dart';
import 'package:HydrateMe/domain/repository/notification_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNotificationService extends Mock implements NotificationService {}

void main() {
  MockNotificationService _mockNotificationService;
  NotificationRepository _notificationRepository;

  const testWakeUpTime = TimeOfDay(hour: 7, minute: 0);
  const testSleepTime = TimeOfDay(hour: 22, minute: 0);

  const expectedFirstNotificationTime = TimeOfDay(hour: 8, minute: 0);
  const expectedSecondNotificationTime = TimeOfDay(hour: 15, minute: 0);
  const expectedThirdNotificationTime = TimeOfDay(hour: 21, minute: 0);

  setUp(
    () {
      _mockNotificationService = MockNotificationService();

      _notificationRepository = NotificationRepositoryImpl(
        notificationService: _mockNotificationService,
      );

      when(_mockNotificationService
              .scheduleDailyNotification(expectedFirstNotificationTime))
          .thenAnswer((realInvocation) => Future.value());
      when(_mockNotificationService
              .scheduleDailyNotification(expectedSecondNotificationTime))
          .thenAnswer((realInvocation) => Future.value());
      when(_mockNotificationService
              .scheduleDailyNotification(expectedThirdNotificationTime))
          .thenAnswer((realInvocation) => Future.value());
      when(_mockNotificationService.scheduleInstantNotification())
          .thenAnswer((realInvocation) => Future.value());
    },
  );

  test(
    'scheduleDailyNotifications should increase the wakeUpTime hour by 1 for the first notification',
    () async {
      await _notificationRepository.scheduleDailyNotifications(
        testWakeUpTime,
        testSleepTime,
      );

      verify(
        _mockNotificationService
            .scheduleDailyNotification(expectedFirstNotificationTime),
      );
    },
  );

  test(
    'scheduleDailyNotifications should set the scheduled time to 15 hour when 7 and 22 are provided',
    () async {
      await _notificationRepository.scheduleDailyNotifications(
        testWakeUpTime,
        testSleepTime,
      );

      verify(
        _mockNotificationService
            .scheduleDailyNotification(expectedSecondNotificationTime),
      );
    },
  );

  test(
    'scheduleDailyNotifications should decease the sleeTime hour by 1 for the third notification',
    () async {
      await _notificationRepository.scheduleDailyNotifications(
        testWakeUpTime,
        testSleepTime,
      );

      verify(
        _mockNotificationService
            .scheduleDailyNotification(expectedThirdNotificationTime),
      );
    },
  );
}
