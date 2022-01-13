// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/etw/structs.g.dart';
import '../../../security/structs.g.dart';
import '../../../system/diagnostics/etw/callbacks.g.dart'; // -----------------------------------------------------------------------

// advapi32.dll
// -----------------------------------------------------------------------
final _advapi32 = DynamicLibrary.open('advapi32.dll');

int CloseTrace(
  int TraceHandle,
) =>
    _CloseTrace(
      TraceHandle,
    );

late final _CloseTrace = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 TraceHandle,
),
    int Function(
  int TraceHandle,
)>('CloseTrace');

int ControlTrace(
  int TraceHandle,
  Pointer<Utf16> InstanceName,
  Pointer<EVENT_TRACE_PROPERTIES> Properties,
  int ControlCode,
) =>
    _ControlTrace(
      TraceHandle,
      InstanceName,
      Properties,
      ControlCode,
    );

late final _ControlTrace = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 TraceHandle,
  Pointer<Utf16> InstanceName,
  Pointer<EVENT_TRACE_PROPERTIES> Properties,
  Uint32 ControlCode,
),
    int Function(
  int TraceHandle,
  Pointer<Utf16> InstanceName,
  Pointer<EVENT_TRACE_PROPERTIES> Properties,
  int ControlCode,
)>('ControlTraceW');

int CreateTraceInstanceId(
  int RegHandle,
  Pointer<EVENT_INSTANCE_INFO> InstInfo,
) =>
    _CreateTraceInstanceId(
      RegHandle,
      InstInfo,
    );

late final _CreateTraceInstanceId = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr RegHandle,
  Pointer<EVENT_INSTANCE_INFO> InstInfo,
),
    int Function(
  int RegHandle,
  Pointer<EVENT_INSTANCE_INFO> InstInfo,
)>('CreateTraceInstanceId');

int CveEventWrite(
  Pointer<Utf16> CveId,
  Pointer<Utf16> AdditionalDetails,
) =>
    _CveEventWrite(
      CveId,
      AdditionalDetails,
    );

late final _CveEventWrite = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> CveId,
  Pointer<Utf16> AdditionalDetails,
),
    int Function(
  Pointer<Utf16> CveId,
  Pointer<Utf16> AdditionalDetails,
)>('CveEventWrite');

int EnableTrace(
  int Enable,
  int EnableFlag,
  int EnableLevel,
  Pointer<GUID> ControlGuid,
  int TraceHandle,
) =>
    _EnableTrace(
      Enable,
      EnableFlag,
      EnableLevel,
      ControlGuid,
      TraceHandle,
    );

late final _EnableTrace = _advapi32.lookupFunction<
    Uint32 Function(
  Uint32 Enable,
  Uint32 EnableFlag,
  Uint32 EnableLevel,
  Pointer<GUID> ControlGuid,
  Uint64 TraceHandle,
),
    int Function(
  int Enable,
  int EnableFlag,
  int EnableLevel,
  Pointer<GUID> ControlGuid,
  int TraceHandle,
)>('EnableTrace');

int EnableTraceEx(
  Pointer<GUID> ProviderId,
  Pointer<GUID> SourceId,
  int TraceHandle,
  int IsEnabled,
  int Level,
  int MatchAnyKeyword,
  int MatchAllKeyword,
  int EnableProperty,
  Pointer<EVENT_FILTER_DESCRIPTOR> EnableFilterDesc,
) =>
    _EnableTraceEx(
      ProviderId,
      SourceId,
      TraceHandle,
      IsEnabled,
      Level,
      MatchAnyKeyword,
      MatchAllKeyword,
      EnableProperty,
      EnableFilterDesc,
    );

late final _EnableTraceEx = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ProviderId,
  Pointer<GUID> SourceId,
  Uint64 TraceHandle,
  Uint32 IsEnabled,
  Uint8 Level,
  Uint64 MatchAnyKeyword,
  Uint64 MatchAllKeyword,
  Uint32 EnableProperty,
  Pointer<EVENT_FILTER_DESCRIPTOR> EnableFilterDesc,
),
    int Function(
  Pointer<GUID> ProviderId,
  Pointer<GUID> SourceId,
  int TraceHandle,
  int IsEnabled,
  int Level,
  int MatchAnyKeyword,
  int MatchAllKeyword,
  int EnableProperty,
  Pointer<EVENT_FILTER_DESCRIPTOR> EnableFilterDesc,
)>('EnableTraceEx');

int EnableTraceEx2(
  int TraceHandle,
  Pointer<GUID> ProviderId,
  int ControlCode,
  int Level,
  int MatchAnyKeyword,
  int MatchAllKeyword,
  int Timeout,
  Pointer<ENABLE_TRACE_PARAMETERS> EnableParameters,
) =>
    _EnableTraceEx2(
      TraceHandle,
      ProviderId,
      ControlCode,
      Level,
      MatchAnyKeyword,
      MatchAllKeyword,
      Timeout,
      EnableParameters,
    );

late final _EnableTraceEx2 = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 TraceHandle,
  Pointer<GUID> ProviderId,
  Uint32 ControlCode,
  Uint8 Level,
  Uint64 MatchAnyKeyword,
  Uint64 MatchAllKeyword,
  Uint32 Timeout,
  Pointer<ENABLE_TRACE_PARAMETERS> EnableParameters,
),
    int Function(
  int TraceHandle,
  Pointer<GUID> ProviderId,
  int ControlCode,
  int Level,
  int MatchAnyKeyword,
  int MatchAllKeyword,
  int Timeout,
  Pointer<ENABLE_TRACE_PARAMETERS> EnableParameters,
)>('EnableTraceEx2');

int EnumerateTraceGuids(
  Pointer<Pointer<TRACE_GUID_PROPERTIES>> GuidPropertiesArray,
  int PropertyArrayCount,
  Pointer<Uint32> GuidCount,
) =>
    _EnumerateTraceGuids(
      GuidPropertiesArray,
      PropertyArrayCount,
      GuidCount,
    );

late final _EnumerateTraceGuids = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Pointer<TRACE_GUID_PROPERTIES>> GuidPropertiesArray,
  Uint32 PropertyArrayCount,
  Pointer<Uint32> GuidCount,
),
    int Function(
  Pointer<Pointer<TRACE_GUID_PROPERTIES>> GuidPropertiesArray,
  int PropertyArrayCount,
  Pointer<Uint32> GuidCount,
)>('EnumerateTraceGuids');

