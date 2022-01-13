// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../devices/fax/structs.g.dart';
import '../../devices/fax/callbacks.g.dart';
import '../../devices/fax/IStillImage.dart';
import '../../system/com/IUnknown.dart'; // -----------------------------------------------------------------------

// winfax.dll
// -----------------------------------------------------------------------
final _winfax = DynamicLibrary.open('winfax.dll');

int FaxAbort(
  int FaxHandle,
  int JobId,
) =>
    _FaxAbort(
      FaxHandle,
      JobId,
    );

late final _FaxAbort = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxHandle,
  Uint32 JobId,
),
    int Function(
  int FaxHandle,
  int JobId,
)>('FaxAbort');

int FaxAccessCheck(
  int FaxHandle,
  int AccessMask,
) =>
    _FaxAccessCheck(
      FaxHandle,
      AccessMask,
    );

late final _FaxAccessCheck = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxHandle,
  Uint32 AccessMask,
),
    int Function(
  int FaxHandle,
  int AccessMask,
)>('FaxAccessCheck');

int FaxClose(
  int FaxHandle,
) =>
    _FaxClose(
      FaxHandle,
    );

late final _FaxClose = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxHandle,
),
    int Function(
  int FaxHandle,
)>('FaxClose');

int FaxCompleteJobParams(
  Pointer<Pointer<FAX_JOB_PARAM>> JobParams,
  Pointer<Pointer<FAX_COVERPAGE_INFO>> CoverpageInfo,
) =>
    _FaxCompleteJobParams(
      JobParams,
      CoverpageInfo,
    );

late final _FaxCompleteJobParams = _winfax.lookupFunction<
    Int32 Function(
  Pointer<Pointer<FAX_JOB_PARAM>> JobParams,
  Pointer<Pointer<FAX_COVERPAGE_INFO>> CoverpageInfo,
),
    int Function(
  Pointer<Pointer<FAX_JOB_PARAM>> JobParams,
  Pointer<Pointer<FAX_COVERPAGE_INFO>> CoverpageInfo,
)>('FaxCompleteJobParamsW');

int FaxConnectFaxServer(
  Pointer<Utf16> MachineName,
  Pointer<IntPtr> FaxHandle,
) =>
    _FaxConnectFaxServer(
      MachineName,
      FaxHandle,
    );

late final _FaxConnectFaxServer = _winfax.lookupFunction<
    Int32 Function(
  Pointer<Utf16> MachineName,
  Pointer<IntPtr> FaxHandle,
),
    int Function(
  Pointer<Utf16> MachineName,
  Pointer<IntPtr> FaxHandle,
)>('FaxConnectFaxServerW');

int FaxEnableRoutingMethod(
  int FaxPortHandle,
  Pointer<Utf16> RoutingGuid,
  int Enabled,
) =>
    _FaxEnableRoutingMethod(
      FaxPortHandle,
      RoutingGuid,
      Enabled,
    );

late final _FaxEnableRoutingMethod = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxPortHandle,
  Pointer<Utf16> RoutingGuid,
  Int32 Enabled,
),
    int Function(
  int FaxPortHandle,
  Pointer<Utf16> RoutingGuid,
  int Enabled,
)>('FaxEnableRoutingMethodW');

int FaxEnumGlobalRoutingInfo(
  int FaxHandle,
  Pointer<Pointer<FAX_GLOBAL_ROUTING_INFO>> RoutingInfo,
  Pointer<Uint32> MethodsReturned,
) =>
    _FaxEnumGlobalRoutingInfo(
      FaxHandle,
      RoutingInfo,
      MethodsReturned,
    );

late final _FaxEnumGlobalRoutingInfo = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxHandle,
  Pointer<Pointer<FAX_GLOBAL_ROUTING_INFO>> RoutingInfo,
  Pointer<Uint32> MethodsReturned,
),
    int Function(
  int FaxHandle,
  Pointer<Pointer<FAX_GLOBAL_ROUTING_INFO>> RoutingInfo,
  Pointer<Uint32> MethodsReturned,
)>('FaxEnumGlobalRoutingInfoW');

