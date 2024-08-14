import 'package:flutter/material.dart';
import 'behaviour.dart';
import 'style.dart';

abstract interface class BaseComponent<T, U> {
  Widget whenRegular(
      T styles, U otherStyles, BuildContext context, Behaviour childBehaviour);

  Widget whenLoading(
      T styles, U otherStyles, BuildContext context, Behaviour childBehaviour);

  Widget whenError(
      T styles, U otherStyles, BuildContext context, Behaviour childBehaviour);

  Widget whenDisabled(
      T styles, U otherStyles, BuildContext context, Behaviour childBehaviour);

  Widget whenEmpty(
      T styles, U otherStyles, BuildContext context, Behaviour childBehaviour);

  Widget whenProcessing(
      T styles, U otherStyles, BuildContext context, Behaviour childBehaviour);

  Widget render(
    Behaviour behaviour,
    BuildContext context,
    Style<T, U> styles,
  );

  Map<Behaviour, Behaviour>? get delegate;
}
