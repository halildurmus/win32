@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

/// Exhaustively test a method representation.
void main() {
  // .method /* 06000EB4 */ public hidebysig static pinvokeimpl("USER32" nomangle lasterr winapi)
  // 	valuetype [Windows.Win32.winmd]Windows.Win32.Foundation.BOOL AdjustWindowRect (
  // 		[in] [out] valuetype [Windows.Win32.winmd]Windows.Win32.Foundation.RECT* lpRect,
  // 		[in] valuetype [Windows.Win32.winmd]Windows.Win32.UI.WindowsAndMessaging.WINDOW_STYLE dwStyle,
  // 		[in] valuetype [Windows.Win32.winmd]Windows.Win32.Foundation.BOOL bMenu
  // 	) cil managed preservesig
  // {
  // 	.custom instance void [Windows.Win32.Interop]Windows.Win32.Interop.SupportedOSPlatformAttribute::.ctor(string) = (
  // 		01 00 0a 77 69 6e 64 6f 77 73 35 2e 30 00 00
  // 	)
  // } // end of method Apis::AdjustWindowRect
  test('Windows.Win32.UI.WindowsAndMessaging.Apis.AdjustWindowRect', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef =
        scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis')!;
    final awr = typedef.findMethod('AdjustWindowRect')!;

    expect(awr.memberAccess, equals(MemberAccess.public));
    expect(awr.isHideBySig, isTrue);
    expect(awr.isStatic, isTrue);

    expect(awr.isPinvokeImpl, isTrue);
    expect(awr.pinvokeMap.moduleName, equals('USER32'));
    expect(awr.pinvokeMap.isNoMangle, isTrue);
    expect(awr.pinvokeMap.supportsLastError, isTrue);
    expect(awr.pinvokeMap.callingConvention, equals(CallingConvention.winApi));

    expect(awr.returnType.typeIdentifier.name,
        equals('Windows.Win32.Foundation.BOOL'));
    expect(awr.name, equals('AdjustWindowRect'));

    expect(awr.parameters.length, equals(3));

    expect(awr.parameters[0].isInParam, isTrue);
    expect(awr.parameters[0].isOutParam, isTrue);
    expect(awr.parameters[0].name, equals('lpRect'));
    expect(awr.parameters[0].typeIdentifier.baseType,
        equals(BaseType.PointerTypeModifier));
    expect(awr.parameters[0].typeIdentifier.typeArg, isNotNull);
    expect(awr.parameters[0].typeIdentifier.typeArg?.name,
        equals('Windows.Win32.Foundation.RECT'));

    expect(awr.parameters[1].isInParam, isTrue);
    expect(awr.parameters[1].name, equals('dwStyle'));
    expect(awr.parameters[1].typeIdentifier.baseType,
        equals(BaseType.ValueTypeModifier));
    expect(awr.parameters[1].typeIdentifier.name,
        equals('Windows.Win32.UI.WindowsAndMessaging.WINDOW_STYLE'));

    expect(awr.parameters[2].isInParam, isTrue);
    expect(awr.parameters[2].name, equals('bMenu'));
    expect(awr.parameters[2].typeIdentifier.baseType,
        equals(BaseType.ValueTypeModifier));
    expect(awr.parameters[2].typeIdentifier.name,
        equals('Windows.Win32.Foundation.BOOL'));

    expect(awr.implFeatures.codeType, equals(CodeType.IL));
    expect(awr.implFeatures.isManaged, isTrue);

    expect(
        awr.customAttributeAsBytes(
            'Windows.Win32.Interop.SupportedOSPlatformAttribute'),
        equals([
          0x01, 0x00, 0x0a, 0x77, 0x69, 0x6e, 0x64, 0x6f, //
          0x77, 0x73, 0x35, 0x2e, 0x30, 0x00, 0x00
        ]));
  });
}
