import '../../../domain/model/activity_level.dart';
import '../../../domain/model/gender.dart';
import '../../../domain/model/weight_type.dart';

const INITIAL_GENDER = Gender.male;
const INITIAL_WEIGHT = 50;
const INITIAL_WEIGHT_TYPE = WeightType.kg;
const INITIAL_DAILY_ACTIVITY = ActivityLevel.active;

// Budget error messages
const CANT_PROVIDE_NEGATIVE_NUMBER = 'Can\'t provide a negative number';
const DAILY_WATER_INTAKE_MUST_BE_DEFINED = 'Daily water intake must be defined';
const REQUIRED_FIELDS_NOT_EMTPY = 'Required fields can\'t be empty';
const POSITIVE_PROVIDED_NUMBER = 'Provided number\'s can\t be negative';
const INVALID_NUMBER_PROVIDED = 'Invalid number provided';
const ERROR_RETREIVING_LOCAL_DATA =
    'Error occured while fetching data from local storage';
const GENERAL_ERROR_MESSAGE = 'Something went wrong, please try later!';