int FaxEnumJobs(
  int FaxHandle,
  Pointer<Pointer<FAX_JOB_ENTRY>> JobEntry,
  Pointer<Uint32> JobsReturned,
) =>
    _FaxEnumJobs(
      FaxHandle,
      JobEntry,
      JobsReturned,
    );

late final _FaxEnumJobs = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxHandle,
  Pointer<Pointer<FAX_JOB_ENTRY>> JobEntry,
  Pointer<Uint32> JobsReturned,
),
    int Function(
  int FaxHandle,
  Pointer<Pointer<FAX_JOB_ENTRY>> JobEntry,
  Pointer<Uint32> JobsReturned,
)>('FaxEnumJobsW');

int FaxEnumPorts(
  int FaxHandle,
  Pointer<Pointer<FAX_PORT_INFO>> PortInfo,
  Pointer<Uint32> PortsReturned,
) =>
    _FaxEnumPorts(
      FaxHandle,
      PortInfo,
      PortsReturned,
    );

late final _FaxEnumPorts = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxHandle,
  Pointer<Pointer<FAX_PORT_INFO>> PortInfo,
  Pointer<Uint32> PortsReturned,
),
    int Function(
  int FaxHandle,
  Pointer<Pointer<FAX_PORT_INFO>> PortInfo,
  Pointer<Uint32> PortsReturned,
)>('FaxEnumPortsW');

int FaxEnumRoutingMethods(
  int FaxPortHandle,
  Pointer<Pointer<FAX_ROUTING_METHOD>> RoutingMethod,
  Pointer<Uint32> MethodsReturned,
) =>
    _FaxEnumRoutingMethods(
      FaxPortHandle,
      RoutingMethod,
      MethodsReturned,
    );

late final _FaxEnumRoutingMethods = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxPortHandle,
  Pointer<Pointer<FAX_ROUTING_METHOD>> RoutingMethod,
  Pointer<Uint32> MethodsReturned,
),
    int Function(
  int FaxPortHandle,
  Pointer<Pointer<FAX_ROUTING_METHOD>> RoutingMethod,
  Pointer<Uint32> MethodsReturned,
)>('FaxEnumRoutingMethodsW');

void FaxFreeBuffer(
  Pointer Buffer,
) =>
    _FaxFreeBuffer(
      Buffer,
    );

late final _FaxFreeBuffer = _winfax.lookupFunction<
    Void Function(
  Pointer Buffer,
),
    void Function(
  Pointer Buffer,
)>('FaxFreeBuffer');

int FaxGetConfiguration(
  int FaxHandle,
  Pointer<Pointer<FAX_CONFIGURATION>> FaxConfig,
) =>
    _FaxGetConfiguration(
      FaxHandle,
      FaxConfig,
    );

late final _FaxGetConfiguration = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxHandle,
  Pointer<Pointer<FAX_CONFIGURATION>> FaxConfig,
),
    int Function(
  int FaxHandle,
  Pointer<Pointer<FAX_CONFIGURATION>> FaxConfig,
)>('FaxGetConfigurationW');

int FaxGetDeviceStatus(
  int FaxPortHandle,
  Pointer<Pointer<FAX_DEVICE_STATUS>> DeviceStatus,
) =>
    _FaxGetDeviceStatus(
      FaxPortHandle,
      DeviceStatus,
    );

late final _FaxGetDeviceStatus = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxPortHandle,
  Pointer<Pointer<FAX_DEVICE_STATUS>> DeviceStatus,
),
    int Function(
  int FaxPortHandle,
  Pointer<Pointer<FAX_DEVICE_STATUS>> DeviceStatus,
)>('FaxGetDeviceStatusW');

int FaxGetJob(
  int FaxHandle,
  int JobId,
  Pointer<Pointer<FAX_JOB_ENTRY>> JobEntry,
) =>
    _FaxGetJob(
      FaxHandle,
      JobId,
      JobEntry,
    );

late final _FaxGetJob = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxHandle,
  Uint32 JobId,
  Pointer<Pointer<FAX_JOB_ENTRY>> JobEntry,
),
    int Function(
  int FaxHandle,
  int JobId,
  Pointer<Pointer<FAX_JOB_ENTRY>> JobEntry,
)>('FaxGetJobW');

