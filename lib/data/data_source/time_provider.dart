abstract class TimeProvider {
  DateTime getCurrentDate();
}

class TimeProviderImpl extends TimeProvider {
  @override
  DateTime getCurrentDate() {
    return DateTime.now();
  }
}
