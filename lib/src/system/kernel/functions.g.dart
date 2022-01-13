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
import '../../system/kernel/structs.g.dart'; // -----------------------------------------------------------------------

// ntdll.dll
// -----------------------------------------------------------------------
final _ntdll = DynamicLibrary.open('ntdll.dll');

Pointer<SLIST_ENTRY> RtlFirstEntrySList(
  Pointer<SLIST_HEADER> ListHead,
) =>
    _RtlFirstEntrySList(
      ListHead,
    );

late final _RtlFirstEntrySList = _ntdll.lookupFunction<
    Pointer<SLIST_ENTRY> Function(
  Pointer<SLIST_HEADER> ListHead,
),
    Pointer<SLIST_ENTRY> Function(
  Pointer<SLIST_HEADER> ListHead,
)>('RtlFirstEntrySList');

void RtlInitializeSListHead(
  Pointer<SLIST_HEADER> ListHead,
) =>
    _RtlInitializeSListHead(
      ListHead,
    );

late final _RtlInitializeSListHead = _ntdll.lookupFunction<
    Void Function(
  Pointer<SLIST_HEADER> ListHead,
),
    void Function(
  Pointer<SLIST_HEADER> ListHead,
)>('RtlInitializeSListHead');

Pointer<SLIST_ENTRY> RtlInterlockedFlushSList(
  Pointer<SLIST_HEADER> ListHead,
) =>
    _RtlInterlockedFlushSList(
      ListHead,
    );

late final _RtlInterlockedFlushSList = _ntdll.lookupFunction<
    Pointer<SLIST_ENTRY> Function(
  Pointer<SLIST_HEADER> ListHead,
),
    Pointer<SLIST_ENTRY> Function(
  Pointer<SLIST_HEADER> ListHead,
)>('RtlInterlockedFlushSList');

Pointer<SLIST_ENTRY> RtlInterlockedPopEntrySList(
  Pointer<SLIST_HEADER> ListHead,
) =>
    _RtlInterlockedPopEntrySList(
      ListHead,
    );

late final _RtlInterlockedPopEntrySList = _ntdll.lookupFunction<
    Pointer<SLIST_ENTRY> Function(
  Pointer<SLIST_HEADER> ListHead,
),
    Pointer<SLIST_ENTRY> Function(
  Pointer<SLIST_HEADER> ListHead,
)>('RtlInterlockedPopEntrySList');

Pointer<SLIST_ENTRY> RtlInterlockedPushEntrySList(
  Pointer<SLIST_HEADER> ListHead,
  Pointer<SLIST_ENTRY> ListEntry,
) =>
    _RtlInterlockedPushEntrySList(
      ListHead,
      ListEntry,
    );

late final _RtlInterlockedPushEntrySList = _ntdll.lookupFunction<
    Pointer<SLIST_ENTRY> Function(
  Pointer<SLIST_HEADER> ListHead,
  Pointer<SLIST_ENTRY> ListEntry,
),
    Pointer<SLIST_ENTRY> Function(
  Pointer<SLIST_HEADER> ListHead,
  Pointer<SLIST_ENTRY> ListEntry,
)>('RtlInterlockedPushEntrySList');

Pointer<SLIST_ENTRY> RtlInterlockedPushListSListEx(
  Pointer<SLIST_HEADER> ListHead,
  Pointer<SLIST_ENTRY> $List,
  Pointer<SLIST_ENTRY> ListEnd,
  int Count,
) =>
    _RtlInterlockedPushListSListEx(
      ListHead,
      $List,
      ListEnd,
      Count,
    );

late final _RtlInterlockedPushListSListEx = _ntdll.lookupFunction<
    Pointer<SLIST_ENTRY> Function(
  Pointer<SLIST_HEADER> ListHead,
  Pointer<SLIST_ENTRY> $List,
  Pointer<SLIST_ENTRY> ListEnd,
  Uint32 Count,
),
    Pointer<SLIST_ENTRY> Function(
  Pointer<SLIST_HEADER> ListHead,
  Pointer<SLIST_ENTRY> $List,
  Pointer<SLIST_ENTRY> ListEnd,
  int Count,
)>('RtlInterlockedPushListSListEx');

int RtlQueryDepthSList(
  Pointer<SLIST_HEADER> ListHead,
) =>
    _RtlQueryDepthSList(
      ListHead,
    );

late final _RtlQueryDepthSList = _ntdll.lookupFunction<
    Uint16 Function(
  Pointer<SLIST_HEADER> ListHead,
),
    int Function(
  Pointer<SLIST_HEADER> ListHead,
)>('RtlQueryDepthSList');
