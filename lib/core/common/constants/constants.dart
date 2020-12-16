import '../../../domain/model/activity_level.dart';
import '../../../domain/model/gender.dart';
import '../../../domain/model/weight_type.dart';

const initialGender = Gender.male;
const initialWeight = 50;
const initialWeightType = WeightType.kg;
const initialDailyActivity = ActivityLevel.active;
const int maximumWeight = 200;

// Budget error messages
const cantProvideNegativeNumber = "Can't provide a negative number";
const dailyWaterIntakeMustBeDefined = 'Daily water intake must be defined';
const requiredFieldsNotEmpty = "Required fields can't be empty";
const positiveProvidedNumber = "Provided number's can\t be negative";
const invalidNumberProvided = 'Invalid number provided';
const errorRetreivingLocalData =
    'Error occured while fetching data from local storage';
const genericErrorMessage = 'Something went wrong, please try later!';
