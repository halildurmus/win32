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
import '../../foundation/structs.g.dart';
import '../../security/authorization/ui/ISecurityInformation.dart';
import '../../security/directoryservices/callbacks.g.dart';
import '../../ui/controls/structs.g.dart';
import '../../security/structs.g.dart';

typedef PFNDSCREATEISECINFO = Int32 Function(
  Pointer<Utf16> param0,
  Pointer<Utf16> param1,
  Uint32 param2,
  Pointer<Pointer<COMObject>> param3,
  Pointer<NativeFunction<PFNREADOBJECTSECURITY>> param4,
  Pointer<NativeFunction<PFNWRITEOBJECTSECURITY>> param5,
  IntPtr param6,
);
typedef PFNDSCREATEISECINFOEX = Int32 Function(
  Pointer<Utf16> param0,
  Pointer<Utf16> param1,
  Pointer<Utf16> param2,
  Pointer<Utf16> param3,
  Pointer<Utf16> param4,
  Uint32 param5,
  Pointer<Pointer<COMObject>> param6,
  Pointer<NativeFunction<PFNREADOBJECTSECURITY>> param7,
  Pointer<NativeFunction<PFNWRITEOBJECTSECURITY>> param8,
  IntPtr param9,
);
typedef PFNDSCREATESECPAGE = Int32 Function(
  Pointer<Utf16> param0,
  Pointer<Utf16> param1,
  Uint32 param2,
  Pointer<IntPtr> param3,
  Pointer<NativeFunction<PFNREADOBJECTSECURITY>> param4,
  Pointer<NativeFunction<PFNWRITEOBJECTSECURITY>> param5,
  IntPtr param6,
);
typedef PFNDSEDITSECURITY = Int32 Function(
  IntPtr param0,
  Pointer<Utf16> param1,
  Pointer<Utf16> param2,
  Uint32 param3,
  Pointer<Utf16> param4,
  Pointer<NativeFunction<PFNREADOBJECTSECURITY>> param5,
  Pointer<NativeFunction<PFNWRITEOBJECTSECURITY>> param6,
  IntPtr param7,
);
typedef PFNREADOBJECTSECURITY = Int32 Function(
  Pointer<Utf16> param0,
  Uint32 param1,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> param2,
  IntPtr param3,
);
typedef PFNWRITEOBJECTSECURITY = Int32 Function(
  Pointer<Utf16> param0,
  Uint32 param1,
  Pointer<SECURITY_DESCRIPTOR> param2,
  IntPtr param3,
);
