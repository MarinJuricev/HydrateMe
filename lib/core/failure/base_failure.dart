import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

abstract class Failure extends Equatable {
  final String message;

  Failure({@required this.message});

  @override
  List<Object> get props => [message];
}

class NegativeNumberFailure extends Failure {
  NegativeNumberFailure(String errorMessage) : super(message: errorMessage);
}

class NonExistentHydrateStatus extends Failure {
  NonExistentHydrateStatus(String errorMessage) : super(message: errorMessage);
}

class ValidationFailure extends Failure {
  ValidationFailure(String errorMessage) : super(message: errorMessage);
}

class GeneralFailure extends Failure {
  GeneralFailure(String errorMessage) : super(message: errorMessage);
}

class CacheFailure extends Failure {
  CacheFailure(String errorMessage) : super(message: errorMessage);
}
