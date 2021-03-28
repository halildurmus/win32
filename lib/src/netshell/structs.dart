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

class TOKEN_VALUE extends Struct {
  external Pointer<Utf16> pwszToken;
  @Uint32() external int dwValue;
}

class NS_HELPER_ATTRIBUTES extends Struct {
  @Uint32() external int Anonymous;
  external GUID guidHelper;
  external PNS_HELPER_START_FN pfnStart;
  external PNS_HELPER_STOP_FN pfnStop;
}

class CMD_ENTRY extends Struct {
  external Pointer<Utf16> pwszCmdToken;
  external PFN_HANDLE_CMD pfnCmdHandler;
  @Uint32() external int dwShortCmdHelpToken;
  @Uint32() external int dwCmdHlpToken;
  @Uint32() external int dwFlags;
  external PNS_OSVERSIONCHECK pOsVersionCheck;
}

class CMD_GROUP_ENTRY extends Struct {
  external Pointer<Utf16> pwszCmdGroupToken;
  @Uint32() external int dwShortCmdHelpToken;
  @Uint32() external int ulCmdGroupSize;
  @Uint32() external int dwFlags;
  external Pointer<CMD_ENTRY> pCmdGroup;
  external PNS_OSVERSIONCHECK pOsVersionCheck;
}

class NS_CONTEXT_ATTRIBUTES extends Struct {
  @Uint32() external int Anonymous;
  external Pointer<Utf16> pwszContext;
  external GUID guidHelper;
  @Uint32() external int dwFlags;
  @Uint32() external int ulPriority;
  @Uint32() external int ulNumTopCmds;
  external Pointer<CMD_ENTRY> pTopCmds;
  @Uint32() external int ulNumGroups;
  external Pointer<CMD_GROUP_ENTRY> pCmdGroups;
  external PNS_CONTEXT_COMMIT_FN pfnCommitFn;
  external PNS_CONTEXT_DUMP_FN pfnDumpFn;
  external PNS_CONTEXT_CONNECT_FN pfnConnectFn;
  external Pointer pReserved;
  external PNS_OSVERSIONCHECK pfnOsVersionCheck;
}

class TAG_TYPE extends Struct {
  external Pointer<Utf16> pwszTag;
  @Uint32() external int dwRequired;
  @Int32() external int bPresent;
}

