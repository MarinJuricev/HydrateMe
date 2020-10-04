import 'package:HydrateMe/domain/model/activity_level.dart';

import '../../../domain/model/gender.dart';
import '../../../domain/model/weight_type.dart';

const INITIAL_GENDER = Gender.male;
const INITIAL_WEIGHT = 50;
const INITIAL_WEIGHT_TYPE = WeightType.kg;
const INITIAL_DAILY_ACTIVITY = ActivityLevel.active;

// Budget error messages
const CANT_PROVIDE_NEGATIVE_NUMBER = 'Can\'t provide a negative number';
const DAILY_WATER_INTAKE_MUST_BE_DEFINED = 'Daily water intake must be defined';
const String REQUIRED_FIELDS_NOT_EMTPY = 'Required fields can\'t be empty';
const String POSITIVE_PROVIDED_NUMBER = 'Provided number\'s can\t be negative';
const String INVALID_NUMBER_PROVIDED = 'Invalid number provided';
