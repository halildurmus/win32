import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart' as winmd;

void main() {
  setUpAll(WindowsMetadata.load);

  group('TypeDef', () {
    test('freeFunction', () {
      final bstr = WindowsMetadata.findTypeDefByName('BSTR');
      check(
        bstr.freeFunction,
      ).isNotNull().has((it) => it.name, 'name').equals('SysFreeString');

      final handle = WindowsMetadata.findTypeDefByName('HANDLE');
      check(
        handle.freeFunction,
      ).isNotNull().has((it) => it.name, 'name').equals('CloseHandle');

      final hdc = WindowsMetadata.findTypeDefByName('HDC');
      check(hdc.freeFunction).isNull();
    });

    test('hasGuid', () {
      final iunknown = WindowsMetadata.findTypeDefByName('IUnknown');
      check(iunknown.hasGuid).isTrue();

      final fileOpenDialog = WindowsMetadata.findTypeDefByName(
        'FileOpenDialog',
      );
      check(fileOpenDialog.hasGuid).isTrue();
    });

    test('invalidHandleValues', () {
      final bstr = WindowsMetadata.findTypeDefByName('BSTR');
      check(bstr.invalidHandleValues).isEmpty();

      final handle = WindowsMetadata.findTypeDefByName('HANDLE');
      check(handle.invalidHandleValues)
        ..length.equals(2)
        ..deepEquals([-1, 0]);
    });

    test('isBitwiseEnum', () {
      final typeDef1 = WindowsMetadata.findTypeDefByName(
        'XINPUT_CAPABILITIES_FLAGS',
      );
      check(typeDef1.isBitwiseEnum).isTrue();

      final typeDef2 = WindowsMetadata.findTypeDefByName('GLOBAL_ALLOC_FLAGS');
      check(typeDef2.isBitwiseEnum).isTrue();

      final typeDef3 = WindowsMetadata.findTypeDefByName('WIN32_ERROR');
      check(typeDef3.isBitwiseEnum).isFalse();
    });

    test('isHandle', () {
      final bstr = WindowsMetadata.findTypeDefByName('BSTR');
      check(bstr.isHandle).isTrue();

      final hkey = WindowsMetadata.findTypeDefByName('HKEY');
      check(hkey.isHandle).isTrue();

      final handle = WindowsMetadata.findTypeDefByName('HANDLE');
      check(handle.isHandle).isTrue();

      final printerHandle = WindowsMetadata.findTypeDefByName('PRINTER_HANDLE');
      check(printerHandle.isHandle).isTrue();
    });

    test('isObsolete', () {
      final addrInfoExA = WindowsMetadata.findTypeDefByName('ADDRINFOEXA');
      check(addrInfoExA.isObsolete).isTrue();

      final addrInfoExW = WindowsMetadata.findTypeDefByName('ADDRINFOEXW');
      check(addrInfoExW.isObsolete).isFalse();
    });

    test('isVoidPtrHandle', () {
      final handle = WindowsMetadata.findTypeDefByName('HANDLE');
      check(handle.isVoidPtrHandle).isTrue();

      final hstring = WindowsMetadata.findTypeDefByName('HSTRING');
      check(hstring.isVoidPtrHandle).isTrue();

      final pstr = WindowsMetadata.findTypeDefByName('PSTR');
      check(pstr.isVoidPtrHandle).isFalse();
    });

    test('isWrapperStruct', () {
      final typeDef1 = WindowsMetadata.findTypeDefByName('HWND');
      check(typeDef1.isWrapperStruct).isTrue();

      final typeDef2 = WindowsMetadata.findTypeDefByName(
        'MEMORY_MAPPED_VIEW_ADDRESS',
      );
      check(typeDef2.isWrapperStruct).isTrue();

      final typeDef3 = WindowsMetadata.findTypeDefByName('MMTIME');
      check(typeDef3.isWrapperStruct).isFalse();
    });

    test('nameWithoutEncoding', () {
      final typeDef1 = WindowsMetadata.findTypeDefByName('IFileDialog');
      check(typeDef1.nameWithoutEncoding).equals('IFileDialog');

      final typeDef2 = WindowsMetadata.findTypeDefByName('IShellLinkA');
      check(typeDef2.nameWithoutEncoding).equals('IShellLink');

      final typeDef3 = WindowsMetadata.findTypeDefByName('IShellLinkW');
      check(typeDef3.nameWithoutEncoding).equals('IShellLink');

      final typeDef4 = WindowsMetadata.findTypeDefByName('IStillImageW');
      check(typeDef4.nameWithoutEncoding).equals('IStillImage');
    });

    test('nestedTypes', () {
      final variant = WindowsMetadata.findTypeDefByName('VARIANT');
      check(variant.nestedTypes)
        ..length.equals(1)
        ..first.has((it) => it.name, 'name').equals('_Anonymous_e__Union');
      final union = variant.nestedTypes.first;
      check(union.nestedTypes)
        ..length.equals(1)
        ..first.has((it) => it.name, 'name').equals('_Anonymous_e__Struct');

      final rect = WindowsMetadata.findTypeDefByName('RECT');
      check(rect.nestedTypes).isEmpty();
    });

    test('rootType', () {
      final charInfo = WindowsMetadata.findTypeDefByName('CHAR_INFO');
      final char = charInfo.findField('Char');
      check(char.type).isA<TypeDefType>();
      final rootType = (char.type as TypeDefType).typeDef.rootType;
      check(rootType.namespace).equals(charInfo.namespace);
      check(rootType.name).equals(charInfo.name);
    });

    test('safeIdentifier', () {
      final typeDef1 = WindowsMetadata.findTypeDefByName('IUIAutomation');
      check(typeDef1.safeIdentifier).equals('IUIAutomation');

      final typeDef2 = WindowsMetadata.findTypeDefByName('_AppEvents');
      check(typeDef2.safeIdentifier).equals('AppEvents');

      final typeDef3 = WindowsMetadata.findTypeDefByName('IShellLinkW');
      check(typeDef3.safeIdentifier).equals('IShellLink');
    });

    test('safeTypeName', () {
      final typeDef1 = WindowsMetadata.findTypeDefByName('IUIAutomation');
      check(typeDef1.safeTypeName).equals('IUIAutomation');

      final typeDef2 = WindowsMetadata.findTypeDefByName('_AppEvents');
      check(typeDef2.safeTypeName).equals('AppEvents');

      final typeDef3 = WindowsMetadata.findTypeDefByName('IShellLinkW');
      check(typeDef3.safeTypeName).equals('IShellLink');
    });
  });
}
