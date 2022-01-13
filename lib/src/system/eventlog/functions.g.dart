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
import '../../system/eventlog/structs.g.dart';
import '../../system/eventlog/callbacks.g.dart'; // -----------------------------------------------------------------------

// wevtapi.dll
// -----------------------------------------------------------------------
final _wevtapi = DynamicLibrary.open('wevtapi.dll');

int EvtArchiveExportedLog(
  int Session,
  Pointer<Utf16> LogFilePath,
  int Locale,
  int Flags,
) =>
    _EvtArchiveExportedLog(
      Session,
      LogFilePath,
      Locale,
      Flags,
    );

late final _EvtArchiveExportedLog = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr Session,
  Pointer<Utf16> LogFilePath,
  Uint32 Locale,
  Uint32 Flags,
),
    int Function(
  int Session,
  Pointer<Utf16> LogFilePath,
  int Locale,
  int Flags,
)>('EvtArchiveExportedLog');

int EvtCancel(
  int Object,
) =>
    _EvtCancel(
      Object,
    );

late final _EvtCancel = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr Object,
),
    int Function(
  int Object,
)>('EvtCancel');

int EvtClearLog(
  int Session,
  Pointer<Utf16> ChannelPath,
  Pointer<Utf16> TargetFilePath,
  int Flags,
) =>
    _EvtClearLog(
      Session,
      ChannelPath,
      TargetFilePath,
      Flags,
    );

late final _EvtClearLog = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr Session,
  Pointer<Utf16> ChannelPath,
  Pointer<Utf16> TargetFilePath,
  Uint32 Flags,
),
    int Function(
  int Session,
  Pointer<Utf16> ChannelPath,
  Pointer<Utf16> TargetFilePath,
  int Flags,
)>('EvtClearLog');

int EvtClose(
  int Object,
) =>
    _EvtClose(
      Object,
    );

late final _EvtClose = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr Object,
),
    int Function(
  int Object,
)>('EvtClose');

int EvtCreateBookmark(
  Pointer<Utf16> BookmarkXml,
) =>
    _EvtCreateBookmark(
      BookmarkXml,
    );

late final _EvtCreateBookmark = _wevtapi.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> BookmarkXml,
),
    int Function(
  Pointer<Utf16> BookmarkXml,
)>('EvtCreateBookmark');

int EvtCreateRenderContext(
  int ValuePathsCount,
  Pointer<Pointer<Utf16>> ValuePaths,
  int Flags,
) =>
    _EvtCreateRenderContext(
      ValuePathsCount,
      ValuePaths,
      Flags,
    );

late final _EvtCreateRenderContext = _wevtapi.lookupFunction<
    IntPtr Function(
  Uint32 ValuePathsCount,
  Pointer<Pointer<Utf16>> ValuePaths,
  Uint32 Flags,
),
    int Function(
  int ValuePathsCount,
  Pointer<Pointer<Utf16>> ValuePaths,
  int Flags,
)>('EvtCreateRenderContext');

int EvtExportLog(
  int Session,
  Pointer<Utf16> Path,
  Pointer<Utf16> Query,
  Pointer<Utf16> TargetFilePath,
  int Flags,
) =>
    _EvtExportLog(
      Session,
      Path,
      Query,
      TargetFilePath,
      Flags,
    );

late final _EvtExportLog = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr Session,
  Pointer<Utf16> Path,
  Pointer<Utf16> Query,
  Pointer<Utf16> TargetFilePath,
  Uint32 Flags,
),
    int Function(
  int Session,
  Pointer<Utf16> Path,
  Pointer<Utf16> Query,
  Pointer<Utf16> TargetFilePath,
  int Flags,
)>('EvtExportLog');

int EvtFormatMessage(
  int PublisherMetadata,
  int Event,
  int MessageId,
  int ValueCount,
  Pointer<EVT_VARIANT> Values,
  int Flags,
  int BufferSize,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> BufferUsed,
) =>
    _EvtFormatMessage(
      PublisherMetadata,
      Event,
      MessageId,
      ValueCount,
      Values,
      Flags,
      BufferSize,
      Buffer,
      BufferUsed,
    );

