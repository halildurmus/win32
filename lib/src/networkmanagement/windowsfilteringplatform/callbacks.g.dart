// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// Native callback functions that can get called by the Win32 API

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../networkmanagement/windowsfilteringplatform/structs.g.dart';
import '../../foundation/structs.g.dart';

typedef FWPM_CALLOUT_CHANGE_CALLBACK0 = Void Function(
  Pointer context,
  Pointer<FWPM_CALLOUT_CHANGE0> change,
);
typedef FWPM_CONNECTION_CALLBACK0 = Void Function(
  Pointer context,
  Int32 eventType,
  Pointer<FWPM_CONNECTION0> connection,
);
typedef FWPM_DYNAMIC_KEYWORD_CALLBACK0 = Void Function(
  Pointer notification,
  Pointer context,
);
typedef FWPM_FILTER_CHANGE_CALLBACK0 = Void Function(
  Pointer context,
  Pointer<FWPM_FILTER_CHANGE0> change,
);
typedef FWPM_NET_EVENT_CALLBACK0 = Void Function(
  Pointer context,
  Pointer<FWPM_NET_EVENT1> event,
);
typedef FWPM_NET_EVENT_CALLBACK1 = Void Function(
  Pointer context,
  Pointer<FWPM_NET_EVENT2> event,
);
typedef FWPM_NET_EVENT_CALLBACK2 = Void Function(
  Pointer context,
  Pointer<FWPM_NET_EVENT3> event,
);
typedef FWPM_NET_EVENT_CALLBACK3 = Void Function(
  Pointer context,
  Pointer<FWPM_NET_EVENT4_> event,
);
typedef FWPM_NET_EVENT_CALLBACK4 = Void Function(
  Pointer context,
  Pointer<FWPM_NET_EVENT5_> event,
);
typedef FWPM_PROVIDER_CHANGE_CALLBACK0 = Void Function(
  Pointer context,
  Pointer<FWPM_PROVIDER_CHANGE0> change,
);
typedef FWPM_PROVIDER_CONTEXT_CHANGE_CALLBACK0 = Void Function(
  Pointer context,
  Pointer<FWPM_PROVIDER_CONTEXT_CHANGE0> change,
);
typedef FWPM_SUBLAYER_CHANGE_CALLBACK0 = Void Function(
  Pointer context,
  Pointer<FWPM_SUBLAYER_CHANGE0> change,
);
typedef FWPM_SYSTEM_PORTS_CALLBACK0 = Void Function(
  Pointer context,
  Pointer<FWPM_SYSTEM_PORTS0> sysPorts,
);
typedef FWPM_VSWITCH_EVENT_CALLBACK0 = Uint32 Function(
  Pointer context,
  Pointer<FWPM_VSWITCH_EVENT0> vSwitchEvent,
);
typedef IPSEC_KEY_MANAGER_DICTATE_KEY0 = Uint32 Function(
  Pointer<IPSEC_SA_DETAILS1> inboundSaDetails,
  Pointer<IPSEC_SA_DETAILS1> outboundSaDetails,
  Pointer<Int32> keyingModuleGenKey,
);
typedef IPSEC_KEY_MANAGER_KEY_DICTATION_CHECK0 = Void Function(
  Pointer<IKEEXT_TRAFFIC0> ikeTraffic,
  Pointer<Int32> willDictateKey,
  Pointer<Uint32> weight,
);
typedef IPSEC_KEY_MANAGER_NOTIFY_KEY0 = Void Function(
  Pointer<IPSEC_SA_DETAILS1> inboundSa,
  Pointer<IPSEC_SA_DETAILS1> outboundSa,
);
typedef IPSEC_SA_CONTEXT_CALLBACK0 = Void Function(
  Pointer context,
  Pointer<IPSEC_SA_CONTEXT_CHANGE0> change,
);
