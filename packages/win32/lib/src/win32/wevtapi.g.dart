// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, non_constant_identifier_names
// ignore_for_file: constant_identifier_names, camel_case_types
// ignore_for_file: specify_nonobvious_property_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../variant.dart';

final _wevtapi = DynamicLibrary.open('wevtapi.dll');

/// Closes an open handle.
///
/// ```c
/// BOOL EvtClose(
///   EVT_HANDLE Object
/// );
/// ```
/// {@category wevtapi}
int EvtClose(int Object) => _EvtClose(Object);

final _EvtClose = _wevtapi
    .lookupFunction<Int32 Function(IntPtr Object), int Function(int Object)>(
      'EvtClose',
    );

/// Creates a bookmark that identifies an event in a channel.
///
/// ```c
/// EVT_HANDLE EvtCreateBookmark(
///   [in, optional] LPCWSTR BookmarkXml
/// );
/// ```
/// {@category wevtapi}
int EvtCreateBookmark(Pointer<Utf16> BookmarkXml) =>
    _EvtCreateBookmark(BookmarkXml);

final _EvtCreateBookmark = _wevtapi
    .lookupFunction<
      IntPtr Function(Pointer<Utf16> BookmarkXml),
      int Function(Pointer<Utf16> BookmarkXml)
    >('EvtCreateBookmark');

/// Creates a context that specifies the information in the event that you
/// want to render.
///
/// ```c
/// EVT_HANDLE EvtCreateRenderContext(
///   DWORD   ValuePathsCount,
///   LPCWSTR *ValuePaths,
///   DWORD   Flags
/// );
/// ```
/// {@category wevtapi}
int EvtCreateRenderContext(
  int ValuePathsCount,
  Pointer<Pointer<Utf16>> ValuePaths,
  int Flags,
) => _EvtCreateRenderContext(ValuePathsCount, ValuePaths, Flags);

final _EvtCreateRenderContext = _wevtapi
    .lookupFunction<
      IntPtr Function(
        Uint32 ValuePathsCount,
        Pointer<Pointer<Utf16>> ValuePaths,
        Uint32 Flags,
      ),
      int Function(
        int ValuePathsCount,
        Pointer<Pointer<Utf16>> ValuePaths,
        int Flags,
      )
    >('EvtCreateRenderContext');

/// Retrieves extended error information for the last operation that failed.
///
/// ```c
/// DWORD EvtGetExtendedStatus(
///   [in]  DWORD  BufferSize,
///   [in]  LPWSTR Buffer,
///   [out] PDWORD BufferUsed
/// );
/// ```
/// {@category wevtapi}
int EvtGetExtendedStatus(
  int BufferSize,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> BufferUsed,
) => _EvtGetExtendedStatus(BufferSize, Buffer, BufferUsed);

final _EvtGetExtendedStatus = _wevtapi
    .lookupFunction<
      Uint32 Function(
        Uint32 BufferSize,
        Pointer<Utf16> Buffer,
        Pointer<Uint32> BufferUsed,
      ),
      int Function(
        int BufferSize,
        Pointer<Utf16> Buffer,
        Pointer<Uint32> BufferUsed,
      )
    >('EvtGetExtendedStatus');

/// Gets information about a query that you ran that identifies the list of
/// channels or log files that the query attempted to access.
///
/// ```c
/// BOOL EvtGetQueryInfo(
///   [in]  EVT_HANDLE            QueryOrSubscription,
///   [in]  EVT_QUERY_PROPERTY_ID PropertyId,
///   [in]  DWORD                 PropertyValueBufferSize,
///   [in]  PEVT_VARIANT          PropertyValueBuffer,
///   [out] PDWORD                PropertyValueBufferUsed
/// );
/// ```
/// {@category wevtapi}
int EvtGetQueryInfo(
  int QueryOrSubscription,
  int PropertyId,
  int PropertyValueBufferSize,
  Pointer<EVT_VARIANT> PropertyValueBuffer,
  Pointer<Uint32> PropertyValueBufferUsed,
) => _EvtGetQueryInfo(
  QueryOrSubscription,
  PropertyId,
  PropertyValueBufferSize,
  PropertyValueBuffer,
  PropertyValueBufferUsed,
);

final _EvtGetQueryInfo = _wevtapi
    .lookupFunction<
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
      )
    >('EvtGetQueryInfo');

