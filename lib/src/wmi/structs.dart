// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class WbemDefPath extends Struct {}

class WbemQuery extends Struct {}

class SWbemQueryQualifiedName extends Struct {
  @Uint32()
  external int m_uVersion;
  @Uint32()
  external int m_uTokenType;
  @Uint32()
  external int m_uNameListSize;
  external Pointer<Pointer<Utf16>> m_ppszNameList;
  @Int32()
  external int m_bArraysUsed;
  external Pointer<Int32> m_pbArrayElUsed;
  external Pointer<Uint32> m_puArrayIndex;
}

class SWbemRpnConst extends Struct {
  external Pointer<Utf16> m_pszStrVal;
  @Int32()
  external int m_bBoolVal;
  @Int32()
  external int m_lLongVal;
  @Uint32()
  external int m_uLongVal;
  @Double()
  external double m_dblVal;
  @Int64()
  external int m_lVal64;
  @Int64()
  external int m_uVal64;
}

class SWbemRpnQueryToken extends Struct {
  @Uint32()
  external int m_uVersion;
  @Uint32()
  external int m_uTokenType;
  @Uint32()
  external int m_uSubexpressionShape;
  @Uint32()
  external int m_uOperator;
  external Pointer<SWbemQueryQualifiedName> m_pRightIdent;
  external Pointer<SWbemQueryQualifiedName> m_pLeftIdent;
  @Uint32()
  external int m_uConstApparentType;
  external SWbemRpnConst m_Const;
  @Uint32()
  external int m_uConst2ApparentType;
  external SWbemRpnConst m_Const2;
  external Pointer<Utf16> m_pszRightFunc;
  external Pointer<Utf16> m_pszLeftFunc;
}

class SWbemRpnTokenList extends Struct {
  @Uint32()
  external int m_uVersion;
  @Uint32()
  external int m_uTokenType;
  @Uint32()
  external int m_uNumTokens;
}

class SWbemRpnEncodedQuery extends Struct {
  @Uint32()
  external int m_uVersion;
  @Uint32()
  external int m_uTokenType;
  @Uint64()
  external int m_uParsedFeatureMask;
  @Uint32()
  external int m_uDetectedArraySize;
  external Pointer<Uint32> m_puDetectedFeatures;
  @Uint32()
  external int m_uSelectListSize;
  external Pointer<Pointer<SWbemQueryQualifiedName>> m_ppSelectList;
  @Uint32()
  external int m_uFromTargetType;
  external Pointer<Utf16> m_pszOptionalFromPath;
  @Uint32()
  external int m_uFromListSize;
  external Pointer<Pointer<Utf16>> m_ppszFromList;
  @Uint32()
  external int m_uWhereClauseSize;
  external Pointer<Pointer<SWbemRpnQueryToken>> m_ppRpnWhereClause;
  @Double()
  external double m_dblWithinPolling;
  @Double()
  external double m_dblWithinWindow;
  @Uint32()
  external int m_uOrderByListSize;
  external Pointer<Pointer<Utf16>> m_ppszOrderByList;
  external Pointer<Uint32> m_uOrderDirectionEl;
}

class SWbemAnalysisMatrix extends Struct {
  @Uint32()
  external int m_uVersion;
  @Uint32()
  external int m_uMatrixType;
  external Pointer<Utf16> m_pszProperty;
  @Uint32()
  external int m_uPropertyType;
  @Uint32()
  external int m_uEntries;
  external Pointer<Pointer> m_pValues;
  external Pointer<Int32> m_pbTruthTable;
}

class SWbemAnalysisMatrixList extends Struct {
  @Uint32()
  external int m_uVersion;
  @Uint32()
  external int m_uMatrixType;
  @Uint32()
  external int m_uNumMatrices;
  external Pointer<SWbemAnalysisMatrix> m_pMatrices;
}

class SWbemAssocQueryInf extends Struct {
  @Uint32()
  external int m_uVersion;
  @Uint32()
  external int m_uAnalysisType;
  @Uint32()
  external int m_uFeatureMask;
  external Pointer m_pPath;
  external Pointer<Utf16> m_pszPath;
  external Pointer<Utf16> m_pszQueryText;
  external Pointer<Utf16> m_pszResultClass;
  external Pointer<Utf16> m_pszAssocClass;
  external Pointer<Utf16> m_pszRole;
  external Pointer<Utf16> m_pszResultRole;
  external Pointer<Utf16> m_pszRequiredQualifier;
  external Pointer<Utf16> m_pszRequiredAssocQualifier;
}

class WbemLocator extends Struct {}

class WbemContext extends Struct {}

class UnsecuredApartment extends Struct {}

class WbemClassObject extends Struct {}

class MofCompiler extends Struct {}

class WbemStatusCodeText extends Struct {}

class WbemBackupRestore extends Struct {}

class WbemRefresher extends Struct {}

class WbemObjectTextSrc extends Struct {}

class WBEM_COMPILE_STATUS_INFO extends Struct {
  @Int32()
  external int lPhaseError;
  @Int32()
  external int hRes;
  @Int32()
  external int ObjectNum;
  @Int32()
  external int FirstLine;
  @Int32()
  external int LastLine;
  @Uint32()
  external int dwOutFlags;
}

class WbemAdministrativeLocator extends Struct {}

class WbemAuthenticatedLocator extends Struct {}

class WbemUnauthenticatedLocator extends Struct {}

class WbemDecoupledRegistrar extends Struct {}

class WbemDecoupledBasicEventProvider extends Struct {}

class SWbemLocator extends Struct {}

class SWbemNamedValueSet extends Struct {}

class SWbemObjectPath extends Struct {}

class SWbemLastError extends Struct {}

class SWbemSink extends Struct {}

class SWbemDateTime extends Struct {}

class SWbemRefresher extends Struct {}

class SWbemServices extends Struct {}

class SWbemServicesEx extends Struct {}

class SWbemObject extends Struct {}

class SWbemObjectEx extends Struct {}

class SWbemObjectSet extends Struct {}

class SWbemNamedValue extends Struct {}

class SWbemQualifier extends Struct {}

class SWbemQualifierSet extends Struct {}

class SWbemProperty extends Struct {}

class SWbemPropertySet extends Struct {}

class SWbemMethod extends Struct {}

class SWbemMethodSet extends Struct {}

class SWbemEventSource extends Struct {}

class SWbemSecurity extends Struct {}

class SWbemPrivilege extends Struct {}

class SWbemPrivilegeSet extends Struct {}

class SWbemRefreshableItem extends Struct {}
