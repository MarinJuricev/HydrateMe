enum Gender { male, female }

extension StringGenderExtension on String {
  Gender get weightType {
    switch (this.toLowerCase()) {
      case 'male':
        return Gender.male;
      case 'female':
        return Gender.female;
      default:
        return Gender.male;
    }
  }
}
