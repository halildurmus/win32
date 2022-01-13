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
import '../../system/windowsprogramming/callbacks.g.dart';
import '../../system/windowsprogramming/structs.g.dart';
import '../../system/kernel/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../system/registry/structs.g.dart'; // -----------------------------------------------------------------------

// ntdll.dll
// -----------------------------------------------------------------------
final _ntdll = DynamicLibrary.open('ntdll.dll');

int NtClose(
  int $Handle,
) =>
    _NtClose(
      $Handle,
    );

late final _NtClose = _ntdll.lookupFunction<
    Int32 Function(
  IntPtr $Handle,
),
    int Function(
  int $Handle,
)>('NtClose');

int NtDeviceIoControlFile(
  int FileHandle,
  int Event,
  Pointer<NativeFunction<PIO_APC_ROUTINE>> ApcRoutine,
  Pointer ApcContext,
  Pointer<IO_STATUS_BLOCK> IoStatusBlock,
  int IoControlCode,
  Pointer InputBuffer,
  int InputBufferLength,
  Pointer OutputBuffer,
  int OutputBufferLength,
) =>
    _NtDeviceIoControlFile(
      FileHandle,
      Event,
      ApcRoutine,
      ApcContext,
      IoStatusBlock,
      IoControlCode,
      InputBuffer,
      InputBufferLength,
      OutputBuffer,
      OutputBufferLength,
    );

late final _NtDeviceIoControlFile = _ntdll.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  IntPtr Event,
  Pointer<NativeFunction<PIO_APC_ROUTINE>> ApcRoutine,
  Pointer ApcContext,
  Pointer<IO_STATUS_BLOCK> IoStatusBlock,
  Uint32 IoControlCode,
  Pointer InputBuffer,
  Uint32 InputBufferLength,
  Pointer OutputBuffer,
  Uint32 OutputBufferLength,
),
    int Function(
  int FileHandle,
  int Event,
  Pointer<NativeFunction<PIO_APC_ROUTINE>> ApcRoutine,
  Pointer ApcContext,
  Pointer<IO_STATUS_BLOCK> IoStatusBlock,
  int IoControlCode,
  Pointer InputBuffer,
  int InputBufferLength,
  Pointer OutputBuffer,
  int OutputBufferLength,
)>('NtDeviceIoControlFile');

int NtNotifyChangeMultipleKeys(
  int MasterKeyHandle,
  int Count,
  Pointer<OBJECT_ATTRIBUTES> SubordinateObjects,
  int Event,
  Pointer<NativeFunction<PIO_APC_ROUTINE>> ApcRoutine,
  Pointer ApcContext,
  Pointer<IO_STATUS_BLOCK> IoStatusBlock,
  int CompletionFilter,
  int WatchTree,
  Pointer Buffer,
  int BufferSize,
  int Asynchronous,
) =>
    _NtNotifyChangeMultipleKeys(
      MasterKeyHandle,
      Count,
      SubordinateObjects,
      Event,
      ApcRoutine,
      ApcContext,
      IoStatusBlock,
      CompletionFilter,
      WatchTree,
      Buffer,
      BufferSize,
      Asynchronous,
    );

late final _NtNotifyChangeMultipleKeys = _ntdll.lookupFunction<
    Int32 Function(
  IntPtr MasterKeyHandle,
  Uint32 Count,
  Pointer<OBJECT_ATTRIBUTES> SubordinateObjects,
  IntPtr Event,
  Pointer<NativeFunction<PIO_APC_ROUTINE>> ApcRoutine,
  Pointer ApcContext,
  Pointer<IO_STATUS_BLOCK> IoStatusBlock,
  Uint32 CompletionFilter,
  Uint8 WatchTree,
  Pointer Buffer,
  Uint32 BufferSize,
  Uint8 Asynchronous,
),
    int Function(
  int MasterKeyHandle,
  int Count,
  Pointer<OBJECT_ATTRIBUTES> SubordinateObjects,
  int Event,
  Pointer<NativeFunction<PIO_APC_ROUTINE>> ApcRoutine,
  Pointer ApcContext,
  Pointer<IO_STATUS_BLOCK> IoStatusBlock,
  int CompletionFilter,
  int WatchTree,
  Pointer Buffer,
  int BufferSize,
  int Asynchronous,
)>('NtNotifyChangeMultipleKeys');

int NtOpenFile(
  Pointer<IntPtr> FileHandle,
  int DesiredAccess,
  Pointer<OBJECT_ATTRIBUTES> ObjectAttributes,
  Pointer<IO_STATUS_BLOCK> IoStatusBlock,
  int ShareAccess,
  int OpenOptions,
) =>
    _NtOpenFile(
      FileHandle,
      DesiredAccess,
      ObjectAttributes,
      IoStatusBlock,
      ShareAccess,
      OpenOptions,
    );

late final _NtOpenFile = _ntdll.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> FileHandle,
  Uint32 DesiredAccess,
  Pointer<OBJECT_ATTRIBUTES> ObjectAttributes,
  Pointer<IO_STATUS_BLOCK> IoStatusBlock,
  Uint32 ShareAccess,
  Uint32 OpenOptions,
),
    int Function(
  Pointer<IntPtr> FileHandle,
  int DesiredAccess,
  Pointer<OBJECT_ATTRIBUTES> ObjectAttributes,
  Pointer<IO_STATUS_BLOCK> IoStatusBlock,
  int ShareAccess,
  int OpenOptions,
)>('NtOpenFile');

int NtQueryMultipleValueKey(
  int KeyHandle,
  Pointer<KEY_VALUE_ENTRY> ValueEntries,
  int EntryCount,
  Pointer ValueBuffer,
  Pointer<Uint32> BufferLength,
  Pointer<Uint32> RequiredBufferLength,
) =>
    _NtQueryMultipleValueKey(
      KeyHandle,
      ValueEntries,
      EntryCount,
      ValueBuffer,
      BufferLength,
      RequiredBufferLength,
    );

late final _NtQueryMultipleValueKey = _ntdll.lookupFunction<
    Int32 Function(
  IntPtr KeyHandle,
  Pointer<KEY_VALUE_ENTRY> ValueEntries,
  Uint32 EntryCount,
  Pointer ValueBuffer,
  Pointer<Uint32> BufferLength,
  Pointer<Uint32> RequiredBufferLength,
),
    int Function(
  int KeyHandle,
  Pointer<KEY_VALUE_ENTRY> ValueEntries,
  int EntryCount,
  Pointer ValueBuffer,
  Pointer<Uint32> BufferLength,
  Pointer<Uint32> RequiredBufferLength,
)>('NtQueryMultipleValueKey');

int NtQueryObject(
  int $Handle,
  int ObjectInformationClass,
  Pointer ObjectInformation,
  int ObjectInformationLength,
  Pointer<Uint32> ReturnLength,
) =>
    _NtQueryObject(
      $Handle,
      ObjectInformationClass,
      ObjectInformation,
      ObjectInformationLength,
      ReturnLength,
    );

late final _NtQueryObject = _ntdll.lookupFunction<
    Int32 Function(
  IntPtr $Handle,
  Int32 ObjectInformationClass,
  Pointer ObjectInformation,
  Uint32 ObjectInformationLength,
  Pointer<Uint32> ReturnLength,
),
    int Function(
  int $Handle,
  int ObjectInformationClass,
  Pointer ObjectInformation,
  int ObjectInformationLength,
  Pointer<Uint32> ReturnLength,
)>('NtQueryObject');

int NtQuerySystemInformation(
  int SystemInformationClass,
  Pointer SystemInformation,
  int SystemInformationLength,
  Pointer<Uint32> ReturnLength,
) =>
    _NtQuerySystemInformation(
      SystemInformationClass,
      SystemInformation,
      SystemInformationLength,
      ReturnLength,
    );

late final _NtQuerySystemInformation = _ntdll.lookupFunction<
    Int32 Function(
  Int32 SystemInformationClass,
  Pointer SystemInformation,
  Uint32 SystemInformationLength,
  Pointer<Uint32> ReturnLength,
),
    int Function(
  int SystemInformationClass,
  Pointer SystemInformation,
  int SystemInformationLength,
  Pointer<Uint32> ReturnLength,
)>('NtQuerySystemInformation');

int NtQuerySystemTime(
  Pointer<Int64> SystemTime,
) =>
    _NtQuerySystemTime(
      SystemTime,
    );

late final _NtQuerySystemTime = _ntdll.lookupFunction<
    Int32 Function(
  Pointer<Int64> SystemTime,
),
    int Function(
  Pointer<Int64> SystemTime,
)>('NtQuerySystemTime');

int NtQueryTimerResolution(
  Pointer<Uint32> MaximumTime,
  Pointer<Uint32> MinimumTime,
  Pointer<Uint32> CurrentTime,
) =>
    _NtQueryTimerResolution(
      MaximumTime,
      MinimumTime,
      CurrentTime,
    );

late final _NtQueryTimerResolution = _ntdll.lookupFunction<
    Int32 Function(
  Pointer<Uint32> MaximumTime,
  Pointer<Uint32> MinimumTime,
  Pointer<Uint32> CurrentTime,
),
    int Function(
  Pointer<Uint32> MaximumTime,
  Pointer<Uint32> MinimumTime,
  Pointer<Uint32> CurrentTime,
)>('NtQueryTimerResolution');

int NtRenameKey(
  int KeyHandle,
  Pointer<UNICODE_STRING> NewName,
) =>
    _NtRenameKey(
      KeyHandle,
      NewName,
    );

late final _NtRenameKey = _ntdll.lookupFunction<
    Int32 Function(
  IntPtr KeyHandle,
  Pointer<UNICODE_STRING> NewName,
),
    int Function(
  int KeyHandle,
  Pointer<UNICODE_STRING> NewName,
)>('NtRenameKey');

int NtSetInformationKey(
  int KeyHandle,
  int KeySetInformationClass,
  Pointer KeySetInformation,
  int KeySetInformationLength,
) =>
    _NtSetInformationKey(
      KeyHandle,
      KeySetInformationClass,
      KeySetInformation,
      KeySetInformationLength,
    );

late final _NtSetInformationKey = _ntdll.lookupFunction<
    Int32 Function(
  IntPtr KeyHandle,
  Int32 KeySetInformationClass,
  Pointer KeySetInformation,
  Uint32 KeySetInformationLength,
),
    int Function(
  int KeyHandle,
  int KeySetInformationClass,
  Pointer KeySetInformation,
  int KeySetInformationLength,
)>('NtSetInformationKey');

int NtWaitForSingleObject(
  int $Handle,
  int Alertable,
  Pointer<Int64> Timeout,
) =>
    _NtWaitForSingleObject(
      $Handle,
      Alertable,
      Timeout,
    );

late final _NtWaitForSingleObject = _ntdll.lookupFunction<
    Int32 Function(
  IntPtr $Handle,
  Uint8 Alertable,
  Pointer<Int64> Timeout,
),
    int Function(
  int $Handle,
  int Alertable,
  Pointer<Int64> Timeout,
)>('NtWaitForSingleObject');

int RtlAnsiStringToUnicodeString(
  Pointer<UNICODE_STRING> DestinationString,
  Pointer<STRING> SourceString,
  int AllocateDestinationString,
) =>
    _RtlAnsiStringToUnicodeString(
      DestinationString,
      SourceString,
      AllocateDestinationString,
    );

late final _RtlAnsiStringToUnicodeString = _ntdll.lookupFunction<
    Int32 Function(
  Pointer<UNICODE_STRING> DestinationString,
  Pointer<STRING> SourceString,
  Uint8 AllocateDestinationString,
),
    int Function(
  Pointer<UNICODE_STRING> DestinationString,
  Pointer<STRING> SourceString,
  int AllocateDestinationString,
)>('RtlAnsiStringToUnicodeString');

int RtlCharToInteger(
  Pointer<Int8> $String,
  int Base,
  Pointer<Uint32> Value,
) =>
    _RtlCharToInteger(
      $String,
      Base,
      Value,
    );

late final _RtlCharToInteger = _ntdll.lookupFunction<
    Int32 Function(
  Pointer<Int8> $String,
  Uint32 Base,
  Pointer<Uint32> Value,
),
    int Function(
  Pointer<Int8> $String,
  int Base,
  Pointer<Uint32> Value,
)>('RtlCharToInteger');

void RtlFreeAnsiString(
  Pointer<STRING> AnsiString,
) =>
    _RtlFreeAnsiString(
      AnsiString,
    );

