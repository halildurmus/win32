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

class CriticalPolicySectionHandle extends Struct {
  @IntPtr() external int Value;
}

class GROUP_POLICY_OBJECTA extends Struct {
  @Uint32() external int dwOptions;
  @Uint32() external int dwVersion;
  external Pointer<Utf8> lpDSPath;
  external Pointer<Utf8> lpFileSysPath;
  external Pointer<Utf8> lpDisplayName;
  external __byte__ szGPOName;
  @Uint32() external int GPOLink;
  @IntPtr() external int lParam;
  external Pointer<GROUP_POLICY_OBJECTA> pNext;
  external Pointer<GROUP_POLICY_OBJECTA> pPrev;
  external Pointer<Utf8> lpExtensions;
  @IntPtr() external int lParam2;
  external Pointer<Utf8> lpLink;
}

class GROUP_POLICY_OBJECTW extends Struct {
  @Uint32() external int dwOptions;
  @Uint32() external int dwVersion;
  external Pointer<Utf16> lpDSPath;
  external Pointer<Utf16> lpFileSysPath;
  external Pointer<Utf16> lpDisplayName;
  external __ushort__ szGPOName;
  @Uint32() external int GPOLink;
  @IntPtr() external int lParam;
  external Pointer<GROUP_POLICY_OBJECT> pNext;
  external Pointer<GROUP_POLICY_OBJECT> pPrev;
  external Pointer<Utf16> lpExtensions;
  @IntPtr() external int lParam2;
  external Pointer<Utf16> lpLink;
}

class RSOP_TARGET extends Struct {
  external Pointer<Utf16> pwszAccountName;
  external Pointer<Utf16> pwszNewSOM;
  external Pointer<SAFEARRAY> psaSecurityGroups;
  external Pointer pRsopToken;
  external Pointer<GROUP_POLICY_OBJECTA> pGPOList;
  external Pointer pWbemServices;
}

class POLICYSETTINGSTATUSINFO extends Struct {
  external Pointer<Utf16> szKey;
  external Pointer<Utf16> szEventSource;
  external Pointer<Utf16> szEventLogName;
  @Uint32() external int dwEventID;
  @Uint32() external int dwErrorCode;
  @Uint32() external int status;
  external SYSTEMTIME timeLogged;
}

class INSTALLDATA extends Struct {
  @Uint32() external int Type;
  external INSTALLSPEC Spec;
}

class LOCALMANAGEDAPPLICATION extends Struct {
  external Pointer<Utf16> pszDeploymentName;
  external Pointer<Utf16> pszPolicyName;
  external Pointer<Utf16> pszProductId;
  @Uint32() external int dwState;
}

class MANAGEDAPPLICATION extends Struct {
  external Pointer<Utf16> pszPackageName;
  external Pointer<Utf16> pszPublisher;
  @Uint32() external int dwVersionHi;
  @Uint32() external int dwVersionLo;
  @Uint32() external int dwRevision;
  external GUID GpoId;
  external Pointer<Utf16> pszPolicyName;
  external GUID ProductId;
  @Uint16() external int Language;
  external Pointer<Utf16> pszOwner;
  external Pointer<Utf16> pszCompany;
  external Pointer<Utf16> pszComments;
  external Pointer<Utf16> pszContact;
  external Pointer<Utf16> pszSupportUrl;
  @Uint32() external int dwPathType;
  @Int32() external int bInstalled;
}

class GPOBROWSEINFO extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @IntPtr() external int hwndOwner;
  external Pointer<Utf16> lpTitle;
  external Pointer<Utf16> lpInitialOU;
  external Pointer<Utf16> lpDSPath;
  @Uint32() external int dwDSPathSize;
  external Pointer<Utf16> lpName;
  @Uint32() external int dwNameSize;
  @Uint32() external int gpoType;
  @Uint32() external int gpoHint;
}

