@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

/// Exhaustively test a method representation.
void main() {
  // .method public hidebysig static pinvokeimpl("USER32.dll" nomangle lasterr winapi)
  // 	valuetype [Windows.Win32.winmd]Windows.Win32.Foundation.BOOL AdjustWindowRect (
  // 		[in] [out] valuetype [Windows.Win32.winmd]Windows.Win32.Foundation.RECT* lpRect,
  // 		[in] valuetype [Windows.Win32.winmd]Windows.Win32.UI.WindowsAndMessaging.WINDOW_STYLE dwStyle,
  // 		[in] valuetype [Windows.Win32.winmd]Windows.Win32.Foundation.BOOL bMenu
  // 	) cil managed
  // {
  // 	.custom instance void [Windows.Win32.winmd]Windows.Win32.Foundation.Metadata.SupportedOSPlatformAttribute::.ctor(string) = (
  // 		01 00 0a 77 69 6e 64 6f 77 73 35 2e 30 00 00
  // 	)
  // 	.custom instance void [Windows.Win32.winmd]Windows.Win32.Foundation.Metadata.DocumentationAttribute::.ctor(string) = (
  // 		01 00 50 68 74 74 70 73 3a 2f 2f 64 6f 63 73 2e
  // 		6d 69 63 72 6f 73 6f 66 74 2e 63 6f 6d 2f 77 69
  // 		6e 64 6f 77 73 2f 77 69 6e 33 32 2f 61 70 69 2f
  // 		77 69 6e 75 73 65 72 2f 6e 66 2d 77 69 6e 75 73
  // 		65 72 2d 61 64 6a 75 73 74 77 69 6e 64 6f 77 72
  // 		65 63 74 00 00
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
                'Windows.Win32.Foundation.Metadata.SupportedOSPlatformAttribute')!
            .signatureBlob
            .toList())
        .deepEquals([
      0x01, 0x00, 0x0a, 0x77, 0x69, 0x6e, 0x64, 0x6f, //
      0x77, 0x73, 0x35, 0x2e, 0x30, 0x00, 0x00
    ]);
  });
}