late final _EvtFormatMessage = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr PublisherMetadata,
  IntPtr Event,
  Uint32 MessageId,
  Uint32 ValueCount,
  Pointer<EVT_VARIANT> Values,
  Uint32 Flags,
  Uint32 BufferSize,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> BufferUsed,
),
    int Function(
  int PublisherMetadata,
  int Event,
  int MessageId,
  int ValueCount,
  Pointer<EVT_VARIANT> Values,
  int Flags,
  int BufferSize,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> BufferUsed,
)>('EvtFormatMessage');

int EvtGetChannelConfigProperty(
  int ChannelConfig,
  int PropertyId,
  int Flags,
  int PropertyValueBufferSize,
  Pointer<EVT_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
) =>
    _EvtGetChannelConfigProperty(
      ChannelConfig,
      PropertyId,
      Flags,
      PropertyValueBufferSize,
      PropertyValueBuffer,
      PropertyValueBufferUsed,
    );

late final _EvtGetChannelConfigProperty = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr ChannelConfig,
  Int32 PropertyId,
  Uint32 Flags,
  Uint32 PropertyValueBufferSize,
  Pointer<EVT_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
),
    int Function(
  int ChannelConfig,
  int PropertyId,
  int Flags,
  int PropertyValueBufferSize,
  Pointer<EVT_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
)>('EvtGetChannelConfigProperty');

int EvtGetEventInfo(
  int Event,
  int PropertyId,
  int PropertyValueBufferSize,
  Pointer<EVT_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
) =>
    _EvtGetEventInfo(
      Event,
      PropertyId,
      PropertyValueBufferSize,
      PropertyValueBuffer,
      PropertyValueBufferUsed,
    );

late final _EvtGetEventInfo = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr Event,
  Int32 PropertyId,
  Uint32 PropertyValueBufferSize,
  Pointer<EVT_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
),
    int Function(
  int Event,
  int PropertyId,
  int PropertyValueBufferSize,
  Pointer<EVT_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
)>('EvtGetEventInfo');

int EvtGetEventMetadataProperty(
  int EventMetadata,
  int PropertyId,
  int Flags,
  int EventMetadataPropertyBufferSize,
  Pointer<EVT_VARIANT> EventMetadataPropertyBuffer,
  Pointer<Uint32> EventMetadataPropertyBufferUsed,
) =>
    _EvtGetEventMetadataProperty(
      EventMetadata,
      PropertyId,
      Flags,
      EventMetadataPropertyBufferSize,
      EventMetadataPropertyBuffer,
      EventMetadataPropertyBufferUsed,
    );

late final _EvtGetEventMetadataProperty = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr EventMetadata,
  Int32 PropertyId,
  Uint32 Flags,
  Uint32 EventMetadataPropertyBufferSize,
  Pointer<EVT_VARIANT> EventMetadataPropertyBuffer,
  Pointer<Uint32> EventMetadataPropertyBufferUsed,
),
    int Function(
  int EventMetadata,
  int PropertyId,
  int Flags,
  int EventMetadataPropertyBufferSize,
  Pointer<EVT_VARIANT> EventMetadataPropertyBuffer,
  Pointer<Uint32> EventMetadataPropertyBufferUsed,
)>('EvtGetEventMetadataProperty');

int EvtGetExtendedStatus(
  int BufferSize,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> BufferUsed,
) =>
    _EvtGetExtendedStatus(
      BufferSize,
      Buffer,
      BufferUsed,
    );

late final _EvtGetExtendedStatus = _wevtapi.lookupFunction<
    Uint32 Function(
  Uint32 BufferSize,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> BufferUsed,
),
    int Function(
  int BufferSize,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> BufferUsed,
)>('EvtGetExtendedStatus');

int EvtGetLogInfo(
  int Log,
  int PropertyId,
  int PropertyValueBufferSize,
  Pointer<EVT_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
) =>
    _EvtGetLogInfo(
      Log,
      PropertyId,
      PropertyValueBufferSize,
      PropertyValueBuffer,
      PropertyValueBufferUsed,
    );

late final _EvtGetLogInfo = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr Log,
  Int32 PropertyId,
  Uint32 PropertyValueBufferSize,
  Pointer<EVT_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
),
    int Function(
  int Log,
  int PropertyId,
  int PropertyValueBufferSize,
  Pointer<EVT_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
)>('EvtGetLogInfo');

int EvtGetObjectArrayProperty(
  int ObjectArray,
  int PropertyId,
  int ArrayIndex,
  int Flags,
  int PropertyValueBufferSize,
  Pointer<EVT_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
) =>
    _EvtGetObjectArrayProperty(
      ObjectArray,
      PropertyId,
      ArrayIndex,
      Flags,
      PropertyValueBufferSize,
      PropertyValueBuffer,
      PropertyValueBufferUsed,
    );

