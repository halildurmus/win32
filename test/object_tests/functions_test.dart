@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

/// Exhaustively test a method representation.
void main() {
  // .method public hidebysig static pinvokeimpl("USER32" nomangle lasterr winapi)
  // 	valuetype Windows.Win32.SystemServices.BOOL AdjustWindowRect (
  // 		[in] [out] valuetype [Windows.Win32.winmd]Windows.Win32.DisplayDevices.RECT* lpRect,
  // 		[in] uint32 dwStyle,
  // 		[in] valuetype Windows.Win32.SystemServices.BOOL bMenu
  // 	) cil managed preservesig
  // {
  // 	.custom instance void [Windows.Win32.Interop]Windows.Win32.Interop.SupportedOSPlatformAttribute::.ctor(string) = (
  // 		01 00 0a 77 69 6e 64 6f 77 73 35 2e 30 00 00
  // 	)
  // } // end of method Apis::AdjustWindowRect
  test('Windows.Win32.WindowsAndMessaging.Apis.AdjustWindowRect', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef =
        scope.findTypeDef('Windows.Win32.WindowsAndMessaging.Apis')!;
    final awr = typedef.findMethod('AdjustWindowRect')!;

    expect(awr.memberAccess, equals(MemberAccess.Public));
    expect(awr.isHideBySig, isTrue);
    expect(awr.isStatic, isTrue);

    expect(awr.isPinvokeImpl, isTrue);
    expect(awr.pinvokeMap.moduleName, equals('USER32'));
    expect(awr.pinvokeMap.hasAttribute(CorPinvokeMap.pmNoMangle), isTrue);
    expect(
        awr.pinvokeMap.hasAttribute(CorPinvokeMap.pmSupportsLastError), isTrue);
    expect(awr.pinvokeMap.hasAttribute(CorPinvokeMap.pmCallConvWinapi), isTrue);

    expect(awr.returnType.typeIdentifier.name,
        equals('Windows.Win32.SystemServices.BOOL'));
    expect(awr.methodName, equals('AdjustWindowRect'));

    expect(awr.parameters.length, equals(3));

    expect(awr.parameters[0].isInParam, isTrue);
    expect(awr.parameters[0].isOutParam, isTrue);
    expect(awr.parameters[0].name, equals('lpRect'));
    expect(awr.parameters[0].typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_PTR));
    expect(awr.parameters[0].typeIdentifier.typeArgs.length, equals(1));
    expect(awr.parameters[0].typeIdentifier.typeArgs.first.name,
        equals('Windows.Win32.DisplayDevices.RECT'));

    expect(awr.parameters[1].isInParam, isTrue);
    expect(awr.parameters[1].name, equals('dwStyle'));
    expect(awr.parameters[1].typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_U4));

    expect(awr.parameters[2].isInParam, isTrue);
    expect(awr.parameters[2].name, equals('bMenu'));
    expect(awr.parameters[2].typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
    expect(awr.parameters[2].typeIdentifier.name,
        equals('Windows.Win32.SystemServices.BOOL'));

    expect(awr.implFeatures.codeType, equals(CodeType.IL));
    expect(awr.implFeatures.isManaged, isTrue);
    expect(awr.implFeatures.isPreserveSig, isTrue);

    expect(
        awr.customAttributeAsBytes(
            'Windows.Win32.Interop.SupportedOSPlatformAttribute'),
        equals([
          0x01, 0x00, 0x0a, 0x77, 0x69, 0x6e, 0x64, 0x6f, //
          0x77, 0x73, 0x35, 0x2e, 0x30, 0x00, 0x00
        ]));
  });
}
