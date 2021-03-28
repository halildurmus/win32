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

class UPnPNAT extends Struct {
}

class NetSharingManager extends Struct {
}

class NETCON_PROPERTIES extends Struct {
  external GUID guidId;
  external Pointer<Utf16> pszwName;
  external Pointer<Utf16> pszwDeviceName;
  @Uint32() external int Status;
  @Uint32() external int MediaType;
  @Uint32() external int dwCharacter;
  external GUID clsidThisObject;
  external GUID clsidUiObject;
}

class NetFwRule extends Struct {
}

class NetFwOpenPort extends Struct {
}

class NetFwAuthorizedApplication extends Struct {
}

class NetFwPolicy2 extends Struct {
}

class NetFwProduct extends Struct {
}

class NetFwProducts extends Struct {
}

class NetFwMgr extends Struct {
}

class INET_FIREWALL_AC_CAPABILITIES extends Struct {
  @Uint32() external int count;
  external Pointer<SID_AND_ATTRIBUTES> capabilities;
}

class INET_FIREWALL_AC_BINARIES extends Struct {
  @Uint32() external int count;
  external Pointer<Pointer<Utf16>> binaries;
}

class INET_FIREWALL_AC_CHANGE extends Struct {
  @Uint32() external int changeType;
  @Uint32() external int createType;
  external Pointer<SID> appContainerSid;
  external Pointer<SID> userSid;
  external Pointer<Utf16> displayName;
  @Uint32() external int Anonymous;
}

class INET_FIREWALL_APP_CONTAINER extends Struct {
  external Pointer<SID> appContainerSid;
  external Pointer<SID> userSid;
  external Pointer<Utf16> appContainerName;
  external Pointer<Utf16> displayName;
  external Pointer<Utf16> description;
  external INET_FIREWALL_AC_CAPABILITIES capabilities;
  external INET_FIREWALL_AC_BINARIES binaries;
  external Pointer<Utf16> workingDirectory;
  external Pointer<Utf16> packageFullName;
}

