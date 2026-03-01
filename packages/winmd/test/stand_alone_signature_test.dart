import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('LocalVarSig', () {
    test('default constructor', () {
      const sig = LocalVarSig([Int32Type(), StringType()]);
      check(sig.locals).deepEquals([const Int32Type(), const StringType()]);
      check(sig.toString()).equals('LocalVarSig([Int32Type, StringType])');
    });

    test('equality: equal for same types', () {
      const sig1 = StandAloneSignature.localVar([Int32Type()]);
      const sig2 = StandAloneSignature.localVar([Int32Type()]);
      check(sig1).equals(sig2);
    });

    test('equality: instances with different types are not equal', () {
      const sig1 = LocalVarSig([BoolType()]);
      const sig2 = LocalVarSig([StringType()]);
      check(sig1).not((it) => it.equals(sig2));
    });
  });

  group('StandAloneMethodSig', () {
    test('default constructor uses expected values', () {
      const sig = StandAloneMethodSig();
      check(sig.callingConvention).equals(.DEFAULT);
      check(sig.returnType).equals(const VoidType());
      check(sig.types).isEmpty();
      check(sig.toString()).equals(
        'StandAloneMethodSig(callingConvention: 0x0, returnType: VoidType, '
        'types: [])',
      );
    });

    test('equality: equal for same flags, return type, and types', () {
      const sig1 = StandAloneSignature.method(
        callingConvention: .EXPLICITTHIS,
        returnType: BoolType(),
        types: [Int32Type()],
      );
      const sig2 = StandAloneSignature.method(
        callingConvention: .EXPLICITTHIS,
        returnType: BoolType(),
        types: [Int32Type()],
      );
      check(sig1).equals(sig2);
    });

    test('equality: instances with different flags are not equal', () {
      const sig1 = StandAloneMethodSig();
      const sig2 = StandAloneMethodSig(callingConvention: .HASTHIS);
      check(sig1).not((it) => it.equals(sig2));
    });

    test('equality: instances with different return types are not equal', () {
      const sig1 = StandAloneMethodSig();
      const sig2 = StandAloneMethodSig(returnType: BoolType());
      check(sig1).not((it) => it.equals(sig2));
    });

    test('equality: instances with different types are not equal', () {
      const sig1 = StandAloneMethodSig(types: [BoolType()]);
      const sig2 = StandAloneMethodSig(types: [StringType()]);
      check(sig1).not((it) => it.equals(sig2));
    });
  });
}
