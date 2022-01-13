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
import '../../system/remotedesktop/structs.g.dart';
import '../../system/remotedesktop/callbacks.g.dart';
import '../../foundation/structs.g.dart';

typedef PCHANNEL_INIT_EVENT_FN = Void Function(
  Pointer pInitHandle,
  Uint32 event,
  Pointer pData,
  Uint32 dataLength,
);
typedef PCHANNEL_OPEN_EVENT_FN = Void Function(
  Uint32 openHandle,
  Uint32 event,
  Pointer pData,
  Uint32 dataLength,
  Uint32 totalLength,
  Uint32 dataFlags,
);
typedef PVIRTUALCHANNELCLOSE = Uint32 Function(
  Uint32 openHandle,
);
typedef PVIRTUALCHANNELENTRY = Int32 Function(
  Pointer<CHANNEL_ENTRY_POINTS> pEntryPoints,
);
typedef PVIRTUALCHANNELINIT = Uint32 Function(
  Pointer<Pointer> ppInitHandle,
  Pointer<CHANNEL_DEF> pChannel,
  Int32 channelCount,
  Uint32 versionRequested,
  Pointer<NativeFunction<PCHANNEL_INIT_EVENT_FN>> pChannelInitEventProc,
);
typedef PVIRTUALCHANNELOPEN = Uint32 Function(
  Pointer pInitHandle,
  Pointer<Uint32> pOpenHandle,
  Pointer<Utf8> pChannelName,
  Pointer<NativeFunction<PCHANNEL_OPEN_EVENT_FN>> pChannelOpenEventProc,
);
typedef PVIRTUALCHANNELWRITE = Uint32 Function(
  Uint32 openHandle,
  Pointer pData,
  Uint32 dataLength,
  Pointer pUserData,
);