int EnumerateTraceGuidsEx(
  int TraceQueryInfoClass,
  Pointer InBuffer,
  int InBufferSize,
  Pointer OutBuffer,
  int OutBufferSize,
  Pointer<Uint32> ReturnLength,
) =>
    _EnumerateTraceGuidsEx(
      TraceQueryInfoClass,
      InBuffer,
      InBufferSize,
      OutBuffer,
      OutBufferSize,
      ReturnLength,
    );

late final _EnumerateTraceGuidsEx = _advapi32.lookupFunction<
    Uint32 Function(
  Int32 TraceQueryInfoClass,
  Pointer InBuffer,
  Uint32 InBufferSize,
  Pointer OutBuffer,
  Uint32 OutBufferSize,
  Pointer<Uint32> ReturnLength,
),
    int Function(
  int TraceQueryInfoClass,
  Pointer InBuffer,
  int InBufferSize,
  Pointer OutBuffer,
  int OutBufferSize,
  Pointer<Uint32> ReturnLength,
)>('EnumerateTraceGuidsEx');

int EventAccessControl(
  Pointer<GUID> Guid,
  int Operation,
  int Sid,
  int Rights,
  int AllowOrDeny,
) =>
    _EventAccessControl(
      Guid,
      Operation,
      Sid,
      Rights,
      AllowOrDeny,
    );

late final _EventAccessControl = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> Guid,
  Uint32 Operation,
  IntPtr Sid,
  Uint32 Rights,
  Uint8 AllowOrDeny,
),
    int Function(
  Pointer<GUID> Guid,
  int Operation,
  int Sid,
  int Rights,
  int AllowOrDeny,
)>('EventAccessControl');

int EventAccessQuery(
  Pointer<GUID> Guid,
  Pointer<SECURITY_DESCRIPTOR> Buffer,
  Pointer<Uint32> BufferSize,
) =>
    _EventAccessQuery(
      Guid,
      Buffer,
      BufferSize,
    );

late final _EventAccessQuery = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> Guid,
  Pointer<SECURITY_DESCRIPTOR> Buffer,
  Pointer<Uint32> BufferSize,
),
    int Function(
  Pointer<GUID> Guid,
  Pointer<SECURITY_DESCRIPTOR> Buffer,
  Pointer<Uint32> BufferSize,
)>('EventAccessQuery');

int EventAccessRemove(
  Pointer<GUID> Guid,
) =>
    _EventAccessRemove(
      Guid,
    );

late final _EventAccessRemove = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> Guid,
),
    int Function(
  Pointer<GUID> Guid,
)>('EventAccessRemove');

int EventActivityIdControl(
  int ControlCode,
  Pointer<GUID> ActivityId,
) =>
    _EventActivityIdControl(
      ControlCode,
      ActivityId,
    );

late final _EventActivityIdControl = _advapi32.lookupFunction<
    Uint32 Function(
  Uint32 ControlCode,
  Pointer<GUID> ActivityId,
),
    int Function(
  int ControlCode,
  Pointer<GUID> ActivityId,
)>('EventActivityIdControl');

int EventEnabled(
  int RegHandle,
  Pointer<EVENT_DESCRIPTOR> EventDescriptor,
) =>
    _EventEnabled(
      RegHandle,
      EventDescriptor,
    );

late final _EventEnabled = _advapi32.lookupFunction<
    Uint8 Function(
  Uint64 RegHandle,
  Pointer<EVENT_DESCRIPTOR> EventDescriptor,
),
    int Function(
  int RegHandle,
  Pointer<EVENT_DESCRIPTOR> EventDescriptor,
)>('EventEnabled');

int EventProviderEnabled(
  int RegHandle,
  int Level,
  int Keyword,
) =>
    _EventProviderEnabled(
      RegHandle,
      Level,
      Keyword,
    );

late final _EventProviderEnabled = _advapi32.lookupFunction<
    Uint8 Function(
  Uint64 RegHandle,
  Uint8 Level,
  Uint64 Keyword,
),
    int Function(
  int RegHandle,
  int Level,
  int Keyword,
)>('EventProviderEnabled');

int EventRegister(
  Pointer<GUID> ProviderId,
  Pointer<NativeFunction<PENABLECALLBACK>> EnableCallback,
  Pointer CallbackContext,
  Pointer<Uint64> RegHandle,
) =>
    _EventRegister(
      ProviderId,
      EnableCallback,
      CallbackContext,
      RegHandle,
    );

late final _EventRegister = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ProviderId,
  Pointer<NativeFunction<PENABLECALLBACK>> EnableCallback,
  Pointer CallbackContext,
  Pointer<Uint64> RegHandle,
),
    int Function(
  Pointer<GUID> ProviderId,
  Pointer<NativeFunction<PENABLECALLBACK>> EnableCallback,
  Pointer CallbackContext,
  Pointer<Uint64> RegHandle,
)>('EventRegister');

int EventSetInformation(
  int RegHandle,
  int InformationClass,
  Pointer EventInformation,
  int InformationLength,
) =>
    _EventSetInformation(
      RegHandle,
      InformationClass,
      EventInformation,
      InformationLength,
    );

late final _EventSetInformation = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 RegHandle,
  Int32 InformationClass,
  Pointer EventInformation,
  Uint32 InformationLength,
),
    int Function(
  int RegHandle,
  int InformationClass,
  Pointer EventInformation,
  int InformationLength,
)>('EventSetInformation');

int EventUnregister(
  int RegHandle,
) =>
    _EventUnregister(
      RegHandle,
    );

late final _EventUnregister = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 RegHandle,
),
    int Function(
  int RegHandle,
)>('EventUnregister');

int EventWrite(
  int RegHandle,
  Pointer<EVENT_DESCRIPTOR> EventDescriptor,
  int UserDataCount,
  Pointer<EVENT_DATA_DESCRIPTOR> UserData,
) =>
    _EventWrite(
      RegHandle,
      EventDescriptor,
      UserDataCount,
      UserData,
    );

late final _EventWrite = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 RegHandle,
  Pointer<EVENT_DESCRIPTOR> EventDescriptor,
  Uint32 UserDataCount,
  Pointer<EVENT_DATA_DESCRIPTOR> UserData,
),
    int Function(
  int RegHandle,
  Pointer<EVENT_DESCRIPTOR> EventDescriptor,
  int UserDataCount,
  Pointer<EVENT_DATA_DESCRIPTOR> UserData,
)>('EventWrite');

