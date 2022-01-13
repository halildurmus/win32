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
import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../security/applocker/structs.g.dart';

/// {@category Struct}
class SAFER_CODE_PROPERTIES_V1 extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwCheckFlags;

  external Pointer<Utf16> ImagePath;

  @IntPtr()
  external int hImageFileHandle;

  @Uint32()
  external int UrlZoneId;

  @Array(64)
  external Array<Uint8> ImageHash;

  @Uint32()
  external int dwImageHashSize;

  @Int64()
  external int ImageSize;

  @Uint32()
  external int HashAlgorithm;

  external Pointer<Uint8> pByteBlock;

  @IntPtr()
  external int hWndParent;

  @Uint32()
  external int dwWVTUIChoice;
}

/// {@category Struct}
class SAFER_CODE_PROPERTIES_V2 extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwCheckFlags;

  external Pointer<Utf16> ImagePath;

  @IntPtr()
  external int hImageFileHandle;

  @Uint32()
  external int UrlZoneId;

  @Array(64)
  external Array<Uint8> ImageHash;

  @Uint32()
  external int dwImageHashSize;

  @Int64()
  external int ImageSize;

  @Uint32()
  external int HashAlgorithm;

  external Pointer<Uint8> pByteBlock;

  @IntPtr()
  external int hWndParent;

  @Uint32()
  external int dwWVTUIChoice;

  external Pointer<Utf16> PackageMoniker;

  external Pointer<Utf16> PackagePublisher;

  external Pointer<Utf16> PackageName;

  @Uint64()
  external int PackageVersion;

  @Int32()
  external int PackageIsFramework;
}

/// {@category Struct}
class SAFER_HASH_IDENTIFICATION extends Struct {
  external SAFER_IDENTIFICATION_HEADER header;

  @Array(256)
  external Array<Uint16> _Description;

  String get Description {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_Description[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Description(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _Description[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _FriendlyName;

  String get FriendlyName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_FriendlyName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FriendlyName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _FriendlyName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int HashSize;

  @Array(64)
  external Array<Uint8> ImageHash;

  @Uint32()
  external int HashAlgorithm;

  @Int64()
  external int ImageSize;

  @Uint32()
  external int dwSaferFlags;
}

/// {@category Struct}
class SAFER_HASH_IDENTIFICATION2 extends Struct {
  external SAFER_HASH_IDENTIFICATION hashIdentification;

  @Uint32()
  external int HashSize;

  @Array(64)
  external Array<Uint8> ImageHash;

  @Uint32()
  external int HashAlgorithm;
}

/// {@category Struct}
class SAFER_IDENTIFICATION_HEADER extends Struct {
  @Int32()
  external int dwIdentificationType;

  @Uint32()
  external int cbStructSize;

  external GUID IdentificationGuid;

  external FILETIME lastModified;
}

/// {@category Struct}
class SAFER_PATHNAME_IDENTIFICATION extends Struct {
  external SAFER_IDENTIFICATION_HEADER header;

  @Array(256)
  external Array<Uint16> _Description;

  String get Description {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_Description[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Description(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _Description[i] = stringToStore.codeUnitAt(i);
    }
  }

  external Pointer<Utf16> ImageName;

  @Uint32()
  external int dwSaferFlags;
}

/// {@category Struct}
class SAFER_URLZONE_IDENTIFICATION extends Struct {
  external SAFER_IDENTIFICATION_HEADER header;

  @Uint32()
  external int UrlZoneId;

  @Uint32()
  external int dwSaferFlags;
}
