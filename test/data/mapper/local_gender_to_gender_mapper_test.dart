import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/mapper/local_gender_to_gender_mapper.dart';
import 'package:HydrateMe/data/model/local_gender.dart';
import 'package:HydrateMe/domain/model/gender.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:matcher/matcher.dart';

void main() {
  Mapper<Gender, LocalGender> sut;

  setUp(
    () {
      sut = LocalGenderToGenderMapper();
    },
  );

  test(
    'should return Future(Gender.male) when LocalGender.male is provided',
    () async {
      final actualResult = await sut.map(LocalGender.male);
      const expectedResult = Gender.male;

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return Future(Gender.female) when LocalGender.female is provided',
    () async {
      final actualResult = await sut.map(LocalGender.female);
      const expectedResult = Gender.female;

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should throw a exception when a non mapped LocalGender is provided',
    () async {
      expect(() => sut.map(null), throwsA(const TypeMatcher<Exception>()));
    },
  );
}