int EventWriteEx(
  int RegHandle,
  Pointer<EVENT_DESCRIPTOR> EventDescriptor,
  int Filter,
  int Flags,
  Pointer<GUID> ActivityId,
  Pointer<GUID> RelatedActivityId,
  int UserDataCount,
  Pointer<EVENT_DATA_DESCRIPTOR> UserData,
) =>
    _EventWriteEx(
      RegHandle,
      EventDescriptor,
      Filter,
      Flags,
      ActivityId,
      RelatedActivityId,
      UserDataCount,
      UserData,
    );

late final _EventWriteEx = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 RegHandle,
  Pointer<EVENT_DESCRIPTOR> EventDescriptor,
  Uint64 Filter,
  Uint32 Flags,
  Pointer<GUID> ActivityId,
  Pointer<GUID> RelatedActivityId,
  Uint32 UserDataCount,
  Pointer<EVENT_DATA_DESCRIPTOR> UserData,
),
    int Function(
  int RegHandle,
  Pointer<EVENT_DESCRIPTOR> EventDescriptor,
  int Filter,
  int Flags,
  Pointer<GUID> ActivityId,
  Pointer<GUID> RelatedActivityId,
  int UserDataCount,
  Pointer<EVENT_DATA_DESCRIPTOR> UserData,
)>('EventWriteEx');

int EventWriteString(
  int RegHandle,
  int Level,
  int Keyword,
  Pointer<Utf16> $String,
) =>
    _EventWriteString(
      RegHandle,
      Level,
      Keyword,
      $String,
    );

late final _EventWriteString = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 RegHandle,
  Uint8 Level,
  Uint64 Keyword,
  Pointer<Utf16> $String,
),
    int Function(
  int RegHandle,
  int Level,
  int Keyword,
  Pointer<Utf16> $String,
)>('EventWriteString');

int EventWriteTransfer(
  int RegHandle,
  Pointer<EVENT_DESCRIPTOR> EventDescriptor,
  Pointer<GUID> ActivityId,
  Pointer<GUID> RelatedActivityId,
  int UserDataCount,
  Pointer<EVENT_DATA_DESCRIPTOR> UserData,
) =>
    _EventWriteTransfer(
      RegHandle,
      EventDescriptor,
      ActivityId,
      RelatedActivityId,
      UserDataCount,
      UserData,
    );

late final _EventWriteTransfer = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 RegHandle,
  Pointer<EVENT_DESCRIPTOR> EventDescriptor,
  Pointer<GUID> ActivityId,
  Pointer<GUID> RelatedActivityId,
  Uint32 UserDataCount,
  Pointer<EVENT_DATA_DESCRIPTOR> UserData,
),
    int Function(
  int RegHandle,
  Pointer<EVENT_DESCRIPTOR> EventDescriptor,
  Pointer<GUID> ActivityId,
  Pointer<GUID> RelatedActivityId,
  int UserDataCount,
  Pointer<EVENT_DATA_DESCRIPTOR> UserData,
)>('EventWriteTransfer');

int FlushTrace(
  int TraceHandle,
  Pointer<Utf16> InstanceName,
  Pointer<EVENT_TRACE_PROPERTIES> Properties,
) =>
    _FlushTrace(
      TraceHandle,
      InstanceName,
      Properties,
    );

late final _FlushTrace = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 TraceHandle,
  Pointer<Utf16> InstanceName,
  Pointer<EVENT_TRACE_PROPERTIES> Properties,
),
    int Function(
  int TraceHandle,
  Pointer<Utf16> InstanceName,
  Pointer<EVENT_TRACE_PROPERTIES> Properties,
)>('FlushTraceW');

int GetTraceEnableFlags(
  int TraceHandle,
) =>
    _GetTraceEnableFlags(
      TraceHandle,
    );

late final _GetTraceEnableFlags = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 TraceHandle,
),
    int Function(
  int TraceHandle,
)>('GetTraceEnableFlags');

int GetTraceEnableLevel(
  int TraceHandle,
) =>
    _GetTraceEnableLevel(
      TraceHandle,
    );

late final _GetTraceEnableLevel = _advapi32.lookupFunction<
    Uint8 Function(
  Uint64 TraceHandle,
),
    int Function(
  int TraceHandle,
)>('GetTraceEnableLevel');

int GetTraceLoggerHandle(
  Pointer Buffer,
) =>
    _GetTraceLoggerHandle(
      Buffer,
    );

late final _GetTraceLoggerHandle = _advapi32.lookupFunction<
    Uint64 Function(
  Pointer Buffer,
),
    int Function(
  Pointer Buffer,
)>('GetTraceLoggerHandle');

int OpenTrace(
  Pointer<EVENT_TRACE_LOGFILE> Logfile,
) =>
    _OpenTrace(
      Logfile,
    );

late final _OpenTrace = _advapi32.lookupFunction<
    Uint64 Function(
  Pointer<EVENT_TRACE_LOGFILE> Logfile,
),
    int Function(
  Pointer<EVENT_TRACE_LOGFILE> Logfile,
)>('OpenTraceW');

int ProcessTrace(
  Pointer<Uint64> HandleArray,
  int HandleCount,
  Pointer<FILETIME> StartTime,
  Pointer<FILETIME> EndTime,
) =>
    _ProcessTrace(
      HandleArray,
      HandleCount,
      StartTime,
      EndTime,
    );

late final _ProcessTrace = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Uint64> HandleArray,
  Uint32 HandleCount,
  Pointer<FILETIME> StartTime,
  Pointer<FILETIME> EndTime,
),
    int Function(
  Pointer<Uint64> HandleArray,
  int HandleCount,
  Pointer<FILETIME> StartTime,
  Pointer<FILETIME> EndTime,
)>('ProcessTrace');

int QueryAllTraces(
  Pointer<Pointer<EVENT_TRACE_PROPERTIES>> PropertyArray,
  int PropertyArrayCount,
  Pointer<Uint32> LoggerCount,
) =>
    _QueryAllTraces(
      PropertyArray,
      PropertyArrayCount,
      LoggerCount,
    );

late final _QueryAllTraces = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Pointer<EVENT_TRACE_PROPERTIES>> PropertyArray,
  Uint32 PropertyArrayCount,
  Pointer<Uint32> LoggerCount,
),
    int Function(
  Pointer<Pointer<EVENT_TRACE_PROPERTIES>> PropertyArray,
  int PropertyArrayCount,
  Pointer<Uint32> LoggerCount,
)>('QueryAllTracesW');

int QueryTraceProcessingHandle(
  int ProcessingHandle,
  int InformationClass,
  Pointer InBuffer,
  int InBufferSize,
  Pointer OutBuffer,
  int OutBufferSize,
  Pointer<Uint32> ReturnLength,
) =>
    _QueryTraceProcessingHandle(
      ProcessingHandle,
      InformationClass,
      InBuffer,
      InBufferSize,
      OutBuffer,
      OutBufferSize,
      ReturnLength,
    );

