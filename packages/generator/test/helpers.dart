import 'package:checks/context.dart';

extension IsInCheck<T> on Subject<T> {
  /// Expects that the value is in the given list of [values].
  void isIn(Iterable<T> values) {
    context.expect(
      () => ['is in $values'],
      (actual) => values.contains(actual)
          ? null // force coverage
          : Rejection(which: ['is not in $values']),
    );
  }
}

extension IntZeroChecks on Subject<int> {
  /// Expects that the value is zero.
  void isZero() {
    context.expect(
      () => ['is zero'],
      (actual) => actual == 0
          ? null // force coverage
          : Rejection(which: ['is non zero']),
    );
  }

  /// Expects that the value is non-zero.
  void isNonZero() {
    context.expect(
      () => ['is non zero'],
      (actual) => actual != 0
          ? null // force coverage
          : Rejection(which: ['is zero']),
    );
  }
}
