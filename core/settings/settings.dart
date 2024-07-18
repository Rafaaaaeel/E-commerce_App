import 'package:dartz/dartz.dart';

import '../network/failure.dart';

abstract class Settings {
  String get repository;

  Future<Either<Failure, T>> selectRepository<T>(
      {required Future<Either<Failure, T>> Function() local,
      required Future<Either<Failure, T>> Function() remote}) async {
    if (repository == 'mock') {
      return local();
    } else {
      return remote();
    }
  }
}

class MockSettings extends Settings {
  @override
  String get repository => "mock";
}

class ProdSettings extends Settings {
  @override
  String get repository => "prod";
}
