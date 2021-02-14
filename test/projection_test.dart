@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test(('Simple int type'), () {
    final type = TypeIdentifier(CorElementType.ELEMENT_TYPE_I4);

    expect(TypeBuilder.dartType(type), equals('int'));
    expect(TypeBuilder.nativeType(type), equals('Int32'));
  });

  test(('Unicode string'), () {
    final type = TypeIdentifier(CorElementType.ELEMENT_TYPE_PTR)
      ..name = 'LPWSTR'
      ..typeArgs = [TypeIdentifier(CorElementType.ELEMENT_TYPE_U2)];

    expect(TypeBuilder.dartType(type), equals('Pointer<Utf16>'));
    expect(TypeBuilder.nativeType(type), equals('Pointer<Utf16>'));
  });

  test(('ANSI string'), () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.KeyboardAndMouseInput.Apis']!;
    final api = typedef.findMethod('GetKeyNameTextA')!;
    final type = api.parameters.first.typeIdentifier; // LPSTR

    expect(TypeBuilder.dartType(type), equals('Pointer<Utf8>'));
    expect(TypeBuilder.nativeType(type), equals('Pointer<Utf8>'));
  });

  test(('Handle'), () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.KeyboardAndMouseInput.Apis']!;
    final api = typedef.findMethod('UnregisterHotKey')!;
    final type = api.parameters.first.typeIdentifier; // HWND

    expect(TypeBuilder.dartType(type), equals('int'));
    expect(TypeBuilder.nativeType(type), equals('IntPtr'));
  });

  test(('Pointer<Pointer<T>>'), () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.Security.Apis']!;
    final api = typedef.findMethod('CredReadW')!;
    final type = api.parameters.last.typeIdentifier; // PCREDENTIALW *

    expect(
        TypeBuilder.nativeType(type), equals('Pointer<Pointer<CREDENTIAL>>'));
    expect(TypeBuilder.dartType(type), equals('Pointer<Pointer<CREDENTIAL>>'));
  });
}
