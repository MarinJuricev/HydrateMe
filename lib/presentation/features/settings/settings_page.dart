import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/model/settings_item.dart';
import '../../common/widgets/hydrate_dialog.dart';
import '../../common/widgets/hydrate_list_tile.dart';
import '../calculate_water_intake/widget/time_selection.dart';
import '../calculate_water_intake/widget/weight_selection.dart';
import 'bloc/settings_bloc.dart';
import 'model/ui_user_data.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return state.when(
            initial: () => _buildSettingInitialState(context),
            error: (errorMessage) => _buildSettingsErrorState(errorMessage),
            loaded: (uiUserData) =>
                _buildSettingsLoadedState(uiUserData, context),
          );
        },
      ),
    );
  }

  Widget _buildSettingInitialState(BuildContext context) {
    BlocProvider.of<SettingsBloc>(context).add(const SettingsEvent.started());

    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildSettingsErrorState(String errorMessage) =>
      Center(child: Text(errorMessage));

  Widget _buildSettingsLoadedState(
      UiUserData uiUserData, BuildContext context) {
    int updatedWeight;

    return ListView(
      children: ListTile.divideTiles(
        context: context,
        color: Colors.blue,
        tiles: [
          HydrateListTile(
            title: 'Wake up time',
            subtitle:
                '${uiUserData.wakeUpTime.hour}:${uiUserData.wakeUpTime.minute}',
            onClick: () => showDialog(
              context: context,
              builder: (BuildContext context) => HydrateDialog(
                title: 'Change Wakeup time',
                bodyContent: TimeSelection(
                  title: 'Change usual wake up time',
                  timeOfDay: uiUserData.wakeUpTime,
                  optionalBorderColor: Colors.blue,
                  optionalTextColor: Colors.blue,
                  onTimeSelectedCallback: (newWakeUpTime) {
                    BlocProvider.of<SettingsBloc>(context).add(
                      SettingsEvent.onSettingsChanged(
                        SettingsItem.updateWakeUpTime(
                          newWakeUpTime: newWakeUpTime,
                        ),
                      ),
                    );
                    Navigator.of(context).pop(); // To close the dialog
                  },
                ),
              ),
            ),
          ),
          HydrateListTile(
            title: 'Sleep time',
            subtitle:
                '${uiUserData.sleepTime.hour}:${uiUserData.sleepTime.minute}',
            onClick: () => showDialog(
              context: context,
              builder: (BuildContext context) => HydrateDialog(
                title: "Change Sleep time",
                bodyContent: TimeSelection(
                  title: 'Change usual sleep time',
                  timeOfDay: uiUserData.sleepTime,
                  optionalBorderColor: Colors.blue,
                  optionalTextColor: Colors.blue,
                  onTimeSelectedCallback: (newSleepTime) {
                    BlocProvider.of<SettingsBloc>(context).add(
                      SettingsEvent.onSettingsChanged(
                        SettingsItem.updateSleepTime(
                          newSleepTime: newSleepTime,
                        ),
                      ),
                    );
                    Navigator.of(context).pop(); // To close the dialog
                  },
                ),
              ),
            ),
          ),
          HydrateListTile(
            title: 'Current Weight',
            subtitle: '${uiUserData.currentWeight}',
            onClick: () => showDialog(
              context: context,
              builder: (BuildContext context) => HydrateDialog(
                title: "Change Current Weight",
                onApplyClicked: () => {
                  BlocProvider.of<SettingsBloc>(context).add(
                    SettingsEvent.onSettingsChanged(
                      SettingsItem.updateCurrentWeight(
                          updatedWeight: updatedWeight),
                    ),
                  ),
                  // Navigator.of(context).pop() // To close the dialog
                },
                bodyContent: WeightNumberPicker(
                  // Far from ideal... string comparisons are mega flaky, not to
                  // not to mention that they fail on any attempt in localizing the
                  // app, but at this point it's "enough" for this app.
                  isWeightTypeKg: uiUserData.weightType == 'Kg',
                  currentWeight: uiUserData.currentWeight,
                  weightPickerColor: Colors.blue,
                  onWeightChangeCallback: (int newWeight) {
                    updatedWeight = newWeight;
                  },
                ),
              ),
            ),
          ),
          HydrateListTile(
            title: 'Gender',
            // ignore: unnecessary_string_interpolations
            subtitle: '${uiUserData.gender}',
            onClick: () {},
          ),
          HydrateListTile(
            title: 'Kg/Lbs',
            // ignore: unnecessary_string_interpolations
            subtitle: '${uiUserData.weightType}',
            onClick: () {},
          ),
          HydrateListTile(
            title: 'Activity level',
            // ignore: unnecessary_string_interpolations
            subtitle: '${uiUserData.activityLevel}',
            onClick: () {},
          ),
        ],
      ).toList(),
    );
  }
}