int FaxGetLoggingCategories(
  int FaxHandle,
  Pointer<Pointer<FAX_LOG_CATEGORY>> Categories,
  Pointer<Uint32> NumberCategories,
) =>
    _FaxGetLoggingCategories(
      FaxHandle,
      Categories,
      NumberCategories,
    );

late final _FaxGetLoggingCategories = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxHandle,
  Pointer<Pointer<FAX_LOG_CATEGORY>> Categories,
  Pointer<Uint32> NumberCategories,
),
    int Function(
  int FaxHandle,
  Pointer<Pointer<FAX_LOG_CATEGORY>> Categories,
  Pointer<Uint32> NumberCategories,
)>('FaxGetLoggingCategoriesW');

int FaxGetPageData(
  int FaxHandle,
  int JobId,
  Pointer<Pointer<Uint8>> Buffer,
  Pointer<Uint32> BufferSize,
  Pointer<Uint32> ImageWidth,
  Pointer<Uint32> ImageHeight,
) =>
    _FaxGetPageData(
      FaxHandle,
      JobId,
      Buffer,
      BufferSize,
      ImageWidth,
      ImageHeight,
    );

late final _FaxGetPageData = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxHandle,
  Uint32 JobId,
  Pointer<Pointer<Uint8>> Buffer,
  Pointer<Uint32> BufferSize,
  Pointer<Uint32> ImageWidth,
  Pointer<Uint32> ImageHeight,
),
    int Function(
  int FaxHandle,
  int JobId,
  Pointer<Pointer<Uint8>> Buffer,
  Pointer<Uint32> BufferSize,
  Pointer<Uint32> ImageWidth,
  Pointer<Uint32> ImageHeight,
)>('FaxGetPageData');

int FaxGetPort(
  int FaxPortHandle,
  Pointer<Pointer<FAX_PORT_INFO>> PortInfo,
) =>
    _FaxGetPort(
      FaxPortHandle,
      PortInfo,
    );

late final _FaxGetPort = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxPortHandle,
  Pointer<Pointer<FAX_PORT_INFO>> PortInfo,
),
    int Function(
  int FaxPortHandle,
  Pointer<Pointer<FAX_PORT_INFO>> PortInfo,
)>('FaxGetPortW');

int FaxGetRoutingInfo(
  int FaxPortHandle,
  Pointer<Utf16> RoutingGuid,
  Pointer<Pointer<Uint8>> RoutingInfoBuffer,
  Pointer<Uint32> RoutingInfoBufferSize,
) =>
    _FaxGetRoutingInfo(
      FaxPortHandle,
      RoutingGuid,
      RoutingInfoBuffer,
      RoutingInfoBufferSize,
    );

late final _FaxGetRoutingInfo = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxPortHandle,
  Pointer<Utf16> RoutingGuid,
  Pointer<Pointer<Uint8>> RoutingInfoBuffer,
  Pointer<Uint32> RoutingInfoBufferSize,
),
    int Function(
  int FaxPortHandle,
  Pointer<Utf16> RoutingGuid,
  Pointer<Pointer<Uint8>> RoutingInfoBuffer,
  Pointer<Uint32> RoutingInfoBufferSize,
)>('FaxGetRoutingInfoW');

int FaxInitializeEventQueue(
  int FaxHandle,
  int CompletionPort,
  int CompletionKey,
  int hWnd,
  int MessageStart,
) =>
    _FaxInitializeEventQueue(
      FaxHandle,
      CompletionPort,
      CompletionKey,
      hWnd,
      MessageStart,
    );

late final _FaxInitializeEventQueue = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxHandle,
  IntPtr CompletionPort,
  IntPtr CompletionKey,
  IntPtr hWnd,
  Uint32 MessageStart,
),
    int Function(
  int FaxHandle,
  int CompletionPort,
  int CompletionKey,
  int hWnd,
  int MessageStart,
)>('FaxInitializeEventQueue');

int FaxOpenPort(
  int FaxHandle,
  int DeviceId,
  int Flags,
  Pointer<IntPtr> FaxPortHandle,
) =>
    _FaxOpenPort(
      FaxHandle,
      DeviceId,
      Flags,
      FaxPortHandle,
    );

