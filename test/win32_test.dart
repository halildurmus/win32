@TestOn('windows')

import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Scope modules contain expected DLLs', () {
    final scope = MetadataStore.getWin32Scope();
    check(scope.moduleRefs.map((module) => module.name))
      ..contains('KERNEL32.dll')
      ..contains('USER32.dll')
      ..contains('GDI32.dll')
      ..contains('d3d12.dll');
  });

  test('Scope modules contain expected user strings', () {
    final scope = MetadataStore.getWin32Scope();
    check(scope.userStrings.length).equals(0);
  });

  test('Can successfully load a typedef from the Win32 metadata', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    check(typedef).isNotNull();
    check(typedef!.methods).isNotEmpty();
  });

  test('Typedef is named correctly', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.UI.Shell.Apis')!;
    check(typedef.name).equals('Windows.Win32.UI.Shell.Apis');
    check(typedef.toString()).equals('Windows.Win32.UI.Shell.Apis');
  });

  test('Typedef equality is successful', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef1 = scope.findTypeDef('Windows.Win32.UI.Shell.Apis')!;
    final typedef2 = scope.findTypeDef('Windows.Win32.UI.Shell.Apis')!;
    final typedef3 = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;

    check(typedef1).equals(typedef2);
    check(typedef1).not(it()..equals(typedef3));
  });

  test('Searching for a non-existent typedef returns null', () {
    final scope = MetadataStore.getWin32Scope();
    const fakeTypeDef = 'Windows.Flutter.Apis'; // for now :)
    final typedef = scope.findTypeDef(fakeTypeDef);
    check(typedef).isNull();
  });

  test('Can find a known API within the given scope', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;

    final api = typedef.findMethod('AddFontResourceW');
    check(api).isNotNull();
    check(api!.parameters).isNotEmpty();
  });

  test('Searching for a non-existent API call returns null', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;

    final api = typedef.findMethod('AddFlutterWidget');
    check(api).isNull();
  });

  test('isResolvedToken gives correct result for a real token', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;

    final api = typedef.findMethod('AddFontResourceW')!;

    check(api.isResolvedToken).isTrue();
  });

  test('isResolvedToken gives correct result for a pseudo-token', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('AddFontResourceW')!;
    final returnType = api.returnType;

    check(returnType.isResolvedToken).isFalse();
  });

  test('No attributes for a pseudo-token', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('AddFontResourceW')!;
    final returnType = api.returnType;

    check(returnType.customAttributes).isEmpty();
  });

  test('Functions can correctly return an int type', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('AddFontResourceW')!;
    final returnType = api.returnType;

    check(returnType.typeIdentifier.baseType).equals(BaseType.int32Type);
    check(returnType.typeIdentifier.typeArg).isNull();
  });

  test('LPWSTR parameters are handled correctly', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('AddFontResourceW')!;

    check(api.parameters.length).equals(1);
    final param = api.parameters.first;

    check(param.name).equals('param0');
    check(param.sequence).equals(1);
    check(param.typeIdentifier.name).endsWith('PWSTR');

    check(param.typeIdentifier.baseType).equals(BaseType.valueTypeModifier);
    check(param.typeIdentifier.typeArg).isNull();
  });

  test('Signature blob is correct', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('AddFontResourceW')!;
    check(api.signatureBlob.sublist(0, 4))
        .deepEquals(Uint8List.fromList([0x00, 0x01, 0x08, 0x11]));
  });

  test('Unicode string params are correctly marked', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('AddFontResourceW')!;

    check(api.parameters.length).equals(1);
    final param = api.parameters.first;

    check(param.name).equals('param0');
    check(param.typeIdentifier.name).endsWith('PWSTR');
  });

  test('ANSI string params are correctly marked', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('AddFontResourceA')!;

    check(api.parameters.length).equals(1);
    final param = api.parameters.first;

    check(param.name).equals('param0');
    check(param.typeIdentifier.name).endsWith('PSTR');
  });

  test('Returned structs like LPRECT have correct param width', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('UnionRect')!;

    check(api.parameters.length).equals(3);

    check(api.parameters[0].name).equals('lprcDst');
    check(api.parameters[1].name).equals('lprcSrc1');
    check(api.parameters[2].name).equals('lprcSrc2');

    check(api.parameters[0].typeIdentifier.baseType)
        .equals(BaseType.pointerTypeModifier);
    check(api.parameters[1].typeIdentifier.baseType)
        .equals(BaseType.pointerTypeModifier);
    check(api.parameters[2].typeIdentifier.baseType)
        .equals(BaseType.pointerTypeModifier);
  });

  test('Structs like RECT have the correct type args', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('UnionRect')!;

    check(api.parameters.first.name).equals('lprcDst');
    check(api.parameters.first.typeIdentifier.baseType)
        .equals(BaseType.pointerTypeModifier);

    check(api.parameters.first.typeIdentifier.typeArg).isNotNull();
    check(api.parameters.first.typeIdentifier.typeArg!.name).endsWith('RECT');
  });

  test('DWORD typedefs like COLORREF have the correct param type', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('SetBkColor')!;
    final colorParam = api.parameters.last;

    check(colorParam.name).equals('color');
    check(colorParam.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(colorParam.typeIdentifier.type?.name)
        .equals('Windows.Win32.Foundation.COLORREF');
    check(colorParam.typeIdentifier.type?.fields[0].typeIdentifier.baseType)
        .equals(BaseType.uint32Type);
  });

  test('DWORD typedefs like COLORREF have the correct return type', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('SetBkColor')!;
    final returnType = api.returnType;

    check(returnType.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(returnType.typeIdentifier.type?.name)
        .equals('Windows.Win32.Foundation.COLORREF');
    check(returnType.typeIdentifier.type?.fields[0].typeIdentifier.baseType)
        .equals(BaseType.uint32Type);
  });

  test('HANDLE-style parameters have the correct type', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef =
        scope.findTypeDef('Windows.Win32.UI.Input.KeyboardAndMouse.Apis')!;
    final api = typedef.findMethod('UnregisterHotKey')!;
    final param = api.parameters.first;

    check(param.name).endsWith('hWnd');
    check(param.typeIdentifier.baseType).equals(BaseType.valueTypeModifier);
    check(param.typeIdentifier.name).endsWith('HWND');
    check(param.typeIdentifier.typeArg).isNull();
  });

  test('LPHANDLE-style parameters have the correct type', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef =
        scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis')!;
    final api = typedef.findMethod('CascadeWindows')!;
    final param = api.parameters.last;

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
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.System.Console.Apis')!;
    final api = typedef.findMethod('FillConsoleOutputCharacterW')!;
    final param = api.parameters[1];

    check(param.name).equals('cCharacter');
    check(param.typeIdentifier.baseType).equals(BaseType.charType);
  });

  test('UnregisterPowerSettingNotification has the correct parameter type', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.System.Power.Apis')!;
    final api = typedef.findMethod('UnregisterPowerSettingNotification')!;
    final param = api.parameters.first;

    check(param.typeIdentifier.baseType).equals(BaseType.valueTypeModifier);
    check(param.typeIdentifier.name).endsWith('HPOWERNOTIFY');
  });

  test('GetActiveObject REFCLSID has the correct parameter type', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.System.Ole.Apis')!;
    final api = typedef.findMethod('GetActiveObject')!;
    final param = api.parameters.first;

    check(param.name).equals('rclsid');
    check(param.typeIdentifier.baseType).equals(BaseType.pointerTypeModifier);
    check(param.typeIdentifier.typeArg!.name).endsWith('System.Guid');
    check(param.typeIdentifier.typeArg?.baseType)
        .equals(BaseType.valueTypeModifier);
  });

  test('APIs with empty parameters have an accurate return type', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef =
        scope.findTypeDef('Windows.Win32.System.DataExchange.Apis')!;
    final api = typedef.findMethod('CountClipboardFormats')!;
    final returnType = api.returnType;

    check(returnType.typeIdentifier.baseType).equals(BaseType.int32Type);
  });

  test('Double pointer is interpreted correctly', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef =
        scope.findTypeDef('Windows.Win32.Security.Credentials.Apis')!;
    final api = typedef.findMethod('CredReadW')!;
    final param = api.parameters.last;

    check(param.typeIdentifier.baseType).equals(BaseType.pointerTypeModifier);
    check(param.typeIdentifier.typeArg).isNotNull();
    check(param.typeIdentifier.typeArg?.baseType)
        .equals(BaseType.pointerTypeModifier);
    check(param.typeIdentifier.typeArg!.typeArg!.name).endsWith('CREDENTIALW');
  });

  test('HRESULT return values are generated correctly', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef =
        scope.findTypeDef('Windows.Win32.System.SystemInformation.Apis')!;
    final api = typedef.findMethod('GetIntegratedDisplaySize')!;
    final returnType = api.returnType;

    check(returnType.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(returnType.typeIdentifier.name).endsWith('HRESULT');
  });

  test('IUnknown parameters are generated correctly', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.System.Com.Apis')!;
    final api = typedef.findMethod('CoSetProxyBlanket')!;
    final param = api.parameters.first;

    check(param.typeIdentifier.baseType).equals(BaseType.classTypeModifier);
    check(param.typeIdentifier.name).endsWith('IUnknown');
  });

  test('Callback functions are generated correctly', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('EnumFontFamiliesExW')!;
    final param = api.parameters[2]; // FONTENUMPROCW

    check(param.name).equals('lpProc');
    check(param.typeIdentifier.baseType).equals(BaseType.classTypeModifier);
    check(param.typeIdentifier.name).endsWith('FONTENUMPROCW');
    check(param.typeIdentifier.typeArg).isNull();
  });

  test('Callback functions are generated correctly 2', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef =
        scope.findTypeDef('Windows.Win32.System.Diagnostics.Debug.Apis')!;
    final api = typedef.findMethod('SymEnumSymbolsW')!;
    final param = api.parameters[3]; // PSYM_ENUMERATESYMBOLS_CALLBACKW

    check(param.name).equals('EnumSymbolsCallback');
    check(param.typeIdentifier.baseType).equals(BaseType.classTypeModifier);
    check(param.typeIdentifier.name)
        .endsWith('PSYM_ENUMERATESYMBOLS_CALLBACKW');
    check(param.typeIdentifier.typeArg).isNull();
  });

  test('Constants are accessible from metadata', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef =
        scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis')!;
    final constants = typedef.fields;
    check(constants.length).isGreaterThan(100);
  });

  test('A given literal constant can be read', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef =
        scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis')!;
    final wmPaint =
        typedef.fields.firstWhere((c) => c.name.endsWith('WM_PAINT'));
    check(wmPaint.value).equals(15); // winuser.h: #define WM_PAINT 0x000F
  });

  test('Naked structs are generated correctly', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.System.Threading.Apis')!;
    final api = typedef.findMethod('InitializeProcThreadAttributeList')!;
    final param = api.parameters.first;

    check(param.name).equals('lpAttributeList');
    check(param.typeIdentifier.baseType).equals(BaseType.valueTypeModifier);
    check(param.typeIdentifier.name).endsWith('LPPROC_THREAD_ATTRIBUTE_LIST');
    check(param.typeIdentifier.typeArg).isNull();
  });

  test('Enumerations present in Win32 metadata', () {
    final scope = MetadataStore.getWin32Scope();
    final enums = scope.enums;

    check(enums.length).isGreaterThan(100);
  });

  test('Enumerations contain correct entries', () {
    final scope = MetadataStore.getWin32Scope();
    final ropCode =
        scope.enums.firstWhere((en) => en.name.endsWith('ROP_CODE'));

    check(ropCode.fields.length).equals(18);
  });

  test('A specific enumeration contains expected constants', () {
    final scope = MetadataStore.getWin32Scope();
    final ropCode =
        scope.enums.firstWhere((en) => en.name.endsWith('ROP_CODE'));

    check(ropCode.findField('SRCCOPY')?.value).equals(0x00CC0020);
  });

  test('Enumerations are typed appropriately in functions', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('CreateDIBitmap')!;
    final param = api.parameters.last;

    check(param.name).equals('iUsage');
    check(param.typeIdentifier.type?.parent?.name).equals('System.Enum');
  });

  test('Pointers to enumerations are typed appropriately in functions', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.System.Pipes.Apis')!;
    final api = typedef.findMethod('GetNamedPipeInfo')!;
    final param = api.parameters[1];

    check(param.name).equals('lpFlags');
    check(param.typeIdentifier.typeArg?.baseType)
        .equals(BaseType.valueTypeModifier);
    check(param.typeIdentifier.typeArg?.type?.parent?.name)
        .equals('System.Enum');
  });

  test('Get properties are appropriately marked', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final api = typedef.findMethod('get_IsConnectedToInternet');
    check(api).isNotNull();
    check(api!.isGetProperty).isTrue();
  });

  test('Delegates are appropriately marked', () {
    final scope = MetadataStore.getWin32Scope();
    final delegate =
        scope.findTypeDef('Windows.Win32.Graphics.Gdi.MFENUMPROC')!;
    check(delegate.isDelegate).isTrue();
  });

  test('Non-delegates are appropriately marked', () {
    final scope = MetadataStore.getWin32Scope();
    final notADelegate =
        scope.findTypeDef('Windows.Win32.System.SystemServices.Apis')!;
    check(notADelegate.isDelegate).isFalse();
  });

  test('Delegates are appropriately exposed', () {
    final scope = MetadataStore.getWin32Scope();
    final delegate =
        scope.findTypeDef('Windows.Win32.Graphics.Gdi.MFENUMPROC')!;

    final api = delegate.findMethod('Invoke')!;
    final param = api.parameters.first;

    check(param.name).equals('hdc');
  });

  test('Scope contains an expected quantity of delegates', () {
    final scope = MetadataStore.getWin32Scope();
    check(scope.delegates.length).isGreaterThan(1000);
  });

  test('Packing instructions are available', () {
    final scope = MetadataStore.getWin32Scope();
    final packedStruct =
        scope.findTypeDef('Windows.Win32.Graphics.Gdi.BITMAPFILEHEADER')!;
    check(packedStruct.classLayout.packingAlignment).equals(2);
    check(packedStruct.classLayout.minimumSize).equals(0);
  });
  test('Packing instructions are available 2', () {
    final scope = MetadataStore.getWin32Scope();
    final packedStruct =
        scope.findTypeDef('Windows.Win32.Devices.Bluetooth.BTH_QUERY_SERVICE')!;
    check(packedStruct.classLayout.packingAlignment).equals(1);
    check(packedStruct.classLayout.minimumSize).equals(0);
  });

  test('Packing instructions are unavailable for an unpacked class', () {
    final scope = MetadataStore.getWin32Scope();
    final packedStruct = scope
        .findTypeDef('Windows.Win32.Devices.Bluetooth.BTH_RADIO_IN_RANGE')!;
    check(packedStruct.classLayout.packingAlignment).isNull();
    check(packedStruct.classLayout.minimumSize).isNull();
  });

  test('No crash when calling GetClassLayout on an enum', () {
    final scope = MetadataStore.getWin32Scope();
    final packedStruct =
        scope.findTypeDef('Windows.Win32.UI.Shell.KNOWN_FOLDER_FLAG')!;
    check(packedStruct.classLayout.packingAlignment).isNull();
    check(packedStruct.classLayout.minimumSize).isNull();
  });

  test('Attributes for an interface', () {
    final scope = MetadataStore.getWin32Scope();
    final interface =
        scope.findTypeDef('Windows.Win32.System.WinRT.IActivationFactory')!;
    check(interface.customAttributes.length).isGreaterOrEqual(2);
    check(interface.customAttributes.map((attr) => attr.name)).contains(
        'Windows.Win32.Foundation.Metadata.SupportedOSPlatformAttribute');

    final supportedOS = interface.attributeAsString(
        'Windows.Win32.Foundation.Metadata.SupportedOSPlatformAttribute');
    check(supportedOS).equals('windows8.0');
  });
}
