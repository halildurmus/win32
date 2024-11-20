// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../_internal/wevtapi.g.dart';
import '../_internal/win32.dart';
import '../allocator.dart';
import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

/// Closes an open handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/nf-winevt-evtclose>.
///
/// {@category wevtapi}
Win32Result<bool> EvtClose(int object) {
  final result_ = EvtClose_Wrapper(object);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Creates a bookmark that identifies an event in a channel.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/nf-winevt-evtcreatebookmark>.
///
/// {@category wevtapi}
Win32Result<int> EvtCreateBookmark(PCWSTR? bookmarkXml) {
  final result_ = EvtCreateBookmark_Wrapper(bookmarkXml ?? nullptr);
  return Win32Result(value: result_.value.i64, error: result_.error);
}

/// Creates a context that specifies the information in the event that you want
/// to render.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/nf-winevt-evtcreaterendercontext>.
///
/// {@category wevtapi}
Win32Result<int> EvtCreateRenderContext(
  int valuePathsCount,
  Pointer<PCWSTR>? valuePaths,
  int flags,
) {
  final result_ = EvtCreateRenderContext_Wrapper(
    valuePathsCount,
    valuePaths ?? nullptr,
    flags,
  );
  return Win32Result(value: result_.value.i64, error: result_.error);
}

/// Gets a text message that contains the extended error information for the
/// current error.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/nf-winevt-evtgetextendedstatus>.
///
/// {@category wevtapi}
@pragma('vm:prefer-inline')
int EvtGetExtendedStatus(
  int bufferSize,
  PWSTR? buffer,
  Pointer<Uint32> bufferUsed,
) => _EvtGetExtendedStatus(bufferSize, buffer ?? nullptr, bufferUsed);

@Native<Uint32 Function(Uint32, PWSTR, Pointer<Uint32>)>(
  symbol: 'EvtGetExtendedStatus',
)
external int _EvtGetExtendedStatus(
  int bufferSize,
  PWSTR buffer,
  Pointer<Uint32> bufferUsed,
);

/// Gets information about a query that you ran that identifies the list of
/// channels or log files that the query attempted to access.
///
/// The function also gets a list of return codes that indicates the success or
/// failure of each access.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/nf-winevt-evtgetqueryinfo>.
///
/// {@category wevtapi}
Win32Result<bool> EvtGetQueryInfo(
  int queryOrSubscription,
  EVT_QUERY_PROPERTY_ID propertyId,
  int propertyValueBufferSize,
  Pointer<EVT_VARIANT>? propertyValueBuffer,
  Pointer<Uint32> propertyValueBufferUsed,
) {
  final result_ = EvtGetQueryInfo_Wrapper(
    queryOrSubscription,
    propertyId,
    propertyValueBufferSize,
    propertyValueBuffer ?? nullptr,
    propertyValueBufferUsed,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Gets the next event from the query or subscription results.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/nf-winevt-evtnext>.
///
/// {@category wevtapi}
Win32Result<bool> EvtNext(
  int resultSet,
  int eventsSize,
  Pointer<IntPtr> events,
  int timeout,
  int flags,
  Pointer<Uint32> returned,
) {
  final result_ = EvtNext_Wrapper(
    resultSet,
    eventsSize,
    events,
    timeout,
    flags,
    returned,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Establishes a connection to a remote computer that you can use when calling
/// the other Windows Event Log functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/nf-winevt-evtopensession>.
///
/// {@category wevtapi}
Win32Result<int> EvtOpenSession(EVT_LOGIN_CLASS loginClass, Pointer login) {
  final result_ = EvtOpenSession_Wrapper(loginClass, login, NULL, NULL);
  return Win32Result(value: result_.value.i64, error: result_.error);
}

/// Runs a query to retrieve events from a channel or log file that match the
/// specified query criteria.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/nf-winevt-evtquery>.
///
/// {@category wevtapi}
Win32Result<int> EvtQuery(
  int? session,
  PCWSTR? path,
  PCWSTR? query,
  int flags,
) {
  final result_ = EvtQuery_Wrapper(
    session ?? NULL,
    path ?? nullptr,
    query ?? nullptr,
    flags,
  );
  return Win32Result(value: result_.value.i64, error: result_.error);
}

/// Renders an XML fragment based on the rendering context that you specify.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/nf-winevt-evtrender>.
///
/// {@category wevtapi}
Win32Result<bool> EvtRender(
  int? context,
  int fragment,
  int flags,
  int bufferSize,
  Pointer? buffer,
  Pointer<Uint32> bufferUsed,
  Pointer<Uint32> propertyCount,
) {
  final result_ = EvtRender_Wrapper(
    context ?? NULL,
    fragment,
    flags,
    bufferSize,
    buffer ?? nullptr,
    bufferUsed,
    propertyCount,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Seeks to a specific event in a query result set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/nf-winevt-evtseek>.
///
/// {@category wevtapi}
Win32Result<bool> EvtSeek(
  int resultSet,
  int position,
  int? bookmark,
  int flags,
) {
  final result_ = EvtSeek_Wrapper(
    resultSet,
    position,
    bookmark ?? NULL,
    NULL,
    flags,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Updates the bookmark with information that identifies the specified event.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/nf-winevt-evtupdatebookmark>.
///
/// {@category wevtapi}
Win32Result<bool> EvtUpdateBookmark(int bookmark, int event) {
  final result_ = EvtUpdateBookmark_Wrapper(bookmark, event);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}
