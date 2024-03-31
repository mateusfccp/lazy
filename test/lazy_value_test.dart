import 'package:lazy/lazy.dart';
import 'package:test/test.dart';

void main() {
  group('A lazy value function', () {
    late int count;

    setUp(() => count = 0);

    test('should be only evaluated when the value is retrieved.', () {
      final lazyValue = LazyValue(() {
        count = count + 1;
        return ();
      });

      expect(count, equals(0));
      expect(lazyValue(), equals(()));
      expect(count, equals(1));
    });

    test('should evaluate only once.', () {
      final lazyValue = LazyValue(() {
        count = count + 1;
        return ();
      });

      expect(lazyValue(), equals(()));
      expect(count, equals(1));

      expect(lazyValue(), equals(()));
      expect(count, equals(1));
    });

    test('should evaluate again when invalidated.', () {
      final lazyValue = LazyValue(() {
        count = count + 1;
        return ();
      });

      expect(lazyValue(), equals(()));
      expect(count, equals(1));

      lazyValue.invalidate();

      expect(lazyValue(), equals(()));
      expect(count, equals(2));
    });
  });
}