late final _RtlFreeAnsiString = _ntdll.lookupFunction<
    Void Function(
  Pointer<STRING> AnsiString,
),
    void Function(
  Pointer<STRING> AnsiString,
)>('RtlFreeAnsiString');

void RtlFreeOemString(
  Pointer<STRING> OemString,
) =>
    _RtlFreeOemString(
      OemString,
    );

late final _RtlFreeOemString = _ntdll.lookupFunction<
    Void Function(
  Pointer<STRING> OemString,
),
    void Function(
  Pointer<STRING> OemString,
)>('RtlFreeOemString');

void RtlFreeUnicodeString(
  Pointer<UNICODE_STRING> UnicodeString,
) =>
    _RtlFreeUnicodeString(
      UnicodeString,
    );

late final _RtlFreeUnicodeString = _ntdll.lookupFunction<
    Void Function(
  Pointer<UNICODE_STRING> UnicodeString,
),
    void Function(
  Pointer<UNICODE_STRING> UnicodeString,
)>('RtlFreeUnicodeString');

int RtlGetReturnAddressHijackTarget() => _RtlGetReturnAddressHijackTarget();

late final _RtlGetReturnAddressHijackTarget =
    _ntdll.lookupFunction<IntPtr Function(), int Function()>(
        'RtlGetReturnAddressHijackTarget');

void RtlInitAnsiString(
  Pointer<STRING> DestinationString,
  Pointer<Int8> SourceString,
) =>
    _RtlInitAnsiString(
      DestinationString,
      SourceString,
    );

late final _RtlInitAnsiString = _ntdll.lookupFunction<
    Void Function(
  Pointer<STRING> DestinationString,
  Pointer<Int8> SourceString,
),
    void Function(
  Pointer<STRING> DestinationString,
  Pointer<Int8> SourceString,
)>('RtlInitAnsiString');

int RtlInitAnsiStringEx(
  Pointer<STRING> DestinationString,
  Pointer<Int8> SourceString,
) =>
    _RtlInitAnsiStringEx(
      DestinationString,
      SourceString,
    );

late final _RtlInitAnsiStringEx = _ntdll.lookupFunction<
    Int32 Function(
  Pointer<STRING> DestinationString,
  Pointer<Int8> SourceString,
),
    int Function(
  Pointer<STRING> DestinationString,
  Pointer<Int8> SourceString,
)>('RtlInitAnsiStringEx');

void RtlInitString(
  Pointer<STRING> DestinationString,
  Pointer<Int8> SourceString,
) =>
    _RtlInitString(
      DestinationString,
      SourceString,
    );

late final _RtlInitString = _ntdll.lookupFunction<
    Void Function(
  Pointer<STRING> DestinationString,
  Pointer<Int8> SourceString,
),
    void Function(
  Pointer<STRING> DestinationString,
  Pointer<Int8> SourceString,
)>('RtlInitString');

int RtlInitStringEx(
  Pointer<STRING> DestinationString,
  Pointer<Int8> SourceString,
) =>
    _RtlInitStringEx(
      DestinationString,
      SourceString,
    );

late final _RtlInitStringEx = _ntdll.lookupFunction<
    Int32 Function(
  Pointer<STRING> DestinationString,
  Pointer<Int8> SourceString,
),
    int Function(
  Pointer<STRING> DestinationString,
  Pointer<Int8> SourceString,
)>('RtlInitStringEx');

void RtlInitUnicodeString(
  Pointer<UNICODE_STRING> DestinationString,
  Pointer<Utf16> SourceString,
) =>
    _RtlInitUnicodeString(
      DestinationString,
      SourceString,
    );

late final _RtlInitUnicodeString = _ntdll.lookupFunction<
    Void Function(
  Pointer<UNICODE_STRING> DestinationString,
  Pointer<Utf16> SourceString,
),
    void Function(
  Pointer<UNICODE_STRING> DestinationString,
  Pointer<Utf16> SourceString,
)>('RtlInitUnicodeString');

int RtlIsNameLegalDOS8Dot3(
  Pointer<UNICODE_STRING> Name,
  Pointer<STRING> OemName,
  Pointer<Uint8> NameContainsSpaces,
) =>
    _RtlIsNameLegalDOS8Dot3(
      Name,
      OemName,
      NameContainsSpaces,
    );

late final _RtlIsNameLegalDOS8Dot3 = _ntdll.lookupFunction<
    Uint8 Function(
  Pointer<UNICODE_STRING> Name,
  Pointer<STRING> OemName,
  Pointer<Uint8> NameContainsSpaces,
),
    int Function(
  Pointer<UNICODE_STRING> Name,
  Pointer<STRING> OemName,
  Pointer<Uint8> NameContainsSpaces,
)>('RtlIsNameLegalDOS8Dot3');

int RtlLocalTimeToSystemTime(
  Pointer<Int64> LocalTime,
  Pointer<Int64> SystemTime,
) =>
    _RtlLocalTimeToSystemTime(
      LocalTime,
      SystemTime,
    );

late final _RtlLocalTimeToSystemTime = _ntdll.lookupFunction<
    Int32 Function(
  Pointer<Int64> LocalTime,
  Pointer<Int64> SystemTime,
),
    int Function(
  Pointer<Int64> LocalTime,
  Pointer<Int64> SystemTime,
)>('RtlLocalTimeToSystemTime');

int RtlRaiseCustomSystemEventTrigger(
  Pointer<CUSTOM_SYSTEM_EVENT_TRIGGER_CONFIG> TriggerConfig,
) =>
    _RtlRaiseCustomSystemEventTrigger(
      TriggerConfig,
    );

late final _RtlRaiseCustomSystemEventTrigger = _ntdll.lookupFunction<
    Uint32 Function(
  Pointer<CUSTOM_SYSTEM_EVENT_TRIGGER_CONFIG> TriggerConfig,
),
    int Function(
  Pointer<CUSTOM_SYSTEM_EVENT_TRIGGER_CONFIG> TriggerConfig,
)>('RtlRaiseCustomSystemEventTrigger');

int RtlTimeToSecondsSince1970(
  Pointer<Int64> Time,
  Pointer<Uint32> ElapsedSeconds,
) =>
    _RtlTimeToSecondsSince1970(
      Time,
      ElapsedSeconds,
    );

late final _RtlTimeToSecondsSince1970 = _ntdll.lookupFunction<
    Uint8 Function(
  Pointer<Int64> Time,
  Pointer<Uint32> ElapsedSeconds,
),
    int Function(
  Pointer<Int64> Time,
  Pointer<Uint32> ElapsedSeconds,
)>('RtlTimeToSecondsSince1970');

int RtlUnicodeStringToAnsiString(
  Pointer<STRING> DestinationString,
  Pointer<UNICODE_STRING> SourceString,
  int AllocateDestinationString,
) =>
    _RtlUnicodeStringToAnsiString(
      DestinationString,
      SourceString,
      AllocateDestinationString,
    );

late final _RtlUnicodeStringToAnsiString = _ntdll.lookupFunction<
    Int32 Function(
  Pointer<STRING> DestinationString,
  Pointer<UNICODE_STRING> SourceString,
  Uint8 AllocateDestinationString,
),
    int Function(
  Pointer<STRING> DestinationString,
  Pointer<UNICODE_STRING> SourceString,
  int AllocateDestinationString,
)>('RtlUnicodeStringToAnsiString');

int RtlUnicodeStringToOemString(
  Pointer<STRING> DestinationString,
  Pointer<UNICODE_STRING> SourceString,
  int AllocateDestinationString,
) =>
    _RtlUnicodeStringToOemString(
      DestinationString,
      SourceString,
      AllocateDestinationString,
    );

late final _RtlUnicodeStringToOemString = _ntdll.lookupFunction<
    Int32 Function(
  Pointer<STRING> DestinationString,
  Pointer<UNICODE_STRING> SourceString,
  Uint8 AllocateDestinationString,
),
    int Function(
  Pointer<STRING> DestinationString,
  Pointer<UNICODE_STRING> SourceString,
  int AllocateDestinationString,
)>('RtlUnicodeStringToOemString');

int RtlUnicodeToMultiByteSize(
  Pointer<Uint32> BytesInMultiByteString,
  Pointer<Utf16> UnicodeString,
  int BytesInUnicodeString,
) =>
    _RtlUnicodeToMultiByteSize(
      BytesInMultiByteString,
      UnicodeString,
      BytesInUnicodeString,
    );

late final _RtlUnicodeToMultiByteSize = _ntdll.lookupFunction<
    Int32 Function(
  Pointer<Uint32> BytesInMultiByteString,
  Pointer<Utf16> UnicodeString,
  Uint32 BytesInUnicodeString,
),
    int Function(
  Pointer<Uint32> BytesInMultiByteString,
  Pointer<Utf16> UnicodeString,
  int BytesInUnicodeString,
)>('RtlUnicodeToMultiByteSize');

int RtlUniform(
  Pointer<Uint32> Seed,
) =>
    _RtlUniform(
      Seed,
    );

late final _RtlUniform = _ntdll.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> Seed,
),
    int Function(
  Pointer<Uint32> Seed,
)>('RtlUniform');

// -----------------------------------------------------------------------
// api-ms-win-core-apiquery-l2-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_apiquery_l2_1_0 =
    DynamicLibrary.open('api-ms-win-core-apiquery-l2-1-0.dll');

int IsApiSetImplemented(
  Pointer<Utf8> Contract,
) =>
    _IsApiSetImplemented(
      Contract,
    );

late final _IsApiSetImplemented =
    _api_ms_win_core_apiquery_l2_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf8> Contract,
),
        int Function(
  Pointer<Utf8> Contract,
)>('IsApiSetImplemented');

// -----------------------------------------------------------------------
// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int CancelDeviceWakeupRequest(
  int hDevice,
) =>
    _CancelDeviceWakeupRequest(
      hDevice,
    );

late final _CancelDeviceWakeupRequest = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hDevice,
),
    int Function(
  int hDevice,
)>('CancelDeviceWakeupRequest');

int CancelTimerQueueTimer(
  int TimerQueue,
  int Timer,
) =>
    _CancelTimerQueueTimer(
      TimerQueue,
      Timer,
    );

late final _CancelTimerQueueTimer = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr TimerQueue,
  IntPtr Timer,
),
    int Function(
  int TimerQueue,
  int Timer,
)>('CancelTimerQueueTimer');

int DnsHostnameToComputerName(
  Pointer<Utf16> Hostname,
  Pointer<Utf16> ComputerName,
  Pointer<Uint32> nSize,
) =>
    _DnsHostnameToComputerName(
      Hostname,
      ComputerName,
      nSize,
    );

late final _DnsHostnameToComputerName = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> Hostname,
  Pointer<Utf16> ComputerName,
  Pointer<Uint32> nSize,
),
    int Function(
  Pointer<Utf16> Hostname,
  Pointer<Utf16> ComputerName,
  Pointer<Uint32> nSize,
)>('DnsHostnameToComputerNameW');

int DosDateTimeToFileTime(
  int wFatDate,
  int wFatTime,
  Pointer<FILETIME> lpFileTime,
) =>
    _DosDateTimeToFileTime(
      wFatDate,
      wFatTime,
      lpFileTime,
    );

late final _DosDateTimeToFileTime = _kernel32.lookupFunction<
    Int32 Function(
  Uint16 wFatDate,
  Uint16 wFatTime,
  Pointer<FILETIME> lpFileTime,
),
    int Function(
  int wFatDate,
  int wFatTime,
  Pointer<FILETIME> lpFileTime,
)>('DosDateTimeToFileTime');

int EnableProcessOptionalXStateFeatures(
  int Features,
) =>
    _EnableProcessOptionalXStateFeatures(
      Features,
    );

late final _EnableProcessOptionalXStateFeatures = _kernel32.lookupFunction<
    Int32 Function(
  Uint64 Features,
),
    int Function(
  int Features,
)>('EnableProcessOptionalXStateFeatures');

int FileTimeToDosDateTime(
  Pointer<FILETIME> lpFileTime,
  Pointer<Uint16> lpFatDate,
  Pointer<Uint16> lpFatTime,
) =>
    _FileTimeToDosDateTime(
      lpFileTime,
      lpFatDate,
      lpFatTime,
    );

late final _FileTimeToDosDateTime = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<FILETIME> lpFileTime,
  Pointer<Uint16> lpFatDate,
  Pointer<Uint16> lpFatTime,
),
    int Function(
  Pointer<FILETIME> lpFileTime,
  Pointer<Uint16> lpFatDate,
  Pointer<Uint16> lpFatTime,
)>('FileTimeToDosDateTime');

