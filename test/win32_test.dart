// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  late Scope win32Scope;

  setUpAll(() async {
    win32Scope = await MetadataStore.loadWin32Metadata();
    // Load the WinRT metadata in order to resolve references from the Win32
    // metadata
    await MetadataStore.loadWinRTMetadata();
  });

  test('Scope assemblies contain expected assemblies', () {
    check(win32Scope.assemblyRefs.map((assembly) => assembly.name))
      ..contains('netstandard')
      ..contains('Windows.Foundation.FoundationContract')
      ..contains('Windows.Foundation.UniversalApiContract');
  });

  test('Scope modules contain expected DLLs', () {
    check(win32Scope.moduleRefs.map((module) => module.name))
      ..contains('d3d12.dll')
      ..contains('GDI32.dll')
      ..contains('KERNEL32.dll')
      ..contains('USER32.dll');
  });

  test('Scope modules contain expected user strings', () {
    check(win32Scope.userStrings.length).equals(0);
  });

  test('Can successfully load a typeDef from the Win32 metadata', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    check(typeDef).isNotNull();
    check(typeDef!.methods).isNotEmpty();
  });

  test('Can successfully load a typeDef from the Win32 metadata 2', () {
    final typeDef =
        win32Scope.findTypeDef('Windows.Win32.System.WinRT.Metadata.Apis');
    check(typeDef).isNotNull();
    check(typeDef!.methods).isNotEmpty();
  });

  test('Typedef is named correctly', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.UI.Shell.Apis');
    check(typeDef).isNotNull();
    check(typeDef!.name).equals('Windows.Win32.UI.Shell.Apis');
    check(typeDef.toString()).equals('Windows.Win32.UI.Shell.Apis');
  });

  test('Typedef equality is successful', () {
    final typeDef1 = win32Scope.findTypeDef('Windows.Win32.UI.Shell.Apis');
    check(typeDef1).isNotNull();
    final typeDef2 = win32Scope.findTypeDef('Windows.Win32.UI.Shell.Apis')!;
    final typeDef3 = win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    check(typeDef3).isNotNull();

    check(typeDef1).equals(typeDef2);
    check(typeDef1).not((it) => it.equals(typeDef3));
  });

  test('Searching for a non-existent typeDef returns null', () {
    const fakeTypeDef = 'Windows.Flutter.Apis'; // for now :)
    final typeDef = win32Scope.findTypeDef(fakeTypeDef);
    check(typeDef).isNull();
  });

  test('Can find a known API within the given scope', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('AddFontResourceW');
    check(api).isNotNull();
    check(api!.parameters).isNotEmpty();
  });

  test('Searching for a non-existent API call returns null', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('AddFlutterWidget');
    check(api).isNull();
  });

  test('isResolvedToken gives correct result for a real token', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('AddFontResourceW');
    check(api).isNotNull();
    check(api!.isResolvedToken).isTrue();
  });

  test('isResolvedToken gives correct result for a pseudo-token', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('AddFontResourceW');
    check(api).isNotNull();
    check(api!.returnType.isResolvedToken).isFalse();
  });

  test('No attributes for a pseudo-token', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('AddFontResourceW');
    check(api).isNotNull();
    check(api!.returnType.customAttributes).isEmpty();
  });

  test('Functions can correctly return an int type', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('AddFontResourceW');
    check(api).isNotNull();
    final returnType = api!.returnType;
    check(returnType.typeIdentifier.baseType).equals(BaseType.int32Type);
    check(returnType.typeIdentifier.typeArg).isNull();
  });

  test('LPWSTR parameters are handled correctly', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('AddFontResourceW');
    check(api).isNotNull();
    check(api!.parameters.length).equals(1);
    final param = api.parameters.first;
    check(param.name).equals('param0');
    check(param.sequence).equals(1);
    check(param.typeIdentifier.name).endsWith('PWSTR');
    check(param.typeIdentifier.baseType).equals(BaseType.valueTypeModifier);
    check(param.typeIdentifier.typeArg).isNull();
  });

  test('Signature blob is correct', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('AddFontResourceW');
    check(api).isNotNull();
    check(api!.signatureBlob.sublist(0, 4))
        .deepEquals(Uint8List.fromList([0x00, 0x01, 0x08, 0x11]));
  });

  test('Unicode string params are correctly marked', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('AddFontResourceW');
    check(api).isNotNull();
    check(api!.parameters.length).equals(1);
    final param = api.parameters.first;
    check(param.name).equals('param0');
    check(param.typeIdentifier.name).endsWith('PWSTR');
  });

  test('ANSI string params are correctly marked', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('AddFontResourceA');
    check(api).isNotNull();
    check(api!.parameters.length).equals(1);
    final param = api.parameters.first;
    check(param.name).equals('param0');
    check(param.typeIdentifier.name).endsWith('PSTR');
  });

  test('Returned structs like LPRECT have correct param width', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('UnionRect');
    check(api).isNotNull();
    check(api!.parameters.length).equals(3);

    check(api.parameters[0].name).equals('lprcDst');
    check(api.parameters[0].typeIdentifier.baseType)
        .equals(BaseType.pointerTypeModifier);

    check(api.parameters[1].name).equals('lprcSrc1');
    check(api.parameters[1].typeIdentifier.baseType)
        .equals(BaseType.pointerTypeModifier);

    check(api.parameters[2].name).equals('lprcSrc2');
    check(api.parameters[2].typeIdentifier.baseType)
        .equals(BaseType.pointerTypeModifier);
  });

  test('Structs like RECT have the correct type args', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('UnionRect');
    check(api).isNotNull();
    check(api!.parameters.first.name).equals('lprcDst');
    check(api.parameters.first.typeIdentifier.baseType)
        .equals(BaseType.pointerTypeModifier);
    check(api.parameters.first.typeIdentifier.typeArg).isNotNull();
    check(api.parameters.first.typeIdentifier.typeArg!.name).endsWith('RECT');
  });

  test('DWORD typedefs like COLORREF have the correct param type', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('SetBkColor');
    check(api).isNotNull();
    final colorParam = api!.parameters.last;
    check(colorParam.name).equals('color');
    check(colorParam.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(colorParam.typeIdentifier.type?.name)
        .equals('Windows.Win32.Foundation.COLORREF');
    check(colorParam.typeIdentifier.type?.fields[0].typeIdentifier.baseType)
        .equals(BaseType.uint32Type);
  });

  test('DWORD typedefs like COLORREF have the correct return type', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('SetBkColor');
    check(api).isNotNull();
    final returnType = api!.returnType;
    check(returnType.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(returnType.typeIdentifier.type?.name)
        .equals('Windows.Win32.Foundation.COLORREF');
    check(returnType.typeIdentifier.type?.fields[0].typeIdentifier.baseType)
        .equals(BaseType.uint32Type);
  });

  test('HANDLE-style parameters have the correct type', () {
    final typeDef =
        win32Scope.findTypeDef('Windows.Win32.UI.Input.KeyboardAndMouse.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('UnregisterHotKey');
    check(api).isNotNull();
    final param = api!.parameters.first;
    check(param.name).endsWith('hWnd');
    check(param.typeIdentifier.baseType).equals(BaseType.valueTypeModifier);
    check(param.typeIdentifier.name).endsWith('HWND');
    check(param.typeIdentifier.typeArg).isNull();
  });

  test('LPHANDLE-style parameters have the correct type', () {
    final typeDef =
        win32Scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('CascadeWindows');
    check(api).isNotNull();
    final param = api!.parameters.last;
    check(param.name).endsWith('lpKids');
    check(param.typeIdentifier.baseType).equals(BaseType.pointerTypeModifier);
    check(param.typeIdentifier.name).isEmpty();
    check(param.typeIdentifier.typeArg).isNotNull();

    final arg = param.typeIdentifier.typeArg!;
    check(arg.baseType).equals(BaseType.valueTypeModifier);
    check(arg.name).endsWith('HWND');
    check(arg.typeArg).isNull();
  });

  test('Character parameters have the correct type', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.System.Console.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('FillConsoleOutputCharacterW');
    check(api).isNotNull();
    final param = api!.parameters[1];
    check(param.name).equals('cCharacter');
    check(param.typeIdentifier.baseType).equals(BaseType.charType);
  });

  test('UnregisterPowerSettingNotification has the correct parameter type', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.System.Power.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('UnregisterPowerSettingNotification');
    check(api).isNotNull();
    final param = api!.parameters.first;
    check(param.typeIdentifier.baseType).equals(BaseType.valueTypeModifier);
    check(param.typeIdentifier.name).endsWith('HPOWERNOTIFY');
  });

  test('GetActiveObject REFCLSID has the correct parameter type', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.System.Ole.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('GetActiveObject');
    check(api).isNotNull();
    final param = api!.parameters.first;
    check(param.name).equals('rclsid');
    check(param.typeIdentifier.baseType).equals(BaseType.pointerTypeModifier);
    check(param.typeIdentifier.typeArg!.name).endsWith('System.Guid');
    check(param.typeIdentifier.typeArg?.baseType)
        .equals(BaseType.valueTypeModifier);
  });

  test('APIs with empty parameters have an accurate return type', () {
    final typeDef =
        win32Scope.findTypeDef('Windows.Win32.System.DataExchange.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('CountClipboardFormats');
    check(api).isNotNull();
    final returnType = api!.returnType;
    check(returnType.typeIdentifier.baseType).equals(BaseType.int32Type);
  });

  test('Double pointer is interpreted correctly', () {
    final typeDef =
        win32Scope.findTypeDef('Windows.Win32.Security.Credentials.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('CredReadW');
    check(api).isNotNull();
    final param = api!.parameters.last;
    check(param.typeIdentifier.baseType).equals(BaseType.pointerTypeModifier);
    check(param.typeIdentifier.typeArg).isNotNull();
    check(param.typeIdentifier.typeArg?.baseType)
        .equals(BaseType.pointerTypeModifier);
    check(param.typeIdentifier.typeArg!.typeArg!.name).endsWith('CREDENTIALW');
  });

  test('HRESULT return values are generated correctly', () {
    final typeDef =
        win32Scope.findTypeDef('Windows.Win32.System.SystemInformation.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('GetIntegratedDisplaySize');
    check(api).isNotNull();
    final returnType = api!.returnType;
    check(returnType.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(returnType.typeIdentifier.name).endsWith('HRESULT');
  });

  test('IUnknown parameters are generated correctly', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.System.Com.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('CoSetProxyBlanket');
    check(api).isNotNull();
    final param = api!.parameters.first;
    check(param.typeIdentifier.baseType).equals(BaseType.classTypeModifier);
    check(param.typeIdentifier.name).endsWith('IUnknown');
  });

  test('Callback functions are generated correctly', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('EnumFontFamiliesExW');
    check(api).isNotNull();
    final param = api!.parameters[2]; // FONTENUMPROCW
    check(param.name).equals('lpProc');
    check(param.typeIdentifier.baseType).equals(BaseType.classTypeModifier);
    check(param.typeIdentifier.name).endsWith('FONTENUMPROCW');
    check(param.typeIdentifier.typeArg).isNull();
  });

  test('Callback functions are generated correctly 2', () {
    final typeDef =
        win32Scope.findTypeDef('Windows.Win32.System.Diagnostics.Debug.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('SymEnumSymbolsW');
    check(api).isNotNull();
    final param = api!.parameters[3]; // PSYM_ENUMERATESYMBOLS_CALLBACKW
    check(param.name).equals('EnumSymbolsCallback');
    check(param.typeIdentifier.baseType).equals(BaseType.classTypeModifier);
    check(param.typeIdentifier.name)
        .endsWith('PSYM_ENUMERATESYMBOLS_CALLBACKW');
    check(param.typeIdentifier.typeArg).isNull();
  });

  test('Constants are accessible from metadata', () {
    final typeDef =
        win32Scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis');
    check(typeDef).isNotNull();
    check(typeDef!.fields.length).isGreaterThan(100);
  });

  test('A given literal constant can be read', () {
    final typeDef =
        win32Scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis');
    check(typeDef).isNotNull();
    final wmPaint =
        typeDef!.fields.firstWhere((c) => c.name.endsWith('WM_PAINT'));
    check(wmPaint.value).equals(15); // winuser.h: #define WM_PAINT 0x000F
  });

  test('Naked structs are generated correctly', () {
    final typeDef =
        win32Scope.findTypeDef('Windows.Win32.System.Threading.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('InitializeProcThreadAttributeList');
    check(api).isNotNull();
    final param = api!.parameters.first;
    check(param.name).equals('lpAttributeList');
    check(param.typeIdentifier.baseType).equals(BaseType.valueTypeModifier);
    check(param.typeIdentifier.name).endsWith('LPPROC_THREAD_ATTRIBUTE_LIST');
    check(param.typeIdentifier.typeArg).isNull();
  });

  test('Enumerations present in Win32 metadata', () {
    check(win32Scope.enums.length).isGreaterThan(100);
  });

  test('Enumerations contain correct entries', () {
    final ropCode =
        win32Scope.enums.firstWhere((en) => en.name.endsWith('ROP_CODE'));
    check(ropCode.fields.length).equals(18);
  });

  test('A specific enumeration contains expected constants', () {
    final ropCode =
        win32Scope.enums.firstWhere((en) => en.name.endsWith('ROP_CODE'));
    check(ropCode.findField('SRCCOPY')?.value).equals(0x00CC0020);
  });

  test('Enumerations are typed appropriately in functions', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('CreateDIBitmap');
    check(api).isNotNull();
    final param = api!.parameters.last;
    check(param.name).equals('iUsage');
    check(param.typeIdentifier.type?.parent?.name).equals('System.Enum');
  });

  test('Pointers to enumerations are typed appropriately in functions', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.System.Pipes.Apis');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('GetNamedPipeInfo');
    check(api).isNotNull();
    final param = api!.parameters[1];
    check(param.name).equals('lpFlags');
    check(param.typeIdentifier.typeArg?.baseType)
        .equals(BaseType.valueTypeModifier);
    check(param.typeIdentifier.typeArg?.type?.parent?.name)
        .equals('System.Enum');
  });

  test('Get properties are appropriately marked', () {
    final typeDef = win32Scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork');
    check(typeDef).isNotNull();
    final api = typeDef!.findMethod('get_IsConnectedToInternet');
    check(api).isNotNull();
    check(api!.isGetProperty).isTrue();
  });

  test('Delegates are appropriately marked', () {
    final delegate =
        win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.MFENUMPROC');
    check(delegate).isNotNull();
    check(delegate!.isDelegate).isTrue();
  });

  test('Non-delegates are appropriately marked', () {
    final notADelegate =
        win32Scope.findTypeDef('Windows.Win32.System.SystemServices.Apis');
    check(notADelegate).isNotNull();
    check(notADelegate!.isDelegate).isFalse();
  });

  test('Delegates are appropriately exposed', () {
    final delegate =
        win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.MFENUMPROC');
    check(delegate).isNotNull();
    final api = delegate!.findMethod('Invoke');
    check(api).isNotNull();
    final param = api!.parameters.first;
    check(param.name).equals('hdc');
  });

  test('Scope contains an expected quantity of delegates', () {
    check(win32Scope.delegates.length).isGreaterThan(1000);
  });

  test('Packing instructions are available', () {
    final packedStruct =
        win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.BITMAPFILEHEADER');
    check(packedStruct).isNotNull();
    check(packedStruct!.classLayout.packingAlignment).equals(2);
    check(packedStruct.classLayout.minimumSize).equals(0);
  });
  test('Packing instructions are available 2', () {
    final packedStruct = win32Scope
        .findTypeDef('Windows.Win32.Devices.Bluetooth.BTH_QUERY_SERVICE');
    check(packedStruct).isNotNull();
    check(packedStruct!.classLayout.packingAlignment).equals(1);
    check(packedStruct.classLayout.minimumSize).equals(0);
  });

  test('Packing instructions are unavailable for an unpacked class', () {
    final packedStruct = win32Scope
        .findTypeDef('Windows.Win32.Devices.Bluetooth.BTH_RADIO_IN_RANGE');
    check(packedStruct).isNotNull();
    check(packedStruct!.classLayout.packingAlignment).isNull();
    check(packedStruct.classLayout.minimumSize).isNull();
  });

  test('No crash when calling GetClassLayout on an enum', () {
    final packedStruct =
        win32Scope.findTypeDef('Windows.Win32.UI.Shell.KNOWN_FOLDER_FLAG');
    check(packedStruct).isNotNull();
    check(packedStruct!.classLayout.packingAlignment).isNull();
    check(packedStruct.classLayout.minimumSize).isNull();
  });

  test('Attributes for an interface', () {
    final interface =
        win32Scope.findTypeDef('Windows.Win32.System.WinRT.IActivationFactory');
    check(interface).isNotNull();
    check(interface!.customAttributes.length).isGreaterOrEqual(2);
    check(interface.customAttributes.map((attr) => attr.name)).contains(
        'Windows.Win32.Foundation.Metadata.SupportedOSPlatformAttribute');

    final supportedOS = interface.attributeAsString(
        'Windows.Win32.Foundation.Metadata.SupportedOSPlatformAttribute');
    check(supportedOS).equals('windows8.0');
  });

  tearDownAll(MetadataStore.close);
}