late final _FaxOpenPort = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxHandle,
  Uint32 DeviceId,
  Uint32 Flags,
  Pointer<IntPtr> FaxPortHandle,
),
    int Function(
  int FaxHandle,
  int DeviceId,
  int Flags,
  Pointer<IntPtr> FaxPortHandle,
)>('FaxOpenPort');

int FaxPrintCoverPage(
  Pointer<FAX_CONTEXT_INFO> FaxContextInfo,
  Pointer<FAX_COVERPAGE_INFO> CoverPageInfo,
) =>
    _FaxPrintCoverPage(
      FaxContextInfo,
      CoverPageInfo,
    );

late final _FaxPrintCoverPage = _winfax.lookupFunction<
    Int32 Function(
  Pointer<FAX_CONTEXT_INFO> FaxContextInfo,
  Pointer<FAX_COVERPAGE_INFO> CoverPageInfo,
),
    int Function(
  Pointer<FAX_CONTEXT_INFO> FaxContextInfo,
  Pointer<FAX_COVERPAGE_INFO> CoverPageInfo,
)>('FaxPrintCoverPageW');

int FaxRegisterRoutingExtension(
  int FaxHandle,
  Pointer<Utf16> ExtensionName,
  Pointer<Utf16> FriendlyName,
  Pointer<Utf16> ImageName,
  Pointer<NativeFunction<PFAX_ROUTING_INSTALLATION_CALLBACKW>> CallBack,
  Pointer Context,
) =>
    _FaxRegisterRoutingExtension(
      FaxHandle,
      ExtensionName,
      FriendlyName,
      ImageName,
      CallBack,
      Context,
    );

late final _FaxRegisterRoutingExtension = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxHandle,
  Pointer<Utf16> ExtensionName,
  Pointer<Utf16> FriendlyName,
  Pointer<Utf16> ImageName,
  Pointer<NativeFunction<PFAX_ROUTING_INSTALLATION_CALLBACKW>> CallBack,
  Pointer Context,
),
    int Function(
  int FaxHandle,
  Pointer<Utf16> ExtensionName,
  Pointer<Utf16> FriendlyName,
  Pointer<Utf16> ImageName,
  Pointer<NativeFunction<PFAX_ROUTING_INSTALLATION_CALLBACKW>> CallBack,
  Pointer Context,
)>('FaxRegisterRoutingExtensionW');

int FaxRegisterServiceProvider(
  Pointer<Utf16> DeviceProvider,
  Pointer<Utf16> FriendlyName,
  Pointer<Utf16> ImageName,
  Pointer<Utf16> TspName,
) =>
    _FaxRegisterServiceProvider(
      DeviceProvider,
      FriendlyName,
      ImageName,
      TspName,
    );

late final _FaxRegisterServiceProvider = _winfax.lookupFunction<
    Int32 Function(
  Pointer<Utf16> DeviceProvider,
  Pointer<Utf16> FriendlyName,
  Pointer<Utf16> ImageName,
  Pointer<Utf16> TspName,
),
    int Function(
  Pointer<Utf16> DeviceProvider,
  Pointer<Utf16> FriendlyName,
  Pointer<Utf16> ImageName,
  Pointer<Utf16> TspName,
)>('FaxRegisterServiceProviderW');

int FaxSendDocumentForBroadcast(
  int FaxHandle,
  Pointer<Utf16> FileName,
  Pointer<Uint32> FaxJobId,
  Pointer<NativeFunction<PFAX_RECIPIENT_CALLBACKW>> FaxRecipientCallback,
  Pointer Context,
) =>
    _FaxSendDocumentForBroadcast(
      FaxHandle,
      FileName,
      FaxJobId,
      FaxRecipientCallback,
      Context,
    );

late final _FaxSendDocumentForBroadcast = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxHandle,
  Pointer<Utf16> FileName,
  Pointer<Uint32> FaxJobId,
  Pointer<NativeFunction<PFAX_RECIPIENT_CALLBACKW>> FaxRecipientCallback,
  Pointer Context,
),
    int Function(
  int FaxHandle,
  Pointer<Utf16> FileName,
  Pointer<Uint32> FaxJobId,
  Pointer<NativeFunction<PFAX_RECIPIENT_CALLBACKW>> FaxRecipientCallback,
  Pointer Context,
)>('FaxSendDocumentForBroadcastW');

