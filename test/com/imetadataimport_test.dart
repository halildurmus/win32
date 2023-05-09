// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_local_variable

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';

import 'package:win32/win32.dart';

void main() {
  final ptr = calloc<COMObject>();

  final metadataimport = IMetaDataImport(ptr);
  test('Can instantiate IMetaDataImport.closeEnum', () {
    expect(metadataimport.closeEnum, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.countEnum', () {
    expect(metadataimport.countEnum, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.resetEnum', () {
    expect(metadataimport.resetEnum, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumTypeDefs', () {
    expect(metadataimport.enumTypeDefs, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumInterfaceImpls', () {
    expect(metadataimport.enumInterfaceImpls, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumTypeRefs', () {
    expect(metadataimport.enumTypeRefs, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.findTypeDefByName', () {
    expect(metadataimport.findTypeDefByName, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getScopeProps', () {
    expect(metadataimport.getScopeProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getModuleFromScope', () {
    expect(metadataimport.getModuleFromScope, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getTypeDefProps', () {
    expect(metadataimport.getTypeDefProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getInterfaceImplProps', () {
    expect(metadataimport.getInterfaceImplProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getTypeRefProps', () {
    expect(metadataimport.getTypeRefProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.resolveTypeRef', () {
    expect(metadataimport.resolveTypeRef, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumMembers', () {
    expect(metadataimport.enumMembers, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumMembersWithName', () {
    expect(metadataimport.enumMembersWithName, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumMethods', () {
    expect(metadataimport.enumMethods, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumMethodsWithName', () {
    expect(metadataimport.enumMethodsWithName, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumFields', () {
    expect(metadataimport.enumFields, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumFieldsWithName', () {
    expect(metadataimport.enumFieldsWithName, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumParams', () {
    expect(metadataimport.enumParams, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumMemberRefs', () {
    expect(metadataimport.enumMemberRefs, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumMethodImpls', () {
    expect(metadataimport.enumMethodImpls, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumPermissionSets', () {
    expect(metadataimport.enumPermissionSets, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.findMember', () {
    expect(metadataimport.findMember, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.findMethod', () {
    expect(metadataimport.findMethod, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.findField', () {
    expect(metadataimport.findField, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.findMemberRef', () {
    expect(metadataimport.findMemberRef, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getMethodProps', () {
    expect(metadataimport.getMethodProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getMemberRefProps', () {
    expect(metadataimport.getMemberRefProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumProperties', () {
    expect(metadataimport.enumProperties, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumEvents', () {
    expect(metadataimport.enumEvents, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getEventProps', () {
    expect(metadataimport.getEventProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumMethodSemantics', () {
    expect(metadataimport.enumMethodSemantics, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getMethodSemantics', () {
    expect(metadataimport.getMethodSemantics, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getClassLayout', () {
    expect(metadataimport.getClassLayout, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getFieldMarshal', () {
    expect(metadataimport.getFieldMarshal, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getRVA', () {
    expect(metadataimport.getRVA, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getPermissionSetProps', () {
    expect(metadataimport.getPermissionSetProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getSigFromToken', () {
    expect(metadataimport.getSigFromToken, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getModuleRefProps', () {
    expect(metadataimport.getModuleRefProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumModuleRefs', () {
    expect(metadataimport.enumModuleRefs, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getTypeSpecFromToken', () {
    expect(metadataimport.getTypeSpecFromToken, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getNameFromToken', () {
    expect(metadataimport.getNameFromToken, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumUnresolvedMethods', () {
    expect(metadataimport.enumUnresolvedMethods, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getUserString', () {
    expect(metadataimport.getUserString, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getPinvokeMap', () {
    expect(metadataimport.getPinvokeMap, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumSignatures', () {
    expect(metadataimport.enumSignatures, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumTypeSpecs', () {
    expect(metadataimport.enumTypeSpecs, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumUserStrings', () {
    expect(metadataimport.enumUserStrings, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getParamForMethodIndex', () {
    expect(metadataimport.getParamForMethodIndex, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.enumCustomAttributes', () {
    expect(metadataimport.enumCustomAttributes, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getCustomAttributeProps', () {
    expect(metadataimport.getCustomAttributeProps, isA<Function>());
  });
  // test('Can instantiate IMetaDataImport.findTypeRef', () {
  //   expect(metadataimport.findTypeRef, isA<Function>());
  // });
  test('Can instantiate IMetaDataImport.getMemberProps', () {
    expect(metadataimport.getMemberProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getFieldProps', () {
    expect(metadataimport.getFieldProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getPropertyProps', () {
    expect(metadataimport.getPropertyProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getParamProps', () {
    expect(metadataimport.getParamProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getCustomAttributeByName', () {
    expect(metadataimport.getCustomAttributeByName, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.isValidToken', () {
    expect(metadataimport.isValidToken, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getNestedClassProps', () {
    expect(metadataimport.getNestedClassProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.getNativeCallConvFromSig', () {
    expect(metadataimport.getNativeCallConvFromSig, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.isGlobal', () {
    expect(metadataimport.isGlobal, isA<Function>());
  });
}