int GetComputerName(
  Pointer<Utf16> lpBuffer,
  Pointer<Uint32> nSize,
) =>
    _GetComputerName(
      lpBuffer,
      nSize,
    );

late final _GetComputerName = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpBuffer,
  Pointer<Uint32> nSize,
),
    int Function(
  Pointer<Utf16> lpBuffer,
  Pointer<Uint32> nSize,
)>('GetComputerNameW');

int GetFirmwareEnvironmentVariableEx(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpGuid,
  Pointer pBuffer,
  int nSize,
  Pointer<Uint32> pdwAttribubutes,
) =>
    _GetFirmwareEnvironmentVariableEx(
      lpName,
      lpGuid,
      pBuffer,
      nSize,
      pdwAttribubutes,
    );

late final _GetFirmwareEnvironmentVariableEx = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpGuid,
  Pointer pBuffer,
  Uint32 nSize,
  Pointer<Uint32> pdwAttribubutes,
),
    int Function(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpGuid,
  Pointer pBuffer,
  int nSize,
  Pointer<Uint32> pdwAttribubutes,
)>('GetFirmwareEnvironmentVariableExW');

int GetFirmwareEnvironmentVariable(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpGuid,
  Pointer pBuffer,
  int nSize,
) =>
    _GetFirmwareEnvironmentVariable(
      lpName,
      lpGuid,
      pBuffer,
      nSize,
    );

late final _GetFirmwareEnvironmentVariable = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpGuid,
  Pointer pBuffer,
  Uint32 nSize,
),
    int Function(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpGuid,
  Pointer pBuffer,
  int nSize,
)>('GetFirmwareEnvironmentVariableW');

int GetPrivateProfileInt(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpKeyName,
  int nDefault,
  Pointer<Utf16> lpFileName,
) =>
    _GetPrivateProfileInt(
      lpAppName,
      lpKeyName,
      nDefault,
      lpFileName,
    );

late final _GetPrivateProfileInt = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpKeyName,
  Int32 nDefault,
  Pointer<Utf16> lpFileName,
),
    int Function(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpKeyName,
  int nDefault,
  Pointer<Utf16> lpFileName,
)>('GetPrivateProfileIntW');

int GetPrivateProfileSectionNames(
  Pointer<Utf16> lpszReturnBuffer,
  int nSize,
  Pointer<Utf16> lpFileName,
) =>
    _GetPrivateProfileSectionNames(
      lpszReturnBuffer,
      nSize,
      lpFileName,
    );

late final _GetPrivateProfileSectionNames = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpszReturnBuffer,
  Uint32 nSize,
  Pointer<Utf16> lpFileName,
),
    int Function(
  Pointer<Utf16> lpszReturnBuffer,
  int nSize,
  Pointer<Utf16> lpFileName,
)>('GetPrivateProfileSectionNamesW');

int GetPrivateProfileSection(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpReturnedString,
  int nSize,
  Pointer<Utf16> lpFileName,
) =>
    _GetPrivateProfileSection(
      lpAppName,
      lpReturnedString,
      nSize,
      lpFileName,
    );

late final _GetPrivateProfileSection = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpReturnedString,
  Uint32 nSize,
  Pointer<Utf16> lpFileName,
),
    int Function(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpReturnedString,
  int nSize,
  Pointer<Utf16> lpFileName,
)>('GetPrivateProfileSectionW');

int GetPrivateProfileString(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpKeyName,
  Pointer<Utf16> lpDefault,
  Pointer<Utf16> lpReturnedString,
  int nSize,
  Pointer<Utf16> lpFileName,
) =>
    _GetPrivateProfileString(
      lpAppName,
      lpKeyName,
      lpDefault,
      lpReturnedString,
      nSize,
      lpFileName,
    );

late final _GetPrivateProfileString = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpKeyName,
  Pointer<Utf16> lpDefault,
  Pointer<Utf16> lpReturnedString,
  Uint32 nSize,
  Pointer<Utf16> lpFileName,
),
    int Function(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpKeyName,
  Pointer<Utf16> lpDefault,
  Pointer<Utf16> lpReturnedString,
  int nSize,
  Pointer<Utf16> lpFileName,
)>('GetPrivateProfileStringW');

int GetPrivateProfileStruct(
  Pointer<Utf16> lpszSection,
  Pointer<Utf16> lpszKey,
  Pointer lpStruct,
  int uSizeStruct,
  Pointer<Utf16> szFile,
) =>
    _GetPrivateProfileStruct(
      lpszSection,
      lpszKey,
      lpStruct,
      uSizeStruct,
      szFile,
    );

late final _GetPrivateProfileStruct = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszSection,
  Pointer<Utf16> lpszKey,
  Pointer lpStruct,
  Uint32 uSizeStruct,
  Pointer<Utf16> szFile,
),
    int Function(
  Pointer<Utf16> lpszSection,
  Pointer<Utf16> lpszKey,
  Pointer lpStruct,
  int uSizeStruct,
  Pointer<Utf16> szFile,
)>('GetPrivateProfileStructW');

int GetProfileInt(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpKeyName,
  int nDefault,
) =>
    _GetProfileInt(
      lpAppName,
      lpKeyName,
      nDefault,
    );

late final _GetProfileInt = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpKeyName,
  Int32 nDefault,
),
    int Function(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpKeyName,
  int nDefault,
)>('GetProfileIntW');

int GetProfileSection(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpReturnedString,
  int nSize,
) =>
    _GetProfileSection(
      lpAppName,
      lpReturnedString,
      nSize,
    );

late final _GetProfileSection = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpReturnedString,
  Uint32 nSize,
),
    int Function(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpReturnedString,
  int nSize,
)>('GetProfileSectionW');

int GetProfileString(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpKeyName,
  Pointer<Utf16> lpDefault,
  Pointer<Utf16> lpReturnedString,
  int nSize,
) =>
    _GetProfileString(
      lpAppName,
      lpKeyName,
      lpDefault,
      lpReturnedString,
      nSize,
    );

late final _GetProfileString = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpKeyName,
  Pointer<Utf16> lpDefault,
  Pointer<Utf16> lpReturnedString,
  Uint32 nSize,
),
    int Function(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpKeyName,
  Pointer<Utf16> lpDefault,
  Pointer<Utf16> lpReturnedString,
  int nSize,
)>('GetProfileStringW');

int GetSystemRegistryQuota(
  Pointer<Uint32> pdwQuotaAllowed,
  Pointer<Uint32> pdwQuotaUsed,
) =>
    _GetSystemRegistryQuota(
      pdwQuotaAllowed,
      pdwQuotaUsed,
    );

late final _GetSystemRegistryQuota = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> pdwQuotaAllowed,
  Pointer<Uint32> pdwQuotaUsed,
),
    int Function(
  Pointer<Uint32> pdwQuotaAllowed,
  Pointer<Uint32> pdwQuotaUsed,
)>('GetSystemRegistryQuota');

int GetThreadEnabledXStateFeatures() => _GetThreadEnabledXStateFeatures();

late final _GetThreadEnabledXStateFeatures =
    _kernel32.lookupFunction<Uint64 Function(), int Function()>(
        'GetThreadEnabledXStateFeatures');

int GlobalCompact(
  int dwMinFree,
) =>
    _GlobalCompact(
      dwMinFree,
    );

late final _GlobalCompact = _kernel32.lookupFunction<
    IntPtr Function(
  Uint32 dwMinFree,
),
    int Function(
  int dwMinFree,
)>('GlobalCompact');

void GlobalFix(
  int hMem,
) =>
    _GlobalFix(
      hMem,
    );

late final _GlobalFix = _kernel32.lookupFunction<
    Void Function(
  IntPtr hMem,
),
    void Function(
  int hMem,
)>('GlobalFix');

int GlobalUnWire(
  int hMem,
) =>
    _GlobalUnWire(
      hMem,
    );

late final _GlobalUnWire = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hMem,
),
    int Function(
  int hMem,
)>('GlobalUnWire');

void GlobalUnfix(
  int hMem,
) =>
    _GlobalUnfix(
      hMem,
    );

late final _GlobalUnfix = _kernel32.lookupFunction<
    Void Function(
  IntPtr hMem,
),
    void Function(
  int hMem,
)>('GlobalUnfix');

Pointer GlobalWire(
  int hMem,
) =>
    _GlobalWire(
      hMem,
    );

late final _GlobalWire = _kernel32.lookupFunction<
    Pointer Function(
  IntPtr hMem,
),
    Pointer Function(
  int hMem,
)>('GlobalWire');

int IsBadHugeReadPtr(
  Pointer lp,
  int ucb,
) =>
    _IsBadHugeReadPtr(
      lp,
      ucb,
    );

late final _IsBadHugeReadPtr = _kernel32.lookupFunction<
    Int32 Function(
  Pointer lp,
  IntPtr ucb,
),
    int Function(
  Pointer lp,
  int ucb,
)>('IsBadHugeReadPtr');

int IsBadHugeWritePtr(
  Pointer lp,
  int ucb,
) =>
    _IsBadHugeWritePtr(
      lp,
      ucb,
    );

late final _IsBadHugeWritePtr = _kernel32.lookupFunction<
    Int32 Function(
  Pointer lp,
  IntPtr ucb,
),
    int Function(
  Pointer lp,
  int ucb,
)>('IsBadHugeWritePtr');

int IsNativeVhdBoot(
  Pointer<Int32> NativeVhdBoot,
) =>
    _IsNativeVhdBoot(
      NativeVhdBoot,
    );

late final _IsNativeVhdBoot = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Int32> NativeVhdBoot,
),
    int Function(
  Pointer<Int32> NativeVhdBoot,
)>('IsNativeVhdBoot');

int LocalCompact(
  int uMinFree,
) =>
    _LocalCompact(
      uMinFree,
    );

late final _LocalCompact = _kernel32.lookupFunction<
    IntPtr Function(
  Uint32 uMinFree,
),
    int Function(
  int uMinFree,
)>('LocalCompact');

int LocalShrink(
  int hMem,
  int cbNewSize,
) =>
    _LocalShrink(
      hMem,
      cbNewSize,
    );

late final _LocalShrink = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr hMem,
  Uint32 cbNewSize,
),
    int Function(
  int hMem,
  int cbNewSize,
)>('LocalShrink');

int MulDiv(
  int nNumber,
  int nNumerator,
  int nDenominator,
) =>
    _MulDiv(
      nNumber,
      nNumerator,
      nDenominator,
    );

late final _MulDiv = _kernel32.lookupFunction<
    Int32 Function(
  Int32 nNumber,
  Int32 nNumerator,
  Int32 nDenominator,
),
    int Function(
  int nNumber,
  int nNumerator,
  int nDenominator,
)>('MulDiv');

int QueryIdleProcessorCycleTime(
  Pointer<Uint32> BufferLength,
  Pointer<Uint64> ProcessorIdleCycleTime,
) =>
    _QueryIdleProcessorCycleTime(
      BufferLength,
      ProcessorIdleCycleTime,
    );

late final _QueryIdleProcessorCycleTime = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> BufferLength,
  Pointer<Uint64> ProcessorIdleCycleTime,
),
    int Function(
  Pointer<Uint32> BufferLength,
  Pointer<Uint64> ProcessorIdleCycleTime,
)>('QueryIdleProcessorCycleTime');

int QueryIdleProcessorCycleTimeEx(
  int Group,
  Pointer<Uint32> BufferLength,
  Pointer<Uint64> ProcessorIdleCycleTime,
) =>
    _QueryIdleProcessorCycleTimeEx(
      Group,
      BufferLength,
      ProcessorIdleCycleTime,
    );

late final _QueryIdleProcessorCycleTimeEx = _kernel32.lookupFunction<
    Int32 Function(
  Uint16 Group,
  Pointer<Uint32> BufferLength,
  Pointer<Uint64> ProcessorIdleCycleTime,
),
    int Function(
  int Group,
  Pointer<Uint32> BufferLength,
  Pointer<Uint64> ProcessorIdleCycleTime,
)>('QueryIdleProcessorCycleTimeEx');

int QueryProcessCycleTime(
  int ProcessHandle,
  Pointer<Uint64> CycleTime,
) =>
    _QueryProcessCycleTime(
      ProcessHandle,
      CycleTime,
    );

late final _QueryProcessCycleTime = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr ProcessHandle,
  Pointer<Uint64> CycleTime,
),
    int Function(
  int ProcessHandle,
  Pointer<Uint64> CycleTime,
)>('QueryProcessCycleTime');

int QueryThreadCycleTime(
  int ThreadHandle,
  Pointer<Uint64> CycleTime,
) =>
    _QueryThreadCycleTime(
      ThreadHandle,
      CycleTime,
    );

