import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('MethodDefSig', () {
    test('default constructor uses expected values', () {
      const sig = MethodSignature();
      check(sig.callingConvention).equals(.DEFAULT);
      check(sig.returnType).equals(const VoidType());
      check(sig.types).deepEquals(const []);
      check(sig.toString()).equals(
        'MethodSignature(callingConvention: 0x0, returnType: VoidType, '
        'types: [])',
      );
    });

    test('equality: equal for same flags, return type, and types', () {
      const sig1 = MethodSignature(
        callingConvention: .HASTHIS,
        returnType: BoolType(),
        types: [Int32Type()],
      );
      const sig2 = MethodSignature(
        callingConvention: .HASTHIS,
        returnType: BoolType(),
        types: [Int32Type()],
      );
      check(sig1).equals(sig2);
    });

    test('equality: instances with different flags are not equal', () {
      const sig1 = MethodSignature();
      const sig2 = MethodSignature(callingConvention: .HASTHIS);
      check(sig1).not((it) => it.equals(sig2));
    });

    test('equality: instances with different return types are not equal', () {
      const sig1 = MethodSignature();
      const sig2 = MethodSignature(returnType: BoolType());
      check(sig1).not((it) => it.equals(sig2));
    });

    test('equality: instances with different types are not equal', () {
      const sig1 = MethodSignature(types: [BoolType()]);
      const sig2 = MethodSignature(types: [StringType()]);
      check(sig1).not((it) => it.equals(sig2));
    });
  });
}
