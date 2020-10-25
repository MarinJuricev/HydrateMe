import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/mapper/weight_type_to_local_weight_type_mapper.dart';
import 'package:HydrateMe/data/model/local_weight_type.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:matcher/matcher.dart';

void main() {
  Mapper<LocalWeightType, WeightType> sut;

  setUp(
    () {
      sut = WeightTypeToLocalWeightTypeMapper();
    },
  );

  test(
    'should return Future(LocalWeightType.kg) when WeightType.kg is provided',
    () async {
      final actualResult = await sut.map(WeightType.kg);
      final expectedResult = LocalWeightType.kg;

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return Future(LocalWeightType.lbs) when WeightType.lbs is provided',
    () async {
      final actualResult = await sut.map(WeightType.lbs);
      final expectedResult = LocalWeightType.lbs;

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should throw a exception when a non mapped WeightType is provided',
    () async {
      expect(() => sut.map(null), throwsA(const TypeMatcher<Exception>()));
    },
  );
}