late final _EvtGetObjectArrayProperty = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr ObjectArray,
  Uint32 PropertyId,
  Uint32 ArrayIndex,
  Uint32 Flags,
  Uint32 PropertyValueBufferSize,
  Pointer<EVT_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
),
    int Function(
  int ObjectArray,
  int PropertyId,
  int ArrayIndex,
  int Flags,
  int PropertyValueBufferSize,
  Pointer<EVT_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
)>('EvtGetObjectArrayProperty');

int EvtGetObjectArraySize(
  int ObjectArray,
  Pointer<Uint32> ObjectArraySize,
) =>
    _EvtGetObjectArraySize(
      ObjectArray,
      ObjectArraySize,
    );

late final _EvtGetObjectArraySize = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr ObjectArray,
  Pointer<Uint32> ObjectArraySize,
),
    int Function(
  int ObjectArray,
  Pointer<Uint32> ObjectArraySize,
)>('EvtGetObjectArraySize');

int EvtGetPublisherMetadataProperty(
  int PublisherMetadata,
  int PropertyId,
  int Flags,
  int PublisherMetadataPropertyBufferSize,
  Pointer<EVT_VARIANT> PublisherMetadataPropertyBuffer,
  Pointer<Uint32> PublisherMetadataPropertyBufferUsed,
) =>
    _EvtGetPublisherMetadataProperty(
      PublisherMetadata,
      PropertyId,
      Flags,
      PublisherMetadataPropertyBufferSize,
      PublisherMetadataPropertyBuffer,
      PublisherMetadataPropertyBufferUsed,
    );

late final _EvtGetPublisherMetadataProperty = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr PublisherMetadata,
  Int32 PropertyId,
  Uint32 Flags,
  Uint32 PublisherMetadataPropertyBufferSize,
  Pointer<EVT_VARIANT> PublisherMetadataPropertyBuffer,
  Pointer<Uint32> PublisherMetadataPropertyBufferUsed,
),
    int Function(
  int PublisherMetadata,
  int PropertyId,
  int Flags,
  int PublisherMetadataPropertyBufferSize,
  Pointer<EVT_VARIANT> PublisherMetadataPropertyBuffer,
  Pointer<Uint32> PublisherMetadataPropertyBufferUsed,
)>('EvtGetPublisherMetadataProperty');

int EvtGetQueryInfo(
  int QueryOrSubscription,
  int PropertyId,
  int PropertyValueBufferSize,
  Pointer<EVT_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
) =>
    _EvtGetQueryInfo(
      QueryOrSubscription,
      PropertyId,
      PropertyValueBufferSize,
      PropertyValueBuffer,
      PropertyValueBufferUsed,
    );

late final _EvtGetQueryInfo = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr QueryOrSubscription,
  Int32 PropertyId,
  Uint32 PropertyValueBufferSize,
  Pointer<EVT_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
),
    int Function(
  int QueryOrSubscription,
  int PropertyId,
  int PropertyValueBufferSize,
  Pointer<EVT_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
)>('EvtGetQueryInfo');

int EvtNext(
  int ResultSet,
  int EventsSize,
  Pointer<IntPtr> Events,
  int Timeout,
  int Flags,
  Pointer<Uint32> Returned,
) =>
    _EvtNext(
      ResultSet,
      EventsSize,
      Events,
      Timeout,
      Flags,
      Returned,
    );

late final _EvtNext = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr ResultSet,
  Uint32 EventsSize,
  Pointer<IntPtr> Events,
  Uint32 Timeout,
  Uint32 Flags,
  Pointer<Uint32> Returned,
),
    int Function(
  int ResultSet,
  int EventsSize,
  Pointer<IntPtr> Events,
  int Timeout,
  int Flags,
  Pointer<Uint32> Returned,
)>('EvtNext');

int EvtNextChannelPath(
  int ChannelEnum,
  int ChannelPathBufferSize,
  Pointer<Utf16> ChannelPathBuffer,
  Pointer<Uint32> ChannelPathBufferUsed,
) =>
    _EvtNextChannelPath(
      ChannelEnum,
      ChannelPathBufferSize,
      ChannelPathBuffer,
      ChannelPathBufferUsed,
    );

