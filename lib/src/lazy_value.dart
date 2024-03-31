extension type LazyValue<T>(T Function() _function) implements Object {
  static final _cache = Expando();

  T call() {
    if (_cache[this] case final T result) {
      return result;
    } else {
      final result = _function();
      _cache[this] = result;
      return result;
    }
  }

  void invalidate() {
    _cache[this] = null;
  }
}
