
import 'package:HydrateMe/domain/usecases/calculate_additional_water_intake_per_activity.dart';
import 'package:HydrateMe/domain/usecases/calculate_daily_water_intake.dart';
import 'package:HydrateMe/domain/usecases/kg_to_lbs_converter.dart';
import 'package:HydrateMe/domain/usecases/oz_to_milliliter_converter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockKgToLbsConverter extends Mock implements KgToLbsConverter {}
class MockCalculateAdditionalWaterIntakePerActivity extends Mock implements CalculateAdditionalWaterIntakePerActivity {}
class MockOzToMIliliterConverter extends Mock implements OzToMIliliterConverter {}

void main() {
  MockKgToLbsConverter _mockKgToLbsConverter;
  MockCalculateAdditionalWaterIntakePerActivity _mockCalculateAdditionalWaterIntakePerActivity;
  MockOzToMIliliterConverter _mockOzToMIliliterConverter;

  CalculateDailyWaterIntake _calculateDailyWaterIntake;

  setUp(
    () {
      _mockKgToLbsConverter = MockKgToLbsConverter();
      _mockCalculateAdditionalWaterIntakePerActivity = MockCalculateAdditionalWaterIntakePerActivity();
      _mockOzToMIliliterConverter = MockOzToMIliliterConverter();
      
      _calculateDailyWaterIntake = CalculateDailyWaterIntake(
        calculateAdditionalWaterIntakePerActivity: _mockCalculateAdditionalWaterIntakePerActivity,
        kgToLbsconverter: _mockKgToLbsConverter,
        ozToMIliliterConverter: _mockOzToMIliliterConverter
      );
    },
  );

  // test(
  //   '',
  //   () async {
  //   },
  // );
}