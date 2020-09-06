import 'dart:async';

import 'package:HydrateMe/presentation/common/model/gender.dart';
import 'package:HydrateMe/presentation/common/model/weight_type.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculate_water_intake_event.dart';
part 'calculate_water_intake_state.dart';
part 'calculate_water_intake_bloc.freezed.dart';

class CalculateWaterIntakeBloc
    extends Bloc<CalculateWaterIntakeEvent, CalculateWaterIntakeState> {
  CalculateWaterIntakeBloc() : super(CalculateWaterIntakeState.initial());

  @override
  Stream<CalculateWaterIntakeState> mapEventToState(
    CalculateWaterIntakeEvent event,
  ) async* {
    yield* event.map(
      calculateClicked: (params) => _handleCalculateClicked(params),
    );
  }
}

Stream<CalculateWaterIntakeState> _handleCalculateClicked(_CalculateClicked params) async* {
  yield CalculateWaterIntakeState.calculationInProgress();

  
}
