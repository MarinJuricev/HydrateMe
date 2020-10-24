import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/model/local_gender.dart';
import 'package:HydrateMe/domain/model/gender.dart';

class GenderToLocalGenderMapper extends Mapper<LocalGender, Gender> {
  @override
  Future<LocalGender> map(Gender origin) {
    switch (origin) {
      case Gender.male:
        return Future.value(LocalGender.male);
        break;
      case Gender.female:
        return Future.value(LocalGender.female);
        break;
      default:
        {
          throw Exception('Not implemented gender: $origin');
        }
    }
  }
}
