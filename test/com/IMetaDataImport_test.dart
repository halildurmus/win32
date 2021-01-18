// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

@TestOn('windows')

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';

import 'package:win32/win32.dart';

void main() {
  final ptr = calloc<COMObject>();

  final metadataimport = IMetaDataImport(ptr);
  test('Can instantiate IMetaDataImport.CloseEnum', () {
    expect(metadataimport.CloseEnum, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.CountEnum', () {
    expect(metadataimport.CountEnum, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.ResetEnum', () {
    expect(metadataimport.ResetEnum, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumTypeDefs', () {
    expect(metadataimport.EnumTypeDefs, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumInterfaceImpls', () {
    expect(metadataimport.EnumInterfaceImpls, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumTypeRefs', () {
    expect(metadataimport.EnumTypeRefs, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.FindTypeDefByName', () {
    expect(metadataimport.FindTypeDefByName, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetScopeProps', () {
    expect(metadataimport.GetScopeProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetModuleFromScope', () {
    expect(metadataimport.GetModuleFromScope, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetTypeDefProps', () {
    expect(metadataimport.GetTypeDefProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetInterfaceImplProps', () {
    expect(metadataimport.GetInterfaceImplProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetTypeRefProps', () {
    expect(metadataimport.GetTypeRefProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.ResolveTypeRef', () {
    expect(metadataimport.ResolveTypeRef, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumMembers', () {
    expect(metadataimport.EnumMembers, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumMembersWithName', () {
    expect(metadataimport.EnumMembersWithName, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumMethods', () {
    expect(metadataimport.EnumMethods, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumMethodsWithName', () {
    expect(metadataimport.EnumMethodsWithName, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumFields', () {
    expect(metadataimport.EnumFields, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumFieldsWithName', () {
    expect(metadataimport.EnumFieldsWithName, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumParams', () {
    expect(metadataimport.EnumParams, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumMemberRefs', () {
    expect(metadataimport.EnumMemberRefs, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumMethodImpls', () {
    expect(metadataimport.EnumMethodImpls, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumPermissionSets', () {
    expect(metadataimport.EnumPermissionSets, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.FindMember', () {
    expect(metadataimport.FindMember, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.FindMethod', () {
    expect(metadataimport.FindMethod, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.FindField', () {
    expect(metadataimport.FindField, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.FindMemberRef', () {
    expect(metadataimport.FindMemberRef, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetMethodProps', () {
    expect(metadataimport.GetMethodProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetMemberRefProps', () {
    expect(metadataimport.GetMemberRefProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumProperties', () {
    expect(metadataimport.EnumProperties, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumEvents', () {
    expect(metadataimport.EnumEvents, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetEventProps', () {
    expect(metadataimport.GetEventProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumMethodSemantics', () {
    expect(metadataimport.EnumMethodSemantics, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetMethodSemantics', () {
    expect(metadataimport.GetMethodSemantics, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetClassLayout', () {
    expect(metadataimport.GetClassLayout, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetFieldMarshal', () {
    expect(metadataimport.GetFieldMarshal, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetRVA', () {
    expect(metadataimport.GetRVA, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetPermissionSetProps', () {
    expect(metadataimport.GetPermissionSetProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetSigFromToken', () {
    expect(metadataimport.GetSigFromToken, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetModuleRefProps', () {
    expect(metadataimport.GetModuleRefProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumModuleRefs', () {
    expect(metadataimport.EnumModuleRefs, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetTypeSpecFromToken', () {
    expect(metadataimport.GetTypeSpecFromToken, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetNameFromToken', () {
    expect(metadataimport.GetNameFromToken, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumUnresolvedMethods', () {
    expect(metadataimport.EnumUnresolvedMethods, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetUserString', () {
    expect(metadataimport.GetUserString, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetPinvokeMap', () {
    expect(metadataimport.GetPinvokeMap, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumSignatures', () {
    expect(metadataimport.EnumSignatures, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumTypeSpecs', () {
    expect(metadataimport.EnumTypeSpecs, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumUserStrings', () {
    expect(metadataimport.EnumUserStrings, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetParamForMethodIndex', () {
    expect(metadataimport.GetParamForMethodIndex, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.EnumCustomAttributes', () {
    expect(metadataimport.EnumCustomAttributes, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetCustomAttributeProps', () {
    expect(metadataimport.GetCustomAttributeProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.FindTypeRef', () {
    expect(metadataimport.FindTypeRef, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetMemberProps', () {
    expect(metadataimport.GetMemberProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetFieldProps', () {
    expect(metadataimport.GetFieldProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetPropertyProps', () {
    expect(metadataimport.GetPropertyProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetParamProps', () {
    expect(metadataimport.GetParamProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetCustomAttributeByName', () {
    expect(metadataimport.GetCustomAttributeByName, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.IsValidToken', () {
    expect(metadataimport.IsValidToken, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetNestedClassProps', () {
    expect(metadataimport.GetNestedClassProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.GetNativeCallConvFromSig', () {
    expect(metadataimport.GetNativeCallConvFromSig, isA<Function>());
  });
  test('Can instantiate IMetaDataImport.IsGlobal', () {
    expect(metadataimport.IsGlobal, isA<Function>());
  });
  free(ptr);
}
