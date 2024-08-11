import 'package:core/src/network/failure.dart';


class EmptyProductsFailure extends Failure {
  EmptyProductsFailure() : super('No products founded', 404);
}
