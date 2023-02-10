@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Windows Runtime is available on test machine', () {
    check(isWindowsRuntimeAvailable()).isTrue();
  });

  test('Can successfully find the location of a WinRT metadata file', () {
    final file =
        MetadataStore.winmdFileContainingType('Windows.Globalization.Calendar');
    check(file.path).endsWith(r'WinMetadata\Windows.Globalization.winmd');
  });

  test('Can successfully find a module', () {
    final file = MetadataStore.getWin32Scope();
    check(file.moduleToken).equals(0x00000001);
  });

  test('WinmdException', () {
    final exception = WinmdException('Test message');
    check(exception.toString()).endsWith('Test message');
  });

  test('Architectures 1', () {
    final arch = Architecture.all();
    check(arch.arm64).isTrue();
    check(arch.x86).isTrue();
    check(arch.x64).isTrue();
  });

  test('Architectures 2', () {
    final arch = const Architecture(0);
    check(arch.arm64).isFalse();
    check(arch.x86).isFalse();
    check(arch.x64).isFalse();
  });

  test('Unknown token TypeDef 1', () {
    final scope = MetadataStore.getWin32Scope();
    const invalidTokenType = 0xFF123456;

    check(() => TypeDef.fromToken(scope, invalidTokenType))
        .throws<WinmdException>()
        .has((exc) => exc.message, 'message')
        .equals('Unrecognized token type 0xff');
  });

  test('Unknown token TypeDef 2', () {
    final scope = MetadataStore.getWin32Scope();
    const nonTypeDefToken = 0x1A123456;

    check(() => TypeDef.fromToken(scope, nonTypeDefToken))
        .throws<WinmdException>()
        .has((exc) => exc.message, 'message')
        .equals('Unrecognized token 0x1a123456');
  });

  test('Unknown token TypeDef 3', () {
    final scope = MetadataStore.getWin32Scope();
    const missingTypeDefToken = 0x02FEDCBA;

    check(() => TypeDef.fromToken(scope, missingTypeDefToken))
        .throws<WindowsException>() // typeDef missing type
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token ClassLayout', () {
    final scope = MetadataStore.getWin32Scope();
    const invalidClassLayoutToken = 0x02FEDCBA;

    check(() => ClassLayout(scope, invalidClassLayoutToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token CustomAttribute', () {
    final scope = MetadataStore.getWin32Scope();
    const invalidCustomAttributeToken = 0x0CFEDCBA;

    check(() => CustomAttribute.fromToken(scope, invalidCustomAttributeToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token Event', () {
    final scope = MetadataStore.getWin32Scope();
    const invalidEventToken = 0x14FEDCBA;

    check(() => Event.fromToken(scope, invalidEventToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token Field', () {
    final scope = MetadataStore.getWin32Scope();
    const invalidFieldToken = 0x04FEDCBA;

    check(() => Field.fromToken(scope, invalidFieldToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token GenericParam', () {
    final scope = MetadataStore.getWin32Scope();
    const invalidGenericParamToken = 0x2AFEDCBA;

    check(() => GenericParam.fromToken(scope, invalidGenericParamToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token GenericParamConstraint', () {
    final scope = MetadataStore.getWin32Scope();
    const invalidGenericParamConstraintToken = 0x2CFEDCBA;

    check(() => GenericParamConstraint.fromToken(
        scope, invalidGenericParamConstraintToken)).throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token MemberRef', () {
    final scope = MetadataStore.getWin32Scope();
    const invalidMemberRefToken = 0x0AFEDCBA;

    check(() => MemberRef.fromToken(scope, invalidMemberRefToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token Method', () {
    final scope = MetadataStore.getWin32Scope();
    const invalidMethodToken = 0x06FEDCBA;

    check(() => Method.fromToken(scope, invalidMethodToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token ModuleRef', () {
    final scope = MetadataStore.getWin32Scope();
    const invalidModuleRefToken = 0x1AFEDCBA;

    check(() => ModuleRef.fromToken(scope, invalidModuleRefToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token Parameter', () {
    final scope = MetadataStore.getWin32Scope();
    const invalidParameterToken = 0x08FEDCBA;

    check(() => Parameter.fromToken(scope, invalidParameterToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token PinvokeMap', () {
    final scope = MetadataStore.getWin32Scope();
    const invalidPinvokeMapToken = 0x06FEDCBA;

    check(() => PinvokeMap.fromToken(scope, invalidPinvokeMapToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_RECORD_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131130');
  });

  test('Unknown token Property', () {
    final scope = MetadataStore.getWin32Scope();
    const invalidPropertyToken = 0x17FEDCBA;

    check(() => Property.fromToken(scope, invalidPropertyToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });
}