int FaxSendDocument(
  int FaxHandle,
  Pointer<Utf16> FileName,
  Pointer<FAX_JOB_PARAM> JobParams,
  Pointer<FAX_COVERPAGE_INFO> CoverpageInfo,
  Pointer<Uint32> FaxJobId,
) =>
    _FaxSendDocument(
      FaxHandle,
      FileName,
      JobParams,
      CoverpageInfo,
      FaxJobId,
    );

late final _FaxSendDocument = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxHandle,
  Pointer<Utf16> FileName,
  Pointer<FAX_JOB_PARAM> JobParams,
  Pointer<FAX_COVERPAGE_INFO> CoverpageInfo,
  Pointer<Uint32> FaxJobId,
),
    int Function(
  int FaxHandle,
  Pointer<Utf16> FileName,
  Pointer<FAX_JOB_PARAM> JobParams,
  Pointer<FAX_COVERPAGE_INFO> CoverpageInfo,
  Pointer<Uint32> FaxJobId,
)>('FaxSendDocumentW');

int FaxSetConfiguration(
  int FaxHandle,
  Pointer<FAX_CONFIGURATION> FaxConfig,
) =>
    _FaxSetConfiguration(
      FaxHandle,
      FaxConfig,
    );

late final _FaxSetConfiguration = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxHandle,
  Pointer<FAX_CONFIGURATION> FaxConfig,
),
    int Function(
  int FaxHandle,
  Pointer<FAX_CONFIGURATION> FaxConfig,
)>('FaxSetConfigurationW');

int FaxSetGlobalRoutingInfo(
  int FaxHandle,
  Pointer<FAX_GLOBAL_ROUTING_INFO> RoutingInfo,
) =>
    _FaxSetGlobalRoutingInfo(
      FaxHandle,
      RoutingInfo,
    );

late final _FaxSetGlobalRoutingInfo = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxHandle,
  Pointer<FAX_GLOBAL_ROUTING_INFO> RoutingInfo,
),
    int Function(
  int FaxHandle,
  Pointer<FAX_GLOBAL_ROUTING_INFO> RoutingInfo,
)>('FaxSetGlobalRoutingInfoW');

int FaxSetJob(
  int FaxHandle,
  int JobId,
  int Command,
  Pointer<FAX_JOB_ENTRY> JobEntry,
) =>
    _FaxSetJob(
      FaxHandle,
      JobId,
      Command,
      JobEntry,
    );

late final _FaxSetJob = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxHandle,
  Uint32 JobId,
  Uint32 Command,
  Pointer<FAX_JOB_ENTRY> JobEntry,
),
    int Function(
  int FaxHandle,
  int JobId,
  int Command,
  Pointer<FAX_JOB_ENTRY> JobEntry,
)>('FaxSetJobW');

int FaxSetLoggingCategories(
  int FaxHandle,
  Pointer<FAX_LOG_CATEGORY> Categories,
  int NumberCategories,
) =>
    _FaxSetLoggingCategories(
      FaxHandle,
      Categories,
      NumberCategories,
    );

late final _FaxSetLoggingCategories = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxHandle,
  Pointer<FAX_LOG_CATEGORY> Categories,
  Uint32 NumberCategories,
),
    int Function(
  int FaxHandle,
  Pointer<FAX_LOG_CATEGORY> Categories,
  int NumberCategories,
)>('FaxSetLoggingCategoriesW');

int FaxSetPort(
  int FaxPortHandle,
  Pointer<FAX_PORT_INFO> PortInfo,
) =>
    _FaxSetPort(
      FaxPortHandle,
      PortInfo,
    );

late final _FaxSetPort = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxPortHandle,
  Pointer<FAX_PORT_INFO> PortInfo,
),
    int Function(
  int FaxPortHandle,
  Pointer<FAX_PORT_INFO> PortInfo,
)>('FaxSetPortW');

