@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
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

    check(awr.memberAccess).equals(MemberAccess.public);
    check(awr.isHideBySig).isTrue();
    check(awr.isStatic).isTrue();

    check(awr.isPinvokeImpl).isTrue();
    check(awr.pinvokeMap.moduleName).equals('USER32.dll');
    check(awr.pinvokeMap.isNoMangle).isTrue();
    check(awr.pinvokeMap.supportsLastError).isTrue();
    check(awr.pinvokeMap.callingConvention).equals(CallingConvention.winApi);

    check(awr.returnType.typeIdentifier.name)
        .equals('Windows.Win32.Foundation.BOOL');
    check(awr.name).equals('AdjustWindowRect');

    check(awr.parameters.length).equals(3);

    check(awr.parameters[0].isInParam).isTrue();
    check(awr.parameters[0].isOutParam).isTrue();
    check(awr.parameters[0].name).equals('lpRect');
    check(awr.parameters[0].typeIdentifier.baseType)
        .equals(BaseType.pointerTypeModifier);
    check(awr.parameters[0].typeIdentifier.typeArg).isNotNull();
    check(awr.parameters[0].typeIdentifier.typeArg?.name)
        .equals('Windows.Win32.Foundation.RECT');

    check(awr.parameters[1].isInParam).isTrue();
    check(awr.parameters[1].name).equals('dwStyle');
    check(awr.parameters[1].typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(awr.parameters[1].typeIdentifier.name)
        .equals('Windows.Win32.UI.WindowsAndMessaging.WINDOW_STYLE');

    check(awr.parameters[2].isInParam).isTrue();
    check(awr.parameters[2].name).equals('bMenu');
    check(awr.parameters[2].typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(awr.parameters[2].typeIdentifier.name)
        .equals('Windows.Win32.Foundation.BOOL');

    check(awr.implFeatures.codeType).equals(CodeType.msil);
    check(awr.implFeatures.isManaged).isTrue();

    check(awr
            .findAttribute(
                'Windows.Win32.Interop.SupportedOSPlatformAttribute')!
            .signatureBlob
            .toList())
        .deepEquals([
      0x01, 0x00, 0x0a, 0x77, 0x69, 0x6e, 0x64, 0x6f, //
      0x77, 0x73, 0x35, 0x2e, 0x30, 0x00, 0x00
    ]);
  });
}