late final _QueryTraceProcessingHandle = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 ProcessingHandle,
  Int32 InformationClass,
  Pointer InBuffer,
  Uint32 InBufferSize,
  Pointer OutBuffer,
  Uint32 OutBufferSize,
  Pointer<Uint32> ReturnLength,
),
    int Function(
  int ProcessingHandle,
  int InformationClass,
  Pointer InBuffer,
  int InBufferSize,
  Pointer OutBuffer,
  int OutBufferSize,
  Pointer<Uint32> ReturnLength,
)>('QueryTraceProcessingHandle');

int QueryTrace(
  int TraceHandle,
  Pointer<Utf16> InstanceName,
  Pointer<EVENT_TRACE_PROPERTIES> Properties,
) =>
    _QueryTrace(
      TraceHandle,
      InstanceName,
      Properties,
    );

late final _QueryTrace = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 TraceHandle,
  Pointer<Utf16> InstanceName,
  Pointer<EVENT_TRACE_PROPERTIES> Properties,
),
    int Function(
  int TraceHandle,
  Pointer<Utf16> InstanceName,
  Pointer<EVENT_TRACE_PROPERTIES> Properties,
)>('QueryTraceW');

int RegisterTraceGuids(
  Pointer<NativeFunction<WMIDPREQUEST>> RequestAddress,
  Pointer RequestContext,
  Pointer<GUID> ControlGuid,
  int GuidCount,
  Pointer<TRACE_GUID_REGISTRATION> TraceGuidReg,
  Pointer<Utf16> MofImagePath,
  Pointer<Utf16> MofResourceName,
  Pointer<Uint64> RegistrationHandle,
) =>
    _RegisterTraceGuids(
      RequestAddress,
      RequestContext,
      ControlGuid,
      GuidCount,
      TraceGuidReg,
      MofImagePath,
      MofResourceName,
      RegistrationHandle,
    );

late final _RegisterTraceGuids = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<NativeFunction<WMIDPREQUEST>> RequestAddress,
  Pointer RequestContext,
  Pointer<GUID> ControlGuid,
  Uint32 GuidCount,
  Pointer<TRACE_GUID_REGISTRATION> TraceGuidReg,
  Pointer<Utf16> MofImagePath,
  Pointer<Utf16> MofResourceName,
  Pointer<Uint64> RegistrationHandle,
),
    int Function(
  Pointer<NativeFunction<WMIDPREQUEST>> RequestAddress,
  Pointer RequestContext,
  Pointer<GUID> ControlGuid,
  int GuidCount,
  Pointer<TRACE_GUID_REGISTRATION> TraceGuidReg,
  Pointer<Utf16> MofImagePath,
  Pointer<Utf16> MofResourceName,
  Pointer<Uint64> RegistrationHandle,
)>('RegisterTraceGuidsW');

int RemoveTraceCallback(
  Pointer<GUID> pGuid,
) =>
    _RemoveTraceCallback(
      pGuid,
    );

late final _RemoveTraceCallback = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> pGuid,
),
    int Function(
  Pointer<GUID> pGuid,
)>('RemoveTraceCallback');

int SetTraceCallback(
  Pointer<GUID> pGuid,
  Pointer<NativeFunction<PEVENT_CALLBACK>> EventCallback,
) =>
    _SetTraceCallback(
      pGuid,
      EventCallback,
    );

late final _SetTraceCallback = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> pGuid,
  Pointer<NativeFunction<PEVENT_CALLBACK>> EventCallback,
),
    int Function(
  Pointer<GUID> pGuid,
  Pointer<NativeFunction<PEVENT_CALLBACK>> EventCallback,
)>('SetTraceCallback');

int StartTrace(
  Pointer<Uint64> TraceHandle,
  Pointer<Utf16> InstanceName,
  Pointer<EVENT_TRACE_PROPERTIES> Properties,
) =>
    _StartTrace(
      TraceHandle,
      InstanceName,
      Properties,
    );

late final _StartTrace = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Uint64> TraceHandle,
  Pointer<Utf16> InstanceName,
  Pointer<EVENT_TRACE_PROPERTIES> Properties,
),
    int Function(
  Pointer<Uint64> TraceHandle,
  Pointer<Utf16> InstanceName,
  Pointer<EVENT_TRACE_PROPERTIES> Properties,
)>('StartTraceW');

int StopTrace(
  int TraceHandle,
  Pointer<Utf16> InstanceName,
  Pointer<EVENT_TRACE_PROPERTIES> Properties,
) =>
    _StopTrace(
      TraceHandle,
      InstanceName,
      Properties,
    );

late final _StopTrace = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 TraceHandle,
  Pointer<Utf16> InstanceName,
  Pointer<EVENT_TRACE_PROPERTIES> Properties,
),
    int Function(
  int TraceHandle,
  Pointer<Utf16> InstanceName,
  Pointer<EVENT_TRACE_PROPERTIES> Properties,
)>('StopTraceW');

int TraceEvent(
  int TraceHandle,
  Pointer<EVENT_TRACE_HEADER> EventTrace,
) =>
    _TraceEvent(
      TraceHandle,
      EventTrace,
    );

late final _TraceEvent = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 TraceHandle,
  Pointer<EVENT_TRACE_HEADER> EventTrace,
),
    int Function(
  int TraceHandle,
  Pointer<EVENT_TRACE_HEADER> EventTrace,
)>('TraceEvent');

int TraceEventInstance(
  int TraceHandle,
  Pointer<EVENT_INSTANCE_HEADER> EventTrace,
  Pointer<EVENT_INSTANCE_INFO> InstInfo,
  Pointer<EVENT_INSTANCE_INFO> ParentInstInfo,
) =>
    _TraceEventInstance(
      TraceHandle,
      EventTrace,
      InstInfo,
      ParentInstInfo,
    );

late final _TraceEventInstance = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 TraceHandle,
  Pointer<EVENT_INSTANCE_HEADER> EventTrace,
  Pointer<EVENT_INSTANCE_INFO> InstInfo,
  Pointer<EVENT_INSTANCE_INFO> ParentInstInfo,
),
    int Function(
  int TraceHandle,
  Pointer<EVENT_INSTANCE_HEADER> EventTrace,
  Pointer<EVENT_INSTANCE_INFO> InstInfo,
  Pointer<EVENT_INSTANCE_INFO> ParentInstInfo,
)>('TraceEventInstance');

