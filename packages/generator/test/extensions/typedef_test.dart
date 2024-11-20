@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';

void main() {
  setUpAll(WindowsMetadata.load);

  group('TypeDef', () {
    test('freeFunction', () {
      final bstr = WindowsMetadata.typeDef('BSTR');
      check(
        bstr.freeFunction,
      ).isNotNull().has((it) => it.name, 'name').equals('SysFreeString');

      final handle = WindowsMetadata.typeDef('HANDLE');
      check(
        handle.freeFunction,
      ).isNotNull().has((it) => it.name, 'name').equals('CloseHandle');

      final hdc = WindowsMetadata.typeDef('HDC');
      check(hdc.freeFunction).isNull();
    });

    test('hasGuid', () {
      final iunknown = WindowsMetadata.typeDef('IUnknown');
      check(iunknown.hasGuid).isTrue();

      final fileOpenDialog = WindowsMetadata.typeDef('FileOpenDialog');
      check(fileOpenDialog.hasGuid).isTrue();
    });

    test('invalidHandleValues', () {
      final bstr = WindowsMetadata.typeDef('BSTR');
      check(bstr.invalidHandleValues).isEmpty();

      final handle = WindowsMetadata.typeDef('HANDLE');
      check(handle.invalidHandleValues)
        ..length.equals(2)
        ..deepEquals([-1, 0]);
    });

    test('isBitwiseEnum', () {
      final typeDef1 = WindowsMetadata.typeDef('XINPUT_CAPABILITIES_FLAGS');
      check(typeDef1.isBitwiseEnum).isTrue();

      final typeDef2 = WindowsMetadata.typeDef('GLOBAL_ALLOC_FLAGS');
      check(typeDef2.isBitwiseEnum).isTrue();

      final typeDef3 = WindowsMetadata.typeDef('WIN32_ERROR');
      check(typeDef3.isBitwiseEnum).isFalse();
    });

    test('isHandle', () {
      final bstr = WindowsMetadata.typeDef('BSTR');
      check(bstr.isHandle).isTrue();

      final hkey = WindowsMetadata.typeDef('HKEY');
      check(hkey.isHandle).isTrue();

      final handle = WindowsMetadata.typeDef('HANDLE');
      check(handle.isHandle).isTrue();

      final printerHandle = WindowsMetadata.typeDef('PRINTER_HANDLE');
      check(printerHandle.isHandle).isTrue();
    });

    test('isObsolete', () {
      final addrInfoExA = WindowsMetadata.typeDef('ADDRINFOEXA');
      check(addrInfoExA.isObsolete).isTrue();

      final addrInfoExW = WindowsMetadata.typeDef('ADDRINFOEXW');
      check(addrInfoExW.isObsolete).isFalse();
    });

    test('isVoidPtrHandle', () {
      final handle = WindowsMetadata.typeDef('HANDLE');
      check(handle.isVoidPtrHandle).isTrue();

      final hstring = WindowsMetadata.typeDef('HSTRING');
      check(hstring.isVoidPtrHandle).isTrue();

      final pstr = WindowsMetadata.typeDef('PSTR');
      check(pstr.isVoidPtrHandle).isFalse();
    });

    test('isWrapperStruct', () {
      final typeDef1 = WindowsMetadata.typeDef('HWND');
      check(typeDef1.isWrapperStruct).isTrue();

      final typeDef2 = WindowsMetadata.typeDef('MEMORY_MAPPED_VIEW_ADDRESS');
      check(typeDef2.isWrapperStruct).isTrue();

      final typeDef3 = WindowsMetadata.typeDef('MMTIME');
      check(typeDef3.isWrapperStruct).isFalse();
    });

    test('kind', () {
      final wndproc = WindowsMetadata.typeDef('WNDPROC');
      check(wndproc.kind).equals(TypeKind.delegate);

      final win32Error = WindowsMetadata.typeDef('WIN32_ERROR');
      check(win32Error.kind).equals(TypeKind.enum$);

      final iunknown = WindowsMetadata.typeDef('IUnknown');
      check(iunknown.kind).equals(TypeKind.interface);

      final variant = WindowsMetadata.typeDef('VARIANT');
      check(variant.kind).equals(TypeKind.struct);

      final fileOpenDialog = WindowsMetadata.typeDef('FileOpenDialog');
      check(fileOpenDialog.kind).equals(TypeKind.class$);
    });

    test('namespace', () {
      final handle = WindowsMetadata.typeDef('HANDLE');
      check(handle.namespace).equals('Windows.Win32.Foundation');

      final iunknown = WindowsMetadata.typeDef('IUnknown');
      check(iunknown.namespace).equals('Windows.Win32.System.Com');
    });

    test('nameWithoutEncoding', () {
      final typeDef1 = WindowsMetadata.typeDef('IFileDialog');
      check(
        typeDef1.nameWithoutEncoding,
      ).equals('Windows.Win32.UI.Shell.IFileDialog');

      final typeDef2 = WindowsMetadata.typeDef('IShellLinkA');
      check(
        typeDef2.nameWithoutEncoding,
      ).equals('Windows.Win32.UI.Shell.IShellLink');

      final typeDef3 = WindowsMetadata.typeDef('IShellLinkW');
      check(
        typeDef3.nameWithoutEncoding,
      ).equals('Windows.Win32.UI.Shell.IShellLink');

      final typeDef4 = WindowsMetadata.typeDef('IStillImageW');
      check(
        typeDef4.nameWithoutEncoding,
      ).equals('Windows.Win32.Devices.Fax.IStillImage');
    });

    test('nestedTypes', () {
      final variant = WindowsMetadata.typeDef('VARIANT');
      check(variant.nestedTypes)
        ..length.equals(1)
        ..first.has((it) => it.name, 'name').equals('_Anonymous_e__Union');
      final union = variant.nestedTypes.first;
      check(union.nestedTypes)
        ..length.equals(1)
        ..first.has((it) => it.name, 'name').equals('_Anonymous_e__Struct');

      final rect = WindowsMetadata.typeDef('RECT');
      check(rect.nestedTypes).isEmpty();
    });

    test('rootType', () {
      final charInfo = WindowsMetadata.typeDef('CHAR_INFO');
      final char = charInfo.field('Char');
      check(char.typeIdentifier.type!.rootType).equals(charInfo);
    });

    test('safeIdentifier', () {
      final typeDef1 = WindowsMetadata.typeDef('IUIAutomation');
      check(typeDef1.safeIdentifier).equals('IUIAutomation');

      final typeDef2 = WindowsMetadata.typeDef('_AppEvents');
      check(typeDef2.safeIdentifier).equals('AppEvents');

      final typeDef3 = WindowsMetadata.typeDef('IShellLinkW');
      check(typeDef3.safeIdentifier).equals('IShellLink');
    });

    test('safeTypeName', () {
      final typeDef1 = WindowsMetadata.typeDef('IUIAutomation');
      check(typeDef1.safeTypeName).equals('IUIAutomation');

      final typeDef2 = WindowsMetadata.typeDef('_AppEvents');
      check(typeDef2.safeTypeName).equals('AppEvents');

      final typeDef3 = WindowsMetadata.typeDef('IShellLinkW');
      check(typeDef3.safeTypeName).equals('IShellLink');
    });

    test('simpleName', () {
      final handle = WindowsMetadata.typeDef('HANDLE');
      check(handle.simpleName).equals('HANDLE');

      final iunknown = WindowsMetadata.typeDef('IUnknown');
      check(iunknown.simpleName).equals('IUnknown');
    });

    test('typeName', () {
      final iunknown = WindowsMetadata.typeDef('IUnknown');
      final typeName = iunknown.typeName;
      check(typeName)
        ..has(
          (it) => it.namespace,
          'namespace',
        ).equals('Windows.Win32.System.Com')
        ..has((it) => it.name, 'name').equals('IUnknown');
    });
  });

  tearDownAll(WindowsMetadata.close);
}
