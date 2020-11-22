import 'package:HydrateMe/presentation/common/widgets/hydrate_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/widgets/hydrate_list_tile.dart';
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
    BlocProvider.of<SettingsBloc>(context).add(SettingsEvent.started());

    return Center(child: CircularProgressIndicator());
  }

  Widget _buildSettingsErrorState(String errorMessage) =>
      Center(child: Text(errorMessage));

  Widget _buildSettingsLoadedState(
      UiUserData uiUserData, BuildContext context) {
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
                title: "Change Wakeup time",
                bodyContent: Text(
                  'Dummy content should be settingItem specific',
                ),
              ),
            ),
          ),
          HydrateListTile(
            title: 'Sleep time',
            subtitle:
                '${uiUserData.sleepTime.hour}:${uiUserData.sleepTime.minute}',
            onClick: () {},
          ),
          HydrateListTile(
            title: 'Current Weight',
            subtitle: '${uiUserData.currentWeight}',
            onClick: () {},
          ),
          HydrateListTile(
            title: 'Gender',
            subtitle: '${uiUserData.gender}',
            onClick: () {},
          ),
          HydrateListTile(
            title: 'Kg/Lbs',
            subtitle: '${uiUserData.weightType}',
            onClick: () {},
          ),
          HydrateListTile(
            title: 'Activity level',
            subtitle: '${uiUserData.activityLevel}',
            onClick: () {},
          ),
        ],
      ).toList(),
    );
  }
}
