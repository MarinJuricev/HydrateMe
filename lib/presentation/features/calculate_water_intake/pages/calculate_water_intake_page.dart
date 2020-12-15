import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/common/constants/constants.dart';
import '../../../../domain/model/activity_level.dart';
import '../../../../domain/model/gender.dart';
import '../../../../domain/model/weight_type.dart';
import '../../../../service_locator.dart' as di;
import '../../../common/widgets/hydrate_loading_indicator.dart';
import '../../bottom_nav/bottom_navigation_page.dart';
import '../bloc/calculate_water_intake_bloc.dart';
import '../widget/activity_selection.dart';
import '../widget/gender_toggle.dart';
import '../widget/hydrate_text_with_icon.dart';
import '../widget/time_selection.dart';
import '../widget/water_transition.dart';
import '../widget/weight_selection.dart';

class CalculateWaterIntakePage extends StatefulWidget {
  static const calculateWaterIntakePage = '/calculateIntakePage';

  @override
  _CalculateWaterIntakePageState createState() =>
      _CalculateWaterIntakePageState();
}

class _CalculateWaterIntakePageState extends State<CalculateWaterIntakePage> {
  Gender _currentSelectedGender = initialGender;
  WeightType _currentSelectedWeightType = initialWeightType;
  ActivityLevel _currentActivityInMinutes = initialDailyActivity;
  int _currentWeight = initialWeight;
  TimeOfDay _wakeUpTime;
  TimeOfDay _sleepTime;

  @override
  void initState() {
    super.initState();
    _wakeUpTime = TimeOfDay.now();
    _sleepTime = TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: BlocProvider<CalculateWaterIntakeBloc>(
          create: (blocContext) => di.getIt<CalculateWaterIntakeBloc>(),
          child:
              BlocConsumer<CalculateWaterIntakeBloc, CalculateWaterIntakeState>(
            listenWhen: (previousState, newState) =>
                newState == const CalculateWaterIntakeState.skipCalculation(),
            listener: (BuildContext blocContext, state) => state.maybeWhen(
              skipCalculation: () =>
                  _navigateToDisplayCurrentIntake(blocContext),
              orElse: null,
            ),
            buildWhen: (previousState, newState) =>
                newState != const CalculateWaterIntakeState.skipCalculation(),
            builder: (blocContext, state) {
              return state.maybeWhen(
                initial: () => HydrateLoadingIndicator(
                  onStartCallback: () =>
                      BlocProvider.of<CalculateWaterIntakeBloc>(blocContext)
                          .add(
                    const CalculateWaterIntakeEvent.shouldSkipCalculation(),
                  ),
                ),
                error: (errorMessage) =>
                    //TODO Add a generic unknown error occured widget
                    Text('PlaceHolder Error Text: $errorMessage'),
                calculationFinished: () => const WaterTransition(),
                startCalculation: () => _buildInitialState(blocContext),
                orElse: () => Container(),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildInitialState(BuildContext blocContext) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 16.0,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'ABOUT ME',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: Column(
                children: [
                  const HydrateTextWithIcon(
                    assetIconPath: 'assets/images/gender.svg',
                    text: 'Gender',
                  ),
                  const SizedBox(height: 16.0),
                  GenderToggle(
                      onGenderSwitchCallback: (Gender selectedGender) =>
                          _currentSelectedGender = selectedGender),
                  const SizedBox(height: 16.0),
                  const HydrateTextWithIcon(
                    assetIconPath: 'assets/images/weight.svg',
                    text: 'Weight',
                  ),
                  const SizedBox(height: 16.0),
                  WeightSelection(
                    onWeightChangeCallback: (int newWeight) =>
                        _currentWeight = newWeight,
                    onWeightTypeSwitchCallback: (WeightType newWeightType) =>
                        _currentSelectedWeightType = newWeightType,
                  ),
                  const SizedBox(height: 16.0),
                  const HydrateTextWithIcon(
                    assetIconPath: 'assets/images/activity.svg',
                    text: 'Daily activity',
                  ),
                  const SizedBox(height: 16.0),
                  ActivitySelection(
                    onActivityChangeCallback: (ActivityLevel newActivity) =>
                        _currentActivityInMinutes = newActivity,
                  ),
                  const SizedBox(height: 16.0),
                  const HydrateTextWithIcon(
                    assetIconPath: 'assets/images/alarm-clock.svg',
                    text: 'Wake up time',
                  ),
                  const SizedBox(height: 16.0),
                  TimeSelection(
                    title: 'Select usual wake up time',
                    timeOfDay: _wakeUpTime,
                    onTimeSelectedCallback: (newWakeUpTime) =>
                        _wakeUpTime = newWakeUpTime,
                  ),
                  const SizedBox(height: 16.0),
                  const HydrateTextWithIcon(
                    assetIconPath: 'assets/images/sleep.svg',
                    text: 'Sleep time',
                  ),
                  const SizedBox(height: 16.0),
                  TimeSelection(
                    title: 'Select usual sleep time',
                    timeOfDay: _sleepTime,
                    onTimeSelectedCallback: (newWakeUpTime) =>
                        _sleepTime = newWakeUpTime,
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: RaisedButton(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              onPressed: () => _sendCalculateEvent(
                _currentSelectedGender,
                _currentSelectedWeightType,
                _currentActivityInMinutes,
                _currentWeight,
                _wakeUpTime,
                _sleepTime,
                blocContext,
              ),
              color: Colors.lightBlue,
              textColor: Colors.white,
              child: const Text('Generate Plan'),
            ),
          ),
        )
      ],
    );
  }
}

void _navigateToDisplayCurrentIntake(BuildContext context) =>
    Navigator.of(context)
        .pushReplacementNamed(BottomNavigationPage.bottomNavigationPage);

void _sendCalculateEvent(
  Gender currentSelectedGender,
  WeightType currentSelectedWeightType,
  ActivityLevel currentActivityInMinutes,
  int currentWeight,
  TimeOfDay wakeUpTime,
  TimeOfDay sleepTime,
  BuildContext context,
) {
  BlocProvider.of<CalculateWaterIntakeBloc>(context).add(
    CalculateWaterIntakeEvent.calculateClicked(
      currentSelectedGender,
      currentSelectedWeightType,
      currentActivityInMinutes,
      currentWeight,
      wakeUpTime,
      sleepTime,
    ),
  );
}