int TraceMessage(
  int LoggerHandle,
  int MessageFlags,
  Pointer<GUID> MessageGuid,
  int MessageNumber,
) =>
    _TraceMessage(
      LoggerHandle,
      MessageFlags,
      MessageGuid,
      MessageNumber,
    );

late final _TraceMessage = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 LoggerHandle,
  Uint32 MessageFlags,
  Pointer<GUID> MessageGuid,
  Uint16 MessageNumber,
),
    int Function(
  int LoggerHandle,
  int MessageFlags,
  Pointer<GUID> MessageGuid,
  int MessageNumber,
)>('TraceMessage');

int TraceMessageVa(
  int LoggerHandle,
  int MessageFlags,
  Pointer<GUID> MessageGuid,
  int MessageNumber,
  Pointer<Int8> MessageArgList,
) =>
    _TraceMessageVa(
      LoggerHandle,
      MessageFlags,
      MessageGuid,
      MessageNumber,
      MessageArgList,
    );

late final _TraceMessageVa = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 LoggerHandle,
  Uint32 MessageFlags,
  Pointer<GUID> MessageGuid,
  Uint16 MessageNumber,
  Pointer<Int8> MessageArgList,
),
    int Function(
  int LoggerHandle,
  int MessageFlags,
  Pointer<GUID> MessageGuid,
  int MessageNumber,
  Pointer<Int8> MessageArgList,
)>('TraceMessageVa');

int TraceQueryInformation(
  int SessionHandle,
  int InformationClass,
  Pointer TraceInformation,
  int InformationLength,
  Pointer<Uint32> ReturnLength,
) =>
    _TraceQueryInformation(
      SessionHandle,
      InformationClass,
      TraceInformation,
      InformationLength,
      ReturnLength,
    );

late final _TraceQueryInformation = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 SessionHandle,
  Int32 InformationClass,
  Pointer TraceInformation,
  Uint32 InformationLength,
  Pointer<Uint32> ReturnLength,
),
    int Function(
  int SessionHandle,
  int InformationClass,
  Pointer TraceInformation,
  int InformationLength,
  Pointer<Uint32> ReturnLength,
)>('TraceQueryInformation');

int TraceSetInformation(
  int SessionHandle,
  int InformationClass,
  Pointer TraceInformation,
  int InformationLength,
) =>
    _TraceSetInformation(
      SessionHandle,
      InformationClass,
      TraceInformation,
      InformationLength,
    );

late final _TraceSetInformation = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 SessionHandle,
  Int32 InformationClass,
  Pointer TraceInformation,
  Uint32 InformationLength,
),
    int Function(
  int SessionHandle,
  int InformationClass,
  Pointer TraceInformation,
  int InformationLength,
)>('TraceSetInformation');

int UnregisterTraceGuids(
  int RegistrationHandle,
) =>
    _UnregisterTraceGuids(
      RegistrationHandle,
    );

late final _UnregisterTraceGuids = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 RegistrationHandle,
),
    int Function(
  int RegistrationHandle,
)>('UnregisterTraceGuids');

int UpdateTrace(
  int TraceHandle,
  Pointer<Utf16> InstanceName,
  Pointer<EVENT_TRACE_PROPERTIES> Properties,
) =>
    _UpdateTrace(
      TraceHandle,
      InstanceName,
      Properties,
    );

late final _UpdateTrace = _advapi32.lookupFunction<
    Uint32 Function(
  Uint64 TraceHandle,
  Pointer<Utf16> InstanceName,
  Pointer<EVENT_TRACE_PROPERTIES> Properties,
),
    int Function(
  int TraceHandle,
  Pointer<Utf16> InstanceName,
  Pointer<EVENT_TRACE_PROPERTIES> Properties,
)>('UpdateTraceW');

// -----------------------------------------------------------------------
// tdh.dll
// -----------------------------------------------------------------------
final _tdh = DynamicLibrary.open('tdh.dll');

int TdhAggregatePayloadFilters(
  int PayloadFilterCount,
  Pointer<Pointer> PayloadFilterPtrs,
  Pointer<Uint8> EventMatchALLFlags,
  Pointer<EVENT_FILTER_DESCRIPTOR> EventFilterDescriptor,
) =>
    _TdhAggregatePayloadFilters(
      PayloadFilterCount,
      PayloadFilterPtrs,
      EventMatchALLFlags,
      EventFilterDescriptor,
    );

late final _TdhAggregatePayloadFilters = _tdh.lookupFunction<
    Uint32 Function(
  Uint32 PayloadFilterCount,
  Pointer<Pointer> PayloadFilterPtrs,
  Pointer<Uint8> EventMatchALLFlags,
  Pointer<EVENT_FILTER_DESCRIPTOR> EventFilterDescriptor,
),
    int Function(
  int PayloadFilterCount,
  Pointer<Pointer> PayloadFilterPtrs,
  Pointer<Uint8> EventMatchALLFlags,
  Pointer<EVENT_FILTER_DESCRIPTOR> EventFilterDescriptor,
)>('TdhAggregatePayloadFilters');

int TdhCleanupPayloadEventFilterDescriptor(
  Pointer<EVENT_FILTER_DESCRIPTOR> EventFilterDescriptor,
) =>
    _TdhCleanupPayloadEventFilterDescriptor(
      EventFilterDescriptor,
    );

late final _TdhCleanupPayloadEventFilterDescriptor = _tdh.lookupFunction<
    Uint32 Function(
  Pointer<EVENT_FILTER_DESCRIPTOR> EventFilterDescriptor,
),
    int Function(
  Pointer<EVENT_FILTER_DESCRIPTOR> EventFilterDescriptor,
)>('TdhCleanupPayloadEventFilterDescriptor');

int TdhCloseDecodingHandle(
  int $Handle,
) =>
    _TdhCloseDecodingHandle(
      $Handle,
    );

late final _TdhCloseDecodingHandle = _tdh.lookupFunction<
    Uint32 Function(
  IntPtr $Handle,
),
    int Function(
  int $Handle,
)>('TdhCloseDecodingHandle');

int TdhCreatePayloadFilter(
  Pointer<GUID> ProviderGuid,
  Pointer<EVENT_DESCRIPTOR> EventDescriptor,
  int EventMatchANY,
  int PayloadPredicateCount,
  Pointer<PAYLOAD_FILTER_PREDICATE> PayloadPredicates,
  Pointer<Pointer> PayloadFilter,
) =>
    _TdhCreatePayloadFilter(
      ProviderGuid,
      EventDescriptor,
      EventMatchANY,
      PayloadPredicateCount,
      PayloadPredicates,
      PayloadFilter,
    );

