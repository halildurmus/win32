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

class NetworkListManager extends Struct {}

class NLM_USAGE_DATA extends Struct {
  @Uint32()
  external int UsageInMegabytes;
  external FILETIME LastSyncTime;
}

class NLM_DATAPLAN_STATUS extends Struct {
  external GUID InterfaceGuid;
  external NLM_USAGE_DATA UsageData;
  @Uint32()
  external int DataLimitInMegabytes;
  @Uint32()
  external int InboundBandwidthInKbps;
  @Uint32()
  external int OutboundBandwidthInKbps;
  external FILETIME NextBillingCycle;
  @Uint32()
  external int MaxTransferSizeInMegabytes;
  @Uint32()
  external int Reserved;
}

class NLM_SOCKADDR extends Struct {
  @Array(128)
  external Array<Uint8> data;
}

class NLM_SIMULATED_PROFILE_INFO extends Struct {
  @Array(129)
  external Array<Uint16> ProfileName;
  @Uint32()
  external int cost;
  @Uint32()
  external int UsageInMegabytes;
  @Uint32()
  external int DataLimitInMegabytes;
}

class NET_INTERFACE_CONTEXT extends Struct {
  @Uint32()
  external int InterfaceIndex;
  external Pointer<Utf16> ConfigurationName;
}

class NET_INTERFACE_CONTEXT_TABLE extends Struct {
  @IntPtr()
  external int InterfaceContextHandle;
  @Uint32()
  external int NumberOfEntries;
  external Pointer<NET_INTERFACE_CONTEXT> InterfaceContextArray;
}
