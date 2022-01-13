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
import '../../system/windowsprogramming/structs.g.dart';
import '../../foundation/structs.g.dart';

typedef APPLICATION_RECOVERY_CALLBACK = Uint32 Function(
  Pointer pvParameter,
);
typedef ENUM_CALLBACK = Void Function(
  Pointer<DCISURFACEINFO> lpSurfaceInfo,
  Pointer lpContext,
);
typedef PDELAYLOAD_FAILURE_DLL_CALLBACK = Pointer Function(
  Uint32 NotificationReason,
  Pointer<DELAYLOAD_INFO> DelayloadInfo,
);
typedef PFEATURE_STATE_CHANGE_CALLBACK = Void Function(
  Pointer context,
);
typedef PFIBER_CALLOUT_ROUTINE = Pointer Function(
  Pointer lpParameter,
);
typedef PIO_APC_ROUTINE = Void Function(
  Pointer ApcContext,
  Pointer<IO_STATUS_BLOCK> IoStatusBlock,
  Uint32 Reserved,
);
typedef PQUERYACTCTXW_FUNC = Int32 Function(
  Uint32 dwFlags,
  IntPtr hActCtx,
  Pointer pvSubInstance,
  Uint32 ulInfoClass,
  Pointer pvBuffer,
  IntPtr cbBuffer,
  Pointer<IntPtr> pcbWrittenOrRequired,
);
typedef PWINSTATIONQUERYINFORMATIONW = Uint8 Function(
  IntPtr param0,
  Uint32 param1,
  Int32 param2,
  Pointer param3,
  Uint32 param4,
  Pointer<Uint32> param5,
);
typedef PWLDP_ISAPPAPPROVEDBYPOLICY_API = Int32 Function(
  Pointer<Utf16> PackageFamilyName,
  Uint64 PackageVersion,
);
typedef PWLDP_ISDYNAMICCODEPOLICYENABLED_API = Int32 Function(
  Pointer<Int32> pbEnabled,
);
typedef PWLDP_ISPRODUCTIONCONFIGURATION_API = Int32 Function(
  Pointer<Int32> IsProductionConfiguration,
);
typedef PWLDP_ISWCOSPRODUCTIONCONFIGURATION_API = Int32 Function(
  Pointer<Int32> IsProductionConfiguration,
);
typedef PWLDP_QUERYDEVICESECURITYINFORMATION_API = Int32 Function(
  Pointer<WLDP_DEVICE_SECURITY_INFORMATION> information,
  Uint32 informationLength,
  Pointer<Uint32> returnLength,
);
typedef PWLDP_QUERYDYNAMICODETRUST_API = Int32 Function(
  IntPtr fileHandle,
  Pointer baseImage,
  Uint32 imageSize,
);
typedef PWLDP_QUERYPOLICYSETTINGENABLED2_API = Int32 Function(
  Pointer<Utf16> Setting,
  Pointer<Int32> Enabled,
);
typedef PWLDP_QUERYPOLICYSETTINGENABLED_API = Int32 Function(
  Int32 Setting,
  Pointer<Int32> Enabled,
);
typedef PWLDP_QUERYWINDOWSLOCKDOWNMODE_API = Int32 Function(
  Pointer<Int32> lockdownMode,
);
typedef PWLDP_QUERYWINDOWSLOCKDOWNRESTRICTION_API = Int32 Function(
  Pointer<Int32> LockdownRestriction,
);
typedef PWLDP_RESETPRODUCTIONCONFIGURATION_API = Int32 Function();
typedef PWLDP_RESETWCOSPRODUCTIONCONFIGURATION_API = Int32 Function();
typedef PWLDP_SETDYNAMICCODETRUST_API = Int32 Function(
  IntPtr hFileHandle,
);
typedef PWLDP_SETWINDOWSLOCKDOWNRESTRICTION_API = Int32 Function(
  Int32 LockdownRestriction,
);
typedef WINWATCHNOTIFYPROC = Void Function(
  IntPtr hww,
  IntPtr hwnd,
  Uint32 code,
  IntPtr lParam,
);