late final _TdhCreatePayloadFilter = _tdh.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ProviderGuid,
  Pointer<EVENT_DESCRIPTOR> EventDescriptor,
  Uint8 EventMatchANY,
  Uint32 PayloadPredicateCount,
  Pointer<PAYLOAD_FILTER_PREDICATE> PayloadPredicates,
  Pointer<Pointer> PayloadFilter,
),
    int Function(
  Pointer<GUID> ProviderGuid,
  Pointer<EVENT_DESCRIPTOR> EventDescriptor,
  int EventMatchANY,
  int PayloadPredicateCount,
  Pointer<PAYLOAD_FILTER_PREDICATE> PayloadPredicates,
  Pointer<Pointer> PayloadFilter,
)>('TdhCreatePayloadFilter');

int TdhDeletePayloadFilter(
  Pointer<Pointer> PayloadFilter,
) =>
    _TdhDeletePayloadFilter(
      PayloadFilter,
    );

late final _TdhDeletePayloadFilter = _tdh.lookupFunction<
    Uint32 Function(
  Pointer<Pointer> PayloadFilter,
),
    int Function(
  Pointer<Pointer> PayloadFilter,
)>('TdhDeletePayloadFilter');

int TdhEnumerateManifestProviderEvents(
  Pointer<GUID> ProviderGuid,
  Pointer<PROVIDER_EVENT_INFO> Buffer,
  Pointer<Uint32> BufferSize,
) =>
    _TdhEnumerateManifestProviderEvents(
      ProviderGuid,
      Buffer,
      BufferSize,
    );

late final _TdhEnumerateManifestProviderEvents = _tdh.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ProviderGuid,
  Pointer<PROVIDER_EVENT_INFO> Buffer,
  Pointer<Uint32> BufferSize,
),
    int Function(
  Pointer<GUID> ProviderGuid,
  Pointer<PROVIDER_EVENT_INFO> Buffer,
  Pointer<Uint32> BufferSize,
)>('TdhEnumerateManifestProviderEvents');

int TdhEnumerateProviderFieldInformation(
  Pointer<GUID> pGuid,
  int EventFieldType,
  Pointer<PROVIDER_FIELD_INFOARRAY> pBuffer,
  Pointer<Uint32> pBufferSize,
) =>
    _TdhEnumerateProviderFieldInformation(
      pGuid,
      EventFieldType,
      pBuffer,
      pBufferSize,
    );

late final _TdhEnumerateProviderFieldInformation = _tdh.lookupFunction<
    Uint32 Function(
  Pointer<GUID> pGuid,
  Int32 EventFieldType,
  Pointer<PROVIDER_FIELD_INFOARRAY> pBuffer,
  Pointer<Uint32> pBufferSize,
),
    int Function(
  Pointer<GUID> pGuid,
  int EventFieldType,
  Pointer<PROVIDER_FIELD_INFOARRAY> pBuffer,
  Pointer<Uint32> pBufferSize,
)>('TdhEnumerateProviderFieldInformation');

int TdhEnumerateProviderFilters(
  Pointer<GUID> Guid,
  int TdhContextCount,
  Pointer<TDH_CONTEXT> TdhContext,
  Pointer<Uint32> FilterCount,
  Pointer<Pointer<PROVIDER_FILTER_INFO>> Buffer,
  Pointer<Uint32> BufferSize,
) =>
    _TdhEnumerateProviderFilters(
      Guid,
      TdhContextCount,
      TdhContext,
      FilterCount,
      Buffer,
      BufferSize,
    );

late final _TdhEnumerateProviderFilters = _tdh.lookupFunction<
    Uint32 Function(
  Pointer<GUID> Guid,
  Uint32 TdhContextCount,
  Pointer<TDH_CONTEXT> TdhContext,
  Pointer<Uint32> FilterCount,
  Pointer<Pointer<PROVIDER_FILTER_INFO>> Buffer,
  Pointer<Uint32> BufferSize,
),
    int Function(
  Pointer<GUID> Guid,
  int TdhContextCount,
  Pointer<TDH_CONTEXT> TdhContext,
  Pointer<Uint32> FilterCount,
  Pointer<Pointer<PROVIDER_FILTER_INFO>> Buffer,
  Pointer<Uint32> BufferSize,
)>('TdhEnumerateProviderFilters');

int TdhEnumerateProviders(
  Pointer<PROVIDER_ENUMERATION_INFO> pBuffer,
  Pointer<Uint32> pBufferSize,
) =>
    _TdhEnumerateProviders(
      pBuffer,
      pBufferSize,
    );

late final _TdhEnumerateProviders = _tdh.lookupFunction<
    Uint32 Function(
  Pointer<PROVIDER_ENUMERATION_INFO> pBuffer,
  Pointer<Uint32> pBufferSize,
),
    int Function(
  Pointer<PROVIDER_ENUMERATION_INFO> pBuffer,
  Pointer<Uint32> pBufferSize,
)>('TdhEnumerateProviders');

int TdhEnumerateProvidersForDecodingSource(
  int filter,
  Pointer<PROVIDER_ENUMERATION_INFO> buffer,
  int bufferSize,
  Pointer<Uint32> bufferRequired,
) =>
    _TdhEnumerateProvidersForDecodingSource(
      filter,
      buffer,
      bufferSize,
      bufferRequired,
    );

late final _TdhEnumerateProvidersForDecodingSource = _tdh.lookupFunction<
    Uint32 Function(
  Int32 filter,
  Pointer<PROVIDER_ENUMERATION_INFO> buffer,
  Uint32 bufferSize,
  Pointer<Uint32> bufferRequired,
),
    int Function(
  int filter,
  Pointer<PROVIDER_ENUMERATION_INFO> buffer,
  int bufferSize,
  Pointer<Uint32> bufferRequired,
)>('TdhEnumerateProvidersForDecodingSource');

int TdhFormatProperty(
  Pointer<TRACE_EVENT_INFO> EventInfo,
  Pointer<EVENT_MAP_INFO> MapInfo,
  int PointerSize,
  int PropertyInType,
  int PropertyOutType,
  int PropertyLength,
  int UserDataLength,
  Pointer<Uint8> UserData,
  Pointer<Uint32> BufferSize,
  Pointer<Utf16> Buffer,
  Pointer<Uint16> UserDataConsumed,
) =>
    _TdhFormatProperty(
      EventInfo,
      MapInfo,
      PointerSize,
      PropertyInType,
      PropertyOutType,
      PropertyLength,
      UserDataLength,
      UserData,
      BufferSize,
      Buffer,
      UserDataConsumed,
    );