late final _EvtNextChannelPath = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr ChannelEnum,
  Uint32 ChannelPathBufferSize,
  Pointer<Utf16> ChannelPathBuffer,
  Pointer<Uint32> ChannelPathBufferUsed,
),
    int Function(
  int ChannelEnum,
  int ChannelPathBufferSize,
  Pointer<Utf16> ChannelPathBuffer,
  Pointer<Uint32> ChannelPathBufferUsed,
)>('EvtNextChannelPath');

int EvtNextEventMetadata(
  int EventMetadataEnum,
  int Flags,
) =>
    _EvtNextEventMetadata(
      EventMetadataEnum,
      Flags,
    );

late final _EvtNextEventMetadata = _wevtapi.lookupFunction<
    IntPtr Function(
  IntPtr EventMetadataEnum,
  Uint32 Flags,
),
    int Function(
  int EventMetadataEnum,
  int Flags,
)>('EvtNextEventMetadata');

int EvtNextPublisherId(
  int PublisherEnum,
  int PublisherIdBufferSize,
  Pointer<Utf16> PublisherIdBuffer,
  Pointer<Uint32> PublisherIdBufferUsed,
) =>
    _EvtNextPublisherId(
      PublisherEnum,
      PublisherIdBufferSize,
      PublisherIdBuffer,
      PublisherIdBufferUsed,
    );

late final _EvtNextPublisherId = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr PublisherEnum,
  Uint32 PublisherIdBufferSize,
  Pointer<Utf16> PublisherIdBuffer,
  Pointer<Uint32> PublisherIdBufferUsed,
),
    int Function(
  int PublisherEnum,
  int PublisherIdBufferSize,
  Pointer<Utf16> PublisherIdBuffer,
  Pointer<Uint32> PublisherIdBufferUsed,
)>('EvtNextPublisherId');

int EvtOpenChannelConfig(
  int Session,
  Pointer<Utf16> ChannelPath,
  int Flags,
) =>
    _EvtOpenChannelConfig(
      Session,
      ChannelPath,
      Flags,
    );

late final _EvtOpenChannelConfig = _wevtapi.lookupFunction<
    IntPtr Function(
  IntPtr Session,
  Pointer<Utf16> ChannelPath,
  Uint32 Flags,
),
    int Function(
  int Session,
  Pointer<Utf16> ChannelPath,
  int Flags,
)>('EvtOpenChannelConfig');

int EvtOpenChannelEnum(
  int Session,
  int Flags,
) =>
    _EvtOpenChannelEnum(
      Session,
      Flags,
    );

late final _EvtOpenChannelEnum = _wevtapi.lookupFunction<
    IntPtr Function(
  IntPtr Session,
  Uint32 Flags,
),
    int Function(
  int Session,
  int Flags,
)>('EvtOpenChannelEnum');

int EvtOpenEventMetadataEnum(
  int PublisherMetadata,
  int Flags,
) =>
    _EvtOpenEventMetadataEnum(
      PublisherMetadata,
      Flags,
    );

late final _EvtOpenEventMetadataEnum = _wevtapi.lookupFunction<
    IntPtr Function(
  IntPtr PublisherMetadata,
  Uint32 Flags,
),
    int Function(
  int PublisherMetadata,
  int Flags,
)>('EvtOpenEventMetadataEnum');

int EvtOpenLog(
  int Session,
  Pointer<Utf16> Path,
  int Flags,
) =>
    _EvtOpenLog(
      Session,
      Path,
      Flags,
    );

late final _EvtOpenLog = _wevtapi.lookupFunction<
    IntPtr Function(
  IntPtr Session,
  Pointer<Utf16> Path,
  Uint32 Flags,
),
    int Function(
  int Session,
  Pointer<Utf16> Path,
  int Flags,
)>('EvtOpenLog');

int EvtOpenPublisherEnum(
  int Session,
  int Flags,
) =>
    _EvtOpenPublisherEnum(
      Session,
      Flags,
    );

late final _EvtOpenPublisherEnum = _wevtapi.lookupFunction<
    IntPtr Function(
  IntPtr Session,
  Uint32 Flags,
),
    int Function(
  int Session,
  int Flags,
)>('EvtOpenPublisherEnum');

int EvtOpenPublisherMetadata(
  int Session,
  Pointer<Utf16> PublisherId,
  Pointer<Utf16> LogFilePath,
  int Locale,
  int Flags,
) =>
    _EvtOpenPublisherMetadata(
      Session,
      PublisherId,
      LogFilePath,
      Locale,
      Flags,
    );

