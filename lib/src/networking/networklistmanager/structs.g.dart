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
import '../../networking/networklistmanager/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
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

/// {@category Struct}
class NLM_SIMULATED_PROFILE_INFO extends Struct {
  @Array(256)
  external Array<Uint16> _ProfileName;

  String get ProfileName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_ProfileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ProfileName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _ProfileName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int32()
  external int cost;

  @Uint32()
  external int UsageInMegabytes;

  @Uint32()
  external int DataLimitInMegabytes;
}

/// {@category Struct}
class NLM_SOCKADDR extends Struct {
  @Array(128)
  external Array<Uint8> data;
}

/// {@category Struct}
class NLM_USAGE_DATA extends Struct {
  @Uint32()
  external int UsageInMegabytes;

  external FILETIME LastSyncTime;
}