late final _TdhFormatProperty = _tdh.lookupFunction<
    Uint32 Function(
  Pointer<TRACE_EVENT_INFO> EventInfo,
  Pointer<EVENT_MAP_INFO> MapInfo,
  Uint32 PointerSize,
  Uint16 PropertyInType,
  Uint16 PropertyOutType,
  Uint16 PropertyLength,
  Uint16 UserDataLength,
  Pointer<Uint8> UserData,
  Pointer<Uint32> BufferSize,
  Pointer<Utf16> Buffer,
  Pointer<Uint16> UserDataConsumed,
),
    int Function(
  Pointer<TRACE_EVENT_INFO> EventInfo,
  Pointer<EVENT_MAP_INFO> MapInfo,
  int PointerSize,
  int PropertyInType,
  int PropertyOutType,
  int PropertyLength,
  int UserDataLength,
  Pointer<Uint8> UserData,
  Pointer<Uint32> BufferSize,
  Pointer<Utf16> Buffer,
  Pointer<Uint16> UserDataConsumed,
)>('TdhFormatProperty');

int TdhGetDecodingParameter(
  int $Handle,
  Pointer<TDH_CONTEXT> TdhContext,
) =>
    _TdhGetDecodingParameter(
      $Handle,
      TdhContext,
    );

late final _TdhGetDecodingParameter = _tdh.lookupFunction<
    Uint32 Function(
  IntPtr $Handle,
  Pointer<TDH_CONTEXT> TdhContext,
),
    int Function(
  int $Handle,
  Pointer<TDH_CONTEXT> TdhContext,
)>('TdhGetDecodingParameter');

int TdhGetEventInformation(
  Pointer<EVENT_RECORD> Event,
  int TdhContextCount,
  Pointer<TDH_CONTEXT> TdhContext,
  Pointer<TRACE_EVENT_INFO> Buffer,
  Pointer<Uint32> BufferSize,
) =>
    _TdhGetEventInformation(
      Event,
      TdhContextCount,
      TdhContext,
      Buffer,
      BufferSize,
    );

late final _TdhGetEventInformation = _tdh.lookupFunction<
    Uint32 Function(
  Pointer<EVENT_RECORD> Event,
  Uint32 TdhContextCount,
  Pointer<TDH_CONTEXT> TdhContext,
  Pointer<TRACE_EVENT_INFO> Buffer,
  Pointer<Uint32> BufferSize,
),
    int Function(
  Pointer<EVENT_RECORD> Event,
  int TdhContextCount,
  Pointer<TDH_CONTEXT> TdhContext,
  Pointer<TRACE_EVENT_INFO> Buffer,
  Pointer<Uint32> BufferSize,
)>('TdhGetEventInformation');

int TdhGetEventMapInformation(
  Pointer<EVENT_RECORD> pEvent,
  Pointer<Utf16> pMapName,
  Pointer<EVENT_MAP_INFO> pBuffer,
  Pointer<Uint32> pBufferSize,
) =>
    _TdhGetEventMapInformation(
      pEvent,
      pMapName,
      pBuffer,
      pBufferSize,
    );

late final _TdhGetEventMapInformation = _tdh.lookupFunction<
    Uint32 Function(
  Pointer<EVENT_RECORD> pEvent,
  Pointer<Utf16> pMapName,
  Pointer<EVENT_MAP_INFO> pBuffer,
  Pointer<Uint32> pBufferSize,
),
    int Function(
  Pointer<EVENT_RECORD> pEvent,
  Pointer<Utf16> pMapName,
  Pointer<EVENT_MAP_INFO> pBuffer,
  Pointer<Uint32> pBufferSize,
)>('TdhGetEventMapInformation');

int TdhGetManifestEventInformation(
  Pointer<GUID> ProviderGuid,
  Pointer<EVENT_DESCRIPTOR> EventDescriptor,
  Pointer<TRACE_EVENT_INFO> Buffer,
  Pointer<Uint32> BufferSize,
) =>
    _TdhGetManifestEventInformation(
      ProviderGuid,
      EventDescriptor,
      Buffer,
      BufferSize,
    );

late final _TdhGetManifestEventInformation = _tdh.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ProviderGuid,
  Pointer<EVENT_DESCRIPTOR> EventDescriptor,
  Pointer<TRACE_EVENT_INFO> Buffer,
  Pointer<Uint32> BufferSize,
),
    int Function(
  Pointer<GUID> ProviderGuid,
  Pointer<EVENT_DESCRIPTOR> EventDescriptor,
  Pointer<TRACE_EVENT_INFO> Buffer,
  Pointer<Uint32> BufferSize,
)>('TdhGetManifestEventInformation');

int TdhGetProperty(
  Pointer<EVENT_RECORD> pEvent,
  int TdhContextCount,
  Pointer<TDH_CONTEXT> pTdhContext,
  int PropertyDataCount,
  Pointer<PROPERTY_DATA_DESCRIPTOR> pPropertyData,
  int BufferSize,
  Pointer<Uint8> pBuffer,
) =>
    _TdhGetProperty(
      pEvent,
      TdhContextCount,
      pTdhContext,
      PropertyDataCount,
      pPropertyData,
      BufferSize,
      pBuffer,
    );

late final _TdhGetProperty = _tdh.lookupFunction<
    Uint32 Function(
  Pointer<EVENT_RECORD> pEvent,
  Uint32 TdhContextCount,
  Pointer<TDH_CONTEXT> pTdhContext,
  Uint32 PropertyDataCount,
  Pointer<PROPERTY_DATA_DESCRIPTOR> pPropertyData,
  Uint32 BufferSize,
  Pointer<Uint8> pBuffer,
),
    int Function(
  Pointer<EVENT_RECORD> pEvent,
  int TdhContextCount,
  Pointer<TDH_CONTEXT> pTdhContext,
  int PropertyDataCount,
  Pointer<PROPERTY_DATA_DESCRIPTOR> pPropertyData,
  int BufferSize,
  Pointer<Uint8> pBuffer,
)>('TdhGetProperty');

int TdhGetPropertySize(
  Pointer<EVENT_RECORD> pEvent,
  int TdhContextCount,
  Pointer<TDH_CONTEXT> pTdhContext,
  int PropertyDataCount,
  Pointer<PROPERTY_DATA_DESCRIPTOR> pPropertyData,
  Pointer<Uint32> pPropertySize,
) =>
    _TdhGetPropertySize(
      pEvent,
      TdhContextCount,
      pTdhContext,
      PropertyDataCount,
      pPropertyData,
      pPropertySize,
    );

