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

class WCM_POLICY_VALUE extends Struct {
  @Int32()
  external int fValue;
  @Int32()
  external int fIsGroupPolicy;
}

class WCM_PROFILE_INFO extends Struct {
  @Array(129)
  external Array<Uint16> strProfileName;
  external GUID AdapterGUID;
  @Uint32()
  external int Media;
}

class WCM_PROFILE_INFO_LIST extends Struct {
  @Uint32()
  external int dwNumberOfItems;
  @Array(1)
  external Array<WCM_PROFILE_INFO> ProfileInfo;
}

class WCM_CONNECTION_COST_DATA extends Struct {
  @Uint32()
  external int ConnectionCost;
  @Uint32()
  external int CostSource;
}

class WCM_TIME_INTERVAL extends Struct {
  @Uint16()
  external int wYear;
  @Uint16()
  external int wMonth;
  @Uint16()
  external int wDay;
  @Uint16()
  external int wHour;
  @Uint16()
  external int wMinute;
  @Uint16()
  external int wSecond;
  @Uint16()
  external int wMilliseconds;
}

class WCM_USAGE_DATA extends Struct {
  @Uint32()
  external int UsageInMegabytes;
  external FILETIME LastSyncTime;
}

class WCM_BILLING_CYCLE_INFO extends Struct {
  external FILETIME StartDate;
  external WCM_TIME_INTERVAL Duration;
  @Int32()
  external int Reset;
}

class WCM_DATAPLAN_STATUS extends Struct {
  external WCM_USAGE_DATA UsageData;
  @Uint32()
  external int DataLimitInMegabytes;
  @Uint32()
  external int InboundBandwidthInKbps;
  @Uint32()
  external int OutboundBandwidthInKbps;
  external WCM_BILLING_CYCLE_INFO BillingCycle;
  @Uint32()
  external int MaxTransferSizeInMegabytes;
  @Uint32()
  external int Reserved;
}
