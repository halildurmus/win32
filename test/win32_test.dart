@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  final scope = MetadataStore.getWin32Scope();
  test('Scope name is as expected', () {
    expect(scope.name, equals('Windows.Win32.winmd'));
  });

  test('Scope version string returns expected result', () {
    expect(scope.versionNumber, equals('v4.0.30319'));
  });

  test('Scope toString() is as expected', () {
    expect(scope.toString(), equals('Scope: Windows.Win32.winmd'));
  });

  test('Scope modules contain expected DLLs', () {
    expect(
        scope.modules.map((module) => module.name),
        containsAll(
            <String>['KERNEL32', 'USER32', 'GDI32', 'd3d12', 'netutils']));
  });

  test('Scope modules contain expected user strings', () {
    expect(scope.userStrings.length, equals(0));
  });

  test('Can successfully load a typedef from the Win32 metadata', () {
    final typedef = scope.findTypeDef('Windows.Win32.Gdi.Apis');
    expect(typedef, isNotNull);
    expect(typedef!.methods.length, isNonZero);
  });

  test('Typedef is named correctly', () {
    final typedef = scope.findTypeDef('Windows.Win32.Shell.Apis')!;
    expect(typedef.typeName, equals('Windows.Win32.Shell.Apis'));
    expect(typedef.toString(), equals('TypeDef: Windows.Win32.Shell.Apis'));
  });

  test('Typedef equality is successful', () {
    final typedef1 = scope.findTypeDef('Windows.Win32.Shell.Apis')!;
    final typedef2 = scope.findTypeDef('Windows.Win32.Shell.Apis');
    final typedef3 = scope.findTypeDef('Windows.Win32.Gdi.Apis')!;

    expect(typedef1, equals(typedef2));
    expect(typedef1, isNot(equals(typedef3)));
  });

  test('Searching for a non-existent typedef returns null', () {
    const fakeTypeDef = 'Windows.Flutter.Apis'; // for now :)
    final typedef = scope.findTypeDef(fakeTypeDef);
    expect(typedef, isNull);
  });

  test('Can find a known API within the given scope', () {
    final typedef = scope.findTypeDef('Windows.Win32.Gdi.Apis')!;

    final api = typedef.findMethod('AddFontResourceW');
    expect(api, isNotNull);
    expect(api!.parameters.length, isNonZero);
  });

  test('Searching for a non-existent API call returns null', () {
    final typedef = scope.findTypeDef('Windows.Win32.Gdi.Apis')!;

    final api = typedef.findMethod('AddFlutterWidget');
    expect(api, isNull);
  });

  test('Can detect the module in which an API is found', () {
    final typedef = scope.findTypeDef('Windows.Win32.Gdi.Apis')!;

    final api = typedef.findMethod('AddFontResourceW')!;

    expect(api.module.name, equalsIgnoringCase('gdi32'));
  });

  test('isValid gives correct result for a real token', () {
    final typedef = scope.findTypeDef('Windows.Win32.Gdi.Apis')!;

    final api = typedef.findMethod('AddFontResourceW')!;

    expect(api.isValidToken, isTrue);
  });

  test('isValid gives correct result for a pseudo-token', () {
    final typedef = scope.findTypeDef('Windows.Win32.Gdi.Apis')!;
    final api = typedef.findMethod('AddFontResourceW')!;
    final returnType = api.returnType;

    expect(returnType.isValidToken, isFalse);
  });

  test('No attributes for a pseudo-token', () {
    final typedef = scope.findTypeDef('Windows.Win32.Gdi.Apis')!;
    final api = typedef.findMethod('AddFontResourceW')!;
    final returnType = api.returnType;

    expect(returnType.customAttributes.length, isZero);
  });

  test('Functions can correctly return an int type', () {
    final typedef = scope.findTypeDef('Windows.Win32.Gdi.Apis')!;
    final api = typedef.findMethod('AddFontResourceW')!;
    final returnType = api.returnType;

    expect(returnType.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_I4));
    expect(returnType.typeIdentifier.typeArg, isNull);
  });

  test('LPWSTR parameters are handled correctly', () {
    final typedef = scope.findTypeDef('Windows.Win32.Gdi.Apis')!;
    final api = typedef.findMethod('AddFontResourceW')!;

    expect(api.parameters.length, equals(1));
    final param = api.parameters.first;

    expect(param.name, equals('param0'));
    expect(param.sequence, equals(1));
    expect(param.typeIdentifier.name, endsWith('PWSTR'));

    expect(param.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
    expect(param.typeIdentifier.typeArg, isNull);
  });

  test('Signature blob is correct', () {
    final typedef = scope.findTypeDef('Windows.Win32.Gdi.Apis')!;
    final api = typedef.findMethod('AddFontResourceW')!;
    expect(api.signatureBlob.sublist(0, 4), equals([0x00, 0x01, 0x08, 0x11]));
  });

  test('Unicode string params are correctly marked', () {
    final typedef = scope.findTypeDef('Windows.Win32.Gdi.Apis')!;
    final api = typedef.findMethod('AddFontResourceW')!;

    expect(api.parameters.length, equals(1));
    final param = api.parameters.first;

    expect(param.name, equals('param0'));
    expect(param.typeIdentifier.name, endsWith('PWSTR'));
  });

  test('ANSI string params are correctly marked', () {
    final typedef = scope.findTypeDef('Windows.Win32.Gdi.Apis')!;
    final api = typedef.findMethod('AddFontResourceA')!;

    expect(api.parameters.length, equals(1));
    final param = api.parameters.first;

    expect(param.name, equals('param0'));
    expect(param.typeIdentifier.name, endsWith('PSTR'));
  });

  test('Returned structs like LPRECT have correct param width', () {
    final typedef = scope.findTypeDef('Windows.Win32.Gdi.Apis')!;
    final api = typedef.findMethod('UnionRect')!;

    expect(api.parameters.length, equals(3));

    expect(api.parameters[0].name, equals('lprcDst'));
    expect(api.parameters[1].name, equals('lprcSrc1'));
    expect(api.parameters[2].name, equals('lprcSrc2'));

    expect(api.parameters[0].typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_PTR));
    expect(api.parameters[1].typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_PTR));
    expect(api.parameters[2].typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_PTR));
  });

  test('Structs like RECT have the correct type args', () {
    final typedef = scope.findTypeDef('Windows.Win32.Gdi.Apis')!;
    final api = typedef.findMethod('UnionRect')!;

    expect(api.parameters.first.name, equals('lprcDst'));
    expect(api.parameters.first.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_PTR));

    expect(api.parameters.first.typeIdentifier.typeArg, isNotNull);
    expect(api.parameters.first.typeIdentifier.typeArg?.name,
        equals('Windows.Win32.DisplayDevices.RECT'));
  });

  test('DWORD typedefs like COLORREF have the correct param type', () {
    final typedef = scope.findTypeDef('Windows.Win32.Gdi.Apis')!;
    final api = typedef.findMethod('SetBkColor')!;
    final colorParam = api.parameters.last;

    expect(colorParam.name, equals('color'));
    expect(colorParam.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_U4));
  });

  test('DWORD typedefs like COLORREF have the correct return type', () {
    final typedef = scope.findTypeDef('Windows.Win32.Gdi.Apis')!;
    final api = typedef.findMethod('SetBkColor')!;
    final returnType = api.returnType;

    expect(returnType.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_U4));
  });

  test('HANDLE-style parameters have the correct type', () {
    final typedef =
        scope.findTypeDef('Windows.Win32.KeyboardAndMouseInput.Apis')!;
    final api = typedef.findMethod('UnregisterHotKey')!;
    final param = api.parameters.first;

    expect(param.name, endsWith('hWnd'));
    expect(param.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
    expect(param.typeIdentifier.name, endsWith('HWND'));
    expect(param.typeIdentifier.typeArg, isNull);
  });

  test('HANDLE-style parameters have the correct projection', () {
    final typedef =
        scope.findTypeDef('Windows.Win32.KeyboardAndMouseInput.Apis')!;
    final api = typedef.findMethod('UnregisterHotKey')!;
    final param = api.parameters.first;
    expect(TypeProjector(param.typeIdentifier).nativeType, equals('IntPtr'));
  });

  test('LPHANDLE-style parameters have the correct type', () {
    final typedef =
        scope.findTypeDef('Windows.Win32.WindowsAndMessaging.Apis')!;
    final api = typedef.findMethod('CascadeWindows')!;
    final param = api.parameters.last;

    expect(param.name, endsWith('lpKids'));
    expect(
        param.typeIdentifier.corType, equals(CorElementType.ELEMENT_TYPE_PTR));
    expect(param.typeIdentifier.name, isEmpty);
    expect(param.typeIdentifier.typeArg, isNotNull);

    final arg = param.typeIdentifier.typeArg!;
    expect(arg.corType, equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
    expect(arg.name, endsWith('HWND'));
    expect(arg.typeArg, isNull);
  });

  test('LPHANDLE-style parameters have the correct projection', () {
    final typedef =
        scope.findTypeDef('Windows.Win32.WindowsAndMessaging.Apis')!;
    final api = typedef.findMethod('CascadeWindows')!;
    final param = api.parameters.last;
    expect(TypeProjector(param.typeIdentifier).nativeType,
        equals('Pointer<IntPtr>'));
  });

  test('LPVOID parameters are projected to Pointer, not Pointer<Void>', () {
    final typedef = scope.findTypeDef('Windows.Win32.Security.Apis')!;
    final api = typedef.findMethod('CredFree')!;
    final param = api.parameters.first;
    expect(param.name, equals('Buffer'));
    expect(TypeProjector(param.typeIdentifier).nativeType, equals('Pointer'));
  });

  test('Character parameters have the correct type', () {
    final typedef = scope.findTypeDef('Windows.Win32.SystemServices.Apis')!;
    final api = typedef.findMethod('FillConsoleOutputCharacterW')!;
    final param = api.parameters[1];

    expect(param.name, equals('cCharacter'));
    expect(
        param.typeIdentifier.corType, equals(CorElementType.ELEMENT_TYPE_CHAR));
  });

  test('UnregisterPowerSettingNotification has the correct parameter type', () {
    final typedef = scope.findTypeDef('Windows.Win32.SystemServices.Apis')!;
    final api = typedef.findMethod('UnregisterPowerSettingNotification')!;
    final param = api.parameters.first;

    expect(param.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
    expect(param.typeIdentifier.name, endsWith('HPOWERNOTIFY'));
  });

  test('GetActiveObject REFCLSID has the correct parameter type', () {
    final typedef = scope.findTypeDef('Windows.Win32.Automation.Apis')!;
    final api = typedef.findMethod('GetActiveObject')!;
    final param = api.parameters.first;

    expect(param.name, equals('rclsid'));
    expect(
        param.typeIdentifier.corType, equals(CorElementType.ELEMENT_TYPE_PTR));
    expect(param.typeIdentifier.typeArg?.name, endsWith('System.Guid'));
    expect(param.typeIdentifier.typeArg?.corType,
        equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
  });

  test('APIs with empty parameters have an accurate return type', () {
    final typedef = scope.findTypeDef('Windows.Win32.DataExchange.Apis')!;
    final api = typedef.findMethod('CountClipboardFormats')!;
    final returnType = api.returnType;

    expect(returnType.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_I4));
  });

  test('Double pointer is interpreted correctly', () {
    final typedef = scope.findTypeDef('Windows.Win32.Security.Apis')!;
    final api = typedef.findMethod('CredReadW')!;
    final param = api.parameters.last;

    expect(
        param.typeIdentifier.corType, equals(CorElementType.ELEMENT_TYPE_PTR));
    expect(param.typeIdentifier.typeArg, isNotNull);
    expect(param.typeIdentifier.typeArg?.corType,
        equals(CorElementType.ELEMENT_TYPE_PTR));
    expect(
        param.typeIdentifier.typeArg?.typeArg?.name, endsWith('CREDENTIALW'));
  });

  test('HRESULT return values are generated correctly', () {
    final typedef = scope.findTypeDef('Windows.Win32.WindowsProgramming.Apis')!;
    final api = typedef.findMethod('GetIntegratedDisplaySize')!;
    final returnType = api.returnType;

    expect(returnType.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
    expect(returnType.typeIdentifier.name, endsWith('HRESULT'));
  });

  test('IUnknown parameters are generated correctly', () {
    final typedef = scope.findTypeDef('Windows.Win32.Com.Apis')!;
    final api = typedef.findMethod('CoSetProxyBlanket')!;
    final param = api.parameters.first;

    expect(param.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_CLASS));
    expect(param.typeIdentifier.name, endsWith('IUnknown'));
  });

  test('Callback functions are generated correctly', () {
    final typedef = scope.findTypeDef('Windows.Win32.Gdi.Apis')!;
    final api = typedef.findMethod('EnumFontFamiliesExW')!;
    final param = api.parameters[2]; // FONTENUMPROCW

    expect(param.name, equals('lpProc'));
    expect(param.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_CLASS));
    expect(param.typeIdentifier.name, endsWith('FONTENUMPROCW'));
    expect(param.typeIdentifier.typeArg, isNull);
  });

  test('Callback functions are generated correctly 2', () {
    final typedef = scope.findTypeDef('Windows.Win32.Debug.Apis')!;
    final api = typedef.findMethod('SymEnumSymbolsW')!;
    final param = api.parameters[3]; // PSYM_ENUMERATESYMBOLS_CALLBACKW

    expect(param.name, equals('EnumSymbolsCallback'));
    expect(param.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_CLASS));
    expect(
        param.typeIdentifier.name, endsWith('PSYM_ENUMERATESYMBOLS_CALLBACKW'));
    expect(param.typeIdentifier.typeArg, isNull);
  });
  test('Naked structs are generated correctly', () {
    final typedef = scope.findTypeDef('Windows.Win32.SystemServices.Apis')!;
    final api = typedef.findMethod('InitializeProcThreadAttributeList')!;
    final param = api.parameters.first;

    expect(param.name, equals('lpAttributeList'));
    expect(param.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
    expect(param.typeIdentifier.name, endsWith('LPPROC_THREAD_ATTRIBUTE_LIST'));
    expect(param.typeIdentifier.typeArg, isNull);
  });

  test('Enumerations present in Win32 metadata', () {
    final enums = scope.enums;

    expect(enums.length, greaterThan(100));
  });

  test('Enumerations contain correct entries', () {
    final ropCode =
        scope.enums.firstWhere((en) => en.typeName.endsWith('ROP_CODE'));

    expect(ropCode.fields.length, equals(18));
  });

  test('A specific enumeration contains expected constants', () {
    final ropCode =
        scope.enums.firstWhere((en) => en.typeName.endsWith('ROP_CODE'));

    expect(ropCode.findField('SRCCOPY')?.value, equals(0x00CC0020));
  });

  test('Enumerations are typed appropriately in functions', () {
    final typedef = scope.findTypeDef('Windows.Win32.Gdi.Apis')!;
    final api = typedef.findMethod('CreateDIBitmap')!;
    final param = api.parameters.last;

    expect(param.name, equals('iUsage'));
    expect(param.typeIdentifier.type?.parent?.typeName, equals('System.Enum'));
  });

  test('Pointers to enumerations are typed appropriately in functions', () {
    final typedef = scope.findTypeDef('Windows.Win32.SystemServices.Apis')!;
    final api = typedef.findMethod('GetNamedPipeInfo')!;
    final param = api.parameters[1];

    expect(param.name, equals('lpFlags'));
    expect(param.typeIdentifier.typeArg?.corType,
        equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
    expect(param.typeIdentifier.typeArg?.type?.parent?.typeName,
        equals('System.Enum'));
  });

  test('Delegates are appropriately marked', () {
    final delegate = scope.findTypeDef('Windows.Win32.Gdi.MFENUMPROC')!;
    expect(delegate.isDelegate, isTrue);
  });

  test('Non-delegates are appropriately marked', () {
    final notADelegate =
        scope.findTypeDef('Windows.Win32.SystemServices.Apis')!;
    expect(notADelegate.isDelegate, isFalse);
  });

  test('Delegates are appropriately exposed', () {
    final delegate = scope.findTypeDef('Windows.Win32.Gdi.MFENUMPROC')!;

    final api = delegate.findMethod('Invoke')!;
    final param = api.parameters.first;

    expect(param.name, equals('hdc'));
  });

  test('Scope contains an expected quantity of delegates', () {
    expect(scope.delegates.length, greaterThan(1000));
  });

  test('Packing instructions are available', () {
    final packedStruct =
        scope.findTypeDef('Windows.Win32.Gdi.BITMAPFILEHEADER')!;
    expect(packedStruct.classLayout.packingAlignment, equals(2));
    expect(packedStruct.classLayout.minimumSize, isZero);
  });
  test('Packing instructions are available 2', () {
    final packedStruct =
        scope.findTypeDef('Windows.Win32.Bluetooth.BTH_QUERY_SERVICE')!;
    expect(packedStruct.classLayout.packingAlignment, equals(1));
    expect(packedStruct.classLayout.minimumSize, isZero);
  });

  test('Packing instructions are unavailable for an unpacked class', () {
    final packedStruct =
        scope.findTypeDef('Windows.Win32.Shell.NOTIFYICONIDENTIFIER')!;
    expect(packedStruct.classLayout.packingAlignment, isNull);
    expect(packedStruct.classLayout.minimumSize, isNull);
  });

  test('No crash when calling GetClassLayout on an enum', () {
    final packedStruct =
        scope.findTypeDef('Windows.Win32.Shell.KNOWN_FOLDER_FLAG')!;
    expect(packedStruct.classLayout.packingAlignment, isNull);
    expect(packedStruct.classLayout.minimumSize, isNull);
  });
}