late final _QueryThreadCycleTime = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr ThreadHandle,
  Pointer<Uint64> CycleTime,
),
    int Function(
  int ThreadHandle,
  Pointer<Uint64> CycleTime,
)>('QueryThreadCycleTime');

int QueryUnbiasedInterruptTime(
  Pointer<Uint64> UnbiasedTime,
) =>
    _QueryUnbiasedInterruptTime(
      UnbiasedTime,
    );

late final _QueryUnbiasedInterruptTime = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Uint64> UnbiasedTime,
),
    int Function(
  Pointer<Uint64> UnbiasedTime,
)>('QueryUnbiasedInterruptTime');

int ReplacePartitionUnit(
  Pointer<Utf16> TargetPartition,
  Pointer<Utf16> SparePartition,
  int Flags,
) =>
    _ReplacePartitionUnit(
      TargetPartition,
      SparePartition,
      Flags,
    );

late final _ReplacePartitionUnit = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> TargetPartition,
  Pointer<Utf16> SparePartition,
  Uint32 Flags,
),
    int Function(
  Pointer<Utf16> TargetPartition,
  Pointer<Utf16> SparePartition,
  int Flags,
)>('ReplacePartitionUnit');

int RequestDeviceWakeup(
  int hDevice,
) =>
    _RequestDeviceWakeup(
      hDevice,
    );

late final _RequestDeviceWakeup = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hDevice,
),
    int Function(
  int hDevice,
)>('RequestDeviceWakeup');

int SetFirmwareEnvironmentVariableEx(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpGuid,
  Pointer pValue,
  int nSize,
  int dwAttributes,
) =>
    _SetFirmwareEnvironmentVariableEx(
      lpName,
      lpGuid,
      pValue,
      nSize,
      dwAttributes,
    );

late final _SetFirmwareEnvironmentVariableEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpGuid,
  Pointer pValue,
  Uint32 nSize,
  Uint32 dwAttributes,
),
    int Function(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpGuid,
  Pointer pValue,
  int nSize,
  int dwAttributes,
)>('SetFirmwareEnvironmentVariableExW');

int SetFirmwareEnvironmentVariable(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpGuid,
  Pointer pValue,
  int nSize,
) =>
    _SetFirmwareEnvironmentVariable(
      lpName,
      lpGuid,
      pValue,
      nSize,
    );

late final _SetFirmwareEnvironmentVariable = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpGuid,
  Pointer pValue,
  Uint32 nSize,
),
    int Function(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpGuid,
  Pointer pValue,
  int nSize,
)>('SetFirmwareEnvironmentVariableW');

int SetHandleCount(
  int uNumber,
) =>
    _SetHandleCount(
      uNumber,
    );

late final _SetHandleCount = _kernel32.lookupFunction<
    Uint32 Function(
  Uint32 uNumber,
),
    int Function(
  int uNumber,
)>('SetHandleCount');

int SetMessageWaitingIndicator(
  int hMsgIndicator,
  int ulMsgCount,
) =>
    _SetMessageWaitingIndicator(
      hMsgIndicator,
      ulMsgCount,
    );

late final _SetMessageWaitingIndicator = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hMsgIndicator,
  Uint32 ulMsgCount,
),
    int Function(
  int hMsgIndicator,
  int ulMsgCount,
)>('SetMessageWaitingIndicator');

int SignalObjectAndWait(
  int hObjectToSignal,
  int hObjectToWaitOn,
  int dwMilliseconds,
  int bAlertable,
) =>
    _SignalObjectAndWait(
      hObjectToSignal,
      hObjectToWaitOn,
      dwMilliseconds,
      bAlertable,
    );

late final _SignalObjectAndWait = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hObjectToSignal,
  IntPtr hObjectToWaitOn,
  Uint32 dwMilliseconds,
  Int32 bAlertable,
),
    int Function(
  int hObjectToSignal,
  int hObjectToWaitOn,
  int dwMilliseconds,
  int bAlertable,
)>('SignalObjectAndWait');

int WritePrivateProfileSection(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpString,
  Pointer<Utf16> lpFileName,
) =>
    _WritePrivateProfileSection(
      lpAppName,
      lpString,
      lpFileName,
    );

late final _WritePrivateProfileSection = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpString,
  Pointer<Utf16> lpFileName,
),
    int Function(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpString,
  Pointer<Utf16> lpFileName,
)>('WritePrivateProfileSectionW');

int WritePrivateProfileString(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpKeyName,
  Pointer<Utf16> lpString,
  Pointer<Utf16> lpFileName,
) =>
    _WritePrivateProfileString(
      lpAppName,
      lpKeyName,
      lpString,
      lpFileName,
    );

late final _WritePrivateProfileString = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpKeyName,
  Pointer<Utf16> lpString,
  Pointer<Utf16> lpFileName,
),
    int Function(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpKeyName,
  Pointer<Utf16> lpString,
  Pointer<Utf16> lpFileName,
)>('WritePrivateProfileStringW');

int WritePrivateProfileStruct(
  Pointer<Utf16> lpszSection,
  Pointer<Utf16> lpszKey,
  Pointer lpStruct,
  int uSizeStruct,
  Pointer<Utf16> szFile,
) =>
    _WritePrivateProfileStruct(
      lpszSection,
      lpszKey,
      lpStruct,
      uSizeStruct,
      szFile,
    );

late final _WritePrivateProfileStruct = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszSection,
  Pointer<Utf16> lpszKey,
  Pointer lpStruct,
  Uint32 uSizeStruct,
  Pointer<Utf16> szFile,
),
    int Function(
  Pointer<Utf16> lpszSection,
  Pointer<Utf16> lpszKey,
  Pointer lpStruct,
  int uSizeStruct,
  Pointer<Utf16> szFile,
)>('WritePrivateProfileStructW');

int WriteProfileSection(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpString,
) =>
    _WriteProfileSection(
      lpAppName,
      lpString,
    );

late final _WriteProfileSection = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpString,
),
    int Function(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpString,
)>('WriteProfileSectionW');

int WriteProfileString(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpKeyName,
  Pointer<Utf16> lpString,
) =>
    _WriteProfileString(
      lpAppName,
      lpKeyName,
      lpString,
    );

late final _WriteProfileString = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpKeyName,
  Pointer<Utf16> lpString,
),
    int Function(
  Pointer<Utf16> lpAppName,
  Pointer<Utf16> lpKeyName,
  Pointer<Utf16> lpString,
)>('WriteProfileStringW');

int _hread(
  int hFile,
  Pointer lpBuffer,
  int lBytes,
) =>
    __hread(
      hFile,
      lpBuffer,
      lBytes,
    );

late final __hread = _kernel32.lookupFunction<
    Int32 Function(
  Int32 hFile,
  Pointer lpBuffer,
  Int32 lBytes,
),
    int Function(
  int hFile,
  Pointer lpBuffer,
  int lBytes,
)>('_hread');

int _hwrite(
  int hFile,
  Pointer<Utf8> lpBuffer,
  int lBytes,
) =>
    __hwrite(
      hFile,
      lpBuffer,
      lBytes,
    );

late final __hwrite = _kernel32.lookupFunction<
    Int32 Function(
  Int32 hFile,
  Pointer<Utf8> lpBuffer,
  Int32 lBytes,
),
    int Function(
  int hFile,
  Pointer<Utf8> lpBuffer,
  int lBytes,
)>('_hwrite');

int _lclose(
  int hFile,
) =>
    __lclose(
      hFile,
    );

late final __lclose = _kernel32.lookupFunction<
    Int32 Function(
  Int32 hFile,
),
    int Function(
  int hFile,
)>('_lclose');

int _lcreat(
  Pointer<Utf8> lpPathName,
  int iAttribute,
) =>
    __lcreat(
      lpPathName,
      iAttribute,
    );

late final __lcreat = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf8> lpPathName,
  Int32 iAttribute,
),
    int Function(
  Pointer<Utf8> lpPathName,
  int iAttribute,
)>('_lcreat');

int _llseek(
  int hFile,
  int lOffset,
  int iOrigin,
) =>
    __llseek(
      hFile,
      lOffset,
      iOrigin,
    );

late final __llseek = _kernel32.lookupFunction<
    Int32 Function(
  Int32 hFile,
  Int32 lOffset,
  Int32 iOrigin,
),
    int Function(
  int hFile,
  int lOffset,
  int iOrigin,
)>('_llseek');

int _lopen(
  Pointer<Utf8> lpPathName,
  int iReadWrite,
) =>
    __lopen(
      lpPathName,
      iReadWrite,
    );

late final __lopen = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf8> lpPathName,
  Int32 iReadWrite,
),
    int Function(
  Pointer<Utf8> lpPathName,
  int iReadWrite,
)>('_lopen');

int _lread(
  int hFile,
  Pointer lpBuffer,
  int uBytes,
) =>
    __lread(
      hFile,
      lpBuffer,
      uBytes,
    );

late final __lread = _kernel32.lookupFunction<
    Uint32 Function(
  Int32 hFile,
  Pointer lpBuffer,
  Uint32 uBytes,
),
    int Function(
  int hFile,
  Pointer lpBuffer,
  int uBytes,
)>('_lread');

int _lwrite(
  int hFile,
  Pointer<Utf8> lpBuffer,
  int uBytes,
) =>
    __lwrite(
      hFile,
      lpBuffer,
      uBytes,
    );

late final __lwrite = _kernel32.lookupFunction<
    Uint32 Function(
  Int32 hFile,
  Pointer<Utf8> lpBuffer,
  Uint32 uBytes,
),
    int Function(
  int hFile,
  Pointer<Utf8> lpBuffer,
  int uBytes,
)>('_lwrite');

int uaw_lstrcmp(
  Pointer<Uint16> String1,
  Pointer<Uint16> String2,
) =>
    _uaw_lstrcmp(
      String1,
      String2,
    );

late final _uaw_lstrcmp = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Uint16> String1,
  Pointer<Uint16> String2,
),
    int Function(
  Pointer<Uint16> String1,
  Pointer<Uint16> String2,
)>('uaw_lstrcmpW');

int uaw_lstrcmpi(
  Pointer<Uint16> String1,
  Pointer<Uint16> String2,
) =>
    _uaw_lstrcmpi(
      String1,
      String2,
    );

late final _uaw_lstrcmpi = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Uint16> String1,
  Pointer<Uint16> String2,
),
    int Function(
  Pointer<Uint16> String1,
  Pointer<Uint16> String2,
)>('uaw_lstrcmpiW');

int uaw_lstrlen(
  Pointer<Uint16> $String,
) =>
    _uaw_lstrlen(
      $String,
    );

late final _uaw_lstrlen = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Uint16> $String,
),
    int Function(
  Pointer<Uint16> $String,
)>('uaw_lstrlenW');

Pointer<Uint16> uaw_wcschr(
  Pointer<Uint16> $String,
  int Character,
) =>
    _uaw_wcschr(
      $String,
      Character,
    );

late final _uaw_wcschr = _kernel32.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> $String,
  Uint16 Character,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> $String,
  int Character,
)>('uaw_wcschr');

Pointer<Uint16> uaw_wcscpy(
  Pointer<Uint16> Destination,
  Pointer<Uint16> Source,
) =>
    _uaw_wcscpy(
      Destination,
      Source,
    );

late final _uaw_wcscpy = _kernel32.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> Destination,
  Pointer<Uint16> Source,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> Destination,
  Pointer<Uint16> Source,
)>('uaw_wcscpy');

int uaw_wcsicmp(
  Pointer<Uint16> String1,
  Pointer<Uint16> String2,
) =>
    _uaw_wcsicmp(
      String1,
      String2,
    );

late final _uaw_wcsicmp = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Uint16> String1,
  Pointer<Uint16> String2,
),
    int Function(
  Pointer<Uint16> String1,
  Pointer<Uint16> String2,
)>('uaw_wcsicmp');

int uaw_wcslen(
  Pointer<Uint16> $String,
) =>
    _uaw_wcslen(
      $String,
    );

late final _uaw_wcslen = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Uint16> $String,
),
    int Function(
  Pointer<Uint16> $String,
)>('uaw_wcslen');

Pointer<Uint16> uaw_wcsrchr(
  Pointer<Uint16> $String,
  int Character,
) =>
    _uaw_wcsrchr(
      $String,
      Character,
    );

late final _uaw_wcsrchr = _kernel32.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> $String,
  Uint16 Character,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> $String,
  int Character,
)>('uaw_wcsrchr');

