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
import '../../system/hostcomputesystem/structs.g.dart';
import '../../foundation/structs.g.dart';

typedef HCS_EVENT_CALLBACK = Void Function(
  Pointer<HCS_EVENT> event,
  Pointer context,
);
typedef HCS_NOTIFICATION_CALLBACK = Void Function(
  Uint32 notificationType,
  Pointer context,
  Int32 notificationStatus,
  Pointer<Utf16> notificationData,
);
typedef HCS_OPERATION_COMPLETION = Void Function(
  IntPtr operation,
  Pointer context,
);
