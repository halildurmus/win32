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
import '../../networkmanagement/wnet/structs.g.dart';

/// {@category Struct}
class CONNECTDLGSTRUCT extends Struct {
  @Uint32()
  external int cbStructure;

  @IntPtr()
  external int hwndOwner;

  external Pointer<NETRESOURCE> lpConnRes;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwDevNum;
}

/// {@category Struct}
class DISCDLGSTRUCT extends Struct {
  @Uint32()
  external int cbStructure;

  @IntPtr()
  external int hwndOwner;

  external Pointer<Utf16> lpLocalName;

  external Pointer<Utf16> lpRemoteName;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class NETCONNECTINFOSTRUCT extends Struct {
  @Uint32()
  external int cbStructure;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwSpeed;

  @Uint32()
  external int dwDelay;

  @Uint32()
  external int dwOptDataSize;
}

/// {@category Struct}
class NETINFOSTRUCT extends Struct {
  @Uint32()
  external int cbStructure;

  @Uint32()
  external int dwProviderVersion;

  @Uint32()
  external int dwStatus;

  @Uint32()
  external int dwCharacteristics;

  @IntPtr()
  external int dwHandle;

  @Uint16()
  external int wNetType;

  @Uint32()
  external int dwPrinters;

  @Uint32()
  external int dwDrives;
}

/// {@category Struct}
class NETRESOURCE extends Struct {
  @Uint32()
  external int dwScope;

  @Uint32()
  external int dwType;

  @Uint32()
  external int dwDisplayType;

  @Uint32()
  external int dwUsage;

  external Pointer<Utf16> lpLocalName;

  external Pointer<Utf16> lpRemoteName;

  external Pointer<Utf16> lpComment;

  external Pointer<Utf16> lpProvider;
}

/// {@category Struct}
class NOTIFYADD extends Struct {
  @IntPtr()
  external int hwndOwner;

  external NETRESOURCE NetResource;

  @Uint32()
  external int dwAddFlags;
}

/// {@category Struct}
class NOTIFYCANCEL extends Struct {
  external Pointer<Utf16> lpName;

  external Pointer<Utf16> lpProvider;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int fForce;
}

/// {@category Struct}
class NOTIFYINFO extends Struct {
  @Uint32()
  external int dwNotifyStatus;

  @Uint32()
  external int dwOperationStatus;

  external Pointer lpContext;
}

/// {@category Struct}
class REMOTE_NAME_INFO extends Struct {
  external Pointer<Utf16> lpUniversalName;

  external Pointer<Utf16> lpConnectionName;

  external Pointer<Utf16> lpRemainingPath;
}

/// {@category Struct}
class UNIVERSAL_NAME_INFO extends Struct {
  external Pointer<Utf16> lpUniversalName;
}
