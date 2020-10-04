import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/core/usecase/base_usecase.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/util/input_converter.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class ManualAddWaterIntake extends BaseUseCase<HydrateStatus, String> {
  final InputConverter inputConverter;

  ManualAddWaterIntake({@required this.inputConverter});

  @override
  Future<Either<Failure, HydrateStatus>> call(String waterToAdd) async {
    final convertedEither = inputConverter.stringToUnsignedInteger(waterToAdd);

    return convertedEither.fold(
      (failure) => Future.value(Left(failure)),
      (convertedValue) => {},
    );
  }
}