late final _EvtOpenPublisherMetadata = _wevtapi.lookupFunction<
    IntPtr Function(
  IntPtr Session,
  Pointer<Utf16> PublisherId,
  Pointer<Utf16> LogFilePath,
  Uint32 Locale,
  Uint32 Flags,
),
    int Function(
  int Session,
  Pointer<Utf16> PublisherId,
  Pointer<Utf16> LogFilePath,
  int Locale,
  int Flags,
)>('EvtOpenPublisherMetadata');

int EvtOpenSession(
  int LoginClass,
  Pointer Login,
  int Timeout,
  int Flags,
) =>
    _EvtOpenSession(
      LoginClass,
      Login,
      Timeout,
      Flags,
    );

late final _EvtOpenSession = _wevtapi.lookupFunction<
    IntPtr Function(
  Int32 LoginClass,
  Pointer Login,
  Uint32 Timeout,
  Uint32 Flags,
),
    int Function(
  int LoginClass,
  Pointer Login,
  int Timeout,
  int Flags,
)>('EvtOpenSession');

int EvtQuery(
  int Session,
  Pointer<Utf16> Path,
  Pointer<Utf16> Query,
  int Flags,
) =>
    _EvtQuery(
      Session,
      Path,
      Query,
      Flags,
    );

late final _EvtQuery = _wevtapi.lookupFunction<
    IntPtr Function(
  IntPtr Session,
  Pointer<Utf16> Path,
  Pointer<Utf16> Query,
  Uint32 Flags,
),
    int Function(
  int Session,
  Pointer<Utf16> Path,
  Pointer<Utf16> Query,
  int Flags,
)>('EvtQuery');

int EvtRender(
  int Context,
  int Fragment,
  int Flags,
  int BufferSize,
  Pointer Buffer,
  Pointer<Uint32> BufferUsed,
  Pointer<Uint32> PropertyCount,
) =>
    _EvtRender(
      Context,
      Fragment,
      Flags,
      BufferSize,
      Buffer,
      BufferUsed,
      PropertyCount,
    );

late final _EvtRender = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr Context,
  IntPtr Fragment,
  Uint32 Flags,
  Uint32 BufferSize,
  Pointer Buffer,
  Pointer<Uint32> BufferUsed,
  Pointer<Uint32> PropertyCount,
),
    int Function(
  int Context,
  int Fragment,
  int Flags,
  int BufferSize,
  Pointer Buffer,
  Pointer<Uint32> BufferUsed,
  Pointer<Uint32> PropertyCount,
)>('EvtRender');

int EvtSaveChannelConfig(
  int ChannelConfig,
  int Flags,
) =>
    _EvtSaveChannelConfig(
      ChannelConfig,
      Flags,
    );

late final _EvtSaveChannelConfig = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr ChannelConfig,
  Uint32 Flags,
),
    int Function(
  int ChannelConfig,
  int Flags,
)>('EvtSaveChannelConfig');

int EvtSeek(
  int ResultSet,
  int Position,
  int Bookmark,
  int Timeout,
  int Flags,
) =>
    _EvtSeek(
      ResultSet,
      Position,
      Bookmark,
      Timeout,
      Flags,
    );

late final _EvtSeek = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr ResultSet,
  Int64 Position,
  IntPtr Bookmark,
  Uint32 Timeout,
  Uint32 Flags,
),
    int Function(
  int ResultSet,
  int Position,
  int Bookmark,
  int Timeout,
  int Flags,
)>('EvtSeek');

int EvtSetChannelConfigProperty(
  int ChannelConfig,
  int PropertyId,
  int Flags,
  Pointer<EVT_VARIANT> PropertyValue,
) =>
    _EvtSetChannelConfigProperty(
      ChannelConfig,
      PropertyId,
      Flags,
      PropertyValue,
    );

late final _EvtSetChannelConfigProperty = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr ChannelConfig,
  Int32 PropertyId,
  Uint32 Flags,
  Pointer<EVT_VARIANT> PropertyValue,
),
    int Function(
  int ChannelConfig,
  int PropertyId,
  int Flags,
  Pointer<EVT_VARIANT> PropertyValue,
)>('EvtSetChannelConfigProperty');