// -----------------------------------------------------------------------
// api-ms-win-core-realtime-l1-1-1.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_realtime_l1_1_1 =
    DynamicLibrary.open('api-ms-win-core-realtime-l1-1-1.dll');

void QueryInterruptTime(
  Pointer<Uint64> lpInterruptTime,
) =>
    _QueryInterruptTime(
      lpInterruptTime,
    );

late final _QueryInterruptTime =
    _api_ms_win_core_realtime_l1_1_1.lookupFunction<
        Void Function(
  Pointer<Uint64> lpInterruptTime,
),
        void Function(
  Pointer<Uint64> lpInterruptTime,
)>('QueryInterruptTime');

void QueryInterruptTimePrecise(
  Pointer<Uint64> lpInterruptTimePrecise,
) =>
    _QueryInterruptTimePrecise(
      lpInterruptTimePrecise,
    );

late final _QueryInterruptTimePrecise =
    _api_ms_win_core_realtime_l1_1_1.lookupFunction<
        Void Function(
  Pointer<Uint64> lpInterruptTimePrecise,
),
        void Function(
  Pointer<Uint64> lpInterruptTimePrecise,
)>('QueryInterruptTimePrecise');

void QueryUnbiasedInterruptTimePrecise(
  Pointer<Uint64> lpUnbiasedInterruptTimePrecise,
) =>
    _QueryUnbiasedInterruptTimePrecise(
      lpUnbiasedInterruptTimePrecise,
    );

late final _QueryUnbiasedInterruptTimePrecise =
    _api_ms_win_core_realtime_l1_1_1.lookupFunction<
        Void Function(
  Pointer<Uint64> lpUnbiasedInterruptTimePrecise,
),
        void Function(
  Pointer<Uint64> lpUnbiasedInterruptTimePrecise,
)>('QueryUnbiasedInterruptTimePrecise');

// -----------------------------------------------------------------------
// api-ms-win-core-realtime-l1-1-2.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_realtime_l1_1_2 =
    DynamicLibrary.open('api-ms-win-core-realtime-l1-1-2.dll');

int ConvertAuxiliaryCounterToPerformanceCounter(
  int ullAuxiliaryCounterValue,
  Pointer<Uint64> lpPerformanceCounterValue,
  Pointer<Uint64> lpConversionError,
) =>
    _ConvertAuxiliaryCounterToPerformanceCounter(
      ullAuxiliaryCounterValue,
      lpPerformanceCounterValue,
      lpConversionError,
    );

late final _ConvertAuxiliaryCounterToPerformanceCounter =
    _api_ms_win_core_realtime_l1_1_2.lookupFunction<
        Int32 Function(
  Uint64 ullAuxiliaryCounterValue,
  Pointer<Uint64> lpPerformanceCounterValue,
  Pointer<Uint64> lpConversionError,
),
        int Function(
  int ullAuxiliaryCounterValue,
  Pointer<Uint64> lpPerformanceCounterValue,
  Pointer<Uint64> lpConversionError,
)>('ConvertAuxiliaryCounterToPerformanceCounter');

int ConvertPerformanceCounterToAuxiliaryCounter(
  int ullPerformanceCounterValue,
  Pointer<Uint64> lpAuxiliaryCounterValue,
  Pointer<Uint64> lpConversionError,
) =>
    _ConvertPerformanceCounterToAuxiliaryCounter(
      ullPerformanceCounterValue,
      lpAuxiliaryCounterValue,
      lpConversionError,
    );

late final _ConvertPerformanceCounterToAuxiliaryCounter =
    _api_ms_win_core_realtime_l1_1_2.lookupFunction<
        Int32 Function(
  Uint64 ullPerformanceCounterValue,
  Pointer<Uint64> lpAuxiliaryCounterValue,
  Pointer<Uint64> lpConversionError,
),
        int Function(
  int ullPerformanceCounterValue,
  Pointer<Uint64> lpAuxiliaryCounterValue,
  Pointer<Uint64> lpConversionError,
)>('ConvertPerformanceCounterToAuxiliaryCounter');

int QueryAuxiliaryCounterFrequency(
  Pointer<Uint64> lpAuxiliaryCounterFrequency,
) =>
    _QueryAuxiliaryCounterFrequency(
      lpAuxiliaryCounterFrequency,
    );

late final _QueryAuxiliaryCounterFrequency =
    _api_ms_win_core_realtime_l1_1_2.lookupFunction<
        Int32 Function(
  Pointer<Uint64> lpAuxiliaryCounterFrequency,
),
        int Function(
  Pointer<Uint64> lpAuxiliaryCounterFrequency,
)>('QueryAuxiliaryCounterFrequency');

// -----------------------------------------------------------------------
// advapi32.dll
// -----------------------------------------------------------------------
final _advapi32 = DynamicLibrary.open('advapi32.dll');

int GetCurrentHwProfile(
  Pointer<HW_PROFILE_INFO> lpHwProfileInfo,
) =>
    _GetCurrentHwProfile(
      lpHwProfileInfo,
    );

late final _GetCurrentHwProfile = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<HW_PROFILE_INFO> lpHwProfileInfo,
),
    int Function(
  Pointer<HW_PROFILE_INFO> lpHwProfileInfo,
)>('GetCurrentHwProfileW');

int GetUserName(
  Pointer<Utf16> lpBuffer,
  Pointer<Uint32> pcbBuffer,
) =>
    _GetUserName(
      lpBuffer,
      pcbBuffer,
    );

late final _GetUserName = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpBuffer,
  Pointer<Uint32> pcbBuffer,
),
    int Function(
  Pointer<Utf16> lpBuffer,
  Pointer<Uint32> pcbBuffer,
)>('GetUserNameW');

int IsTokenUntrusted(
  int TokenHandle,
) =>
    _IsTokenUntrusted(
      TokenHandle,
    );

late final _IsTokenUntrusted = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr TokenHandle,
),
    int Function(
  int TokenHandle,
)>('IsTokenUntrusted');

// -----------------------------------------------------------------------
// api-ms-win-core-backgroundtask-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_backgroundtask_l1_1_0 =
    DynamicLibrary.open('api-ms-win-core-backgroundtask-l1-1-0.dll');

int RaiseCustomSystemEventTrigger(
  Pointer<CUSTOM_SYSTEM_EVENT_TRIGGER_CONFIG> CustomSystemEventTriggerConfig,
) =>
    _RaiseCustomSystemEventTrigger(
      CustomSystemEventTriggerConfig,
    );

late final _RaiseCustomSystemEventTrigger =
    _api_ms_win_core_backgroundtask_l1_1_0.lookupFunction<
        Uint32 Function(
  Pointer<CUSTOM_SYSTEM_EVENT_TRIGGER_CONFIG> CustomSystemEventTriggerConfig,
),
        int Function(
  Pointer<CUSTOM_SYSTEM_EVENT_TRIGGER_CONFIG> CustomSystemEventTriggerConfig,
)>('RaiseCustomSystemEventTrigger');

// -----------------------------------------------------------------------
// api-ms-win-core-featurestaging-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_featurestaging_l1_1_0 =
    DynamicLibrary.open('api-ms-win-core-featurestaging-l1-1-0.dll');

int GetFeatureEnabledState(
  int featureId,
  int changeTime,
) =>
    _GetFeatureEnabledState(
      featureId,
      changeTime,
    );

late final _GetFeatureEnabledState =
    _api_ms_win_core_featurestaging_l1_1_0.lookupFunction<
        Int32 Function(
  Uint32 featureId,
  Int32 changeTime,
),
        int Function(
  int featureId,
  int changeTime,
)>('GetFeatureEnabledState');

void RecordFeatureError(
  int featureId,
  Pointer<FEATURE_ERROR> error,
) =>
    _RecordFeatureError(
      featureId,
      error,
    );

late final _RecordFeatureError =
    _api_ms_win_core_featurestaging_l1_1_0.lookupFunction<
        Void Function(
  Uint32 featureId,
  Pointer<FEATURE_ERROR> error,
),
        void Function(
  int featureId,
  Pointer<FEATURE_ERROR> error,
)>('RecordFeatureError');

void RecordFeatureUsage(
  int featureId,
  int kind,
  int addend,
  Pointer<Utf8> originName,
) =>
    _RecordFeatureUsage(
      featureId,
      kind,
      addend,
      originName,
    );

late final _RecordFeatureUsage =
    _api_ms_win_core_featurestaging_l1_1_0.lookupFunction<
        Void Function(
  Uint32 featureId,
  Uint32 kind,
  Uint32 addend,
  Pointer<Utf8> originName,
),
        void Function(
  int featureId,
  int kind,
  int addend,
  Pointer<Utf8> originName,
)>('RecordFeatureUsage');

void SubscribeFeatureStateChangeNotification(
  Pointer<IntPtr> subscription,
  Pointer<NativeFunction<PFEATURE_STATE_CHANGE_CALLBACK>> callback,
  Pointer context,
) =>
    _SubscribeFeatureStateChangeNotification(
      subscription,
      callback,
      context,
    );

late final _SubscribeFeatureStateChangeNotification =
    _api_ms_win_core_featurestaging_l1_1_0.lookupFunction<
        Void Function(
  Pointer<IntPtr> subscription,
  Pointer<NativeFunction<PFEATURE_STATE_CHANGE_CALLBACK>> callback,
  Pointer context,
),
        void Function(
  Pointer<IntPtr> subscription,
  Pointer<NativeFunction<PFEATURE_STATE_CHANGE_CALLBACK>> callback,
  Pointer context,
)>('SubscribeFeatureStateChangeNotification');

void UnsubscribeFeatureStateChangeNotification(
  int subscription,
) =>
    _UnsubscribeFeatureStateChangeNotification(
      subscription,
    );

late final _UnsubscribeFeatureStateChangeNotification =
    _api_ms_win_core_featurestaging_l1_1_0.lookupFunction<
        Void Function(
  IntPtr subscription,
),
        void Function(
  int subscription,
)>('UnsubscribeFeatureStateChangeNotification');

// -----------------------------------------------------------------------
// api-ms-win-core-featurestaging-l1-1-1.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_featurestaging_l1_1_1 =
    DynamicLibrary.open('api-ms-win-core-featurestaging-l1-1-1.dll');

int GetFeatureVariant(
  int featureId,
  int changeTime,
  Pointer<Uint32> payloadId,
  Pointer<Int32> hasNotification,
) =>
    _GetFeatureVariant(
      featureId,
      changeTime,
      payloadId,
      hasNotification,
    );

late final _GetFeatureVariant =
    _api_ms_win_core_featurestaging_l1_1_1.lookupFunction<
        Uint32 Function(
  Uint32 featureId,
  Int32 changeTime,
  Pointer<Uint32> payloadId,
  Pointer<Int32> hasNotification,
),
        int Function(
  int featureId,
  int changeTime,
  Pointer<Uint32> payloadId,
  Pointer<Int32> hasNotification,
)>('GetFeatureVariant');

// -----------------------------------------------------------------------
// dciman32.dll
// -----------------------------------------------------------------------
final _dciman32 = DynamicLibrary.open('dciman32.dll');

int DCIBeginAccess(
  Pointer<DCISURFACEINFO> pdci,
  int x,
  int y,
  int dx,
  int dy,
) =>
    _DCIBeginAccess(
      pdci,
      x,
      y,
      dx,
      dy,
    );

late final _DCIBeginAccess = _dciman32.lookupFunction<
    Int32 Function(
  Pointer<DCISURFACEINFO> pdci,
  Int32 x,
  Int32 y,
  Int32 dx,
  Int32 dy,
),
    int Function(
  Pointer<DCISURFACEINFO> pdci,
  int x,
  int y,
  int dx,
  int dy,
)>('DCIBeginAccess');

void DCICloseProvider(
  int hdc,
) =>
    _DCICloseProvider(
      hdc,
    );

late final _DCICloseProvider = _dciman32.lookupFunction<
    Void Function(
  IntPtr hdc,
),
    void Function(
  int hdc,
)>('DCICloseProvider');

int DCICreateOffscreen(
  int hdc,
  int dwCompression,
  int dwRedMask,
  int dwGreenMask,
  int dwBlueMask,
  int dwWidth,
  int dwHeight,
  int dwDCICaps,
  int dwBitCount,
  Pointer<Pointer<DCIOFFSCREEN>> lplpSurface,
) =>
    _DCICreateOffscreen(
      hdc,
      dwCompression,
      dwRedMask,
      dwGreenMask,
      dwBlueMask,
      dwWidth,
      dwHeight,
      dwDCICaps,
      dwBitCount,
      lplpSurface,
    );

