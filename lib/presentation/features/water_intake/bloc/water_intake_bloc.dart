import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';

part 'water_intake_event.dart';
part 'water_intake_state.dart';
part 'water_intake_bloc.freezed.dart';

class WaterIntakeBloc extends Bloc<WaterIntakeEvent, WaterIntakeState> {
  WaterIntakeBloc() : super(WaterIntakeState.initial());

  @override
  Stream<WaterIntakeState> mapEventToState(
    WaterIntakeEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}