int EvtSubscribe(
  int Session,
  int SignalEvent,
  Pointer<Utf16> ChannelPath,
  Pointer<Utf16> Query,
  int Bookmark,
  Pointer Context,
  Pointer<NativeFunction<EVT_SUBSCRIBE_CALLBACK>> Callback,
  int Flags,
) =>
    _EvtSubscribe(
      Session,
      SignalEvent,
      ChannelPath,
      Query,
      Bookmark,
      Context,
      Callback,
      Flags,
    );

late final _EvtSubscribe = _wevtapi.lookupFunction<
    IntPtr Function(
  IntPtr Session,
  IntPtr SignalEvent,
  Pointer<Utf16> ChannelPath,
  Pointer<Utf16> Query,
  IntPtr Bookmark,
  Pointer Context,
  Pointer<NativeFunction<EVT_SUBSCRIBE_CALLBACK>> Callback,
  Uint32 Flags,
),
    int Function(
  int Session,
  int SignalEvent,
  Pointer<Utf16> ChannelPath,
  Pointer<Utf16> Query,
  int Bookmark,
  Pointer Context,
  Pointer<NativeFunction<EVT_SUBSCRIBE_CALLBACK>> Callback,
  int Flags,
)>('EvtSubscribe');

int EvtUpdateBookmark(
  int Bookmark,
  int Event,
) =>
    _EvtUpdateBookmark(
      Bookmark,
      Event,
    );

late final _EvtUpdateBookmark = _wevtapi.lookupFunction<
    Int32 Function(
  IntPtr Bookmark,
  IntPtr Event,
),
    int Function(
  int Bookmark,
  int Event,
)>('EvtUpdateBookmark');

// -----------------------------------------------------------------------
// advapi32.dll
// -----------------------------------------------------------------------
final _advapi32 = DynamicLibrary.open('advapi32.dll');

int BackupEventLog(
  int hEventLog,
  Pointer<Utf16> lpBackupFileName,
) =>
    _BackupEventLog(
      hEventLog,
      lpBackupFileName,
    );

late final _BackupEventLog = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hEventLog,
  Pointer<Utf16> lpBackupFileName,
),
    int Function(
  int hEventLog,
  Pointer<Utf16> lpBackupFileName,
)>('BackupEventLogW');

int ClearEventLog(
  int hEventLog,
  Pointer<Utf16> lpBackupFileName,
) =>
    _ClearEventLog(
      hEventLog,
      lpBackupFileName,
    );

late final _ClearEventLog = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hEventLog,
  Pointer<Utf16> lpBackupFileName,
),
    int Function(
  int hEventLog,
  Pointer<Utf16> lpBackupFileName,
)>('ClearEventLogW');

int CloseEventLog(
  int hEventLog,
) =>
    _CloseEventLog(
      hEventLog,
    );

late final _CloseEventLog = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hEventLog,
),
    int Function(
  int hEventLog,
)>('CloseEventLog');

int DeregisterEventSource(
  int hEventLog,
) =>
    _DeregisterEventSource(
      hEventLog,
    );

late final _DeregisterEventSource = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hEventLog,
),
    int Function(
  int hEventLog,
)>('DeregisterEventSource');

int GetEventLogInformation(
  int hEventLog,
  int dwInfoLevel,
  Pointer lpBuffer,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
) =>
    _GetEventLogInformation(
      hEventLog,
      dwInfoLevel,
      lpBuffer,
      cbBufSize,
      pcbBytesNeeded,
    );

late final _GetEventLogInformation = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hEventLog,
  Uint32 dwInfoLevel,
  Pointer lpBuffer,
  Uint32 cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
),
    int Function(
  int hEventLog,
  int dwInfoLevel,
  Pointer lpBuffer,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
)>('GetEventLogInformation');

int GetNumberOfEventLogRecords(
  int hEventLog,
  Pointer<Uint32> NumberOfRecords,
) =>
    _GetNumberOfEventLogRecords(
      hEventLog,
      NumberOfRecords,
    );

late final _GetNumberOfEventLogRecords = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hEventLog,
  Pointer<Uint32> NumberOfRecords,
),
    int Function(
  int hEventLog,
  Pointer<Uint32> NumberOfRecords,
)>('GetNumberOfEventLogRecords');

int GetOldestEventLogRecord(
  int hEventLog,
  Pointer<Uint32> OldestRecord,
) =>
    _GetOldestEventLogRecord(
      hEventLog,
      OldestRecord,
    );

