import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('MethodSignature', () {
    test('default constructor uses expected values', () {
      const sig = MethodSignature();
      check(sig.flags).equals(MethodCallFlags.hasThis);
      check(sig.returnType).equals(const VoidType());
      check(sig.types).deepEquals(const []);
    });

    test('equality: equal for same flags, return type, and types', () {
      const sig1 = MethodSignature(
        flags: MethodCallFlags.explicitThis,
        returnType: BoolType(),
        types: [Int32Type()],
      );
      const sig2 = MethodSignature(
        flags: MethodCallFlags.explicitThis,
        returnType: BoolType(),
        types: [Int32Type()],
      );
      check(sig1 == sig2).isTrue();
    });

    test('equality: instances with different flags are not equal', () {
      const sig1 = MethodSignature();
      const sig2 = MethodSignature(flags: MethodCallFlags.default$);
      check(sig1 == sig2).isFalse();
    });

    test('equality: instances with different return types are not equal', () {
      const sig1 = MethodSignature();
      const sig2 = MethodSignature(returnType: BoolType());
      check(sig1 == sig2).isFalse();
    });

    test('equality: instances with different types are not equal', () {
      const sig1 = MethodSignature(types: [BoolType()]);
      const sig2 = MethodSignature(types: [StringType()]);
      check(sig1 == sig2).isFalse();
    });
  });
}
