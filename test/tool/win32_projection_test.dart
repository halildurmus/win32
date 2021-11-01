@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import '../../tool/metadata/projection/typeprojector.dart';

void main() {
  final scope = MetadataStore.getWin32Scope();
  test('Simple int type', () {
    final type = TypeIdentifier(BaseType.Int32);
    final typeProjection = TypeProjector(type);

    expect(typeProjection.dartType, equals('int'));
    expect(typeProjection.nativeType, equals('Int32'));
  });

  test('ANSI string', () {
    final typedef =
        scope.findTypeDef('Windows.Win32.UI.Input.KeyboardAndMouse.Apis')!;
    final api = typedef.findMethod('GetKeyNameTextA')!;
    final type = api.parameters[1].typeIdentifier; // LPSTR
    final typeProjection = TypeProjector(type);

    expect(typeProjection.dartType, equals('Pointer<Utf8>'));
    expect(typeProjection.nativeType, equals('Pointer<Utf8>'));
  });

  test('Handle', () {
    final typedef =
        scope.findTypeDef('Windows.Win32.UI.Input.KeyboardAndMouse.Apis')!;
    final api = typedef.findMethod('UnregisterHotKey')!;
    final type = api.parameters.first.typeIdentifier; // HWND
    final typeProjection = TypeProjector(type);

    expect(typeProjection.dartType, equals('int'));
    expect(typeProjection.nativeType, equals('IntPtr'));
  });

  test('Pointer<T>', () {
    final typedef =
        scope.findTypeDef('Windows.Win32.UI.Input.KeyboardAndMouse.Apis')!;
    final api = typedef.findMethod('GetKeyboardState')!;
    final type = api.parameters.first.typeIdentifier; // PBYTE
    final typeProjection = TypeProjector(type);

    expect(typeProjection.dartType, equals('Pointer<Uint8>'));
    expect(typeProjection.nativeType, equals('Pointer<Uint8>'));
  });

  test('Pointer<Pointer<T>>', () {
    final typedef =
        scope.findTypeDef('Windows.Win32.Security.Credentials.Apis')!;
    final api = typedef.findMethod('CredReadW')!;
    final type = api.parameters.last.typeIdentifier; // PCREDENTIALW *
    final typeProjection = TypeProjector(type);

    expect(typeProjection.nativeType, equals('Pointer<Pointer<CREDENTIAL>>'));
    expect(typeProjection.dartType, equals('Pointer<Pointer<CREDENTIAL>>'));
  });

  test('Unicode string w/ double pointer', () {
    final typedef = scope.findTypeDef('Windows.Win32.UI.Shell.Apis')!;
    final api = typedef.findMethod('SHGetKnownFolderPath')!;
    final type = api.parameters.last.typeIdentifier; // PWSTR *
    final typeProjection = TypeProjector(type);

    expect(typeProjection.dartType, equals('Pointer<Pointer<Utf16>>'));
    expect(typeProjection.nativeType, equals('Pointer<Pointer<Utf16>>'));
  });

  test('Pass COM interfaces', () {
    final typedef = scope.findTypeDef('Windows.Win32.System.Com.Apis')!;
    final api = typedef.findMethod('CoSetProxyBlanket')!;
    final type = api.parameters.first.typeIdentifier; // IUnknown
    final typeProjection = TypeProjector(type);

    expect(typeProjection.nativeType, equals('Pointer'));
    expect(typeProjection.dartType, equals('Pointer'));
  });

  test('Pass pointers to COM interfaces', () {
    final typedef = scope.findTypeDef('Windows.Win32.System.Com.Apis')!;
    final api = typedef.findMethod('CoCreateInstance')!;
    final type = api.parameters[1].typeIdentifier; // LPUNKNOWN
    final typeProjection = TypeProjector(type);

    expect(typeProjection.nativeType, equals('Pointer'));
    expect(typeProjection.dartType, equals('Pointer'));
  });

  test('Pass double pointers to COM interfaces', () {
    final typedef =
        scope.findTypeDef('Windows.Win32.System.Ole.Automation.Apis')!;
    final api = typedef.findMethod('GetActiveObject')!;
    final type = api.parameters.last.typeIdentifier; // IUnknown **
    final typeProjection = TypeProjector(type);

    expect(typeProjection.nativeType, equals('Pointer<Pointer>'));
    expect(typeProjection.dartType, equals('Pointer<Pointer>'));
  });

  test('Double pointer is projected correctly', () {
    final typedef =
        scope.findTypeDef('Windows.Win32.Security.Credentials.Apis')!;
    final api = typedef.findMethod('CredReadW')!;
    final type = api.parameters.last.typeIdentifier;
    final typeProjection = TypeProjector(type);

    expect(typeProjection.nativeType, equals('Pointer<Pointer<CREDENTIAL>>'));
    expect(typeProjection.dartType, equals('Pointer<Pointer<CREDENTIAL>>'));
  });

  test('OLECHAR is represented correctly', () {
    final typedef = scope.findTypeDef('Windows.Win32.Foundation.Apis')!;
    final api = typedef.findMethod('SysAllocString')!;
    final type = api.parameters.first.typeIdentifier; // OLECHAR *
    final typeProjection = TypeProjector(type);

    expect(typeProjection.nativeType, equals('Pointer<Utf16>'));
    expect(typeProjection.dartType, equals('Pointer<Utf16>'));
  });

  test('Callbacks are represented correctly', () {
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('EnumFontFamiliesExW')!;
    final type = api.parameters[2].typeIdentifier; // FONTENUMPROCW
    final typeProjection = TypeProjector(type);

    expect(typeProjection.nativeType,
        equals('Pointer<NativeFunction<EnumFontFamExProc>>'));
    expect(typeProjection.dartType,
        equals('Pointer<NativeFunction<EnumFontFamExProc>>'));
  });

  test('Callbacks are represented correctly 2', () {
    final typedef =
        scope.findTypeDef('Windows.Win32.System.Diagnostics.Debug.Apis')!;
    final api = typedef.findMethod('SymEnumSymbolsW')!;
    final type =
        api.parameters[3].typeIdentifier; // PSYM_ENUMERATESYMBOLS_CALLBACKW
    final typeProjection = TypeProjector(type);

    expect(typeProjection.nativeType,
        equals('Pointer<NativeFunction<SymEnumSymbolsProc>>'));
    expect(typeProjection.dartType,
        equals('Pointer<NativeFunction<SymEnumSymbolsProc>>'));
  });

  test('Pointers to structs are represented correctly', () {
    final typedef =
        scope.findTypeDef('Windows.Win32.UI.Controls.Dialogs.Apis')!;
    final api = typedef.findMethod('ChooseFontW')!;
    final type = api.parameters.first.typeIdentifier; // CHOOSEFONTW
    final typeProjection = TypeProjector(type);

    expect(typeProjection.nativeType, equals('Pointer<CHOOSEFONT>'));
    expect(typeProjection.dartType, equals('Pointer<CHOOSEFONT>'));
  });

  test('Naked structs are represented correctly', () {
    final typedef = scope.findTypeDef('Windows.Win32.System.Threading.Apis')!;
    final api = typedef.findMethod('InitializeProcThreadAttributeList')!;
    final type =
        api.parameters.first.typeIdentifier; // LPPROC_THREAD_ATTRIBUTE_LIST
    final typeProjection = TypeProjector(type);

    expect(typeProjection.nativeType, equals('Pointer'));
    expect(typeProjection.dartType, equals('Pointer'));
  });

  test('Enumeration params are represented correctly', () {
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;
    final api = typedef.findMethod('CreateDIBitmap')!;
    final type = api.parameters.last.typeIdentifier;
    final typeProjection = TypeProjector(type);

    expect(typeProjection.nativeType, equals('Uint32'));
    expect(typeProjection.dartType, equals('int'));
  });

  test('Pointer<Enum> params are represented correctly', () {
    final typedef = scope.findTypeDef('Windows.Win32.System.Pipes.Apis');
    expect(typedef, isNotNull);

    final api = typedef!.findMethod('GetNamedPipeInfo')!;
    final type = api.parameters[1].typeIdentifier;
    final typeProjection = TypeProjector(type);

    expect(typeProjection.nativeType, equals('Pointer<Uint32>'));
    expect(typeProjection.dartType, equals('Pointer<Uint32>'));
  });

  test('Void returns are represented correctly', () {
    final typedef =
        scope.findTypeDef('Windows.Win32.Security.Credentials.Apis')!;
    final api = typedef.findMethod('CredFree')!;
    final type = api.returnType.typeIdentifier;
    final typeProjection = TypeProjector(type);

    expect(typeProjection.nativeType, equals('Void'));
    expect(typeProjection.dartType, equals('void'));
  });

  test('HANDLE should be projected as an IntPtr', () {
    final typedef = scope.findTypeDef('Windows.Win32.System.Threading.Apis')!;
    final api = typedef.findMethod('GetCurrentProcess')!;
    final returnType = api.returnType.typeIdentifier;

    expect(returnType.baseType, equals(BaseType.ValueTypeModifier));
    expect(returnType.name, equals('Windows.Win32.Foundation.HANDLE'));

    final valueTypedef = scope.findTypeDef(returnType.name)!;
    expect(valueTypedef.fields.first.typeIdentifier.baseType,
        equals(BaseType.IntPtr));

    final projection = TypeProjector(returnType);
    expect(projection.dartType, equals('int'));
    expect(projection.nativeType, equals('IntPtr'));
  });

  test('LARGE_INTEGER should be projected as an Int64', () {
    final typedef = scope.findTypeDef('Windows.Win32.Storage.FileSystem.Apis')!;
    final api = typedef.findMethod('SetFilePointerEx')!;
    final param = api.parameters[1];

    expect(param.name, equals('liDistanceToMove'));
    expect(param.typeIdentifier.baseType, equals(BaseType.ValueTypeModifier));

    final projection = TypeProjector(param.typeIdentifier);
    expect(projection.nativeType, equals('Int64'));
    expect(projection.dartType, equals('int'));
  });

  test('Struct array field projects correctly', () {
    final procInfo =
        scope.findTypeDef('Windows.Win32.Graphics.Gdi.BITMAPINFO')!;
    final bmiColors = procInfo.fields.last.typeIdentifier;

    final nativeType = TypeProjector(bmiColors).nativeType;
    final dartType = TypeProjector(bmiColors).dartType;
    expect(nativeType, equals('RGBQUAD'));
    expect(dartType, equals('RGBQUAD'));
  });

  test('Struct STATSTG projects correctly', () {
    final procInfo = scope.findTypeDef('Windows.Win32.System.Com.STATSTG')!;
    final cbSize = procInfo.fields[2].typeIdentifier; // cbSize

    final nativeType = TypeProjector(cbSize).nativeType;
    final dartType = TypeProjector(cbSize).dartType;
    expect(nativeType, equals('Uint64'));
    expect(dartType, equals('int'));
  });

  test('HANDLE-style parameters have the correct projection', () {
    final typedef =
        scope.findTypeDef('Windows.Win32.UI.Input.KeyboardAndMouse.Apis')!;
    final api = typedef.findMethod('UnregisterHotKey')!;
    final param = api.parameters.first;
    expect(TypeProjector(param.typeIdentifier).nativeType, equals('IntPtr'));
  });

  test('LPHANDLE-style parameters have the correct projection', () {
    final typedef =
        scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis')!;
    final api = typedef.findMethod('CascadeWindows')!;
    final param = api.parameters.last;
    expect(TypeProjector(param.typeIdentifier).nativeType,
        equals('Pointer<IntPtr>'));
  });

  test('LPVOID parameters are projected to Pointer, not Pointer<Void>', () {
    final typedef =
        scope.findTypeDef('Windows.Win32.Security.Credentials.Apis')!;
    final api = typedef.findMethod('CredFree')!;
    final param = api.parameters.first;
    expect(param.name, equals('Buffer'));
    expect(TypeProjector(param.typeIdentifier).nativeType, equals('Pointer'));
  });

  test('BluetoothRemoveDevice', () {
    final typedef = scope.findTypeDef('Windows.Win32.Devices.Bluetooth.Apis')!;
    final api = typedef.findMethod('BluetoothRemoveDevice')!;
    final param = api.parameters.first;
    expect(param.name, equals('pAddress'));
    final projector = TypeProjector(param.typeIdentifier);

    expect(projector.nativeType, equals('Pointer<BLUETOOTH_ADDRESS>'));
    expect(projector.dartType, equals('Pointer<BLUETOOTH_ADDRESS>'));
  });
}
