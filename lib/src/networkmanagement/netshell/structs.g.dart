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
import '../../networkmanagement/netshell/callbacks.g.dart';
import '../../networkmanagement/netshell/structs.g.dart';

/// {@category Struct}
class CMD_ENTRY extends Struct {
  external Pointer<Utf16> pwszCmdToken;

  external Pointer<NativeFunction<PFN_HANDLE_CMD>> pfnCmdHandler;

  @Uint32()
  external int dwShortCmdHelpToken;

  @Uint32()
  external int dwCmdHlpToken;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<PNS_OSVERSIONCHECK>> pOsVersionCheck;
}

/// {@category Struct}
class CMD_GROUP_ENTRY extends Struct {
  external Pointer<Utf16> pwszCmdGroupToken;

  @Uint32()
  external int dwShortCmdHelpToken;

  @Uint32()
  external int ulCmdGroupSize;

  @Uint32()
  external int dwFlags;

  external Pointer<CMD_ENTRY> pCmdGroup;

  external Pointer<NativeFunction<PNS_OSVERSIONCHECK>> pOsVersionCheck;
}

/// {@category Struct}
class NS_CONTEXT_ATTRIBUTES extends Struct {
  external _NS_CONTEXT_ATTRIBUTES__Anonymous_e__Union Anonymous;

  external Pointer<Utf16> pwszContext;

  external GUID guidHelper;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int ulPriority;

  @Uint32()
  external int ulNumTopCmds;

  external Pointer<CMD_ENTRY> pTopCmds;

  @Uint32()
  external int ulNumGroups;

  external Pointer<CMD_GROUP_ENTRY> pCmdGroups;

  external Pointer<NativeFunction<PNS_CONTEXT_COMMIT_FN>> pfnCommitFn;

  external Pointer<NativeFunction<PNS_CONTEXT_DUMP_FN>> pfnDumpFn;

  external Pointer<NativeFunction<PNS_CONTEXT_CONNECT_FN>> pfnConnectFn;

  external Pointer pReserved;

  external Pointer<NativeFunction<PNS_OSVERSIONCHECK>> pfnOsVersionCheck;
}

/// {@category Struct}
class _NS_CONTEXT_ATTRIBUTES__Anonymous_e__Union extends Union {
  external _NS_CONTEXT_ATTRIBUTES__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint64()
  external int ullAlign;
}

/// {@category Struct}
class _NS_CONTEXT_ATTRIBUTES__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwReserved;
}

extension NS_CONTEXT_ATTRIBUTES__Anonymous_e__Union_Extension
    on NS_CONTEXT_ATTRIBUTES {
  int get dwVersion => this.Anonymous.Anonymous.dwVersion;
  set dwVersion(int value) => this.Anonymous.Anonymous.dwVersion = value;

  int get dwReserved => this.Anonymous.Anonymous.dwReserved;
  set dwReserved(int value) => this.Anonymous.Anonymous.dwReserved = value;
}

extension NS_CONTEXT_ATTRIBUTES_Extension on NS_CONTEXT_ATTRIBUTES {
  _NS_CONTEXT_ATTRIBUTES__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _NS_CONTEXT_ATTRIBUTES__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get ullAlign => this.Anonymous.ullAlign;
  set ullAlign(int value) => this.Anonymous.ullAlign = value;
}

/// {@category Struct}
class NS_HELPER_ATTRIBUTES extends Struct {
  external _NS_HELPER_ATTRIBUTES__Anonymous_e__Union Anonymous;

  external GUID guidHelper;

  external Pointer<NativeFunction<PNS_HELPER_START_FN>> pfnStart;

  external Pointer<NativeFunction<PNS_HELPER_STOP_FN>> pfnStop;
}

/// {@category Struct}
class _NS_HELPER_ATTRIBUTES__Anonymous_e__Union extends Union {
  external _NS_HELPER_ATTRIBUTES__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint64()
  external int ullAlign;
}

/// {@category Struct}
class _NS_HELPER_ATTRIBUTES__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwReserved;
}

extension NS_HELPER_ATTRIBUTES__Anonymous_e__Union_Extension
    on NS_HELPER_ATTRIBUTES {
  int get dwVersion => this.Anonymous.Anonymous.dwVersion;
  set dwVersion(int value) => this.Anonymous.Anonymous.dwVersion = value;

  int get dwReserved => this.Anonymous.Anonymous.dwReserved;
  set dwReserved(int value) => this.Anonymous.Anonymous.dwReserved = value;
}

extension NS_HELPER_ATTRIBUTES_Extension on NS_HELPER_ATTRIBUTES {
  _NS_HELPER_ATTRIBUTES__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _NS_HELPER_ATTRIBUTES__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get ullAlign => this.Anonymous.ullAlign;
  set ullAlign(int value) => this.Anonymous.ullAlign = value;
}

/// {@category Struct}
class TAG_TYPE extends Struct {
  external Pointer<Utf16> pwszTag;

  @Uint32()
  external int dwRequired;

  @Int32()
  external int bPresent;
}

/// {@category Struct}
class TOKEN_VALUE extends Struct {
  external Pointer<Utf16> pwszToken;

  @Uint32()
  external int dwValue;
}
