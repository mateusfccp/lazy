import 'package:lazy/lazy.dart';
import 'package:test/test.dart';

void main() {
  test('A lazy function should be only evaluated when the value is retrieved.', () {
    bool evaluated = false;

    final lazy = Lazy(() {
      evaluated = true;
      return ();
    });

    expect(evaluated, false);
    expect(lazy(), equals(()));
    expect(evaluated, true);
  });
}
