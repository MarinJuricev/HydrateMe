import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure({@required this.message});

  @override
  List<Object> get props => [message];
}

class NegativeNumberFailure extends Failure {
  const NegativeNumberFailure(String errorMessage)
      : super(message: errorMessage);
}

class MissingDataFailure extends Failure {
  const MissingDataFailure(String errorMessage) : super(message: errorMessage);
}

class ValidationFailure extends Failure {
  const ValidationFailure(String errorMessage) : super(message: errorMessage);
}

class GeneralFailure extends Failure {
  const GeneralFailure(String errorMessage) : super(message: errorMessage);
}

class CacheFailure extends Failure {
  const CacheFailure(String errorMessage) : super(message: errorMessage);
}
