@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Custom attribute has a name', () {
    final mc = MetadataStore.getMetadataForType('Windows.Media.MediaControl');

    check(mc?.customAttributes.length).equals(5);

    final attributes = mc!.customAttributes.map((a) => a.toString());
    check(attributes)
        .contains('Windows.Foundation.Metadata.DeprecatedAttribute');
  });

  test('Custom attribute in WinRT is correctly specified', () {
    final mc = MetadataStore.getMetadataForType('Windows.Media.MediaControl');

    final found = mc?.customAttributes
        .where((a) => a.name.endsWith('DeprecatedAttribute'));
    check(found).isNotNull();
    check(found!.length).equals(1);

    final deprecated = found.first;
    check(deprecated.signatureBlob.sublist(0, 2).toList())
        .deepEquals([0x01, 0x00]); // prolog

    final ref = MemberRef.fromToken(deprecated.scope, 0x0A000015);
    check(ref.signatureBlob.length).equals(9);
    check(ref.signatureBlob.toList()).containsInOrder([0x20, 0x04, 0x01, 0x0e]);

    check(deprecated.memberRef.tokenType).equals(TokenType.memberRef);
    check(deprecated.memberRef.name).equals('.ctor');
    check(deprecated.constructor.name).endsWith('DeprecatedAttribute');

    check(deprecated.parameters.length).equals(4);
    check(deprecated.parameters[0].type.baseType).equals(BaseType.stringType);
    check(deprecated.parameters[1].type.baseType)
        .equals(BaseType.valueTypeModifier);
    check(deprecated.parameters[2].type.baseType).equals(BaseType.uint32Type);
    check(deprecated.parameters[3].type.baseType).equals(BaseType.stringType);

    check(deprecated.parameters[0].value).isA<String>();
    check(deprecated.parameters[0].value)
        .equals('MediaControl may be altered or unavailable for releases after '
            'Windows 8.1. Instead, use SystemMediaTransportControls.');
    check(deprecated.parameters[1].value).isA<int>();
    check(deprecated.parameters[1].value).equals(0);
    check(deprecated.parameters[2].value).isA<int>();
    check(deprecated.parameters[2].value).equals(65536);
    check(deprecated.parameters[3].value).isA<String>();
    check(deprecated.parameters[3].value)
        .equals('Windows.Media.MediaControlContract');
  });

  test('Custom attribute in Win32 is correctly specified', () {
    final scope = MetadataStore.getWin32Scope();
    final shexInfo =
        scope.findTypeDef('Windows.Win32.UI.Shell.SHELLEXECUTEINFOW');

    final found = shexInfo?.customAttributes
        .where((a) => a.name.endsWith('SupportedArchitectureAttribute'));
    check(found).isNotNull();
    check(found!.length).equals(1);

    final archAttr = found.first;
    check(archAttr.signatureBlob.sublist(0, 2).toList())
        .deepEquals(<int>[0x01, 0x00]); // prolog

    check(archAttr.parameters.length).equals(1);
    check(archAttr.parameters[0].type.baseType)
        .equals(BaseType.valueTypeModifier);
    check(archAttr.parameters[0].type.name)
        .equals('Windows.Win32.Interop.Architecture');

    check(archAttr.parameters[0].value).isA<int>();
    // Depending on which one we get first, we'll either get ARM or X86/X64
    check(archAttr.parameters[0].value)
        .anyOf([it()..equals(0x01), it()..equals(0x06)]);
  });

  test('Multiple custom attributes with same name', () {
    final scope = MetadataStore.getWin32Scope();
    final hrsrc = scope.findTypeDef('Windows.Win32.Foundation.HRSRC')!;

    check(hrsrc.customAttributes.length).equals(3);

    final invalidHandleValues = hrsrc.customAttributes.where(
        (element) => element.name.endsWith('InvalidHandleValueAttribute'));
    check(invalidHandleValues.length).equals(2);
    check(invalidHandleValues.first.parameters.first.type.baseType)
        .equals(BaseType.int64Type);
    check(invalidHandleValues.first.parameters.first.value)
        .anyOf([it()..equals(-1), it()..equals(0)]);

    check(invalidHandleValues.last.parameters.first.type.baseType)
        .equals(BaseType.int64Type);
    check(invalidHandleValues.last.parameters.first.value)
        .anyOf([it()..equals(-1), it()..equals(0)]);
  });

  test('Find a matching attribute', () {
    final scope = MetadataStore.getWin32Scope();
    final hwnd = scope.findTypeDef('Windows.Win32.Foundation.HWND')!;

    check(hwnd.existsAttribute('Windows.Win32.Interop.NativeTypedefAttribute'))
        .isTrue();
  });

  test('Missing attributes are not found', () {
    final scope = MetadataStore.getWin32Scope();
    final hwnd = scope.findTypeDef('Windows.Win32.Foundation.HWND')!;

    check(hwnd.existsAttribute('Windows.SparklesTheCatAttribute')).isFalse();
  });

  test('Uint16 and Uint8', () {
    final itn = MetadataStore.getMetadataForType(
        'Windows.UI.Notifications.IToastNotification')!;
    final guid =
        itn.findAttribute('Windows.Win32.Foundation.Metadata.GuidAttribute')!;
    check(guid.parameters.length).equals(11);
    check(guid.parameters[0].value).equals(0x997e2675);
    check(guid.parameters[1].value).equals(0x059e);
    check(guid.parameters[2].value).equals(0x4e60);
    check(guid.parameters[3].value).equals(0x8b);
    check(guid.parameters[4].value).equals(0x06);
    check(guid.parameters[10].value).equals(0x80);
  });

  test('Minimum Windows version', () {
    final scope = MetadataStore.getWin32Scope();
    final commApis =
        scope.findTypeDef('Windows.Win32.Devices.Communication.Apis')!;
    final getCommPorts = commApis.findMethod('GetCommPorts')!;
    final minVersion = getCommPorts
        .findAttribute('Windows.Win32.Interop.SupportedOSPlatformAttribute')!;
    check(minVersion.parameters.length).equals(1);
    check(minVersion.parameters.first.value).equals('windows10.0.17134');
  });
}