late final _DCICreateOffscreen = _dciman32.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Uint32 dwCompression,
  Uint32 dwRedMask,
  Uint32 dwGreenMask,
  Uint32 dwBlueMask,
  Uint32 dwWidth,
  Uint32 dwHeight,
  Uint32 dwDCICaps,
  Uint32 dwBitCount,
  Pointer<Pointer<DCIOFFSCREEN>> lplpSurface,
),
    int Function(
  int hdc,
  int dwCompression,
  int dwRedMask,
  int dwGreenMask,
  int dwBlueMask,
  int dwWidth,
  int dwHeight,
  int dwDCICaps,
  int dwBitCount,
  Pointer<Pointer<DCIOFFSCREEN>> lplpSurface,
)>('DCICreateOffscreen');

int DCICreateOverlay(
  int hdc,
  Pointer lpOffscreenSurf,
  Pointer<Pointer<DCIOVERLAY>> lplpSurface,
) =>
    _DCICreateOverlay(
      hdc,
      lpOffscreenSurf,
      lplpSurface,
    );

late final _DCICreateOverlay = _dciman32.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer lpOffscreenSurf,
  Pointer<Pointer<DCIOVERLAY>> lplpSurface,
),
    int Function(
  int hdc,
  Pointer lpOffscreenSurf,
  Pointer<Pointer<DCIOVERLAY>> lplpSurface,
)>('DCICreateOverlay');

int DCICreatePrimary(
  int hdc,
  Pointer<Pointer<DCISURFACEINFO>> lplpSurface,
) =>
    _DCICreatePrimary(
      hdc,
      lplpSurface,
    );

late final _DCICreatePrimary = _dciman32.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<Pointer<DCISURFACEINFO>> lplpSurface,
),
    int Function(
  int hdc,
  Pointer<Pointer<DCISURFACEINFO>> lplpSurface,
)>('DCICreatePrimary');

void DCIDestroy(
  Pointer<DCISURFACEINFO> pdci,
) =>
    _DCIDestroy(
      pdci,
    );

late final _DCIDestroy = _dciman32.lookupFunction<
    Void Function(
  Pointer<DCISURFACEINFO> pdci,
),
    void Function(
  Pointer<DCISURFACEINFO> pdci,
)>('DCIDestroy');

int DCIDraw(
  Pointer<DCIOFFSCREEN> pdci,
) =>
    _DCIDraw(
      pdci,
    );

late final _DCIDraw = _dciman32.lookupFunction<
    Int32 Function(
  Pointer<DCIOFFSCREEN> pdci,
),
    int Function(
  Pointer<DCIOFFSCREEN> pdci,
)>('DCIDraw');

void DCIEndAccess(
  Pointer<DCISURFACEINFO> pdci,
) =>
    _DCIEndAccess(
      pdci,
    );

late final _DCIEndAccess = _dciman32.lookupFunction<
    Void Function(
  Pointer<DCISURFACEINFO> pdci,
),
    void Function(
  Pointer<DCISURFACEINFO> pdci,
)>('DCIEndAccess');

int DCIEnum(
  int hdc,
  Pointer<RECT> lprDst,
  Pointer<RECT> lprSrc,
  Pointer lpFnCallback,
  Pointer lpContext,
) =>
    _DCIEnum(
      hdc,
      lprDst,
      lprSrc,
      lpFnCallback,
      lpContext,
    );

late final _DCIEnum = _dciman32.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<RECT> lprDst,
  Pointer<RECT> lprSrc,
  Pointer lpFnCallback,
  Pointer lpContext,
),
    int Function(
  int hdc,
  Pointer<RECT> lprDst,
  Pointer<RECT> lprSrc,
  Pointer lpFnCallback,
  Pointer lpContext,
)>('DCIEnum');

int DCIOpenProvider() => _DCIOpenProvider();

late final _DCIOpenProvider = _dciman32
    .lookupFunction<IntPtr Function(), int Function()>('DCIOpenProvider');

int DCISetClipList(
  Pointer<DCIOFFSCREEN> pdci,
  Pointer<RGNDATA> prd,
) =>
    _DCISetClipList(
      pdci,
      prd,
    );

late final _DCISetClipList = _dciman32.lookupFunction<
    Int32 Function(
  Pointer<DCIOFFSCREEN> pdci,
  Pointer<RGNDATA> prd,
),
    int Function(
  Pointer<DCIOFFSCREEN> pdci,
  Pointer<RGNDATA> prd,
)>('DCISetClipList');

int DCISetDestination(
  Pointer<DCIOFFSCREEN> pdci,
  Pointer<RECT> dst,
  Pointer<RECT> src,
) =>
    _DCISetDestination(
      pdci,
      dst,
      src,
    );

late final _DCISetDestination = _dciman32.lookupFunction<
    Int32 Function(
  Pointer<DCIOFFSCREEN> pdci,
  Pointer<RECT> dst,
  Pointer<RECT> src,
),
    int Function(
  Pointer<DCIOFFSCREEN> pdci,
  Pointer<RECT> dst,
  Pointer<RECT> src,
)>('DCISetDestination');

int DCISetSrcDestClip(
  Pointer<DCIOFFSCREEN> pdci,
  Pointer<RECT> srcrc,
  Pointer<RECT> destrc,
  Pointer<RGNDATA> prd,
) =>
    _DCISetSrcDestClip(
      pdci,
      srcrc,
      destrc,
      prd,
    );

late final _DCISetSrcDestClip = _dciman32.lookupFunction<
    Int32 Function(
  Pointer<DCIOFFSCREEN> pdci,
  Pointer<RECT> srcrc,
  Pointer<RECT> destrc,
  Pointer<RGNDATA> prd,
),
    int Function(
  Pointer<DCIOFFSCREEN> pdci,
  Pointer<RECT> srcrc,
  Pointer<RECT> destrc,
  Pointer<RGNDATA> prd,
)>('DCISetSrcDestClip');

int GetDCRegionData(
  int hdc,
  int size,
  Pointer<RGNDATA> prd,
) =>
    _GetDCRegionData(
      hdc,
      size,
      prd,
    );

late final _GetDCRegionData = _dciman32.lookupFunction<
    Uint32 Function(
  IntPtr hdc,
  Uint32 size,
  Pointer<RGNDATA> prd,
),
    int Function(
  int hdc,
  int size,
  Pointer<RGNDATA> prd,
)>('GetDCRegionData');

int GetWindowRegionData(
  int hwnd,
  int size,
  Pointer<RGNDATA> prd,
) =>
    _GetWindowRegionData(
      hwnd,
      size,
      prd,
    );

late final _GetWindowRegionData = _dciman32.lookupFunction<
    Uint32 Function(
  IntPtr hwnd,
  Uint32 size,
  Pointer<RGNDATA> prd,
),
    int Function(
  int hwnd,
  int size,
  Pointer<RGNDATA> prd,
)>('GetWindowRegionData');

void WinWatchClose(
  int hWW,
) =>
    _WinWatchClose(
      hWW,
    );

late final _WinWatchClose = _dciman32.lookupFunction<
    Void Function(
  IntPtr hWW,
),
    void Function(
  int hWW,
)>('WinWatchClose');

int WinWatchDidStatusChange(
  int hWW,
) =>
    _WinWatchDidStatusChange(
      hWW,
    );

late final _WinWatchDidStatusChange = _dciman32.lookupFunction<
    Int32 Function(
  IntPtr hWW,
),
    int Function(
  int hWW,
)>('WinWatchDidStatusChange');

int WinWatchGetClipList(
  int hWW,
  Pointer<RECT> prc,
  int size,
  Pointer<RGNDATA> prd,
) =>
    _WinWatchGetClipList(
      hWW,
      prc,
      size,
      prd,
    );

late final _WinWatchGetClipList = _dciman32.lookupFunction<
    Uint32 Function(
  IntPtr hWW,
  Pointer<RECT> prc,
  Uint32 size,
  Pointer<RGNDATA> prd,
),
    int Function(
  int hWW,
  Pointer<RECT> prc,
  int size,
  Pointer<RGNDATA> prd,
)>('WinWatchGetClipList');

int WinWatchNotify(
  int hWW,
  Pointer<NativeFunction<WINWATCHNOTIFYPROC>> NotifyCallback,
  int NotifyParam,
) =>
    _WinWatchNotify(
      hWW,
      NotifyCallback,
      NotifyParam,
    );

late final _WinWatchNotify = _dciman32.lookupFunction<
    Int32 Function(
  IntPtr hWW,
  Pointer<NativeFunction<WINWATCHNOTIFYPROC>> NotifyCallback,
  IntPtr NotifyParam,
),
    int Function(
  int hWW,
  Pointer<NativeFunction<WINWATCHNOTIFYPROC>> NotifyCallback,
  int NotifyParam,
)>('WinWatchNotify');

int WinWatchOpen(
  int hwnd,
) =>
    _WinWatchOpen(
      hwnd,
    );

late final _WinWatchOpen = _dciman32.lookupFunction<
    IntPtr Function(
  IntPtr hwnd,
),
    int Function(
  int hwnd,
)>('WinWatchOpen');

// -----------------------------------------------------------------------
// api-ms-win-dx-d3dkmt-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_dx_d3dkmt_l1_1_0 =
    DynamicLibrary.open('api-ms-win-dx-d3dkmt-l1-1-0.dll');

int GdiEntry13() => _GdiEntry13();

late final _GdiEntry13 = _api_ms_win_dx_d3dkmt_l1_1_0
    .lookupFunction<Uint32 Function(), int Function()>('GdiEntry13');

// -----------------------------------------------------------------------
// advpack.dll
// -----------------------------------------------------------------------
final _advpack = DynamicLibrary.open('advpack.dll');

int AddDelBackupEntry(
  Pointer<Utf16> lpcszFileList,
  Pointer<Utf16> lpcszBackupDir,
  Pointer<Utf16> lpcszBaseName,
  int dwFlags,
) =>
    _AddDelBackupEntry(
      lpcszFileList,
      lpcszBackupDir,
      lpcszBaseName,
      dwFlags,
    );

late final _AddDelBackupEntry = _advpack.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpcszFileList,
  Pointer<Utf16> lpcszBackupDir,
  Pointer<Utf16> lpcszBaseName,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> lpcszFileList,
  Pointer<Utf16> lpcszBackupDir,
  Pointer<Utf16> lpcszBaseName,
  int dwFlags,
)>('AddDelBackupEntryW');

int AdvInstallFile(
  int hwnd,
  Pointer<Utf16> lpszSourceDir,
  Pointer<Utf16> lpszSourceFile,
  Pointer<Utf16> lpszDestDir,
  Pointer<Utf16> lpszDestFile,
  int dwFlags,
  int dwReserved,
) =>
    _AdvInstallFile(
      hwnd,
      lpszSourceDir,
      lpszSourceFile,
      lpszDestDir,
      lpszDestFile,
      dwFlags,
      dwReserved,
    );

late final _AdvInstallFile = _advpack.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<Utf16> lpszSourceDir,
  Pointer<Utf16> lpszSourceFile,
  Pointer<Utf16> lpszDestDir,
  Pointer<Utf16> lpszDestFile,
  Uint32 dwFlags,
  Uint32 dwReserved,
),
    int Function(
  int hwnd,
  Pointer<Utf16> lpszSourceDir,
  Pointer<Utf16> lpszSourceFile,
  Pointer<Utf16> lpszDestDir,
  Pointer<Utf16> lpszDestFile,
  int dwFlags,
  int dwReserved,
)>('AdvInstallFileW');

int CloseINFEngine(
  Pointer hInf,
) =>
    _CloseINFEngine(
      hInf,
    );

late final _CloseINFEngine = _advpack.lookupFunction<
    Int32 Function(
  Pointer hInf,
),
    int Function(
  Pointer hInf,
)>('CloseINFEngine');

int DelNodeRunDLL32(
  int hwnd,
  int hInstance,
  Pointer<Utf16> pszParms,
  int nShow,
) =>
    _DelNodeRunDLL32(
      hwnd,
      hInstance,
      pszParms,
      nShow,
    );

late final _DelNodeRunDLL32 = _advpack.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  IntPtr hInstance,
  Pointer<Utf16> pszParms,
  Int32 nShow,
),
    int Function(
  int hwnd,
  int hInstance,
  Pointer<Utf16> pszParms,
  int nShow,
)>('DelNodeRunDLL32W');

int DelNode(
  Pointer<Utf16> pszFileOrDirName,
  int dwFlags,
) =>
    _DelNode(
      pszFileOrDirName,
      dwFlags,
    );

