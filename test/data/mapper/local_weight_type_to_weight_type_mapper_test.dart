import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/mapper/local_weight_type_to_weight_type_mapper.dart';
import 'package:HydrateMe/data/model/local_weight_type.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:matcher/matcher.dart';

void main() {
  Mapper<WeightType, LocalWeightType> sut;

  setUp(
    () {
      sut = LocalWeightTypeToWeightTypeMapper();
    },
  );

  test(
    'should return Future(WeightType.kg) when LocalWeightType.kg is provided',
    () async {
      final actualResult = await sut.map(LocalWeightType.kg);
      const expectedResult = WeightType.kg;

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return Future(WeightType.lbs) when LocalWeightType.lbs is provided',
    () async {
      final actualResult = await sut.map(LocalWeightType.lbs);
      const expectedResult = WeightType.lbs;

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should throw a exception when a non mapped LocalWeightType is provided',
    () async {
      expect(() => sut.map(null), throwsA(const TypeMatcher<Exception>()));
    },
  );
}
