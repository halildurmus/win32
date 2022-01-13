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
import '../../../security/cryptography/sip/structs.g.dart';
import '../../../security/cryptography/structs.g.dart';
import '../../../security/cryptography/catalog/structs.g.dart';

/// {@category Struct}
class CATALOG_INFO extends Struct {
  @Uint32()
  external int cbStruct;

  @Array(260)
  external Array<Uint16> _wszCatalogFile;

  String get wszCatalogFile {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_wszCatalogFile[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszCatalogFile(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _wszCatalogFile[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class CRYPTCATATTRIBUTE extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<Utf16> pwszReferenceTag;

  @Uint32()
  external int dwAttrTypeAndAction;

  @Uint32()
  external int cbValue;

  external Pointer<Uint8> pbValue;

  @Uint32()
  external int dwReserved;
}

/// {@category Struct}
class CRYPTCATCDF extends Struct {
  @Uint32()
  external int cbStruct;

  @IntPtr()
  external int hFile;

  @Uint32()
  external int dwCurFilePos;

  @Uint32()
  external int dwLastMemberOffset;

  @Int32()
  external int fEOF;

  external Pointer<Utf16> pwszResultDir;

  @IntPtr()
  external int hCATStore;
}

/// {@category Struct}
class CRYPTCATMEMBER extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<Utf16> pwszReferenceTag;

  external Pointer<Utf16> pwszFileName;

  external GUID gSubjectType;

  @Uint32()
  external int fdwMemberFlags;

  external Pointer<SIP_INDIRECT_DATA> pIndirectData;

  @Uint32()
  external int dwCertVersion;

  @Uint32()
  external int dwReserved;

  @IntPtr()
  external int hReserved;

  external CRYPTOAPI_BLOB sEncodedIndirectData;

  external CRYPTOAPI_BLOB sEncodedMemberInfo;
}

/// {@category Struct}
class CRYPTCATSTORE extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwPublicVersion;

  external Pointer<Utf16> pwszP7File;

  @IntPtr()
  external int hProv;

  @Uint32()
  external int dwEncodingType;

  @Uint32()
  external int fdwStoreFlags;

  @IntPtr()
  external int hReserved;

  @IntPtr()
  external int hAttrs;

  external Pointer hCryptMsg;

  @IntPtr()
  external int hSorted;
}