late final _GetOldestEventLogRecord = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hEventLog,
  Pointer<Uint32> OldestRecord,
),
    int Function(
  int hEventLog,
  Pointer<Uint32> OldestRecord,
)>('GetOldestEventLogRecord');

int NotifyChangeEventLog(
  int hEventLog,
  int hEvent,
) =>
    _NotifyChangeEventLog(
      hEventLog,
      hEvent,
    );

late final _NotifyChangeEventLog = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hEventLog,
  IntPtr hEvent,
),
    int Function(
  int hEventLog,
  int hEvent,
)>('NotifyChangeEventLog');

int OpenBackupEventLog(
  Pointer<Utf16> lpUNCServerName,
  Pointer<Utf16> lpFileName,
) =>
    _OpenBackupEventLog(
      lpUNCServerName,
      lpFileName,
    );

late final _OpenBackupEventLog = _advapi32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpUNCServerName,
  Pointer<Utf16> lpFileName,
),
    int Function(
  Pointer<Utf16> lpUNCServerName,
  Pointer<Utf16> lpFileName,
)>('OpenBackupEventLogW');

int OpenEventLog(
  Pointer<Utf16> lpUNCServerName,
  Pointer<Utf16> lpSourceName,
) =>
    _OpenEventLog(
      lpUNCServerName,
      lpSourceName,
    );

late final _OpenEventLog = _advapi32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpUNCServerName,
  Pointer<Utf16> lpSourceName,
),
    int Function(
  Pointer<Utf16> lpUNCServerName,
  Pointer<Utf16> lpSourceName,
)>('OpenEventLogW');

int ReadEventLog(
  int hEventLog,
  int dwReadFlags,
  int dwRecordOffset,
  Pointer lpBuffer,
  int nNumberOfBytesToRead,
  Pointer<Uint32> pnBytesRead,
  Pointer<Uint32> pnMinNumberOfBytesNeeded,
) =>
    _ReadEventLog(
      hEventLog,
      dwReadFlags,
      dwRecordOffset,
      lpBuffer,
      nNumberOfBytesToRead,
      pnBytesRead,
      pnMinNumberOfBytesNeeded,
    );

late final _ReadEventLog = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hEventLog,
  Uint32 dwReadFlags,
  Uint32 dwRecordOffset,
  Pointer lpBuffer,
  Uint32 nNumberOfBytesToRead,
  Pointer<Uint32> pnBytesRead,
  Pointer<Uint32> pnMinNumberOfBytesNeeded,
),
    int Function(
  int hEventLog,
  int dwReadFlags,
  int dwRecordOffset,
  Pointer lpBuffer,
  int nNumberOfBytesToRead,
  Pointer<Uint32> pnBytesRead,
  Pointer<Uint32> pnMinNumberOfBytesNeeded,
)>('ReadEventLogW');

int RegisterEventSource(
  Pointer<Utf16> lpUNCServerName,
  Pointer<Utf16> lpSourceName,
) =>
    _RegisterEventSource(
      lpUNCServerName,
      lpSourceName,
    );

late final _RegisterEventSource = _advapi32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpUNCServerName,
  Pointer<Utf16> lpSourceName,
),
    int Function(
  Pointer<Utf16> lpUNCServerName,
  Pointer<Utf16> lpSourceName,
)>('RegisterEventSourceW');

int ReportEvent(
  int hEventLog,
  int wType,
  int wCategory,
  int dwEventID,
  int lpUserSid,
  int wNumStrings,
  int dwDataSize,
  Pointer<Pointer<Utf16>> lpStrings,
  Pointer lpRawData,
) =>
    _ReportEvent(
      hEventLog,
      wType,
      wCategory,
      dwEventID,
      lpUserSid,
      wNumStrings,
      dwDataSize,
      lpStrings,
      lpRawData,
    );

late final _ReportEvent = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hEventLog,
  Uint16 wType,
  Uint16 wCategory,
  Uint32 dwEventID,
  IntPtr lpUserSid,
  Uint16 wNumStrings,
  Uint32 dwDataSize,
  Pointer<Pointer<Utf16>> lpStrings,
  Pointer lpRawData,
),
    int Function(
  int hEventLog,
  int wType,
  int wCategory,
  int dwEventID,
  int lpUserSid,
  int wNumStrings,
  int dwDataSize,
  Pointer<Pointer<Utf16>> lpStrings,
  Pointer lpRawData,
)>('ReportEventW');
