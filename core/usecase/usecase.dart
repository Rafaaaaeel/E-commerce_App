import 'package:dartz/dartz.dart';

import '../network/failure.dart';

abstract interface class Usecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
