import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/model/local_weight_type.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';

class WeightTypeToLocalWeightTypeMapper
    extends Mapper<LocalWeightType, WeightType> {
  @override
  Future<LocalWeightType> map(WeightType origin) {
    switch (origin) {
      case WeightType.kg:
        return Future.value(LocalWeightType.kg);
        break;
      case WeightType.lbs:
        return Future.value(LocalWeightType.lbs);
        break;
      default:
        {
          throw Exception('Not implemented weightType: $origin');
        }
    }
  }
}