late final _TdhGetPropertySize = _tdh.lookupFunction<
    Uint32 Function(
  Pointer<EVENT_RECORD> pEvent,
  Uint32 TdhContextCount,
  Pointer<TDH_CONTEXT> pTdhContext,
  Uint32 PropertyDataCount,
  Pointer<PROPERTY_DATA_DESCRIPTOR> pPropertyData,
  Pointer<Uint32> pPropertySize,
),
    int Function(
  Pointer<EVENT_RECORD> pEvent,
  int TdhContextCount,
  Pointer<TDH_CONTEXT> pTdhContext,
  int PropertyDataCount,
  Pointer<PROPERTY_DATA_DESCRIPTOR> pPropertyData,
  Pointer<Uint32> pPropertySize,
)>('TdhGetPropertySize');

int TdhGetWppMessage(
  int $Handle,
  Pointer<EVENT_RECORD> EventRecord,
  Pointer<Uint32> BufferSize,
  Pointer<Uint8> Buffer,
) =>
    _TdhGetWppMessage(
      $Handle,
      EventRecord,
      BufferSize,
      Buffer,
    );

late final _TdhGetWppMessage = _tdh.lookupFunction<
    Uint32 Function(
  IntPtr $Handle,
  Pointer<EVENT_RECORD> EventRecord,
  Pointer<Uint32> BufferSize,
  Pointer<Uint8> Buffer,
),
    int Function(
  int $Handle,
  Pointer<EVENT_RECORD> EventRecord,
  Pointer<Uint32> BufferSize,
  Pointer<Uint8> Buffer,
)>('TdhGetWppMessage');

int TdhGetWppProperty(
  int $Handle,
  Pointer<EVENT_RECORD> EventRecord,
  Pointer<Utf16> PropertyName,
  Pointer<Uint32> BufferSize,
  Pointer<Uint8> Buffer,
) =>
    _TdhGetWppProperty(
      $Handle,
      EventRecord,
      PropertyName,
      BufferSize,
      Buffer,
    );

late final _TdhGetWppProperty = _tdh.lookupFunction<
    Uint32 Function(
  IntPtr $Handle,
  Pointer<EVENT_RECORD> EventRecord,
  Pointer<Utf16> PropertyName,
  Pointer<Uint32> BufferSize,
  Pointer<Uint8> Buffer,
),
    int Function(
  int $Handle,
  Pointer<EVENT_RECORD> EventRecord,
  Pointer<Utf16> PropertyName,
  Pointer<Uint32> BufferSize,
  Pointer<Uint8> Buffer,
)>('TdhGetWppProperty');

int TdhLoadManifest(
  Pointer<Utf16> Manifest,
) =>
    _TdhLoadManifest(
      Manifest,
    );

late final _TdhLoadManifest = _tdh.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> Manifest,
),
    int Function(
  Pointer<Utf16> Manifest,
)>('TdhLoadManifest');

int TdhLoadManifestFromBinary(
  Pointer<Utf16> BinaryPath,
) =>
    _TdhLoadManifestFromBinary(
      BinaryPath,
    );

late final _TdhLoadManifestFromBinary = _tdh.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> BinaryPath,
),
    int Function(
  Pointer<Utf16> BinaryPath,
)>('TdhLoadManifestFromBinary');

int TdhLoadManifestFromMemory(
  Pointer pData,
  int cbData,
) =>
    _TdhLoadManifestFromMemory(
      pData,
      cbData,
    );

late final _TdhLoadManifestFromMemory = _tdh.lookupFunction<
    Uint32 Function(
  Pointer pData,
  Uint32 cbData,
),
    int Function(
  Pointer pData,
  int cbData,
)>('TdhLoadManifestFromMemory');

int TdhOpenDecodingHandle(
  Pointer<IntPtr> $Handle,
) =>
    _TdhOpenDecodingHandle(
      $Handle,
    );

late final _TdhOpenDecodingHandle = _tdh.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> $Handle,
),
    int Function(
  Pointer<IntPtr> $Handle,
)>('TdhOpenDecodingHandle');

int TdhQueryProviderFieldInformation(
  Pointer<GUID> pGuid,
  int EventFieldValue,
  int EventFieldType,
  Pointer<PROVIDER_FIELD_INFOARRAY> pBuffer,
  Pointer<Uint32> pBufferSize,
) =>
    _TdhQueryProviderFieldInformation(
      pGuid,
      EventFieldValue,
      EventFieldType,
      pBuffer,
      pBufferSize,
    );

late final _TdhQueryProviderFieldInformation = _tdh.lookupFunction<
    Uint32 Function(
  Pointer<GUID> pGuid,
  Uint64 EventFieldValue,
  Int32 EventFieldType,
  Pointer<PROVIDER_FIELD_INFOARRAY> pBuffer,
  Pointer<Uint32> pBufferSize,
),
    int Function(
  Pointer<GUID> pGuid,
  int EventFieldValue,
  int EventFieldType,
  Pointer<PROVIDER_FIELD_INFOARRAY> pBuffer,
  Pointer<Uint32> pBufferSize,
)>('TdhQueryProviderFieldInformation');

int TdhSetDecodingParameter(
  int $Handle,
  Pointer<TDH_CONTEXT> TdhContext,
) =>
    _TdhSetDecodingParameter(
      $Handle,
      TdhContext,
    );

late final _TdhSetDecodingParameter = _tdh.lookupFunction<
    Uint32 Function(
  IntPtr $Handle,
  Pointer<TDH_CONTEXT> TdhContext,
),
    int Function(
  int $Handle,
  Pointer<TDH_CONTEXT> TdhContext,
)>('TdhSetDecodingParameter');

int TdhUnloadManifest(
  Pointer<Utf16> Manifest,
) =>
    _TdhUnloadManifest(
      Manifest,
    );

late final _TdhUnloadManifest = _tdh.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> Manifest,
),
    int Function(
  Pointer<Utf16> Manifest,
)>('TdhUnloadManifest');

int TdhUnloadManifestFromMemory(
  Pointer pData,
  int cbData,
) =>
    _TdhUnloadManifestFromMemory(
      pData,
      cbData,
    );

late final _TdhUnloadManifestFromMemory = _tdh.lookupFunction<
    Uint32 Function(
  Pointer pData,
  Uint32 cbData,
),
    int Function(
  Pointer pData,
  int cbData,
)>('TdhUnloadManifestFromMemory');
