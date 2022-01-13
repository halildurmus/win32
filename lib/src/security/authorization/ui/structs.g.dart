// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/structs.g.dart';
import '../../../security/authorization/ui/structs.g.dart';

/// {@category Struct}
class EFFPERM_RESULT_LIST extends Struct {
  @Uint8()
  external int fEvaluated;

  @Uint32()
  external int cObjectTypeListLength;

  external Pointer<OBJECT_TYPE_LIST> pObjectTypeList;

  external Pointer<Uint32> pGrantedAccessList;
}

/// {@category Struct}
class SECURITY_OBJECT extends Struct {
  external Pointer<Utf16> pwszName;

  external Pointer pData;

  @Uint32()
  external int cbData;

  external Pointer pData2;

  @Uint32()
  external int cbData2;

  @Uint32()
  external int Id;

  @Uint8()
  external int fWellKnown;
}

/// {@category Struct}
class SID_INFO extends Struct {
  @IntPtr()
  external int pSid;

  external Pointer<Utf16> pwzCommonName;

  external Pointer<Utf16> pwzClass;

  external Pointer<Utf16> pwzUPN;
}

/// {@category Struct}
class SID_INFO_LIST extends Struct {
  @Uint32()
  external int cItems;

  @Array(1)
  external Array<SID_INFO> aSidInfo;
}

/// {@category Struct}
class SI_ACCESS extends Struct {
  external Pointer<GUID> pguid;

  @Uint32()
  external int mask;

  external Pointer<Utf16> pszName;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class SI_INHERIT_TYPE extends Struct {
  external Pointer<GUID> pguid;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> pszName;
}

/// {@category Struct}
class SI_OBJECT_INFO extends Struct {
  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hInstance;

  external Pointer<Utf16> pszServerName;

  external Pointer<Utf16> pszObjectName;

  external Pointer<Utf16> pszPageTitle;

  external GUID guidObjectType;
}
