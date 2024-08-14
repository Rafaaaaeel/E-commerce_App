import '../interfaces/behaviour.dart';

class BehaviourHelper {
  static const Map<Behaviour, Behaviour> regularAndLoading = {
    Behaviour.loading: Behaviour.regular,
    Behaviour.disabled: Behaviour.regular,
    Behaviour.empty: Behaviour.regular,
    Behaviour.processing: Behaviour.regular,
  };

  static const Map<Behaviour, Behaviour> regularAndDisabled = {
    Behaviour.loading: Behaviour.regular,
    Behaviour.disabled: Behaviour.regular,
    Behaviour.empty: Behaviour.regular,
    Behaviour.processing: Behaviour.regular,
  };

  static Behaviour childBehaviour(
          Behaviour behaviour, Map<Behaviour, Behaviour>? delegate) =>
      delegate != null ? delegate[behaviour] ?? behaviour : behaviour;
}
