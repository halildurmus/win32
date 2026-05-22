// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../functions.dart';
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

final _wevtapi = DynamicLibrary.open('wevtapi.dll');

/// Closes an open handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/nf-winevt-evtclose>.
///
/// {@category wevtapi}
Win32Result<bool> EvtClose(EVT_HANDLE object) {
  resolveGetLastError();
  final result_ = _EvtClose(object);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EvtClose = _wevtapi
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>('EvtClose');

/// Creates a bookmark that identifies an event in a channel.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/nf-winevt-evtcreatebookmark>.
///
/// {@category wevtapi}
Win32Result<EVT_HANDLE> EvtCreateBookmark(PCWSTR? bookmarkXml) {
  resolveGetLastError();
  final result_ = _EvtCreateBookmark(bookmarkXml ?? nullptr);
  return .new(value: .new(result_), error: GetLastError());
}

final _EvtCreateBookmark = _wevtapi
    .lookupFunction<
      IntPtr Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('EvtCreateBookmark');

/// Creates a context that specifies the information in the event that you want
/// to render.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/nf-winevt-evtcreaterendercontext>.
///
/// {@category wevtapi}
Win32Result<EVT_HANDLE> EvtCreateRenderContext(
  int valuePathsCount,
  Pointer<Pointer<Utf16>>? valuePaths,
  int flags,
) {
  resolveGetLastError();
  final result_ = _EvtCreateRenderContext(
    valuePathsCount,
    valuePaths ?? nullptr,
    flags,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _EvtCreateRenderContext = _wevtapi
    .lookupFunction<
      IntPtr Function(Uint32, Pointer<Pointer<Utf16>>, Uint32),
      int Function(int, Pointer<Pointer<Utf16>>, int)
    >('EvtCreateRenderContext');

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

final _EvtGetExtendedStatus = _wevtapi
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>, Pointer<Uint32>),
      int Function(int, Pointer<Utf16>, Pointer<Uint32>)
    >('EvtGetExtendedStatus');

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
  EVT_HANDLE queryOrSubscription,
  EVT_QUERY_PROPERTY_ID propertyId,
  int propertyValueBufferSize,
  Pointer<EVT_VARIANT>? propertyValueBuffer,
  Pointer<Uint32> propertyValueBufferUsed,
) {
  resolveGetLastError();
  final result_ = _EvtGetQueryInfo(
    queryOrSubscription,
    propertyId,
    propertyValueBufferSize,
    propertyValueBuffer ?? nullptr,
    propertyValueBufferUsed,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EvtGetQueryInfo = _wevtapi
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Int32,
        Uint32,
        Pointer<EVT_VARIANT>,
        Pointer<Uint32>,
      ),
      int Function(int, int, int, Pointer<EVT_VARIANT>, Pointer<Uint32>)
    >('EvtGetQueryInfo');

/// Gets the next event from the query or subscription results.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/nf-winevt-evtnext>.
///
/// {@category wevtapi}
Win32Result<bool> EvtNext(
  EVT_HANDLE resultSet,
  int eventsSize,
  Pointer<IntPtr> events,
  int timeout,
  int flags,
  Pointer<Uint32> returned,
) {
  resolveGetLastError();
  final result_ = _EvtNext(
    resultSet,
    eventsSize,
    events,
    timeout,
    flags,
    returned,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EvtNext = _wevtapi
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Uint32,
        Pointer<IntPtr>,
        Uint32,
        Uint32,
        Pointer<Uint32>,
      ),
      int Function(int, int, Pointer<IntPtr>, int, int, Pointer<Uint32>)
    >('EvtNext');

/// Establishes a connection to a remote computer that you can use when calling
/// the other Windows Event Log functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/nf-winevt-evtopensession>.
///
/// {@category wevtapi}
Win32Result<EVT_HANDLE> EvtOpenSession(
  EVT_LOGIN_CLASS loginClass,
  Pointer login,
) {
  resolveGetLastError();
  final result_ = _EvtOpenSession(loginClass, login, NULL, NULL);
  return .new(value: .new(result_), error: GetLastError());
}

final _EvtOpenSession = _wevtapi
    .lookupFunction<
      IntPtr Function(Int32, Pointer, Uint32, Uint32),
      int Function(int, Pointer, int, int)
    >('EvtOpenSession');

/// Runs a query to retrieve events from a channel or log file that match the
/// specified query criteria.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/nf-winevt-evtquery>.
///
/// {@category wevtapi}
Win32Result<EVT_HANDLE> EvtQuery(
  EVT_HANDLE? session,
  PCWSTR? path,
  PCWSTR? query,
  int flags,
) {
  resolveGetLastError();
  final result_ = _EvtQuery(
    session ?? NULL,
    path ?? nullptr,
    query ?? nullptr,
    flags,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _EvtQuery = _wevtapi
    .lookupFunction<
      IntPtr Function(IntPtr, Pointer<Utf16>, Pointer<Utf16>, Uint32),
      int Function(int, Pointer<Utf16>, Pointer<Utf16>, int)
    >('EvtQuery');

/// Renders an XML fragment based on the rendering context that you specify.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/nf-winevt-evtrender>.
///
/// {@category wevtapi}
Win32Result<bool> EvtRender(
  EVT_HANDLE? context,
  EVT_HANDLE fragment,
  int flags,
  int bufferSize,
  Pointer? buffer,
  Pointer<Uint32> bufferUsed,
  Pointer<Uint32> propertyCount,
) {
  resolveGetLastError();
  final result_ = _EvtRender(
    context ?? NULL,
    fragment,
    flags,
    bufferSize,
    buffer ?? nullptr,
    bufferUsed,
    propertyCount,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EvtRender = _wevtapi
    .lookupFunction<
      Int32 Function(
        IntPtr,
        IntPtr,
        Uint32,
        Uint32,
        Pointer,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(
        int,
        int,
        int,
        int,
        Pointer,
        Pointer<Uint32>,
        Pointer<Uint32>,
      )
    >('EvtRender');

/// Seeks to a specific event in a query result set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/nf-winevt-evtseek>.
///
/// {@category wevtapi}
Win32Result<bool> EvtSeek(
  EVT_HANDLE resultSet,
  int position,
  EVT_HANDLE? bookmark,
  int flags,
) {
  resolveGetLastError();
  final result_ = _EvtSeek(resultSet, position, bookmark ?? NULL, NULL, flags);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EvtSeek = _wevtapi
    .lookupFunction<
      Int32 Function(IntPtr, Int64, IntPtr, Uint32, Uint32),
      int Function(int, int, int, int, int)
    >('EvtSeek');

/// Updates the bookmark with information that identifies the specified event.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/nf-winevt-evtupdatebookmark>.
///
/// {@category wevtapi}
Win32Result<bool> EvtUpdateBookmark(EVT_HANDLE bookmark, EVT_HANDLE event) {
  resolveGetLastError();
  final result_ = _EvtUpdateBookmark(bookmark, event);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EvtUpdateBookmark = _wevtapi
    .lookupFunction<Int32 Function(IntPtr, IntPtr), int Function(int, int)>(
      'EvtUpdateBookmark',
    );
