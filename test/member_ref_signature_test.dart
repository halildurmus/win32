import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('FieldSig', () {
    test('default constructor', () {
      const sig = FieldSig(Int32Type());
      check(sig.type).equals(const Int32Type());
    });

    test('equality: equal for same types', () {
      const sig1 = MemberRefSignature.field(Int32Type());
      const sig2 = MemberRefSignature.field(Int32Type());
      check(sig1).equals(sig2);
    });

    test('equality: instances with different types are not equal', () {
      const sig1 = FieldSig(BoolType());
      const sig2 = FieldSig(StringType());
      check(sig1).not((it) => it.equals(sig2));
    });
  });

  group('MethodRefSig', () {
    test('default constructor uses expected values', () {
      const sig = MethodRefSig();
      check(sig.flags).equals(MethodRefFlags.default$);
      check(sig.returnType).equals(const VoidType());
      check(sig.types).deepEquals(const []);
    });

    test('equality: equal for same flags, return type, and types', () {
      const sig1 = MethodRefSig(
        flags: MethodRefFlags.explicitThis,
        returnType: BoolType(),
        types: [Int32Type()],
      );
      const sig2 = MethodRefSig(
        flags: MethodRefFlags.explicitThis,
        returnType: BoolType(),
        types: [Int32Type()],
      );
      check(sig1).equals(sig2);
    });

    test('equality: instances with different flags are not equal', () {
      const sig1 = MethodRefSig();
      const sig2 = MethodRefSig(flags: MethodRefFlags.hasThis);
      check(sig1).not((it) => it.equals(sig2));
    });

    test('equality: instances with different return types are not equal', () {
      const sig1 = MethodRefSig();
      const sig2 = MethodRefSig(returnType: BoolType());
      check(sig1).not((it) => it.equals(sig2));
    });

    test('equality: instances with different types are not equal', () {
      const sig1 = MethodRefSig(types: [BoolType()]);
      const sig2 = MethodRefSig(types: [StringType()]);
      check(sig1).not((it) => it.equals(sig2));
    });
  });
}
