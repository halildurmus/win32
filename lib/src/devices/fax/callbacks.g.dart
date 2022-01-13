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
import '../../devices/fax/structs.g.dart';
import '../../ui/controls/structs.g.dart';
import '../../devices/fax/callbacks.g.dart';

typedef PFAXABORT = Int32 Function(
  IntPtr FaxHandle,
  Uint32 JobId,
);
typedef PFAXACCESSCHECK = Int32 Function(
  IntPtr FaxHandle,
  Uint32 AccessMask,
);
typedef PFAXCLOSE = Int32 Function(
  IntPtr FaxHandle,
);
typedef PFAXCOMPLETEJOBPARAMSW = Int32 Function(
  Pointer<Pointer<FAX_JOB_PARAM>> JobParams,
  Pointer<Pointer<FAX_COVERPAGE_INFO>> CoverpageInfo,
);
typedef PFAXCONNECTFAXSERVERW = Int32 Function(
  Pointer<Utf16> MachineName,
  Pointer<IntPtr> FaxHandle,
);
typedef PFAXDEVABORTOPERATION = Int32 Function(
  IntPtr param0,
);
typedef PFAXDEVCONFIGURE = Int32 Function(
  Pointer<IntPtr> param0,
);
typedef PFAXDEVENDJOB = Int32 Function(
  IntPtr param0,
);
typedef PFAXDEVINITIALIZE = Int32 Function(
  Uint32 param0,
  IntPtr param1,
  Pointer<Pointer<NativeFunction<PFAX_LINECALLBACK>>> param2,
  Pointer<NativeFunction<PFAX_SERVICE_CALLBACK>> param3,
);
typedef PFAXDEVRECEIVE = Int32 Function(
  IntPtr param0,
  Uint32 param1,
  Pointer<FAX_RECEIVE> param2,
);
typedef PFAXDEVREPORTSTATUS = Int32 Function(
  IntPtr param0,
  Pointer<FAX_DEV_STATUS> param1,
  Uint32 param2,
  Pointer<Uint32> param3,
);
typedef PFAXDEVSEND = Int32 Function(
  IntPtr param0,
  Pointer<FAX_SEND> param1,
  Pointer<NativeFunction<PFAX_SEND_CALLBACK>> param2,
);
typedef PFAXDEVSHUTDOWN = Int32 Function();
typedef PFAXDEVSTARTJOB = Int32 Function(
  Uint32 param0,
  Uint32 param1,
  Pointer<IntPtr> param2,
  IntPtr param3,
  IntPtr param4,
);
typedef PFAXDEVVIRTUALDEVICECREATION = Int32 Function(
  Pointer<Uint32> DeviceCount,
  Pointer<Utf16> DeviceNamePrefix,
  Pointer<Uint32> DeviceIdPrefix,
  IntPtr CompletionPort,
  IntPtr CompletionKey,
);
typedef PFAXENABLEROUTINGMETHODW = Int32 Function(
  IntPtr FaxPortHandle,
  Pointer<Utf16> RoutingGuid,
  Int32 Enabled,
);
typedef PFAXENUMGLOBALROUTINGINFOW = Int32 Function(
  IntPtr FaxHandle,
  Pointer<Pointer<FAX_GLOBAL_ROUTING_INFO>> RoutingInfo,
  Pointer<Uint32> MethodsReturned,
);
typedef PFAXENUMJOBSW = Int32 Function(
  IntPtr FaxHandle,
  Pointer<Pointer<FAX_JOB_ENTRY>> JobEntry,
  Pointer<Uint32> JobsReturned,
);
typedef PFAXENUMPORTSW = Int32 Function(
  IntPtr FaxHandle,
  Pointer<Pointer<FAX_PORT_INFO>> PortInfo,
  Pointer<Uint32> PortsReturned,
);
typedef PFAXENUMROUTINGMETHODSW = Int32 Function(
  IntPtr FaxPortHandle,
  Pointer<Pointer<FAX_ROUTING_METHOD>> RoutingMethod,
  Pointer<Uint32> MethodsReturned,
);
typedef PFAXFREEBUFFER = Void Function(
  Pointer Buffer,
);
typedef PFAXGETCONFIGURATIONW = Int32 Function(
  IntPtr FaxHandle,
  Pointer<Pointer<FAX_CONFIGURATION>> FaxConfig,
);
typedef PFAXGETDEVICESTATUSW = Int32 Function(
  IntPtr FaxPortHandle,
  Pointer<Pointer<FAX_DEVICE_STATUS>> DeviceStatus,
);
typedef PFAXGETJOBW = Int32 Function(
  IntPtr FaxHandle,
  Uint32 JobId,
  Pointer<Pointer<FAX_JOB_ENTRY>> JobEntry,
);
typedef PFAXGETLOGGINGCATEGORIESW = Int32 Function(
  IntPtr FaxHandle,
  Pointer<Pointer<FAX_LOG_CATEGORY>> Categories,
  Pointer<Uint32> NumberCategories,
);
typedef PFAXGETPAGEDATA = Int32 Function(
  IntPtr FaxHandle,
  Uint32 JobId,
  Pointer<Pointer<Uint8>> Buffer,
  Pointer<Uint32> BufferSize,
  Pointer<Uint32> ImageWidth,
  Pointer<Uint32> ImageHeight,
);
typedef PFAXGETPORTW = Int32 Function(
  IntPtr FaxPortHandle,
  Pointer<Pointer<FAX_PORT_INFO>> PortInfo,
);
typedef PFAXGETROUTINGINFOW = Int32 Function(
  IntPtr FaxPortHandle,
  Pointer<Utf16> RoutingGuid,
  Pointer<Pointer<Uint8>> RoutingInfoBuffer,
  Pointer<Uint32> RoutingInfoBufferSize,
);
typedef PFAXINITIALIZEEVENTQUEUE = Int32 Function(
  IntPtr FaxHandle,
  IntPtr CompletionPort,
  IntPtr CompletionKey,
  IntPtr hWnd,
  Uint32 MessageStart,
);
typedef PFAXOPENPORT = Int32 Function(
  IntPtr FaxHandle,
  Uint32 DeviceId,
  Uint32 Flags,
  Pointer<IntPtr> FaxPortHandle,
);
typedef PFAXPRINTCOVERPAGEW = Int32 Function(
  Pointer<FAX_CONTEXT_INFO> FaxContextInfo,
  Pointer<FAX_COVERPAGE_INFO> CoverPageInfo,
);
typedef PFAXREGISTERROUTINGEXTENSIONW = Int32 Function(
  IntPtr FaxHandle,
  Pointer<Utf16> ExtensionName,
  Pointer<Utf16> FriendlyName,
  Pointer<Utf16> ImageName,
  Pointer<NativeFunction<PFAX_ROUTING_INSTALLATION_CALLBACKW>> CallBack,
  Pointer Context,
);
typedef PFAXREGISTERSERVICEPROVIDERW = Int32 Function(
  Pointer<Utf16> DeviceProvider,
  Pointer<Utf16> FriendlyName,
  Pointer<Utf16> ImageName,
  Pointer<Utf16> TspName,
);
typedef PFAXROUTEADDFILE = Int32 Function(
  Uint32 JobId,
  Pointer<Utf16> FileName,
  Pointer<GUID> Guid,
);
typedef PFAXROUTEDELETEFILE = Int32 Function(
  Uint32 JobId,
  Pointer<Utf16> FileName,
);
typedef PFAXROUTEDEVICECHANGENOTIFICATION = Int32 Function(
  Uint32 param0,
  Int32 param1,
);
typedef PFAXROUTEDEVICEENABLE = Int32 Function(
  Pointer<Utf16> param0,
  Uint32 param1,
  Int32 param2,
);
typedef PFAXROUTEENUMFILE = Int32 Function(
  Uint32 JobId,
  Pointer<GUID> GuidOwner,
  Pointer<GUID> GuidCaller,
  Pointer<Utf16> FileName,
  Pointer Context,
);
typedef PFAXROUTEENUMFILES = Int32 Function(
  Uint32 JobId,
  Pointer<GUID> Guid,
  Pointer<NativeFunction<PFAXROUTEENUMFILE>> FileEnumerator,
  Pointer Context,
);
typedef PFAXROUTEGETFILE = Int32 Function(
  Uint32 JobId,
  Uint32 Index,
  Pointer<Utf16> FileNameBuffer,
  Pointer<Uint32> RequiredSize,
);
typedef PFAXROUTEGETROUTINGINFO = Int32 Function(
  Pointer<Utf16> param0,
  Uint32 param1,
  Pointer<Uint8> param2,
  Pointer<Uint32> param3,
);
typedef PFAXROUTEINITIALIZE = Int32 Function(
  IntPtr param0,
  Pointer<FAX_ROUTE_CALLBACKROUTINES> param1,
);
typedef PFAXROUTEMETHOD = Int32 Function(
  Pointer<FAX_ROUTE> param0,
  Pointer<Pointer> param1,
  Pointer<Uint32> param2,
);
typedef PFAXROUTEMODIFYROUTINGDATA = Int32 Function(
  Uint32 JobId,
  Pointer<Utf16> RoutingGuid,
  Pointer<Uint8> RoutingData,
  Uint32 RoutingDataSize,
);
typedef PFAXROUTESETROUTINGINFO = Int32 Function(
  Pointer<Utf16> param0,
  Uint32 param1,
  Pointer<Uint8> param2,
  Uint32 param3,
);
typedef PFAXSENDDOCUMENTFORBROADCASTW = Int32 Function(
  IntPtr FaxHandle,
  Pointer<Utf16> FileName,
  Pointer<Uint32> FaxJobId,
  Pointer<NativeFunction<PFAX_RECIPIENT_CALLBACKW>> FaxRecipientCallback,
  Pointer Context,
);
typedef PFAXSENDDOCUMENTW = Int32 Function(
  IntPtr FaxHandle,
  Pointer<Utf16> FileName,
  Pointer<FAX_JOB_PARAM> JobParams,
  Pointer<FAX_COVERPAGE_INFO> CoverpageInfo,
  Pointer<Uint32> FaxJobId,
);
typedef PFAXSETCONFIGURATIONW = Int32 Function(
  IntPtr FaxHandle,
  Pointer<FAX_CONFIGURATION> FaxConfig,
);
typedef PFAXSETGLOBALROUTINGINFOW = Int32 Function(
  IntPtr FaxPortHandle,
  Pointer<FAX_GLOBAL_ROUTING_INFO> RoutingInfo,
);
typedef PFAXSETJOBW = Int32 Function(
  IntPtr FaxHandle,
  Uint32 JobId,
  Uint32 Command,
  Pointer<FAX_JOB_ENTRY> JobEntry,
);
typedef PFAXSETLOGGINGCATEGORIESW = Int32 Function(
  IntPtr FaxHandle,
  Pointer<FAX_LOG_CATEGORY> Categories,
  Uint32 NumberCategories,
);
typedef PFAXSETPORTW = Int32 Function(
  IntPtr FaxPortHandle,
  Pointer<FAX_PORT_INFO> PortInfo,
);
typedef PFAXSETROUTINGINFOW = Int32 Function(
  IntPtr FaxPortHandle,
  Pointer<Utf16> RoutingGuid,
  Pointer<Uint8> RoutingInfoBuffer,
  Uint32 RoutingInfoBufferSize,
);
typedef PFAXSTARTPRINTJOBW = Int32 Function(
  Pointer<Utf16> PrinterName,
  Pointer<FAX_PRINT_INFO> PrintInfo,
  Pointer<Uint32> FaxJobId,
  Pointer<FAX_CONTEXT_INFO> FaxContextInfo,
);
typedef PFAXUNREGISTERSERVICEPROVIDERW = Int32 Function(
  Pointer<Utf16> DeviceProvider,
);
typedef PFAX_EXT_CONFIG_CHANGE = Int32 Function(
  Uint32 param0,
  Pointer<Utf16> param1,
  Pointer<Uint8> param2,
  Uint32 param3,
);
typedef PFAX_EXT_FREE_BUFFER = Void Function(
  Pointer param0,
);
typedef PFAX_EXT_GET_DATA = Uint32 Function(
  Uint32 param0,
  Int32 param1,
  Pointer<Utf16> param2,
  Pointer<Pointer<Uint8>> param3,
  Pointer<Uint32> param4,
);
typedef PFAX_EXT_INITIALIZE_CONFIG = Int32 Function(
  Pointer<NativeFunction<PFAX_EXT_GET_DATA>> param0,
  Pointer<NativeFunction<PFAX_EXT_SET_DATA>> param1,
  Pointer<NativeFunction<PFAX_EXT_REGISTER_FOR_EVENTS>> param2,
  Pointer<NativeFunction<PFAX_EXT_UNREGISTER_FOR_EVENTS>> param3,
  Pointer<NativeFunction<PFAX_EXT_FREE_BUFFER>> param4,
);
typedef PFAX_EXT_REGISTER_FOR_EVENTS = IntPtr Function(
  IntPtr param0,
  Uint32 param1,
  Int32 param2,
  Pointer<Utf16> param3,
  Pointer<NativeFunction<PFAX_EXT_CONFIG_CHANGE>> param4,
);
typedef PFAX_EXT_SET_DATA = Uint32 Function(
  IntPtr param0,
  Uint32 param1,
  Int32 param2,
  Pointer<Utf16> param3,
  Pointer<Uint8> param4,
  Uint32 param5,
);
typedef PFAX_EXT_UNREGISTER_FOR_EVENTS = Uint32 Function(
  IntPtr param0,
);
typedef PFAX_LINECALLBACK = Void Function(
  IntPtr FaxHandle,
  Uint32 hDevice,
  Uint32 dwMessage,
  IntPtr dwInstance,
  IntPtr dwParam1,
  IntPtr dwParam2,
  IntPtr dwParam3,
);
typedef PFAX_RECIPIENT_CALLBACKW = Int32 Function(
  IntPtr FaxHandle,
  Uint32 RecipientNumber,
  Pointer Context,
  Pointer<FAX_JOB_PARAM> JobParams,
  Pointer<FAX_COVERPAGE_INFO> CoverpageInfo,
);
typedef PFAX_ROUTING_INSTALLATION_CALLBACKW = Int32 Function(
  IntPtr FaxHandle,
  Pointer Context,
  Pointer<Utf16> MethodName,
  Pointer<Utf16> FriendlyName,
  Pointer<Utf16> FunctionName,
  Pointer<Utf16> Guid,
);
typedef PFAX_SEND_CALLBACK = Int32 Function(
  IntPtr FaxHandle,
  Uint32 CallHandle,
  Uint32 Reserved1,
  Uint32 Reserved2,
);
typedef PFAX_SERVICE_CALLBACK = Int32 Function(
  IntPtr FaxHandle,
  Uint32 DeviceId,
  IntPtr Param1,
  IntPtr Param2,
  IntPtr Param3,
);
