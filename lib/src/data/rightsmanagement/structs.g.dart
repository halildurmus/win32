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
import '../../data/rightsmanagement/structs.g.dart';

/// {@category Struct}
class DRMBOUNDLICENSEPARAMS extends Struct {
  @Uint32()
  external int uVersion;

  @Uint32()
  external int hEnablingPrincipal;

  @Uint32()
  external int hSecureStore;

  external Pointer<Utf16> wszRightsRequested;

  external Pointer<Utf16> wszRightsGroup;

  external DRMID idResource;

  @Uint32()
  external int cAuthenticatorCount;

  external Pointer<Uint32> rghAuthenticators;

  external Pointer<Utf16> wszDefaultEnablingPrincipalCredentials;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class DRMID extends Struct {
  @Uint32()
  external int uVersion;

  external Pointer<Utf16> wszIDType;

  external Pointer<Utf16> wszID;
}

/// {@category Struct}
class DRM_ACTSERV_INFO extends Struct {
  @Uint32()
  external int uVersion;

  external Pointer<Utf16> wszPubKey;

  external Pointer<Utf16> wszURL;
}

/// {@category Struct}
class DRM_CLIENT_VERSION_INFO extends Struct {
  @Uint32()
  external int uStructVersion;

  @Array(4)
  external Array<Uint32> dwVersion;

  @Array(256)
  external Array<Uint16> _wszHierarchy;

  String get wszHierarchy {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wszHierarchy[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszHierarchy(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wszHierarchy[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _wszProductId;

  String get wszProductId {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wszProductId[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszProductId(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wszProductId[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _wszProductDescription;

  String get wszProductDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wszProductDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszProductDescription(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wszProductDescription[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class DRM_LICENSE_ACQ_DATA extends Struct {
  @Uint32()
  external int uVersion;

  external Pointer<Utf16> wszURL;

  external Pointer<Utf16> wszLocalFilename;

  external Pointer<Uint8> pbPostData;

  @Uint32()
  external int dwPostDataSize;

  external Pointer<Utf16> wszFriendlyName;
}
