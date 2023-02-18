@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Struct has expected number of fields', () {
    final scope = MetadataStore.getWin32Scope();
    final struct = scope.findTypeDef('Windows.Win32.Graphics.Gdi.XFORM')!;
    check(struct.fields.length).equals(6);
  });

  test('Struct primitive field has expected name and type', () {
    final scope = MetadataStore.getWin32Scope();
    final struct = scope.findTypeDef('Windows.Win32.Graphics.Gdi.XFORM')!;
    check(struct.fields.first.name).equals('eM11');
    check(struct.fields.first.typeIdentifier.baseType)
        .equals(BaseType.floatType);
  });

  test('Struct valuetype field has expected name and type', () {
    final scope = MetadataStore.getWin32Scope();
    final struct = scope
        .findTypeDef('Windows.Win32.System.Threading.PROCESS_INFORMATION')!;
    check(struct.fields.first.name).equals('hProcess');
    check(struct.fields.first.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(struct.fields.first.typeIdentifier.name).endsWith('HANDLE');
  });

  test('Struct array field has expected name and type', () {
    final scope = MetadataStore.getWin32Scope();
    final struct = scope.findTypeDef('Windows.Win32.Graphics.Gdi.BITMAPINFO')!;
    check(struct.fields.last.name).equals('bmiColors');
    check(struct.fields.last.typeIdentifier.baseType)
        .equals(BaseType.arrayTypeModifier);
    check(struct.fields.last.typeIdentifier.typeArg!.name).endsWith('RGBQUAD');
  });

  test('Struct array field has expected name and type 2', () {
    final scope = MetadataStore.getWin32Scope();
    final struct =
        scope.findTypeDef('Windows.Win32.Graphics.Gdi.DESIGNVECTOR')!;
    check(struct.fields.last.name).equals('dvValues');
    check(struct.fields.last.typeIdentifier.baseType)
        .equals(BaseType.arrayTypeModifier);
    check(struct.fields.last.typeIdentifier.typeArg?.baseType)
        .equals(BaseType.int32Type);
    check(struct.fields.last.typeIdentifier.arrayDimensions).isNotNull();
    check(struct.fields.last.typeIdentifier.arrayDimensions!.length).equals(1);
    check(struct.fields.last.typeIdentifier.arrayDimensions!.first).equals(16);
  });

  test('Struct PHYSICAL_MONITOR contains an array of chars', () {
    final scope = MetadataStore.getWin32Scope();
    final struct =
        scope.findTypeDef('Windows.Win32.Devices.Display.PHYSICAL_MONITOR')!;
    final szPhysicalMonitorDescription = struct.fields[1];

    check(szPhysicalMonitorDescription.typeIdentifier.baseType)
        .equals(BaseType.arrayTypeModifier);
    check(szPhysicalMonitorDescription.typeIdentifier.typeArg?.baseType)
        .equals(BaseType.charType);
  });

  test('Small struct array fields have the correct dimensions', () {
    final scope = MetadataStore.getWin32Scope();
    final struct =
        scope.findTypeDef('Windows.Win32.Storage.FileSystem.WIN32_FIND_DATAW')!;
    final cAlternateFileName = struct.fields[9];
    check(cAlternateFileName.name).equals('cAlternateFileName');
    check(cAlternateFileName.typeIdentifier.arrayDimensions?.first).equals(14);
  });

  test('Large struct array fields have the correct dimensions', () {
    final scope = MetadataStore.getWin32Scope();
    final struct =
        scope.findTypeDef('Windows.Win32.Storage.FileSystem.WIN32_FIND_DATAW')!;
    final cFileName = struct.fields[8];
    check(cFileName.name).equals('cFileName');
    check(cFileName.typeIdentifier.arrayDimensions?.first).equals(260);
  });

  test('Non-nested types are identified correctly', () {
    final scope = MetadataStore.getWin32Scope();
    final struct = scope.findTypeDef('Windows.Win32.UI.Controls.CCINFOW')!;
    check(struct.enclosingClass).isNull();
  });

  test('Nested types are identified correctly', () {
    final scope = MetadataStore.getWin32Scope();
    final struct =
        scope.findTypeDef('Windows.Win32.UI.Input.KeyboardAndMouse.INPUT')!;

    final lastFieldType = struct.fields.last.typeIdentifier.type;
    check(lastFieldType).isNotNull();

    check(lastFieldType!.isNested).isTrue();
    check(lastFieldType.enclosingClass).equals(struct);
  });

  test('Union structs are identified correctly', () {
    final scope = MetadataStore.getWin32Scope();
    final struct =
        scope.findTypeDef('Windows.Win32.UI.Input.KeyboardAndMouse.INPUT')!;

    // INPUT is not itself a union, but it contains a union.
    check(struct.isUnion).isFalse();

    final lastFieldType = struct.fields.last.typeIdentifier.type;
    check(lastFieldType).isNotNull();
    check(lastFieldType!.isUnion).isTrue();
  });

  test('Union structs have correct parent', () {
    final scope = MetadataStore.getWin32Scope();
    final struct =
        scope.findTypeDef('Windows.Win32.UI.Input.KeyboardAndMouse.INPUT')!;

    // INPUT is not itself a union, but it contains a union.
    check(struct.isUnion).isFalse();
    final lastFieldType = struct.fields.last.typeIdentifier.type;
    check(lastFieldType).isNotNull();

    check(lastFieldType!.enclosingClass).equals(struct);
  });

  test('Can identify platform architecture', () {
    final scope = MetadataStore.getWin32Scope();
    final structs = scope.typeDefs.where(
        (type) => type.name == 'Windows.Win32.UI.Shell.SHELLEXECUTEINFOW');
    check(structs.length).equals(2);
    for (final struct in structs) {
      final supportedArchAttribute = struct.customAttributes.where((attr) =>
          attr.name == 'Windows.Win32.Interop.SupportedArchitectureAttribute');
      check(supportedArchAttribute).isNotNull();

      // One structure for 64-bit, one structure for 32-bit
      check((struct.supportedArchitectures.x64 &&
                  struct.supportedArchitectures.arm64 &&
                  !struct.supportedArchitectures.x86) ||
              struct.supportedArchitectures.x86)
          .isTrue();
    }
  });

  test('Can access nested type even if resolution scope token does not match',
      () {
    final scope = MetadataStore.getWin32Scope();
    final struct = scope.findTypeDef('Windows.Win32.System.Kernel.SLIST_HEADER',
        preferredArchitecture: PreferredArchitecture.x64);

    check(struct).isNotNull();
    check(struct!.fields.last.name).equals('HeaderX64');
  });

  test('Can distinguish global tokens', () {
    final scope = MetadataStore.getWin32Scope();
    final struct = scope.findTypeDef('Windows.Win32.System.Kernel.SLIST_HEADER',
        preferredArchitecture: PreferredArchitecture.x64);

    check(struct).isNotNull();
    check(struct!.isGlobal).isFalse();

    // _Anonymous_e__Struct
    final nestedStruct = struct.fields.last.typeIdentifier.type!;
    check(nestedStruct.isGlobal).isFalse();
  });
}
