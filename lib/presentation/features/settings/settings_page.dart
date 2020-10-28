import 'package:HydrateMe/domain/model/user_data.dart';
import 'package:HydrateMe/presentation/common/widgets/hydrate_list_tile.dart';
import 'package:HydrateMe/presentation/features/settings/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            loaded: (userData) => _buildSettingsLoadedState(userData, context),
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

  Widget _buildSettingsLoadedState(UserData userData, BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        color: Colors.blue,
        tiles: [
          HydrateListTile(
            title: 'Wake up time',
            subtitle:
                '${userData.wakeUpTime.hour}:${userData.wakeUpTime.minute}',
          ),
          HydrateListTile(
            title: 'Sleep time',
            subtitle: '${userData.sleepTime.hour}:${userData.sleepTime.minute}',
          ),
          HydrateListTile(
            title: 'Current Weight',
            subtitle: '${userData.currentWeight}',
          ),
          HydrateListTile(
            title: 'Gender',
            subtitle: '${userData.gender}',
          ),
          HydrateListTile(
            title: 'Kg/Lbs',
            subtitle: '${userData.currentWeight}',
          ),
          HydrateListTile(
            title: 'Activity level',
            subtitle: '${userData.activityLevel}',
          ),
        ],
      ).toList(),
    );
  }
}
