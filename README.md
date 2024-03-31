# lazy

A library adding lazy evaluation to Dart. This package is based on Günter Zöchbauer's answer on the StackOverflow question [How to do lazy evaluation in Dart?][question].

[question]: http://stackoverflow.com/questions/33218987/how-to-do-lazy-evaluation-in-dart

## Usage

A simple usage example:

```dart
import 'package:lazy/lazy.dart';

class Foo {
  final _value = LazyValue(() {
    print('lazy');
    return 10;
  });

  int get value => _value();
}

main() {
  final foo = Foo();
  print(foo.value);
  // Print lazy, then 10
  print(foo.value);
  // Print only 10.
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/mateusfccp/lazy/issues
