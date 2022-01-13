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
import '../../networkmanagement/windowsconnectionmanager/structs.g.dart';

/// {@category Struct}
class NET_INTERFACE_CONTEXT extends Struct {
  @Uint32()
  external int InterfaceIndex;

  external Pointer<Utf16> ConfigurationName;
}

/// {@category Struct}
class NET_INTERFACE_CONTEXT_TABLE extends Struct {
  @IntPtr()
  external int InterfaceContextHandle;

  @Uint32()
  external int NumberOfEntries;

  external Pointer<NET_INTERFACE_CONTEXT> InterfaceContextArray;
}

/// {@category Struct}
class WCM_BILLING_CYCLE_INFO extends Struct {
  external FILETIME StartDate;

  external WCM_TIME_INTERVAL Duration;

  @Int32()
  external int Reset;
}

/// {@category Struct}
class WCM_CONNECTION_COST_DATA extends Struct {
  @Uint32()
  external int ConnectionCost;

  @Int32()
  external int CostSource;
}

/// {@category Struct}
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

/// {@category Struct}
class WCM_POLICY_VALUE extends Struct {
  @Int32()
  external int fValue;

  @Int32()
  external int fIsGroupPolicy;
}

/// {@category Struct}
class WCM_PROFILE_INFO extends Struct {
  @Array(256)
  external Array<Uint16> _strProfileName;

  String get strProfileName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_strProfileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set strProfileName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _strProfileName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external GUID AdapterGUID;

  @Int32()
  external int Media;
}

/// {@category Struct}
class WCM_PROFILE_INFO_LIST extends Struct {
  @Uint32()
  external int dwNumberOfItems;

  @Array(1)
  external Array<WCM_PROFILE_INFO> ProfileInfo;
}

/// {@category Struct}
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

/// {@category Struct}
class WCM_USAGE_DATA extends Struct {
  @Uint32()
  external int UsageInMegabytes;

  external FILETIME LastSyncTime;
}
