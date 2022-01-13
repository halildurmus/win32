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
import '../../storage/cabinets/structs.g.dart';

typedef PFNALLOC = Pointer Function(
  Uint32 cb,
);
typedef PFNCLOSE = Int32 Function(
  IntPtr hf,
);
typedef PFNFCIALLOC = Pointer Function(
  Uint32 cb,
);
typedef PFNFCICLOSE = Int32 Function(
  IntPtr hf,
  Pointer<Int32> err,
  Pointer pv,
);
typedef PFNFCIDELETE = Int32 Function(
  Pointer<Utf8> pszFile,
  Pointer<Int32> err,
  Pointer pv,
);
typedef PFNFCIFILEPLACED = Int32 Function(
  Pointer<CCAB> pccab,
  Pointer<Utf8> pszFile,
  Int32 cbFile,
  Int32 fContinuation,
  Pointer pv,
);
typedef PFNFCIFREE = Void Function(
  Pointer memory,
);
typedef PFNFCIGETNEXTCABINET = Int32 Function(
  Pointer<CCAB> pccab,
  Uint32 cbPrevCab,
  Pointer pv,
);
typedef PFNFCIGETOPENINFO = IntPtr Function(
  Pointer<Utf8> pszName,
  Pointer<Uint16> pdate,
  Pointer<Uint16> ptime,
  Pointer<Uint16> pattribs,
  Pointer<Int32> err,
  Pointer pv,
);
typedef PFNFCIGETTEMPFILE = Int32 Function(
  Pointer<Utf8> pszTempName,
  Int32 cbTempName,
  Pointer pv,
);
typedef PFNFCIOPEN = IntPtr Function(
  Pointer<Utf8> pszFile,
  Int32 oflag,
  Int32 pmode,
  Pointer<Int32> err,
  Pointer pv,
);
typedef PFNFCIREAD = Uint32 Function(
  IntPtr hf,
  Pointer memory,
  Uint32 cb,
  Pointer<Int32> err,
  Pointer pv,
);
typedef PFNFCISEEK = Int32 Function(
  IntPtr hf,
  Int32 dist,
  Int32 seektype,
  Pointer<Int32> err,
  Pointer pv,
);
typedef PFNFCISTATUS = Int32 Function(
  Uint32 typeStatus,
  Uint32 cb1,
  Uint32 cb2,
  Pointer pv,
);
typedef PFNFCIWRITE = Uint32 Function(
  IntPtr hf,
  Pointer memory,
  Uint32 cb,
  Pointer<Int32> err,
  Pointer pv,
);
typedef PFNFDIDECRYPT = Int32 Function(
  Pointer<FDIDECRYPT> pfdid,
);
typedef PFNFDINOTIFY = IntPtr Function(
  Int32 fdint,
  Pointer<FDINOTIFICATION> pfdin,
);
typedef PFNFREE = Void Function(
  Pointer pv,
);
typedef PFNOPEN = IntPtr Function(
  Pointer<Utf8> pszFile,
  Int32 oflag,
  Int32 pmode,
);
typedef PFNREAD = Uint32 Function(
  IntPtr hf,
  Pointer pv,
  Uint32 cb,
);
typedef PFNSEEK = Int32 Function(
  IntPtr hf,
  Int32 dist,
  Int32 seektype,
);
typedef PFNWRITE = Uint32 Function(
  IntPtr hf,
  Pointer pv,
  Uint32 cb,
);
