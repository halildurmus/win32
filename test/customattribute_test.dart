@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winmd/src/com/constants.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Create custom attribute from invalid token fails', () {
    final scope = MetadataStore.getWin32Scope();

    expect(
        () => CustomAttribute.fromToken(scope, -1),
        throwsA(predicate(
            (e) => e is WindowsException && e.hr == CLDB_E_INDEX_NOTFOUND)));
  });

  test('Custom attribute has a name', () {
    final mc = MetadataStore.getMetadataForType('Windows.Media.MediaControl');

    expect(mc?.customAttributes.length, equals(5));

    final attributes = mc?.customAttributes.map((a) => a.toString());
    expect(attributes,
        contains('Windows.Foundation.Metadata.DeprecatedAttribute'));
  });

  test('Custom attribute in WinRT is correctly specified', () {
    final mc = MetadataStore.getMetadataForType('Windows.Media.MediaControl');

    final found = mc?.customAttributes
        .where((a) => a.name.endsWith('DeprecatedAttribute'));
    expect(found, isNotNull);
    expect(found!.length, equals(1));

    final deprecated = found.first;
    expect(
        deprecated.signatureBlob.sublist(0, 2), equals([0x01, 0x00])); // prolog

    final ref = MemberRef.fromToken(deprecated.scope, 0x0A000015);
    expect(ref.signatureBlob.length, equals(9));
    expect(ref.signatureBlob.toList(),
        containsAllInOrder([0x20, 0x04, 0x01, 0x0e]));

    expect(deprecated.memberRef.tokenType, equals(TokenType.MemberRef));
    expect(deprecated.memberRef.name, equals('.ctor'));
    expect(deprecated.constructor.name, endsWith('DeprecatedAttribute'));

    expect(deprecated.parameters.length, equals(4));
    expect(deprecated.parameters[0].type.baseType, equals(BaseType.String));
    expect(deprecated.parameters[1].type.baseType,
        equals(BaseType.ValueTypeModifier));
    expect(deprecated.parameters[2].type.baseType, equals(BaseType.Uint32));
    expect(deprecated.parameters[3].type.baseType, equals(BaseType.String));

    expect(deprecated.parameters[0].value, isA<String>());
    expect(
        deprecated.parameters[0].value,
        equals('MediaControl may be altered or unavailable for releases after '
            'Windows 8.1. Instead, use SystemMediaTransportControls.'));
    expect(deprecated.parameters[1].value, isA<int>());
    expect(deprecated.parameters[1].value, equals(0));
    expect(deprecated.parameters[2].value, isA<int>());
    expect(deprecated.parameters[2].value, equals(65536));
    expect(deprecated.parameters[3].value, isA<String>());
    expect(deprecated.parameters[3].value,
        equals('Windows.Media.MediaControlContract'));
  });

  test('Custom attribute in Win32 is correctly specified', () {
    final scope = MetadataStore.getWin32Scope();
    final shexInfo =
        scope.findTypeDef('Windows.Win32.UI.Shell.SHELLEXECUTEINFOW');

    final found = shexInfo?.customAttributes
        .where((a) => a.name.endsWith('SupportedArchitectureAttribute'));
    expect(found, isNotNull);
    expect(found!.length, equals(1));

    final archAttr = found.first;
    expect(
        archAttr.signatureBlob.sublist(0, 2), equals([0x01, 0x00])); // prolog

    expect(archAttr.parameters.length, equals(1));
    expect(archAttr.parameters[0].type.baseType,
        equals(BaseType.ValueTypeModifier));
    expect(archAttr.parameters[0].type.name,
        equals('Windows.Win32.Interop.Architecture'));

    expect(archAttr.parameters[0].value, isA<int>());
    // Depending on which one we get first, we'll either get ARM or X86/X64
    expect(archAttr.parameters[0].value, isIn([0x01, 0x06]));
  });

  test('Multiple custom attributes with same name', () {
    final scope = MetadataStore.getWin32Scope();
    final hrsrc = scope.findTypeDef('Windows.Win32.Foundation.HRSRC')!;

    expect(hrsrc.customAttributes.length, equals(3));

    final invalidHandleValues = hrsrc.customAttributes.where(
        (element) => element.name.endsWith('InvalidHandleValueAttribute'));
    expect(invalidHandleValues.length, equals(2));
    expect(invalidHandleValues.first.parameters.first.type.baseType,
        equals(BaseType.Int64));
    expect(invalidHandleValues.first.parameters.first.value, isIn([-1, 0]));
    expect(invalidHandleValues.last.parameters.first.type.baseType,
        equals(BaseType.Int64));
    expect(invalidHandleValues.last.parameters.first.value, isIn([-1, 0]));
  });

  test('Find a matching attribute', () {
    final scope = MetadataStore.getWin32Scope();
    final hwnd = scope.findTypeDef('Windows.Win32.Foundation.HWND')!;

    expect(hwnd.existsAttribute('Windows.Win32.Interop.NativeTypedefAttribute'),
        isTrue);
  });

  test('Missing attributes are not found', () {
    final scope = MetadataStore.getWin32Scope();
    final hwnd = scope.findTypeDef('Windows.Win32.Foundation.HWND')!;

    expect(hwnd.existsAttribute('Windows.SparklesTheCatAttribute'), isFalse);
  });
}
