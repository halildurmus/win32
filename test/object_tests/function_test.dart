// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

// Exhaustively test a method representation

void main() {
  late Scope scope;

  setUpAll(() async {
    scope = await MetadataStore.loadWin32Metadata();
  });

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
    final typeDef =
        scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis')!;
    final method = typeDef.findMethod('AdjustWindowRect')!;
    check(method.customAttributes.length).equals(2);
    check(method.implFeatures.codeType).equals(CodeType.msil);
    check(method.implFeatures.isManaged).isTrue();
    check(method.isHideBySig).isTrue();
    check(method.isPinvokeImpl).isTrue();
    check(method.isStatic).isTrue();
    check(method.memberAccess).equals(MemberAccess.public);
    check(method.name).equals('AdjustWindowRect');
    check(method.returnType.typeIdentifier.name)
        .equals('Windows.Win32.Foundation.BOOL');

    final supportedOSPlatformAttr = method.findAttribute(
        'Windows.Win32.Foundation.Metadata.SupportedOSPlatformAttribute');
    check(supportedOSPlatformAttr).isNotNull();
    check(supportedOSPlatformAttr!.signatureBlob.toList()).deepEquals([
      0x01, 0x00, 0x0a, 0x77, 0x69, 0x6e, 0x64, 0x6f, //
      0x77, 0x73, 0x35, 0x2e, 0x30, 0x00, 0x00
    ]);

    final pinvokeMap = method.pinvokeMap;
    check(pinvokeMap.callingConvention).equals(CallingConvention.winApi);
    check(pinvokeMap.isNoMangle).isTrue();
    check(pinvokeMap.moduleName).equals('USER32.dll');
    check(pinvokeMap.supportsLastError).isTrue();

    check(method.parameters.length).equals(3);
    final [firstParam, secondParam, thirdParam] = method.parameters;

    check(firstParam.isInParam).isTrue();
    check(firstParam.isOutParam).isTrue();
    check(firstParam.name).equals('lpRect');
    check(firstParam.typeIdentifier.baseType)
        .equals(BaseType.pointerTypeModifier);
    check(firstParam.typeIdentifier.typeArg).isNotNull();
    check(firstParam.typeIdentifier.typeArg?.name)
        .equals('Windows.Win32.Foundation.RECT');

    check(secondParam.isInParam).isTrue();
    check(secondParam.name).equals('dwStyle');
    check(secondParam.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(secondParam.typeIdentifier.name)
        .equals('Windows.Win32.UI.WindowsAndMessaging.WINDOW_STYLE');

    check(thirdParam.isInParam).isTrue();
    check(thirdParam.name).equals('bMenu');
    check(thirdParam.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(thirdParam.typeIdentifier.name)
        .equals('Windows.Win32.Foundation.BOOL');
  });

  tearDownAll(MetadataStore.close);
}
