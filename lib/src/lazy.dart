extension type Lazy<T>(T Function() _function) {
  T call() => _function();
}
