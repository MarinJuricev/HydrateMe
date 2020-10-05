import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/core/usecase/base_usecase.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/repository/water_intake_repository.dart';
import 'package:HydrateMe/domain/util/input_converter.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class ManualAddWaterIntake extends BaseUseCase<HydrateStatus, String> {
  final InputConverter inputConverter;
  final WaterIntakeRepository repository;

  ManualAddWaterIntake({
    @required this.inputConverter,
    @required this.repository,
  });

  @override
  Future<Either<Failure, HydrateStatus>> call(String waterToAdd) async {
    final repositoryEither = await repository.getCurrentWaterIntake();
    final convertedEither = inputConverter.stringToUnsignedInteger(waterToAdd);

    final currentHydrateStatus = repositoryEither.getOrElse(() => null);
    final conertedWaterToAdd = convertedEither.getOrElse(() => null);

    // return convertedEither.fold(
    //   (failure) => Future.value(Left(failure)),
    //   (convertedValue) => {},
    // );
    return null;
  }
}
