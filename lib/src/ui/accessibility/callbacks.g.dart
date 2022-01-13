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
import '../../ui/accessibility/IAccessible.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IUnknown.dart';
import '../../ui/accessibility/structs.g.dart';
import '../../system/com/structs.g.dart';

typedef LPFNACCESSIBLECHILDREN = Int32 Function(
  Pointer<COMObject> paccContainer,
  Int32 iChildStart,
  Int32 cChildren,
  Pointer<VARIANT> rgvarChildren,
  Pointer<Int32> pcObtained,
);
typedef LPFNACCESSIBLEOBJECTFROMPOINT = Int32 Function(
  POINT ptScreen,
  Pointer<Pointer<COMObject>> ppacc,
  Pointer<VARIANT> pvarChild,
);
typedef LPFNACCESSIBLEOBJECTFROMWINDOW = Int32 Function(
  IntPtr hwnd,
  Uint32 dwId,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
);
typedef LPFNCREATESTDACCESSIBLEOBJECT = Int32 Function(
  IntPtr hwnd,
  Int32 idObject,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
);
typedef LPFNLRESULTFROMOBJECT = IntPtr Function(
  Pointer<GUID> riid,
  IntPtr wParam,
  Pointer<COMObject> punk,
);
typedef LPFNOBJECTFROMLRESULT = Int32 Function(
  IntPtr lResult,
  Pointer<GUID> riid,
  IntPtr wParam,
  Pointer<Pointer> ppvObject,
);
typedef UiaEventCallback = Void Function(
  Pointer<UiaEventArgs> pArgs,
  Pointer<SAFEARRAY> pRequestedData,
  Pointer<Utf16> pTreeStructure,
);
typedef UiaProviderCallback = Pointer<SAFEARRAY> Function(
  IntPtr hwnd,
  Int32 providerType,
);
typedef WINEVENTPROC = Void Function(
  IntPtr hWinEventHook,
  Uint32 event,
  IntPtr hwnd,
  Int32 idObject,
  Int32 idChild,
  Uint32 idEventThread,
  Uint32 dwmsEventTime,
);
