# Changelog

## 1.0.0

**This release is completely breaking.**

- Made compatible with Dart 3
- Now, `Lazy` does not cache its value anymore
- Implemented `LazyValue`, which **does** cache its value
- Now, both `Lazy` and `LazyValue` are built upon extension types, which means they are costless
wrappers around a function

## 0.1.0

- Initial version.
