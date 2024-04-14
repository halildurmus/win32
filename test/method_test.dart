// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  late Scope win32Scope;
  late Scope winrtScope;

  setUpAll(() async {
    win32Scope = await MetadataStore.loadWin32Metadata();
    winrtScope = await MetadataStore.loadWinRTMetadata();
  });

  test('Method properties 1', () {
    final typeDef = winrtScope
        .findTypeDef('Windows.Foundation.Diagnostics.AsyncCausalityTracer');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('TraceSynchronousWorkCompletion');
    check(method).isNotNull();
    check(method!.isAbstract).isFalse();
    check(method.isHideBySig).isTrue();
    check(method.isStatic).isTrue();
    check(method.isVirtual).isFalse();
    check(method.parent).equals(typeDef);
    check(method.toString()).equals('[voidType] TraceSynchronousWorkCompletion'
        '(CausalityTraceLevel traceLevel, '
        'CausalitySource source, '
        'CausalitySynchronousWork work)');
    check(method.vTableLayout).equals(VtableLayout.reuseSlot);
  });

  test('Method properties 2', () {
    final typeDef = winrtScope.findTypeDef(
        'Windows.Foundation.Diagnostics.IAsyncCausalityTracerStatics');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('TraceSynchronousWorkCompletion');
    check(method).isNotNull();
    check(method!.isAbstract).isTrue();
    check(method.isHideBySig).isTrue();
    check(method.isVirtual).isTrue();
    check(method.parent).equals(typeDef);
    check(method.vTableLayout).equals(VtableLayout.newSlot);
  });

  test('Method properties 3', () {
    const methodName = 'DoDragDrop';
    final typeDef = win32Scope.findTypeDef('Windows.Win32.System.Ole.Apis');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod(methodName);
    check(method).isNotNull();
    check(method!.implFeatures.isAggressiveInlining).isFalse();
    check(method.implFeatures.isForwardRef).isFalse();
    check(method.implFeatures.isManaged).isTrue();
    check(method.implFeatures.isNoInlining).isFalse();
    check(method.implFeatures.isNoOptimization).isFalse();
    check(method.implFeatures.isPreserveSig).isFalse();
    check(method.implFeatures.isSynchronized).isFalse();
    check(method.isAbstract).isFalse();
    check(method.isHideBySig).isTrue();
    check(method.isPinvokeImpl).isTrue();
    check(method.isStatic).isTrue();
    check(method.parent).equals(typeDef);
    check(method.pinvokeMap.callingConvention).equals(CallingConvention.winApi);
    check(method.pinvokeMap.importName).equals(methodName);
    check(method.pinvokeMap.isNoMangle).isTrue();
    check(method.vTableLayout).equals(VtableLayout.reuseSlot);

    final importDllToken = method.pinvokeMap.importDllToken;
    final moduleRef = ModuleRef.fromToken(win32Scope, importDllToken);
    check(moduleRef.name).equals('OLE32.dll');
  });

  test('Method properties 4', () {
    const methodName = 'GetAltMonthNames';
    final typeDef = win32Scope.findTypeDef('Windows.Win32.System.Ole.Apis');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod(methodName);
    check(method).isNotNull();

    check(method!.isPinvokeImpl).isTrue();
    check(method.pinvokeMap.bestFitConvention).equals(BestFit.useAssem);
    check(method.pinvokeMap.importName).equals(methodName);
    check(method.pinvokeMap.isNoMangle).isTrue();
    check(method.pinvokeMap.stringMarshalConvention)
        .equals(StringMarshalConvention.notSpecified);
    check(method.pinvokeMap.throwOnUnmappableCharConvention)
        .equals(ThrowOnUnmappableChar.useAssem);
  });

  test('Methods with arrays have correct parameters', () {
    final typeDef =
        winrtScope.findTypeDef('Windows.Foundation.Diagnostics.ILoggingFields');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('AddInt32Array');
    check(method).isNotNull();
    check(method!.parameters.length).equals(5);
    check(method.parameters.last.name).equals('tags');
    check(method.parameters.last.typeIdentifier.baseType)
        .equals(BaseType.int32Type);
  });

  tearDownAll(MetadataStore.close);
}
