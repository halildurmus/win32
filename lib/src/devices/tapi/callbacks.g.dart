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
import '../../devices/tapi/structs.g.dart';
import '../../system/com/IStream.dart';
import '../../system/addressbook/IMessage.dart';
import '../../devices/tapi/ITnef.dart';
import '../../system/addressbook/IAddrBook.dart';

typedef ASYNC_COMPLETION = Void Function(
  Uint32 dwRequestID,
  Int32 lResult,
);
typedef LINECALLBACK = Void Function(
  Uint32 hDevice,
  Uint32 dwMessage,
  IntPtr dwInstance,
  IntPtr dwParam1,
  IntPtr dwParam2,
  IntPtr dwParam3,
);
typedef LINEEVENT = Void Function(
  Pointer<HTAPILINE__> htLine,
  Pointer<HTAPICALL__> htCall,
  Uint32 dwMsg,
  IntPtr dwParam1,
  IntPtr dwParam2,
  IntPtr dwParam3,
);
typedef LPGETTNEFSTREAMCODEPAGE = Int32 Function(
  Pointer<COMObject> lpStream,
  Pointer<Uint32> lpulCodepage,
  Pointer<Uint32> lpulSubCodepage,
);
typedef LPOPENTNEFSTREAM = Int32 Function(
  Pointer lpvSupport,
  Pointer<COMObject> lpStream,
  Pointer<Int8> lpszStreamName,
  Uint32 ulFlags,
  Pointer<COMObject> lpMessage,
  Uint16 wKeyVal,
  Pointer<Pointer<COMObject>> lppTNEF,
);
typedef LPOPENTNEFSTREAMEX = Int32 Function(
  Pointer lpvSupport,
  Pointer<COMObject> lpStream,
  Pointer<Int8> lpszStreamName,
  Uint32 ulFlags,
  Pointer<COMObject> lpMessage,
  Uint16 wKeyVal,
  Pointer<COMObject> lpAdressBook,
  Pointer<Pointer<COMObject>> lppTNEF,
);
typedef PHONECALLBACK = Void Function(
  Uint32 hDevice,
  Uint32 dwMessage,
  IntPtr dwInstance,
  IntPtr dwParam1,
  IntPtr dwParam2,
  IntPtr dwParam3,
);
typedef PHONEEVENT = Void Function(
  Pointer<HTAPIPHONE__> htPhone,
  Uint32 dwMsg,
  IntPtr dwParam1,
  IntPtr dwParam2,
  IntPtr dwParam3,
);
typedef TUISPIDLLCALLBACK = Int32 Function(
  IntPtr dwObjectID,
  Uint32 dwObjectType,
  Pointer lpParams,
  Uint32 dwSize,
);
