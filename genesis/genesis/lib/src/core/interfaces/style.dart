class Style<T, U> {
  final T? regular;

  final T? loading;

  final T? error;

  final T? disabled;

  final T? empty;

  final T? progress;

  final U shared;

  const Style({
    this.regular,
    this.loading,
    this.error,
    this.disabled,
    this.empty,
    this.progress,
    required this.shared,
  });

  T create(T Function() creator) {
    return creator();
  }
  
}
