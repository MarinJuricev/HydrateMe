enum WeightType { kg, lbs }

extension WeightTypeExtension on WeightType {
  String get weightType {
    switch (this) {
      case WeightType.kg:
        return 'KG';
      case WeightType.lbs:
        return 'LBS';
      default:
        return null;
    }
  }
}

extension StringWeightTypeExtension on String {
  WeightType get weightType {
    switch (this) {
      case 'KG':
        return WeightType.kg;
      case 'LBS':
        return WeightType.lbs;
      default:
        return WeightType.kg;
    }
  }
}