late final _DelNode = _advpack.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszFileOrDirName,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszFileOrDirName,
  int dwFlags,
)>('DelNodeW');

int ExecuteCab(
  int hwnd,
  Pointer<CABINFO> pCab,
  Pointer pReserved,
) =>
    _ExecuteCab(
      hwnd,
      pCab,
      pReserved,
    );

late final _ExecuteCab = _advpack.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<CABINFO> pCab,
  Pointer pReserved,
),
    int Function(
  int hwnd,
  Pointer<CABINFO> pCab,
  Pointer pReserved,
)>('ExecuteCabW');

int ExtractFiles(
  Pointer<Utf16> pszCabName,
  Pointer<Utf16> pszExpandDir,
  int dwFlags,
  Pointer<Utf16> pszFileList,
  Pointer lpReserved,
  int dwReserved,
) =>
    _ExtractFiles(
      pszCabName,
      pszExpandDir,
      dwFlags,
      pszFileList,
      lpReserved,
      dwReserved,
    );

late final _ExtractFiles = _advpack.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszCabName,
  Pointer<Utf16> pszExpandDir,
  Uint32 dwFlags,
  Pointer<Utf16> pszFileList,
  Pointer lpReserved,
  Uint32 dwReserved,
),
    int Function(
  Pointer<Utf16> pszCabName,
  Pointer<Utf16> pszExpandDir,
  int dwFlags,
  Pointer<Utf16> pszFileList,
  Pointer lpReserved,
  int dwReserved,
)>('ExtractFilesW');

int FileSaveMarkNotExist(
  Pointer<Utf16> lpFileList,
  Pointer<Utf16> lpDir,
  Pointer<Utf16> lpBaseName,
) =>
    _FileSaveMarkNotExist(
      lpFileList,
      lpDir,
      lpBaseName,
    );

late final _FileSaveMarkNotExist = _advpack.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFileList,
  Pointer<Utf16> lpDir,
  Pointer<Utf16> lpBaseName,
),
    int Function(
  Pointer<Utf16> lpFileList,
  Pointer<Utf16> lpDir,
  Pointer<Utf16> lpBaseName,
)>('FileSaveMarkNotExistW');

int FileSaveRestoreOnINF(
  int hWnd,
  Pointer<Utf16> pszTitle,
  Pointer<Utf16> pszINF,
  Pointer<Utf16> pszSection,
  Pointer<Utf16> pszBackupDir,
  Pointer<Utf16> pszBaseBackupFile,
  int dwFlags,
) =>
    _FileSaveRestoreOnINF(
      hWnd,
      pszTitle,
      pszINF,
      pszSection,
      pszBackupDir,
      pszBaseBackupFile,
      dwFlags,
    );

late final _FileSaveRestoreOnINF = _advpack.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<Utf16> pszTitle,
  Pointer<Utf16> pszINF,
  Pointer<Utf16> pszSection,
  Pointer<Utf16> pszBackupDir,
  Pointer<Utf16> pszBaseBackupFile,
  Uint32 dwFlags,
),
    int Function(
  int hWnd,
  Pointer<Utf16> pszTitle,
  Pointer<Utf16> pszINF,
  Pointer<Utf16> pszSection,
  Pointer<Utf16> pszBackupDir,
  Pointer<Utf16> pszBaseBackupFile,
  int dwFlags,
)>('FileSaveRestoreOnINFW');

int FileSaveRestore(
  int hDlg,
  Pointer<Utf16> lpFileList,
  Pointer<Utf16> lpDir,
  Pointer<Utf16> lpBaseName,
  int dwFlags,
) =>
    _FileSaveRestore(
      hDlg,
      lpFileList,
      lpDir,
      lpBaseName,
      dwFlags,
    );

late final _FileSaveRestore = _advpack.lookupFunction<
    Int32 Function(
  IntPtr hDlg,
  Pointer<Utf16> lpFileList,
  Pointer<Utf16> lpDir,
  Pointer<Utf16> lpBaseName,
  Uint32 dwFlags,
),
    int Function(
  int hDlg,
  Pointer<Utf16> lpFileList,
  Pointer<Utf16> lpDir,
  Pointer<Utf16> lpBaseName,
  int dwFlags,
)>('FileSaveRestoreW');

int GetVersionFromFileEx(
  Pointer<Utf16> lpszFilename,
  Pointer<Uint32> pdwMSVer,
  Pointer<Uint32> pdwLSVer,
  int bVersion,
) =>
    _GetVersionFromFileEx(
      lpszFilename,
      pdwMSVer,
      pdwLSVer,
      bVersion,
    );

late final _GetVersionFromFileEx = _advpack.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszFilename,
  Pointer<Uint32> pdwMSVer,
  Pointer<Uint32> pdwLSVer,
  Int32 bVersion,
),
    int Function(
  Pointer<Utf16> lpszFilename,
  Pointer<Uint32> pdwMSVer,
  Pointer<Uint32> pdwLSVer,
  int bVersion,
)>('GetVersionFromFileExW');

int GetVersionFromFile(
  Pointer<Utf16> lpszFilename,
  Pointer<Uint32> pdwMSVer,
  Pointer<Uint32> pdwLSVer,
  int bVersion,
) =>
    _GetVersionFromFile(
      lpszFilename,
      pdwMSVer,
      pdwLSVer,
      bVersion,
    );

late final _GetVersionFromFile = _advpack.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszFilename,
  Pointer<Uint32> pdwMSVer,
  Pointer<Uint32> pdwLSVer,
  Int32 bVersion,
),
    int Function(
  Pointer<Utf16> lpszFilename,
  Pointer<Uint32> pdwMSVer,
  Pointer<Uint32> pdwLSVer,
  int bVersion,
)>('GetVersionFromFileW');

int IsNTAdmin(
  int dwReserved,
  Pointer<Uint32> lpdwReserved,
) =>
    _IsNTAdmin(
      dwReserved,
      lpdwReserved,
    );

late final _IsNTAdmin = _advpack.lookupFunction<
    Int32 Function(
  Uint32 dwReserved,
  Pointer<Uint32> lpdwReserved,
),
    int Function(
  int dwReserved,
  Pointer<Uint32> lpdwReserved,
)>('IsNTAdmin');

int LaunchINFSectionEx(
  int hwnd,
  int hInstance,
  Pointer<Utf16> pszParms,
  int nShow,
) =>
    _LaunchINFSectionEx(
      hwnd,
      hInstance,
      pszParms,
      nShow,
    );

late final _LaunchINFSectionEx = _advpack.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  IntPtr hInstance,
  Pointer<Utf16> pszParms,
  Int32 nShow,
),
    int Function(
  int hwnd,
  int hInstance,
  Pointer<Utf16> pszParms,
  int nShow,
)>('LaunchINFSectionExW');

int LaunchINFSection(
  int hwndOwner,
  int hInstance,
  Pointer<Utf16> pszParams,
  int nShow,
) =>
    _LaunchINFSection(
      hwndOwner,
      hInstance,
      pszParams,
      nShow,
    );

late final _LaunchINFSection = _advpack.lookupFunction<
    Int32 Function(
  IntPtr hwndOwner,
  IntPtr hInstance,
  Pointer<Utf16> pszParams,
  Int32 nShow,
),
    int Function(
  int hwndOwner,
  int hInstance,
  Pointer<Utf16> pszParams,
  int nShow,
)>('LaunchINFSectionW');

int NeedReboot(
  int dwRebootCheck,
) =>
    _NeedReboot(
      dwRebootCheck,
    );

late final _NeedReboot = _advpack.lookupFunction<
    Int32 Function(
  Uint32 dwRebootCheck,
),
    int Function(
  int dwRebootCheck,
)>('NeedReboot');

int NeedRebootInit() => _NeedRebootInit();

late final _NeedRebootInit = _advpack
    .lookupFunction<Uint32 Function(), int Function()>('NeedRebootInit');

int OpenINFEngine(
  Pointer<Utf16> pszInfFilename,
  Pointer<Utf16> pszInstallSection,
  int dwFlags,
  Pointer<Pointer> phInf,
  Pointer pvReserved,
) =>
    _OpenINFEngine(
      pszInfFilename,
      pszInstallSection,
      dwFlags,
      phInf,
      pvReserved,
    );

late final _OpenINFEngine = _advpack.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszInfFilename,
  Pointer<Utf16> pszInstallSection,
  Uint32 dwFlags,
  Pointer<Pointer> phInf,
  Pointer pvReserved,
),
    int Function(
  Pointer<Utf16> pszInfFilename,
  Pointer<Utf16> pszInstallSection,
  int dwFlags,
  Pointer<Pointer> phInf,
  Pointer pvReserved,
)>('OpenINFEngineW');

int RebootCheckOnInstall(
  int hwnd,
  Pointer<Utf16> pszINF,
  Pointer<Utf16> pszSec,
  int dwReserved,
) =>
    _RebootCheckOnInstall(
      hwnd,
      pszINF,
      pszSec,
      dwReserved,
    );

late final _RebootCheckOnInstall = _advpack.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<Utf16> pszINF,
  Pointer<Utf16> pszSec,
  Uint32 dwReserved,
),
    int Function(
  int hwnd,
  Pointer<Utf16> pszINF,
  Pointer<Utf16> pszSec,
  int dwReserved,
)>('RebootCheckOnInstallW');

int RegInstall(
  int hmod,
  Pointer<Utf16> pszSection,
  Pointer<STRTABLE> pstTable,
) =>
    _RegInstall(
      hmod,
      pszSection,
      pstTable,
    );

late final _RegInstall = _advpack.lookupFunction<
    Int32 Function(
  IntPtr hmod,
  Pointer<Utf16> pszSection,
  Pointer<STRTABLE> pstTable,
),
    int Function(
  int hmod,
  Pointer<Utf16> pszSection,
  Pointer<STRTABLE> pstTable,
)>('RegInstallW');

int RegRestoreAll(
  int hWnd,
  Pointer<Utf16> pszTitleString,
  int hkBckupKey,
) =>
    _RegRestoreAll(
      hWnd,
      pszTitleString,
      hkBckupKey,
    );

late final _RegRestoreAll = _advpack.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<Utf16> pszTitleString,
  IntPtr hkBckupKey,
),
    int Function(
  int hWnd,
  Pointer<Utf16> pszTitleString,
  int hkBckupKey,
)>('RegRestoreAllW');

int RegSaveRestoreOnINF(
  int hWnd,
  Pointer<Utf16> pszTitle,
  Pointer<Utf16> pszINF,
  Pointer<Utf16> pszSection,
  int hHKLMBackKey,
  int hHKCUBackKey,
  int dwFlags,
) =>
    _RegSaveRestoreOnINF(
      hWnd,
      pszTitle,
      pszINF,
      pszSection,
      hHKLMBackKey,
      hHKCUBackKey,
      dwFlags,
    );

late final _RegSaveRestoreOnINF = _advpack.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<Utf16> pszTitle,
  Pointer<Utf16> pszINF,
  Pointer<Utf16> pszSection,
  IntPtr hHKLMBackKey,
  IntPtr hHKCUBackKey,
  Uint32 dwFlags,
),
    int Function(
  int hWnd,
  Pointer<Utf16> pszTitle,
  Pointer<Utf16> pszINF,
  Pointer<Utf16> pszSection,
  int hHKLMBackKey,
  int hHKCUBackKey,
  int dwFlags,
)>('RegSaveRestoreOnINFW');

int RegSaveRestore(
  int hWnd,
  Pointer<Utf16> pszTitleString,
  int hkBckupKey,
  Pointer<Utf16> pcszRootKey,
  Pointer<Utf16> pcszSubKey,
  Pointer<Utf16> pcszValueName,
  int dwFlags,
) =>
    _RegSaveRestore(
      hWnd,
      pszTitleString,
      hkBckupKey,
      pcszRootKey,
      pcszSubKey,
      pcszValueName,
      dwFlags,
    );

late final _RegSaveRestore = _advpack.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<Utf16> pszTitleString,
  IntPtr hkBckupKey,
  Pointer<Utf16> pcszRootKey,
  Pointer<Utf16> pcszSubKey,
  Pointer<Utf16> pcszValueName,
  Uint32 dwFlags,
),
    int Function(
  int hWnd,
  Pointer<Utf16> pszTitleString,
  int hkBckupKey,
  Pointer<Utf16> pcszRootKey,
  Pointer<Utf16> pcszSubKey,
  Pointer<Utf16> pcszValueName,
  int dwFlags,
)>('RegSaveRestoreW');

