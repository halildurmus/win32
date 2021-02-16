@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Simple int type', () {
    final type = TypeIdentifier(CorElementType.ELEMENT_TYPE_I4);

    expect(TypeBuilder.dartType(type), equals('int'));
    expect(TypeBuilder.nativeType(type), equals('Int32'));
  });

  test('Unicode string', () {
    final type = TypeIdentifier(CorElementType.ELEMENT_TYPE_PTR)
      ..name = 'LPWSTR'
      ..typeArgs = [TypeIdentifier(CorElementType.ELEMENT_TYPE_U2)];

    expect(TypeBuilder.dartType(type), equals('Pointer<Utf16>'));
    expect(TypeBuilder.nativeType(type), equals('Pointer<Utf16>'));
  });

  test('ANSI string', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.KeyboardAndMouseInput.Apis']!;
    final api = typedef.findMethod('GetKeyNameTextA')!;
    final type = api.parameters[1].typeIdentifier; // LPSTR

    expect(TypeBuilder.dartType(type), equals('Pointer<Utf8>'));
    expect(TypeBuilder.nativeType(type), equals('Pointer<Utf8>'));
  });

  test('Handle', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.KeyboardAndMouseInput.Apis']!;
    final api = typedef.findMethod('UnregisterHotKey')!;
    final type = api.parameters.first.typeIdentifier; // HWND

    expect(TypeBuilder.dartType(type), equals('int'));
    expect(TypeBuilder.nativeType(type), equals('IntPtr'));
  });

  test('Pointer<T>', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.KeyboardAndMouseInput.Apis']!;
    final api = typedef.findMethod('GetKeyboardState')!;
    final type = api.parameters.first.typeIdentifier; // PBYTE

    expect(TypeBuilder.dartType(type), equals('Pointer<Uint8>'));
    expect(TypeBuilder.nativeType(type), equals('Pointer<Uint8>'));
  });

  test('Pointer<Pointer<T>>', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.Security.Apis']!;
    final api = typedef.findMethod('CredReadW')!;
    final type = api.parameters.last.typeIdentifier; // PCREDENTIALW *

    expect(
        TypeBuilder.nativeType(type), equals('Pointer<Pointer<CREDENTIAL>>'));
    expect(TypeBuilder.dartType(type), equals('Pointer<Pointer<CREDENTIAL>>'));
  });

  test('Unicode string w/ double pointer', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.Shell.Apis']!;
    final api = typedef.findMethod('SHGetKnownFolderPath')!;
    final type = api.parameters.last.typeIdentifier; // PWSTR *

    expect(TypeBuilder.dartType(type), equals('Pointer<Pointer<Utf16>>'));
    expect(TypeBuilder.nativeType(type), equals('Pointer<Pointer<Utf16>>'));
  }, skip: 'https://github.com/microsoft/win32metadata/issues/241');

  test('Pass COM interfaces', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.Com.Apis']!;
    final api = typedef.findMethod('CoSetProxyBlanket')!;
    final type = api.parameters.first.typeIdentifier; // IUnknown

    expect(TypeBuilder.nativeType(type), equals('Pointer'));
    expect(TypeBuilder.dartType(type), equals('Pointer'));
  });

  test('Pass pointers to COM interfaces', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.Com.Apis']!;
    final api = typedef.findMethod('CoCreateInstance')!;
    final type = api.parameters[1].typeIdentifier; // LPUNKNOWN

    expect(TypeBuilder.nativeType(type), equals('Pointer<IntPtr>'));
    expect(TypeBuilder.dartType(type), equals('Pointer<IntPtr>'));
  });

  test('Pass double pointers to COM interfaces', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.Automation.Apis']!;
    final api = typedef.findMethod('GetActiveObject')!;
    final type = api.parameters.last.typeIdentifier; // IUnknown **

    expect(TypeBuilder.nativeType(type), equals('Pointer<Pointer<COMObject>>'));
    expect(TypeBuilder.dartType(type), equals('Pointer<Pointer<COMObject>>'));
  });

  test('OLECHAR is represented correctly', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.Automation.Apis']!;
    final api = typedef.findMethod('SysAllocString')!;
    final type = api.parameters.first.typeIdentifier; // OLECHAR *

    expect(TypeBuilder.nativeType(type), equals('Pointer<Utf16>'));
    expect(TypeBuilder.dartType(type), equals('Pointer<Utf16>'));
  }, skip: 'https://github.com/microsoft/win32metadata/issues/233');
}
