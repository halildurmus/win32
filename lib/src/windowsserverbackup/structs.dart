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

class WSB_OB_STATUS_ENTRY_VALUE_TYPE_PAIR extends Struct {
  external Pointer<Utf16> m_wszObStatusEntryPairValue;
  @Uint32()
  external int m_ObStatusEntryPairType;
}

class WSB_OB_STATUS_ENTRY extends Struct {
  @Uint32()
  external int m_dwIcon;
  @Uint32()
  external int m_dwStatusEntryName;
  @Uint32()
  external int m_dwStatusEntryValue;
  @Uint32()
  external int m_cValueTypePair;
  external Pointer<WSB_OB_STATUS_ENTRY_VALUE_TYPE_PAIR> m_rgValueTypePair;
}

class WSB_OB_STATUS_INFO extends Struct {
  external GUID m_guidSnapinId;
  @Uint32()
  external int m_cStatusEntry;
  external Pointer<WSB_OB_STATUS_ENTRY> m_rgStatusEntry;
}

class WSB_OB_REGISTRATION_INFO extends Struct {
  external Pointer<Utf16> m_wszResourceDLL;
  external GUID m_guidSnapinId;
  @Uint32()
  external int m_dwProviderName;
  @Uint32()
  external int m_dwProviderIcon;
  @Uint8()
  external int m_bSupportsRemoting;
}
