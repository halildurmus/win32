// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

void main() {
  late Scope win32Scope;

  setUpAll(() async {
    win32Scope = await MetadataStore.loadWin32Metadata();
  });

  test('Windows Runtime is available on test machine', () {
    check(isWindowsRuntimeAvailable()).isTrue();
  });

  test('Can successfully find a module', () {
    check(win32Scope.moduleToken).equals(0x00000001);
  });

  test('Architecture 1', () {
    final arch = Architecture.all();
    check(arch.arm64).isTrue();
    check(arch.x86).isTrue();
    check(arch.x64).isTrue();
  });

  test('Architecture 2', () {
    final arch = const Architecture(0);
    check(arch.arm64).isFalse();
    check(arch.x86).isFalse();
    check(arch.x64).isFalse();
  });

  test('Unknown token ClassLayout', () {
    const invalidClassLayoutToken = 0x02FEDCBA;
    check(() => ClassLayout(win32Scope, invalidClassLayoutToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token CustomAttribute', () {
    const invalidCustomAttributeToken = 0x0CFEDCBA;
    check(() =>
            CustomAttribute.fromToken(win32Scope, invalidCustomAttributeToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token Event', () {
    const invalidEventToken = 0x14FEDCBA;
    check(() => Event.fromToken(win32Scope, invalidEventToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token Field', () {
    const invalidFieldToken = 0x04FEDCBA;
    check(() => Field.fromToken(win32Scope, invalidFieldToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token GenericParam', () {
    const invalidGenericParamToken = 0x2AFEDCBA;
    check(() => GenericParam.fromToken(win32Scope, invalidGenericParamToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token GenericParamConstraint', () {
    const invalidGenericParamConstraintToken = 0x2CFEDCBA;
    check(() => GenericParamConstraint.fromToken(
            win32Scope, invalidGenericParamConstraintToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token MemberRef', () {
    const invalidMemberRefToken = 0x0AFEDCBA;
    check(() => MemberRef.fromToken(win32Scope, invalidMemberRefToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token Method', () {
    const invalidMethodToken = 0x06FEDCBA;
    check(() => Method.fromToken(win32Scope, invalidMethodToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token ModuleRef', () {
    const invalidModuleRefToken = 0x1AFEDCBA;
    check(() => ModuleRef.fromToken(win32Scope, invalidModuleRefToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token Parameter', () {
    const invalidParameterToken = 0x08FEDCBA;
    check(() => Parameter.fromToken(win32Scope, invalidParameterToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token PinvokeMap', () {
    const invalidPinvokeMapToken = 0x06FEDCBA;
    check(() => PinvokeMap.fromToken(win32Scope, invalidPinvokeMapToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_RECORD_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131130');
  });

  test('Unknown token Property', () {
    const invalidPropertyToken = 0x17FEDCBA;
    check(() => Property.fromToken(win32Scope, invalidPropertyToken))
        .throws<WindowsException>()
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('Unknown token TypeDef 1', () {
    const invalidTokenType = 0xFF123456;
    check(() => TypeDef.fromToken(win32Scope, invalidTokenType))
        .throws<WinmdException>()
        .has((exc) => exc.message, 'message')
        .equals('Unrecognized token type 0xff');
  });

  test('Unknown token TypeDef 2', () {
    const nonTypeDefToken = 0x1A123456;
    check(() => TypeDef.fromToken(win32Scope, nonTypeDefToken))
        .throws<WinmdException>()
        .has((exc) => exc.message, 'message')
        .equals('Unrecognized token 0x1a123456');
  });

  test('Unknown token TypeDef 3', () {
    const missingTypeDefToken = 0x02FEDCBA;
    check(() => TypeDef.fromToken(win32Scope, missingTypeDefToken))
        .throws<WindowsException>() // typeDef missing type
      ..has((exc) => exc.hr, 'hr').equals(CLDB_E_INDEX_NOTFOUND)
      ..has((exc) => exc.toString(), 'toString()')
          .startsWith('Error 0x80131124');
  });

  test('WinmdException', () {
    const exception = WinmdException('Test message');
    check(exception.toString()).equals('WinmdException: Test message');
  });

  tearDownAll(MetadataStore.close);
}
