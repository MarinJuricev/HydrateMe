import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/model/local_gender.dart';
import 'package:HydrateMe/domain/model/gender.dart';

class LocalGenderToGenderMapper extends Mapper<Gender, LocalGender> {
  @override
  Future<Gender> map(LocalGender origin) {
    switch (origin) {
      case LocalGender.male:
        return Future.value(Gender.male);
        break;
      case LocalGender.female:
        return Future.value(Gender.female);
        break;
      default:
        {
          throw Exception('Not implemented gender: $origin');
        }
    }
  }
}
