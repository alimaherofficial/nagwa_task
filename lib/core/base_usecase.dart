import 'package:dartz/dartz.dart';
import 'package:nagwa_task/core/errors/failures.dart';

/// this is the base use case class need [<Failure, Type, Parameters>]
// ignore: one_member_abstracts
abstract class BaseUseCase<Type, Parameters> {
  /// this is the call method for the use case
  Future<Either<Failure, Type>> call(Parameters parameters);
}

/// this is the no parameters class
class NoParameters {}
