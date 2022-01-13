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
import '../../security/structs.g.dart';
import '../../networkmanagement/windowsfirewall/structs.g.dart';

/// {@category Struct}
class INET_FIREWALL_AC_BINARIES extends Struct {
  @Uint32()
  external int count;

  external Pointer<Pointer<Utf16>> binaries;
}

/// {@category Struct}
class INET_FIREWALL_AC_CAPABILITIES extends Struct {
  @Uint32()
  external int count;

  external Pointer<SID_AND_ATTRIBUTES> capabilities;
}

/// {@category Struct}
class INET_FIREWALL_AC_CHANGE extends Struct {
  @Int32()
  external int changeType;

  @Int32()
  external int createType;

  external Pointer<SID> appContainerSid;

  external Pointer<SID> userSid;

  external Pointer<Utf16> displayName;

  external _INET_FIREWALL_AC_CHANGE__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _INET_FIREWALL_AC_CHANGE__Anonymous_e__Union extends Union {
  external INET_FIREWALL_AC_CAPABILITIES capabilities;

  external INET_FIREWALL_AC_BINARIES binaries;
}

extension INET_FIREWALL_AC_CHANGE_Extension on INET_FIREWALL_AC_CHANGE {
  INET_FIREWALL_AC_CAPABILITIES get capabilities => this.Anonymous.capabilities;
  set capabilities(INET_FIREWALL_AC_CAPABILITIES value) =>
      this.Anonymous.capabilities = value;

  INET_FIREWALL_AC_BINARIES get binaries => this.Anonymous.binaries;
  set binaries(INET_FIREWALL_AC_BINARIES value) =>
      this.Anonymous.binaries = value;
}

/// {@category Struct}
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

/// {@category Struct}
class NETCON_PROPERTIES extends Struct {
  external GUID guidId;

  external Pointer<Utf16> pszwName;

  external Pointer<Utf16> pszwDeviceName;

  @Int32()
  external int Status;

  @Int32()
  external int MediaType;

  @Uint32()
  external int dwCharacter;

  external GUID clsidThisObject;

  external GUID clsidUiObject;
}

/// {@category Struct}
class tag_FW_DYNAMIC_KEYWORD_ADDRESS0 extends Struct {
  external GUID id;

  external Pointer<Utf16> keyword;

  @Uint32()
  external int flags;

  external Pointer<Utf16> addresses;
}

/// {@category Struct}
class tag_FW_DYNAMIC_KEYWORD_ADDRESS_DATA0 extends Struct {
  external tag_FW_DYNAMIC_KEYWORD_ADDRESS0 dynamicKeywordAddress;

  external Pointer<tag_FW_DYNAMIC_KEYWORD_ADDRESS_DATA0> next;

  @Uint16()
  external int schemaVersion;

  @Int32()
  external int originType;
}
