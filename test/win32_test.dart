@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Scope modules contain expected DLLs', () {
    final scope = MetadataStore.getWin32Scope();
    expect(scope.moduleRefs.map((module) => module.name),
        containsAll(<String>['KERNEL32', 'USER32', 'GDI32', 'd3d12']));
  });

  test('Scope modules contain expected user strings', () {
    final scope = MetadataStore.getWin32Scope();
    expect(scope.userStrings.length, equals(0));
  });

  test('Can successfully load a typedef from the Win32 metadata', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    expect(typedef, isNotNull);
    expect(typedef!.methods.length, isNonZero);
  });

  test('Typedef is named correctly', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.UI.Shell.Apis')!;
    expect(typedef.name, equals('Windows.Win32.UI.Shell.Apis'));
    expect(typedef.toString(), equals('Windows.Win32.UI.Shell.Apis'));
  });

  test('Typedef equality is successful', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef1 = scope.findTypeDef('Windows.Win32.UI.Shell.Apis')!;
    final typedef2 = scope.findTypeDef('Windows.Win32.UI.Shell.Apis');
    final typedef3 = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;

    expect(typedef1, equals(typedef2));
    expect(typedef1, isNot(equals(typedef3)));
  });

  test('Searching for a non-existent typedef returns null', () {
    final scope = MetadataStore.getWin32Scope();
    const fakeTypeDef = 'Windows.Flutter.Apis'; // for now :)
    final typedef = scope.findTypeDef(fakeTypeDef);
    expect(typedef, isNull);
  });

  test('Can find a known API within the given scope', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;

    final api = typedef.findMethod('AddFontResourceW');
    expect(api, isNotNull);
    expect(api!.parameters.length, isNonZero);
  });

  test('Searching for a non-existent API call returns null', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;

    final api = typedef.findMethod('AddFlutterWidget');
    expect(api, isNull);
  });

  test('Can detect the module in which an API is found', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;

    final api = typedef.findMethod('AddFontResourceW')!;

    expect(api.module.name, equalsIgnoringCase('gdi32'));
  });

  test('isResolvedToken gives correct result for a real token', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;

    final api = typedef.findMethod('AddFontResourceW')!;

    expect(api.isResolvedToken, isTrue);
  });

  test('isResolvedToken gives correct result for a pseudo-token', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('AddFontResourceW')!;
    final returnType = api.returnType;

    expect(returnType.isResolvedToken, isFalse);
  });

  test('No attributes for a pseudo-token', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('AddFontResourceW')!;
    final returnType = api.returnType;

    expect(returnType.customAttributes.length, isZero);
  });

  test('Functions can correctly return an int type', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('AddFontResourceW')!;
    final returnType = api.returnType;

    expect(returnType.typeIdentifier.baseType, equals(BaseType.Int32));
    expect(returnType.typeIdentifier.typeArg, isNull);
  });

  test('LPWSTR parameters are handled correctly', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('AddFontResourceW')!;

    expect(api.parameters.length, equals(1));
    final param = api.parameters.first;

    expect(param.name, equals('param0'));
    expect(param.sequence, equals(1));
    expect(param.typeIdentifier.name, endsWith('PWSTR'));

    expect(param.typeIdentifier.baseType, equals(BaseType.ValueTypeModifier));
    expect(param.typeIdentifier.typeArg, isNull);
  });

  test('Signature blob is correct', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('AddFontResourceW')!;
    expect(api.signatureBlob.sublist(0, 4), equals([0x00, 0x01, 0x08, 0x11]));
  });

  test('Unicode string params are correctly marked', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('AddFontResourceW')!;

    expect(api.parameters.length, equals(1));
    final param = api.parameters.first;

    expect(param.name, equals('param0'));
    expect(param.typeIdentifier.name, endsWith('PWSTR'));
  });

  test('ANSI string params are correctly marked', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('AddFontResourceA')!;

    expect(api.parameters.length, equals(1));
    final param = api.parameters.first;

    expect(param.name, equals('param0'));
    expect(param.typeIdentifier.name, endsWith('PSTR'));
  });

  test('Returned structs like LPRECT have correct param width', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('UnionRect')!;

    expect(api.parameters.length, equals(3));

    expect(api.parameters[0].name, equals('lprcDst'));
    expect(api.parameters[1].name, equals('lprcSrc1'));
    expect(api.parameters[2].name, equals('lprcSrc2'));

    expect(api.parameters[0].typeIdentifier.baseType,
        equals(BaseType.PointerTypeModifier));
    expect(api.parameters[1].typeIdentifier.baseType,
        equals(BaseType.PointerTypeModifier));
    expect(api.parameters[2].typeIdentifier.baseType,
        equals(BaseType.PointerTypeModifier));
  });

  test('Structs like RECT have the correct type args', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('UnionRect')!;

    expect(api.parameters.first.name, equals('lprcDst'));
    expect(api.parameters.first.typeIdentifier.baseType,
        equals(BaseType.PointerTypeModifier));

    expect(api.parameters.first.typeIdentifier.typeArg, isNotNull);
    expect(api.parameters.first.typeIdentifier.typeArg?.name, endsWith('RECT'));
  });

  test('DWORD typedefs like COLORREF have the correct param type', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('SetBkColor')!;
    final colorParam = api.parameters.last;

    expect(colorParam.name, equals('color'));
    expect(colorParam.typeIdentifier.baseType, equals(BaseType.Uint32));
  });

  test('DWORD typedefs like COLORREF have the correct return type', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('SetBkColor')!;
    final returnType = api.returnType;

    expect(returnType.typeIdentifier.baseType, equals(BaseType.Uint32));
  });

  test('HANDLE-style parameters have the correct type', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef =
        scope.findTypeDef('Windows.Win32.UI.Input.KeyboardAndMouse.Apis')!;
    final api = typedef.findMethod('UnregisterHotKey')!;
    final param = api.parameters.first;

    expect(param.name, endsWith('hWnd'));
    expect(param.typeIdentifier.baseType, equals(BaseType.ValueTypeModifier));
    expect(param.typeIdentifier.name, endsWith('HWND'));
    expect(param.typeIdentifier.typeArg, isNull);
  });

  test('LPHANDLE-style parameters have the correct type', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef =
        scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis')!;
    final api = typedef.findMethod('CascadeWindows')!;
    final param = api.parameters.last;

    expect(param.name, endsWith('lpKids'));
    expect(param.typeIdentifier.baseType, equals(BaseType.PointerTypeModifier));
    expect(param.typeIdentifier.name, isEmpty);
    expect(param.typeIdentifier.typeArg, isNotNull);

    final arg = param.typeIdentifier.typeArg!;
    expect(arg.baseType, equals(BaseType.ValueTypeModifier));
    expect(arg.name, endsWith('HWND'));
    expect(arg.typeArg, isNull);
  });

  test('Character parameters have the correct type', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.System.Console.Apis')!;
    final api = typedef.findMethod('FillConsoleOutputCharacterW')!;
    final param = api.parameters[1];

    expect(param.name, equals('cCharacter'));
    expect(param.typeIdentifier.baseType, equals(BaseType.Char));
  });

  test('UnregisterPowerSettingNotification has the correct parameter type', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.System.Power.Apis')!;
    final api = typedef.findMethod('UnregisterPowerSettingNotification')!;
    final param = api.parameters.first;

    expect(param.typeIdentifier.baseType, equals(BaseType.ValueTypeModifier));
    expect(param.typeIdentifier.name, endsWith('HPOWERNOTIFY'));
  });

  test('GetActiveObject REFCLSID has the correct parameter type', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.System.Ole.Apis')!;
    final api = typedef.findMethod('GetActiveObject')!;
    final param = api.parameters.first;

    expect(param.name, equals('rclsid'));
    expect(param.typeIdentifier.baseType, equals(BaseType.PointerTypeModifier));
    expect(param.typeIdentifier.typeArg?.name, endsWith('System.Guid'));
    expect(param.typeIdentifier.typeArg?.baseType,
        equals(BaseType.ValueTypeModifier));
  });

  test('APIs with empty parameters have an accurate return type', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef =
        scope.findTypeDef('Windows.Win32.System.DataExchange.Apis')!;
    final api = typedef.findMethod('CountClipboardFormats')!;
    final returnType = api.returnType;

    expect(returnType.typeIdentifier.baseType, equals(BaseType.Int32));
  });

  test('Double pointer is interpreted correctly', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef =
        scope.findTypeDef('Windows.Win32.Security.Credentials.Apis')!;
    final api = typedef.findMethod('CredReadW')!;
    final param = api.parameters.last;

    expect(param.typeIdentifier.baseType, equals(BaseType.PointerTypeModifier));
    expect(param.typeIdentifier.typeArg, isNotNull);
    expect(param.typeIdentifier.typeArg?.baseType,
        equals(BaseType.PointerTypeModifier));
    expect(
        param.typeIdentifier.typeArg?.typeArg?.name, endsWith('CREDENTIALW'));
  });

  test('HRESULT return values are generated correctly', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef =
        scope.findTypeDef('Windows.Win32.System.SystemInformation.Apis')!;
    final api = typedef.findMethod('GetIntegratedDisplaySize')!;
    final returnType = api.returnType;

    expect(
        returnType.typeIdentifier.baseType, equals(BaseType.ValueTypeModifier));
    expect(returnType.typeIdentifier.name, endsWith('HRESULT'));
  });

  test('IUnknown parameters are generated correctly', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.System.Com.Apis')!;
    final api = typedef.findMethod('CoSetProxyBlanket')!;
    final param = api.parameters.first;

    expect(param.typeIdentifier.baseType, equals(BaseType.ClassTypeModifier));
    expect(param.typeIdentifier.name, endsWith('IUnknown'));
  });

  test('Callback functions are generated correctly', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('EnumFontFamiliesExW')!;
    final param = api.parameters[2]; // FONTENUMPROCW

    expect(param.name, equals('lpProc'));
    expect(param.typeIdentifier.baseType, equals(BaseType.ClassTypeModifier));
    expect(param.typeIdentifier.name, endsWith('FONTENUMPROCW'));
    expect(param.typeIdentifier.typeArg, isNull);
  });

  test('Callback functions are generated correctly 2', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef =
        scope.findTypeDef('Windows.Win32.System.Diagnostics.Debug.Apis')!;
    final api = typedef.findMethod('SymEnumSymbolsW')!;
    final param = api.parameters[3]; // PSYM_ENUMERATESYMBOLS_CALLBACKW

    expect(param.name, equals('EnumSymbolsCallback'));
    expect(param.typeIdentifier.baseType, equals(BaseType.ClassTypeModifier));
    expect(
        param.typeIdentifier.name, endsWith('PSYM_ENUMERATESYMBOLS_CALLBACKW'));
    expect(param.typeIdentifier.typeArg, isNull);
  });

  test('Constants are accessible from metadata', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef =
        scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis')!;
    final constants = typedef.fields;
    expect(constants.length, greaterThan(100));
  });

  test('A given literal constant can be read', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef =
        scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis')!;
    final wmPaint =
        typedef.fields.firstWhere((c) => c.name.endsWith('WM_PAINT'));
    expect(wmPaint.value, equals(15)); // winuser.h: #define WM_PAINT 0x000F
  });

  test('Naked structs are generated correctly', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.System.Threading.Apis')!;
    final api = typedef.findMethod('InitializeProcThreadAttributeList')!;
    final param = api.parameters.first;

    expect(param.name, equals('lpAttributeList'));
    expect(param.typeIdentifier.baseType, equals(BaseType.ValueTypeModifier));
    expect(param.typeIdentifier.name, endsWith('LPPROC_THREAD_ATTRIBUTE_LIST'));
    expect(param.typeIdentifier.typeArg, isNull);
  });

  test('Enumerations present in Win32 metadata', () {
    final scope = MetadataStore.getWin32Scope();
    final enums = scope.enums;

    expect(enums.length, greaterThan(100));
  });

  test('Enumerations contain correct entries', () {
    final scope = MetadataStore.getWin32Scope();
    final ropCode =
        scope.enums.firstWhere((en) => en.name.endsWith('ROP_CODE'));

    expect(ropCode.fields.length, equals(18));
  });

  test('A specific enumeration contains expected constants', () {
    final scope = MetadataStore.getWin32Scope();
    final ropCode =
        scope.enums.firstWhere((en) => en.name.endsWith('ROP_CODE'));

    expect(ropCode.findField('SRCCOPY')?.value, equals(0x00CC0020));
  });

  test('Enumerations are typed appropriately in functions', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('CreateDIBitmap')!;
    final param = api.parameters.last;

    expect(param.name, equals('iUsage'));
    expect(param.typeIdentifier.type?.parent?.name, equals('System.Enum'));
  });

  test('Pointers to enumerations are typed appropriately in functions', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.System.Pipes.Apis')!;
    final api = typedef.findMethod('GetNamedPipeInfo')!;
    final param = api.parameters[1];

    expect(param.name, equals('lpFlags'));
    expect(param.typeIdentifier.typeArg?.baseType,
        equals(BaseType.ValueTypeModifier));
    expect(param.typeIdentifier.typeArg?.type?.parent?.name,
        equals('System.Enum'));
  });

  test('Get properties are appropriately marked', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope
        .findTypeDef('Windows.Win32.Networking.NetworkListManager.INetwork')!;
    final api = typedef.findMethod('get_IsConnectedToInternet');
    expect(api?.isGetProperty, isTrue);
  });

  test('Delegates are appropriately marked', () {
    final scope = MetadataStore.getWin32Scope();
    final delegate =
        scope.findTypeDef('Windows.Win32.Graphics.Gdi.MFENUMPROC')!;
    expect(delegate.isDelegate, isTrue);
  });

  test('Non-delegates are appropriately marked', () {
    final scope = MetadataStore.getWin32Scope();
    final notADelegate =
        scope.findTypeDef('Windows.Win32.System.SystemServices.Apis')!;
    expect(notADelegate.isDelegate, isFalse);
  });

  test('Delegates are appropriately exposed', () {
    final scope = MetadataStore.getWin32Scope();
    final delegate =
        scope.findTypeDef('Windows.Win32.Graphics.Gdi.MFENUMPROC')!;

    final api = delegate.findMethod('Invoke')!;
    final param = api.parameters.first;

    expect(param.name, equals('hdc'));
  });

  test('Scope contains an expected quantity of delegates', () {
    final scope = MetadataStore.getWin32Scope();
    expect(scope.delegates.length, greaterThan(1000));
  });

  test('Packing instructions are available', () {
    final scope = MetadataStore.getWin32Scope();
    final packedStruct =
        scope.findTypeDef('Windows.Win32.Graphics.Gdi.BITMAPFILEHEADER')!;
    expect(packedStruct.classLayout.packingAlignment, equals(2));
    expect(packedStruct.classLayout.minimumSize, isZero);
  });
  test('Packing instructions are available 2', () {
    final scope = MetadataStore.getWin32Scope();
    final packedStruct =
        scope.findTypeDef('Windows.Win32.Devices.Bluetooth.BTH_QUERY_SERVICE')!;
    expect(packedStruct.classLayout.packingAlignment, equals(1));
    expect(packedStruct.classLayout.minimumSize, isZero);
  });

  test('Packing instructions are unavailable for an unpacked class', () {
    final scope = MetadataStore.getWin32Scope();
    final packedStruct = scope
        .findTypeDef('Windows.Win32.Devices.Bluetooth.BTH_RADIO_IN_RANGE')!;
    expect(packedStruct.classLayout.packingAlignment, isNull);
    expect(packedStruct.classLayout.minimumSize, isNull);
  });

  test('No crash when calling GetClassLayout on an enum', () {
    final scope = MetadataStore.getWin32Scope();
    final packedStruct =
        scope.findTypeDef('Windows.Win32.UI.Shell.KNOWN_FOLDER_FLAG')!;
    expect(packedStruct.classLayout.packingAlignment, isNull);
    expect(packedStruct.classLayout.minimumSize, isNull);
  });

  test('Attributes for an interface', () {
    final scope = MetadataStore.getWin32Scope();
    final interface =
        scope.findTypeDef('Windows.Win32.System.WinRT.IActivationFactory')!;
    expect(interface.customAttributes.length, equals(2));
    expect(interface.customAttributes.map((attr) => attr.name),
        contains('Windows.Win32.Interop.SupportedOSPlatformAttribute'));

    final supportedOS = interface.attributeAsString(
        'Windows.Win32.Interop.SupportedOSPlatformAttribute');
    expect(supportedOS, equals('windows8.0'));
  });
}
