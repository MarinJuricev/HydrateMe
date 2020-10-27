import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/model/local_weight_type.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';

class LocalWeightTypeToWeightTypeMapper
    extends Mapper<WeightType, LocalWeightType> {
  @override
  Future<WeightType> map(LocalWeightType origin) {
    switch (origin) {
      case LocalWeightType.kg:
        return Future.value(WeightType.kg);
        break;
      case LocalWeightType.lbs:
        return Future.value(WeightType.lbs);
        break;
      default:
        {
          throw Exception('Not implemented weightType: $origin');
        }
    }
  }
}
