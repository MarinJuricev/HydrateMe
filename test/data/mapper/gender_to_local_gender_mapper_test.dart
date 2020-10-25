import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/mapper/gender_to_local_gender_mapper.dart';
import 'package:HydrateMe/data/model/local_gender.dart';
import 'package:HydrateMe/domain/model/gender.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:matcher/matcher.dart';

void main() {
  Mapper<LocalGender, Gender> sut;

  setUp(
    () {
      sut = GenderToLocalGenderMapper();
    },
  );

  test(
    'should return Future(LocalGender.male) when Gender.male is provided',
    () async {
      final actualResult = await sut.map(Gender.male);
      final expectedResult = LocalGender.male;

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return Future(LocalGender.female) when Gender.female is provided',
    () async {
      final actualResult = await sut.map(Gender.female);
      final expectedResult = LocalGender.female;

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should throw a exception when a non mapped Gender is provided',
    () async {
      expect(() => sut.map(null), throwsA(const TypeMatcher<Exception>()));
    },
  );
}