/// Gets the next event from the query or subscription results.
///
/// ```c
/// BOOL EvtNext(
///   [in]  EVT_HANDLE  ResultSet,
///   [in]  DWORD       EventsSize,
///   [in]  PEVT_HANDLE Events,
///   [in]  DWORD       Timeout,
///   [in]  DWORD       Flags,
///   [out] PDWORD      Returned
/// );
/// ```
/// {@category wevtapi}
int EvtNext(
  int ResultSet,
  int EventsSize,
  Pointer<IntPtr> Events,
  int Timeout,
  int Flags,
  Pointer<Uint32> Returned,
) => _EvtNext(ResultSet, EventsSize, Events, Timeout, Flags, Returned);

final _EvtNext = _wevtapi
    .lookupFunction<
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
      )
    >('EvtNext');

/// Opens a session for event log operations. This session can be used to
/// query events, subscribe to events, and manage event logs.
///
/// ```c
/// EVT_HANDLE EvtOpenSession(
///   EVT_LOGIN_CLASS LoginClass,
///   PVOID           Login,
///   DWORD           Timeout,
///   DWORD           Flags
/// );
/// ```
/// {@category wevtapi}
int EvtOpenSession(int LoginClass, Pointer Login, int Timeout, int Flags) =>
    _EvtOpenSession(LoginClass, Login, Timeout, Flags);

final _EvtOpenSession = _wevtapi
    .lookupFunction<
      IntPtr Function(
        Int32 LoginClass,
        Pointer Login,
        Uint32 Timeout,
        Uint32 Flags,
      ),
      int Function(int LoginClass, Pointer Login, int Timeout, int Flags)
    >('EvtOpenSession');

/// Runs a query to retrieve events from a channel or log file that match
/// the specified query criteria.
///
/// ```c
/// EVT_HANDLE EvtQuery(
///   EVT_HANDLE Session,
///   LPCWSTR    Path,
///   LPCWSTR    Query,
///   DWORD      Flags
/// );
/// ```
/// {@category wevtapi}
int EvtQuery(
  int Session,
  Pointer<Utf16> Path,
  Pointer<Utf16> Query,
  int Flags,
) => _EvtQuery(Session, Path, Query, Flags);

final _EvtQuery = _wevtapi
    .lookupFunction<
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
      )
    >('EvtQuery');

/// Renders an XML fragment based on the rendering context that you specify.
///
/// ```c
/// BOOL EvtRender(
///   [in]  EVT_HANDLE Context,
///   [in]  EVT_HANDLE Fragment,
///   [in]  DWORD      Flags,
///   [in]  DWORD      BufferSize,
///   [in]  PVOID      Buffer,
///   [out] PDWORD     BufferUsed,
///   [out] PDWORD     PropertyCount
/// );
/// ```
/// {@category wevtapi}
int EvtRender(
  int Context,
  int Fragment,
  int Flags,
  int BufferSize,
  Pointer Buffer,
  Pointer<Uint32> BufferUsed,
  Pointer<Uint32> PropertyCount,
) => _EvtRender(
  Context,
  Fragment,
  Flags,
  BufferSize,
  Buffer,
  BufferUsed,
  PropertyCount,
);

final _EvtRender = _wevtapi
    .lookupFunction<
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
      )
    >('EvtRender');

/// Seeks to a specific event in a query result set.
///
/// ```c
/// BOOL EvtSeek(
///   EVT_HANDLE ResultSet,
///   LONGLONG   Position,
///   EVT_HANDLE Bookmark,
///   DWORD      Timeout,
///   DWORD      Flags
/// );
/// ```
/// {@category wevtapi}
int EvtSeek(
  int ResultSet,
  int Position,
  int Bookmark,
  int Timeout,
  int Flags,
) => _EvtSeek(ResultSet, Position, Bookmark, Timeout, Flags);

final _EvtSeek = _wevtapi
    .lookupFunction<
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
      )
    >('EvtSeek');

/// Updates the bookmark with information that identifies the specified
/// event.
///
/// ```c
/// BOOL EvtUpdateBookmark(
///   EVT_HANDLE Bookmark,
///   EVT_HANDLE Event
/// );
/// ```
/// {@category wevtapi}
int EvtUpdateBookmark(int Bookmark, int Event) =>
    _EvtUpdateBookmark(Bookmark, Event);

final _EvtUpdateBookmark = _wevtapi
    .lookupFunction<
      Int32 Function(IntPtr Bookmark, IntPtr Event),
      int Function(int Bookmark, int Event)
    >('EvtUpdateBookmark');
