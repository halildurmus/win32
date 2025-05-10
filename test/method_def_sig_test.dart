import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('MethodDefSig', () {
    test('default constructor uses expected values', () {
      const sig = MethodDefSig();
      check(sig.flags).equals(MethodDefFlags.hasThis);
      check(sig.returnType).equals(const VoidType());
      check(sig.types).deepEquals(const []);
    });

    test('equality: equal for same flags, return type, and types', () {
      const sig1 = MethodDefSig(
        flags: MethodDefFlags.explicitThis,
        returnType: BoolType(),
        types: [Int32Type()],
      );
      const sig2 = MethodDefSig(
        flags: MethodDefFlags.explicitThis,
        returnType: BoolType(),
        types: [Int32Type()],
      );
      check(sig1).equals(sig2);
    });

    test('equality: instances with different flags are not equal', () {
      const sig1 = MethodDefSig();
      const sig2 = MethodDefSig(flags: MethodDefFlags.default$);
      check(sig1).not((it) => it.equals(sig2));
    });

    test('equality: instances with different return types are not equal', () {
      const sig1 = MethodDefSig();
      const sig2 = MethodDefSig(returnType: BoolType());
      check(sig1).not((it) => it.equals(sig2));
    });

    test('equality: instances with different types are not equal', () {
      const sig1 = MethodDefSig(types: [BoolType()]);
      const sig2 = MethodDefSig(types: [StringType()]);
      check(sig1).not((it) => it.equals(sig2));
    });
  });
}