int RunSetupCommand(
  int hWnd,
  Pointer<Utf16> szCmdName,
  Pointer<Utf16> szInfSection,
  Pointer<Utf16> szDir,
  Pointer<Utf16> lpszTitle,
  Pointer<IntPtr> phEXE,
  int dwFlags,
  Pointer pvReserved,
) =>
    _RunSetupCommand(
      hWnd,
      szCmdName,
      szInfSection,
      szDir,
      lpszTitle,
      phEXE,
      dwFlags,
      pvReserved,
    );

late final _RunSetupCommand = _advpack.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<Utf16> szCmdName,
  Pointer<Utf16> szInfSection,
  Pointer<Utf16> szDir,
  Pointer<Utf16> lpszTitle,
  Pointer<IntPtr> phEXE,
  Uint32 dwFlags,
  Pointer pvReserved,
),
    int Function(
  int hWnd,
  Pointer<Utf16> szCmdName,
  Pointer<Utf16> szInfSection,
  Pointer<Utf16> szDir,
  Pointer<Utf16> lpszTitle,
  Pointer<IntPtr> phEXE,
  int dwFlags,
  Pointer pvReserved,
)>('RunSetupCommandW');

int SetPerUserSecValues(
  Pointer<PERUSERSECTION> pPerUser,
) =>
    _SetPerUserSecValues(
      pPerUser,
    );

late final _SetPerUserSecValues = _advpack.lookupFunction<
    Int32 Function(
  Pointer<PERUSERSECTION> pPerUser,
),
    int Function(
  Pointer<PERUSERSECTION> pPerUser,
)>('SetPerUserSecValuesW');

int TranslateInfStringEx(
  Pointer hInf,
  Pointer<Utf16> pszInfFilename,
  Pointer<Utf16> pszTranslateSection,
  Pointer<Utf16> pszTranslateKey,
  Pointer<Utf16> pszBuffer,
  int dwBufferSize,
  Pointer<Uint32> pdwRequiredSize,
  Pointer pvReserved,
) =>
    _TranslateInfStringEx(
      hInf,
      pszInfFilename,
      pszTranslateSection,
      pszTranslateKey,
      pszBuffer,
      dwBufferSize,
      pdwRequiredSize,
      pvReserved,
    );

late final _TranslateInfStringEx = _advpack.lookupFunction<
    Int32 Function(
  Pointer hInf,
  Pointer<Utf16> pszInfFilename,
  Pointer<Utf16> pszTranslateSection,
  Pointer<Utf16> pszTranslateKey,
  Pointer<Utf16> pszBuffer,
  Uint32 dwBufferSize,
  Pointer<Uint32> pdwRequiredSize,
  Pointer pvReserved,
),
    int Function(
  Pointer hInf,
  Pointer<Utf16> pszInfFilename,
  Pointer<Utf16> pszTranslateSection,
  Pointer<Utf16> pszTranslateKey,
  Pointer<Utf16> pszBuffer,
  int dwBufferSize,
  Pointer<Uint32> pdwRequiredSize,
  Pointer pvReserved,
)>('TranslateInfStringExW');

int TranslateInfString(
  Pointer<Utf16> pszInfFilename,
  Pointer<Utf16> pszInstallSection,
  Pointer<Utf16> pszTranslateSection,
  Pointer<Utf16> pszTranslateKey,
  Pointer<Utf16> pszBuffer,
  int cchBuffer,
  Pointer<Uint32> pdwRequiredSize,
  Pointer pvReserved,
) =>
    _TranslateInfString(
      pszInfFilename,
      pszInstallSection,
      pszTranslateSection,
      pszTranslateKey,
      pszBuffer,
      cchBuffer,
      pdwRequiredSize,
      pvReserved,
    );

late final _TranslateInfString = _advpack.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszInfFilename,
  Pointer<Utf16> pszInstallSection,
  Pointer<Utf16> pszTranslateSection,
  Pointer<Utf16> pszTranslateKey,
  Pointer<Utf16> pszBuffer,
  Uint32 cchBuffer,
  Pointer<Uint32> pdwRequiredSize,
  Pointer pvReserved,
),
    int Function(
  Pointer<Utf16> pszInfFilename,
  Pointer<Utf16> pszInstallSection,
  Pointer<Utf16> pszTranslateSection,
  Pointer<Utf16> pszTranslateKey,
  Pointer<Utf16> pszBuffer,
  int cchBuffer,
  Pointer<Uint32> pdwRequiredSize,
  Pointer pvReserved,
)>('TranslateInfStringW');

int UserInstStubWrapper(
  int hwnd,
  int hInstance,
  Pointer<Utf16> pszParms,
  int nShow,
) =>
    _UserInstStubWrapper(
      hwnd,
      hInstance,
      pszParms,
      nShow,
    );

late final _UserInstStubWrapper = _advpack.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  IntPtr hInstance,
  Pointer<Utf16> pszParms,
  Int32 nShow,
),
    int Function(
  int hwnd,
  int hInstance,
  Pointer<Utf16> pszParms,
  int nShow,
)>('UserInstStubWrapperW');

int UserUnInstStubWrapper(
  int hwnd,
  int hInstance,
  Pointer<Utf16> pszParms,
  int nShow,
) =>
    _UserUnInstStubWrapper(
      hwnd,
      hInstance,
      pszParms,
      nShow,
    );

late final _UserUnInstStubWrapper = _advpack.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  IntPtr hInstance,
  Pointer<Utf16> pszParms,
  Int32 nShow,
),
    int Function(
  int hwnd,
  int hInstance,
  Pointer<Utf16> pszParms,
  int nShow,
)>('UserUnInstStubWrapperW');

// -----------------------------------------------------------------------
// user32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('user32.dll');

int IMPGetIME(
  int param0,
  Pointer<IMEPRO> param1,
) =>
    _IMPGetIME(
      param0,
      param1,
    );

late final _IMPGetIME = _user32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Pointer<IMEPRO> param1,
),
    int Function(
  int param0,
  Pointer<IMEPRO> param1,
)>('IMPGetIMEW');

int IMPQueryIME(
  Pointer<IMEPRO> param0,
) =>
    _IMPQueryIME(
      param0,
    );

late final _IMPQueryIME = _user32.lookupFunction<
    Int32 Function(
  Pointer<IMEPRO> param0,
),
    int Function(
  Pointer<IMEPRO> param0,
)>('IMPQueryIMEW');

int IMPSetIME(
  int param0,
  Pointer<IMEPRO> param1,
) =>
    _IMPSetIME(
      param0,
      param1,
    );

late final _IMPSetIME = _user32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Pointer<IMEPRO> param1,
),
    int Function(
  int param0,
  Pointer<IMEPRO> param1,
)>('IMPSetIMEW');

int SendIMEMessageEx(
  int param0,
  int param1,
) =>
    _SendIMEMessageEx(
      param0,
      param1,
    );

late final _SendIMEMessageEx = _user32.lookupFunction<
    IntPtr Function(
  IntPtr param0,
  IntPtr param1,
),
    int Function(
  int param0,
  int param1,
)>('SendIMEMessageExW');

int WINNLSEnableIME(
  int param0,
  int param1,
) =>
    _WINNLSEnableIME(
      param0,
      param1,
    );

late final _WINNLSEnableIME = _user32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Int32 param1,
),
    int Function(
  int param0,
  int param1,
)>('WINNLSEnableIME');

int WINNLSGetEnableStatus(
  int param0,
) =>
    _WINNLSGetEnableStatus(
      param0,
    );

late final _WINNLSGetEnableStatus = _user32.lookupFunction<
    Int32 Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('WINNLSGetEnableStatus');

int WINNLSGetIMEHotkey(
  int param0,
) =>
    _WINNLSGetIMEHotkey(
      param0,
    );

late final _WINNLSGetIMEHotkey = _user32.lookupFunction<
    Uint32 Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('WINNLSGetIMEHotkey');

// -----------------------------------------------------------------------
// apphelp.dll
// -----------------------------------------------------------------------
final _apphelp = DynamicLibrary.open('apphelp.dll');

int ApphelpCheckShellObject(
  Pointer<GUID> ObjectCLSID,
  int bShimIfNecessary,
  Pointer<Uint64> pullFlags,
) =>
    _ApphelpCheckShellObject(
      ObjectCLSID,
      bShimIfNecessary,
      pullFlags,
    );

late final _ApphelpCheckShellObject = _apphelp.lookupFunction<
    Int32 Function(
  Pointer<GUID> ObjectCLSID,
  Int32 bShimIfNecessary,
  Pointer<Uint64> pullFlags,
),
    int Function(
  Pointer<GUID> ObjectCLSID,
  int bShimIfNecessary,
  Pointer<Uint64> pullFlags,
)>('ApphelpCheckShellObject');

// -----------------------------------------------------------------------
// wldp.dll
// -----------------------------------------------------------------------
final _wldp = DynamicLibrary.open('wldp.dll');

int WldpGetLockdownPolicy(
  Pointer<WLDP_HOST_INFORMATION> hostInformation,
  Pointer<Uint32> lockdownState,
  int lockdownFlags,
) =>
    _WldpGetLockdownPolicy(
      hostInformation,
      lockdownState,
      lockdownFlags,
    );

late final _WldpGetLockdownPolicy = _wldp.lookupFunction<
    Int32 Function(
  Pointer<WLDP_HOST_INFORMATION> hostInformation,
  Pointer<Uint32> lockdownState,
  Uint32 lockdownFlags,
),
    int Function(
  Pointer<WLDP_HOST_INFORMATION> hostInformation,
  Pointer<Uint32> lockdownState,
  int lockdownFlags,
)>('WldpGetLockdownPolicy');

int WldpIsClassInApprovedList(
  Pointer<GUID> classID,
  Pointer<WLDP_HOST_INFORMATION> hostInformation,
  Pointer<Int32> isApproved,
  int optionalFlags,
) =>
    _WldpIsClassInApprovedList(
      classID,
      hostInformation,
      isApproved,
      optionalFlags,
    );

late final _WldpIsClassInApprovedList = _wldp.lookupFunction<
    Int32 Function(
  Pointer<GUID> classID,
  Pointer<WLDP_HOST_INFORMATION> hostInformation,
  Pointer<Int32> isApproved,
  Uint32 optionalFlags,
),
    int Function(
  Pointer<GUID> classID,
  Pointer<WLDP_HOST_INFORMATION> hostInformation,
  Pointer<Int32> isApproved,
  int optionalFlags,
)>('WldpIsClassInApprovedList');

int WldpIsDynamicCodePolicyEnabled(
  Pointer<Int32> isEnabled,
) =>
    _WldpIsDynamicCodePolicyEnabled(
      isEnabled,
    );

late final _WldpIsDynamicCodePolicyEnabled = _wldp.lookupFunction<
    Int32 Function(
  Pointer<Int32> isEnabled,
),
    int Function(
  Pointer<Int32> isEnabled,
)>('WldpIsDynamicCodePolicyEnabled');

int WldpQueryDeviceSecurityInformation(
  Pointer<WLDP_DEVICE_SECURITY_INFORMATION> information,
  int informationLength,
  Pointer<Uint32> returnLength,
) =>
    _WldpQueryDeviceSecurityInformation(
      information,
      informationLength,
      returnLength,
    );

late final _WldpQueryDeviceSecurityInformation = _wldp.lookupFunction<
    Int32 Function(
  Pointer<WLDP_DEVICE_SECURITY_INFORMATION> information,
  Uint32 informationLength,
  Pointer<Uint32> returnLength,
),
    int Function(
  Pointer<WLDP_DEVICE_SECURITY_INFORMATION> information,
  int informationLength,
  Pointer<Uint32> returnLength,
)>('WldpQueryDeviceSecurityInformation');

int WldpQueryDynamicCodeTrust(
  int fileHandle,
  Pointer baseImage,
  int imageSize,
) =>
    _WldpQueryDynamicCodeTrust(
      fileHandle,
      baseImage,
      imageSize,
    );

late final _WldpQueryDynamicCodeTrust = _wldp.lookupFunction<
    Int32 Function(
  IntPtr fileHandle,
  Pointer baseImage,
  Uint32 imageSize,
),
    int Function(
  int fileHandle,
  Pointer baseImage,
  int imageSize,
)>('WldpQueryDynamicCodeTrust');

int WldpSetDynamicCodeTrust(
  int fileHandle,
) =>
    _WldpSetDynamicCodeTrust(
      fileHandle,
    );

late final _WldpSetDynamicCodeTrust = _wldp.lookupFunction<
    Int32 Function(
  IntPtr fileHandle,
),
    int Function(
  int fileHandle,
)>('WldpSetDynamicCodeTrust');
