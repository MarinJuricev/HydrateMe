import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../service_locator.dart' as di;
import '../../../common/model/gender.dart';
import '../../../common/model/weight_type.dart';
import '../bloc/calculate_water_intake_bloc.dart';
import '../widget/activity_selection.dart';
import '../widget/gender_toggle.dart';
import '../widget/hydrate_text_with_icon.dart';
import '../widget/weight_selection.dart';

class CalculateWaterIntakePage extends StatefulWidget {
  @override
  _CalculateWaterIntakePageState createState() =>
      _CalculateWaterIntakePageState();
}

class _CalculateWaterIntakePageState extends State<CalculateWaterIntakePage> {
  Gender _currentSelectedGender;
  WeightType _currentSelectedWeightType;
  int _currentWeight;
  int _currentActivityInMinutes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: BlocProvider(
        create: (BuildContext context) => di.getIt<CalculateWaterIntakeBloc>(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 16.0,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: const Text(
                  'ABOUT ME',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                child: Column(
                  children: [
                    HydrateTextWithIcon(
                      assetIconPath: 'assets/images/gender.svg',
                      text: 'Gender',
                    ),
                    const SizedBox(height: 8.0),
                    GenderToggle(
                        onGenderSwitchCallback: (Gender selectedGender) =>
                            _currentSelectedGender = selectedGender),
                    const SizedBox(height: 8.0),
                    HydrateTextWithIcon(
                      assetIconPath: 'assets/images/weight.svg',
                      text: 'Weight',
                    ),
                    const SizedBox(height: 8.0),
                    WeightSelection(
                      onWeightChangeCallback: (int newWeight) =>
                          _currentWeight = newWeight,
                      onWeightTypeSwitchCallback: (WeightType newWeightType) =>
                          _currentSelectedWeightType = newWeightType,
                    ),
                    const SizedBox(height: 8.0),
                    HydrateTextWithIcon(
                      assetIconPath: 'assets/images/activity.svg',
                      text: 'Daily activity',
                    ),
                    ActivitySelection(
                      onActivityChangeCallback: (int newActivity) =>
                          _currentActivityInMinutes = newActivity,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: RaisedButton(
                  child: const Text('Generate Plan'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  onPressed: () => _sendCalculateEvent(
                    _currentSelectedGender,
                    _currentSelectedWeightType,
                    _currentWeight,
                    _currentActivityInMinutes,
                    context,
                  ),
                  color: Colors.lightBlue,
                  textColor: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

_sendCalculateEvent(
  Gender currentSelectedGender,
  WeightType currentSelectedWeightType,
  int currentWeight,
  int currentActivityInMinutes,
  BuildContext context,
) {
  BlocProvider.of<CalculateWaterIntakeBloc>(context).add(
    CalculateWaterIntakeEvent.calculateClicked(
      currentSelectedGender,
      currentSelectedWeightType,
      currentWeight,
      currentActivityInMinutes,
    ),
  );
}
