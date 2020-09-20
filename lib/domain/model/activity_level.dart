enum ActivityLevel { low, active, veryActive }

extension IntActivityLevelExtension on ActivityLevel {
  int mapToMinutes() {
    switch (this) {
      case ActivityLevel.low:
        return 30;
      case ActivityLevel.active:
        return 60;
      case ActivityLevel.veryActive:
        return 120;
      default:
        return 60;
    }
  }
}