int FaxSetRoutingInfo(
  int FaxPortHandle,
  Pointer<Utf16> RoutingGuid,
  Pointer<Uint8> RoutingInfoBuffer,
  int RoutingInfoBufferSize,
) =>
    _FaxSetRoutingInfo(
      FaxPortHandle,
      RoutingGuid,
      RoutingInfoBuffer,
      RoutingInfoBufferSize,
    );

late final _FaxSetRoutingInfo = _winfax.lookupFunction<
    Int32 Function(
  IntPtr FaxPortHandle,
  Pointer<Utf16> RoutingGuid,
  Pointer<Uint8> RoutingInfoBuffer,
  Uint32 RoutingInfoBufferSize,
),
    int Function(
  int FaxPortHandle,
  Pointer<Utf16> RoutingGuid,
  Pointer<Uint8> RoutingInfoBuffer,
  int RoutingInfoBufferSize,
)>('FaxSetRoutingInfoW');

int FaxStartPrintJob(
  Pointer<Utf16> PrinterName,
  Pointer<FAX_PRINT_INFO> PrintInfo,
  Pointer<Uint32> FaxJobId,
  Pointer<FAX_CONTEXT_INFO> FaxContextInfo,
) =>
    _FaxStartPrintJob(
      PrinterName,
      PrintInfo,
      FaxJobId,
      FaxContextInfo,
    );

late final _FaxStartPrintJob = _winfax.lookupFunction<
    Int32 Function(
  Pointer<Utf16> PrinterName,
  Pointer<FAX_PRINT_INFO> PrintInfo,
  Pointer<Uint32> FaxJobId,
  Pointer<FAX_CONTEXT_INFO> FaxContextInfo,
),
    int Function(
  Pointer<Utf16> PrinterName,
  Pointer<FAX_PRINT_INFO> PrintInfo,
  Pointer<Uint32> FaxJobId,
  Pointer<FAX_CONTEXT_INFO> FaxContextInfo,
)>('FaxStartPrintJobW');

int FaxUnregisterServiceProvider(
  Pointer<Utf16> DeviceProvider,
) =>
    _FaxUnregisterServiceProvider(
      DeviceProvider,
    );

late final _FaxUnregisterServiceProvider = _winfax.lookupFunction<
    Int32 Function(
  Pointer<Utf16> DeviceProvider,
),
    int Function(
  Pointer<Utf16> DeviceProvider,
)>('FaxUnregisterServiceProviderW');

// -----------------------------------------------------------------------
// fxsutility.dll
// -----------------------------------------------------------------------
final _fxsutility = DynamicLibrary.open('fxsutility.dll');

int CanSendToFaxRecipient() => _CanSendToFaxRecipient();

late final _CanSendToFaxRecipient = _fxsutility
    .lookupFunction<Int32 Function(), int Function()>('CanSendToFaxRecipient');

int SendToFaxRecipient(
  int sndMode,
  Pointer<Utf16> lpFileName,
) =>
    _SendToFaxRecipient(
      sndMode,
      lpFileName,
    );

late final _SendToFaxRecipient = _fxsutility.lookupFunction<
    Uint32 Function(
  Int32 sndMode,
  Pointer<Utf16> lpFileName,
),
    int Function(
  int sndMode,
  Pointer<Utf16> lpFileName,
)>('SendToFaxRecipient');

// -----------------------------------------------------------------------
// sti.dll
// -----------------------------------------------------------------------
final _sti = DynamicLibrary.open('sti.dll');

int StiCreateInstance(
  int hinst,
  int dwVer,
  Pointer<Pointer<COMObject>> ppSti,
  Pointer<COMObject> punkOuter,
) =>
    _StiCreateInstance(
      hinst,
      dwVer,
      ppSti,
      punkOuter,
    );

late final _StiCreateInstance = _sti.lookupFunction<
    Int32 Function(
  IntPtr hinst,
  Uint32 dwVer,
  Pointer<Pointer<COMObject>> ppSti,
  Pointer<COMObject> punkOuter,
),
    int Function(
  int hinst,
  int dwVer,
  Pointer<Pointer<COMObject>> ppSti,
  Pointer<COMObject> punkOuter,
)>('StiCreateInstanceW');
