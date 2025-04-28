import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';

void main() async {
  final index = await WindowsMetadataLoader.loadWin32Metadata();

  group('HasCustomAttributes', () {
    group('attributes', () {
      test('returns empty list if the type does not have any attributes', () {
        final typeDef = index.findSingleType(
          'Windows.Win32.Foundation',
          'FLOAT128',
        );
        check(typeDef.attributes).isEmpty();
      });

      test('returns a list of attributes if the type has attributes', () {
        final typeDef = index.findSingleType(
          'Windows.Win32.Foundation',
          'HMODULE',
        );
        final attributes = typeDef.attributes.toList();
        check(attributes.length).equals(4);
        final [raiiFree, alsoUsableFor, invalidHandleValue, nativeTypedef] =
            attributes;
        check(raiiFree.name).equals('RAIIFreeAttribute');
        check(raiiFree.parameters.length).equals(1);
        check(raiiFree.parameters[0].valueAsString).equals('FreeLibrary');
        check(alsoUsableFor.name).equals('AlsoUsableForAttribute');
        check(alsoUsableFor.parameters.length).equals(1);
        check(alsoUsableFor.parameters[0].valueAsString).equals('HINSTANCE');
        check(invalidHandleValue.name).equals('InvalidHandleValueAttribute');
        check(invalidHandleValue.parameters.length).equals(1);
        check(
          invalidHandleValue.parameters[0].valueAsInt,
        ).isNotNull().equals(0);
        check(nativeTypedef.name).equals('NativeTypedefAttribute');
        check(nativeTypedef.parameters).isEmpty();
      });
    });

    group('attributeAsString', () {
      test('returns null if the attribute does not exist', () {
        final typeDef = index.findSingleType(
          'Windows.Win32.Foundation',
          'HRESULT',
        );
        check(typeDef.attributeAsString('NonExistentAttribute')).isNull();
      });

      test('returns null if the attribute does not have a parameter with '
          'string type', () {
        final typeDef = index.findSingleType(
          'Windows.Win32.Foundation',
          'HMODULE',
        );
        check(
          typeDef.attributeAsString('InvalidHandleValueAttribute'),
        ).isNull();
      });

      test('returns the string value of the attribute', () {
        final typeDef = index.findSingleType(
          'Windows.Win32.Foundation',
          'HRESULT',
        );
        check(typeDef.attributeAsString('DocumentationAttribute')).equals(
          'https://learn.microsoft.com/office/client-developer/outlook/mapi/hresult',
        );
      });
    });

    group('findAttribute', () {
      test('returns null if the attribute does not exist', () {
        final typeDef = index.findSingleType(
          'Windows.Win32.Foundation',
          'HRESULT',
        );
        check(typeDef.findAttribute('NonExistentAttribute')).isNull();
      });

      test('returns the attribute if it exists', () {
        final typeDef = index.findSingleType(
          'Windows.Win32.Foundation',
          'HRESULT',
        );
        check(typeDef.findAttribute('DocumentationAttribute')).isNotNull();
      });
    });

    group('hasAttribute', () {
      test('returns true if the attribute exists', () {
        final typeDef = index.findSingleType(
          'Windows.Win32.Foundation',
          'HRESULT',
        );
        check(typeDef.hasAttribute('DocumentationAttribute')).isTrue();
      });

      test('returns false if the attribute does not exist', () {
        final typeDef = index.findSingleType(
          'Windows.Win32.Foundation',
          'HRESULT',
        );
        check(typeDef.hasAttribute('NonExistentAttribute')).isFalse();
      });
    });
  });
}
