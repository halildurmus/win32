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
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../system/diagnostics/etw/structs.g.dart';

typedef PENABLECALLBACK = Void Function(
  Pointer<GUID> SourceId,
  Uint32 IsEnabled,
  Uint8 Level,
  Uint64 MatchAnyKeyword,
  Uint64 MatchAllKeyword,
  Pointer<EVENT_FILTER_DESCRIPTOR> FilterData,
  Pointer CallbackContext,
);
typedef PEVENT_CALLBACK = Void Function(
  Pointer<EVENT_TRACE> pEvent,
);
typedef PEVENT_RECORD_CALLBACK = Void Function(
  Pointer<EVENT_RECORD> EventRecord,
);
typedef PEVENT_TRACE_BUFFER_CALLBACKW = Uint32 Function(
  Pointer<EVENT_TRACE_LOGFILE> Logfile,
);
typedef WMIDPREQUEST = Uint32 Function(
  Int32 RequestCode,
  Pointer RequestContext,
  Pointer<Uint32> BufferSize,
  Pointer Buffer,
);
