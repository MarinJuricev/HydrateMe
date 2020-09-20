import 'package:HydrateMe/domain/model/activity_level.dart';

import '../../../domain/model/gender.dart';
import '../../../domain/model/weight_type.dart';

const INITIAL_GENDER = Gender.male;
const INITIAL_WEIGHT = 50;
const INITIAL_WEIGHT_TYPE = WeightType.kg;
const INITIAL_DAILY_ACTIVITY = ActivityLevel.active;

// Budget error messages
const CANT_PROVIDE_NEGATIVE_NUMBER = 'Can\'t provide a negative number';
