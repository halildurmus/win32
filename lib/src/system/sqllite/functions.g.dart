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
import '../../system/sqllite/structs.g.dart';
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// winsqlite3.dll
// -----------------------------------------------------------------------
final _winsqlite3 = DynamicLibrary.open('winsqlite3.dll');

Pointer sqlite3_aggregate_context(
  Pointer<sqlite3_context> param0,
  int nBytes,
) =>
    _sqlite3_aggregate_context(
      param0,
      nBytes,
    );

late final _sqlite3_aggregate_context = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3_context> param0,
  Int32 nBytes,
),
    Pointer Function(
  Pointer<sqlite3_context> param0,
  int nBytes,
)>('sqlite3_aggregate_context');

int sqlite3_aggregate_count(
  Pointer<sqlite3_context> param0,
) =>
    _sqlite3_aggregate_count(
      param0,
    );

late final _sqlite3_aggregate_count = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_context> param0,
),
    int Function(
  Pointer<sqlite3_context> param0,
)>('sqlite3_aggregate_count');

int sqlite3_auto_extension(
  int xEntryPoint,
) =>
    _sqlite3_auto_extension(
      xEntryPoint,
    );

late final _sqlite3_auto_extension = _winsqlite3.lookupFunction<
    Int32 Function(
  IntPtr xEntryPoint,
),
    int Function(
  int xEntryPoint,
)>('sqlite3_auto_extension');

int sqlite3_backup_finish(
  Pointer<sqlite3_backup> p,
) =>
    _sqlite3_backup_finish(
      p,
    );

late final _sqlite3_backup_finish = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_backup> p,
),
    int Function(
  Pointer<sqlite3_backup> p,
)>('sqlite3_backup_finish');

Pointer<sqlite3_backup> sqlite3_backup_init(
  Pointer<sqlite3> pDest,
  Pointer<Utf8> zDestName,
  Pointer<sqlite3> pSource,
  Pointer<Utf8> zSourceName,
) =>
    _sqlite3_backup_init(
      pDest,
      zDestName,
      pSource,
      zSourceName,
    );

late final _sqlite3_backup_init = _winsqlite3.lookupFunction<
    Pointer<sqlite3_backup> Function(
  Pointer<sqlite3> pDest,
  Pointer<Utf8> zDestName,
  Pointer<sqlite3> pSource,
  Pointer<Utf8> zSourceName,
),
    Pointer<sqlite3_backup> Function(
  Pointer<sqlite3> pDest,
  Pointer<Utf8> zDestName,
  Pointer<sqlite3> pSource,
  Pointer<Utf8> zSourceName,
)>('sqlite3_backup_init');

int sqlite3_backup_pagecount(
  Pointer<sqlite3_backup> p,
) =>
    _sqlite3_backup_pagecount(
      p,
    );

late final _sqlite3_backup_pagecount = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_backup> p,
),
    int Function(
  Pointer<sqlite3_backup> p,
)>('sqlite3_backup_pagecount');

int sqlite3_backup_remaining(
  Pointer<sqlite3_backup> p,
) =>
    _sqlite3_backup_remaining(
      p,
    );

late final _sqlite3_backup_remaining = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_backup> p,
),
    int Function(
  Pointer<sqlite3_backup> p,
)>('sqlite3_backup_remaining');

int sqlite3_backup_step(
  Pointer<sqlite3_backup> p,
  int nPage,
) =>
    _sqlite3_backup_step(
      p,
      nPage,
    );

late final _sqlite3_backup_step = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_backup> p,
  Int32 nPage,
),
    int Function(
  Pointer<sqlite3_backup> p,
  int nPage,
)>('sqlite3_backup_step');

int sqlite3_bind_blob(
  Pointer<sqlite3_stmt> param0,
  int param1,
  Pointer param2,
  int n,
  int param4,
) =>
    _sqlite3_bind_blob(
      param0,
      param1,
      param2,
      n,
      param4,
    );

late final _sqlite3_bind_blob = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
  Pointer param2,
  Int32 n,
  IntPtr param4,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
  Pointer param2,
  int n,
  int param4,
)>('sqlite3_bind_blob');

int sqlite3_bind_blob64(
  Pointer<sqlite3_stmt> param0,
  int param1,
  Pointer param2,
  int param3,
  int param4,
) =>
    _sqlite3_bind_blob64(
      param0,
      param1,
      param2,
      param3,
      param4,
    );

late final _sqlite3_bind_blob64 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
  Pointer param2,
  Uint64 param3,
  IntPtr param4,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
  Pointer param2,
  int param3,
  int param4,
)>('sqlite3_bind_blob64');

int sqlite3_bind_double(
  Pointer<sqlite3_stmt> param0,
  int param1,
  double param2,
) =>
    _sqlite3_bind_double(
      param0,
      param1,
      param2,
    );

late final _sqlite3_bind_double = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
  Double param2,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
  double param2,
)>('sqlite3_bind_double');

int sqlite3_bind_int(
  Pointer<sqlite3_stmt> param0,
  int param1,
  int param2,
) =>
    _sqlite3_bind_int(
      param0,
      param1,
      param2,
    );

late final _sqlite3_bind_int = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
  Int32 param2,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
  int param2,
)>('sqlite3_bind_int');

int sqlite3_bind_int64(
  Pointer<sqlite3_stmt> param0,
  int param1,
  int param2,
) =>
    _sqlite3_bind_int64(
      param0,
      param1,
      param2,
    );

late final _sqlite3_bind_int64 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
  Int64 param2,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
  int param2,
)>('sqlite3_bind_int64');

int sqlite3_bind_null(
  Pointer<sqlite3_stmt> param0,
  int param1,
) =>
    _sqlite3_bind_null(
      param0,
      param1,
    );

late final _sqlite3_bind_null = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
)>('sqlite3_bind_null');

int sqlite3_bind_parameter_count(
  Pointer<sqlite3_stmt> param0,
) =>
    _sqlite3_bind_parameter_count(
      param0,
    );

late final _sqlite3_bind_parameter_count = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
)>('sqlite3_bind_parameter_count');

int sqlite3_bind_parameter_index(
  Pointer<sqlite3_stmt> param0,
  Pointer<Utf8> zName,
) =>
    _sqlite3_bind_parameter_index(
      param0,
      zName,
    );

late final _sqlite3_bind_parameter_index = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
  Pointer<Utf8> zName,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
  Pointer<Utf8> zName,
)>('sqlite3_bind_parameter_index');

Pointer<Utf8> sqlite3_bind_parameter_name(
  Pointer<sqlite3_stmt> param0,
  int param1,
) =>
    _sqlite3_bind_parameter_name(
      param0,
      param1,
    );

late final _sqlite3_bind_parameter_name = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
),
    Pointer<Utf8> Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
)>('sqlite3_bind_parameter_name');

int sqlite3_bind_pointer(
  Pointer<sqlite3_stmt> param0,
  int param1,
  Pointer param2,
  Pointer<Utf8> param3,
  int param4,
) =>
    _sqlite3_bind_pointer(
      param0,
      param1,
      param2,
      param3,
      param4,
    );

late final _sqlite3_bind_pointer = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
  Pointer param2,
  Pointer<Utf8> param3,
  IntPtr param4,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
  Pointer param2,
  Pointer<Utf8> param3,
  int param4,
)>('sqlite3_bind_pointer');

int sqlite3_bind_text(
  Pointer<sqlite3_stmt> param0,
  int param1,
  Pointer<Utf8> param2,
  int param3,
  int param4,
) =>
    _sqlite3_bind_text(
      param0,
      param1,
      param2,
      param3,
      param4,
    );

late final _sqlite3_bind_text = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
  Pointer<Utf8> param2,
  Int32 param3,
  IntPtr param4,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
  Pointer<Utf8> param2,
  int param3,
  int param4,
)>('sqlite3_bind_text');

int sqlite3_bind_text16(
  Pointer<sqlite3_stmt> param0,
  int param1,
  Pointer param2,
  int param3,
  int param4,
) =>
    _sqlite3_bind_text16(
      param0,
      param1,
      param2,
      param3,
      param4,
    );

late final _sqlite3_bind_text16 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
  Pointer param2,
  Int32 param3,
  IntPtr param4,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
  Pointer param2,
  int param3,
  int param4,
)>('sqlite3_bind_text16');

int sqlite3_bind_text64(
  Pointer<sqlite3_stmt> param0,
  int param1,
  Pointer<Utf8> param2,
  int param3,
  int param4,
  int encoding,
) =>
    _sqlite3_bind_text64(
      param0,
      param1,
      param2,
      param3,
      param4,
      encoding,
    );

late final _sqlite3_bind_text64 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
  Pointer<Utf8> param2,
  Uint64 param3,
  IntPtr param4,
  Uint8 encoding,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
  Pointer<Utf8> param2,
  int param3,
  int param4,
  int encoding,
)>('sqlite3_bind_text64');

int sqlite3_bind_value(
  Pointer<sqlite3_stmt> param0,
  int param1,
  Pointer<sqlite3_value> param2,
) =>
    _sqlite3_bind_value(
      param0,
      param1,
      param2,
    );

late final _sqlite3_bind_value = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
  Pointer<sqlite3_value> param2,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
  Pointer<sqlite3_value> param2,
)>('sqlite3_bind_value');

int sqlite3_bind_zeroblob(
  Pointer<sqlite3_stmt> param0,
  int param1,
  int n,
) =>
    _sqlite3_bind_zeroblob(
      param0,
      param1,
      n,
    );

late final _sqlite3_bind_zeroblob = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
  Int32 n,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
  int n,
)>('sqlite3_bind_zeroblob');

int sqlite3_bind_zeroblob64(
  Pointer<sqlite3_stmt> param0,
  int param1,
  int param2,
) =>
    _sqlite3_bind_zeroblob64(
      param0,
      param1,
      param2,
    );

late final _sqlite3_bind_zeroblob64 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
  Uint64 param2,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
  int param2,
)>('sqlite3_bind_zeroblob64');

int sqlite3_blob_bytes(
  Pointer<sqlite3_blob> param0,
) =>
    _sqlite3_blob_bytes(
      param0,
    );

late final _sqlite3_blob_bytes = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_blob> param0,
),
    int Function(
  Pointer<sqlite3_blob> param0,
)>('sqlite3_blob_bytes');

int sqlite3_blob_close(
  Pointer<sqlite3_blob> param0,
) =>
    _sqlite3_blob_close(
      param0,
    );

late final _sqlite3_blob_close = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_blob> param0,
),
    int Function(
  Pointer<sqlite3_blob> param0,
)>('sqlite3_blob_close');

int sqlite3_blob_open(
  Pointer<sqlite3> param0,
  Pointer<Utf8> zDb,
  Pointer<Utf8> zTable,
  Pointer<Utf8> zColumn,
  int iRow,
  int flags,
  Pointer<Pointer<sqlite3_blob>> ppBlob,
) =>
    _sqlite3_blob_open(
      param0,
      zDb,
      zTable,
      zColumn,
      iRow,
      flags,
      ppBlob,
    );

late final _sqlite3_blob_open = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
  Pointer<Utf8> zDb,
  Pointer<Utf8> zTable,
  Pointer<Utf8> zColumn,
  Int64 iRow,
  Int32 flags,
  Pointer<Pointer<sqlite3_blob>> ppBlob,
),
    int Function(
  Pointer<sqlite3> param0,
  Pointer<Utf8> zDb,
  Pointer<Utf8> zTable,
  Pointer<Utf8> zColumn,
  int iRow,
  int flags,
  Pointer<Pointer<sqlite3_blob>> ppBlob,
)>('sqlite3_blob_open');

int sqlite3_blob_read(
  Pointer<sqlite3_blob> param0,
  Pointer Z,
  int N,
  int iOffset,
) =>
    _sqlite3_blob_read(
      param0,
      Z,
      N,
      iOffset,
    );

late final _sqlite3_blob_read = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_blob> param0,
  Pointer Z,
  Int32 N,
  Int32 iOffset,
),
    int Function(
  Pointer<sqlite3_blob> param0,
  Pointer Z,
  int N,
  int iOffset,
)>('sqlite3_blob_read');

int sqlite3_blob_reopen(
  Pointer<sqlite3_blob> param0,
  int param1,
) =>
    _sqlite3_blob_reopen(
      param0,
      param1,
    );

late final _sqlite3_blob_reopen = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_blob> param0,
  Int64 param1,
),
    int Function(
  Pointer<sqlite3_blob> param0,
  int param1,
)>('sqlite3_blob_reopen');

int sqlite3_blob_write(
  Pointer<sqlite3_blob> param0,
  Pointer z,
  int n,
  int iOffset,
) =>
    _sqlite3_blob_write(
      param0,
      z,
      n,
      iOffset,
    );

late final _sqlite3_blob_write = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_blob> param0,
  Pointer z,
  Int32 n,
  Int32 iOffset,
),
    int Function(
  Pointer<sqlite3_blob> param0,
  Pointer z,
  int n,
  int iOffset,
)>('sqlite3_blob_write');

int sqlite3_busy_handler(
  Pointer<sqlite3> param0,
  int param1,
  Pointer param2,
) =>
    _sqlite3_busy_handler(
      param0,
      param1,
      param2,
    );

late final _sqlite3_busy_handler = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
  IntPtr param1,
  Pointer param2,
),
    int Function(
  Pointer<sqlite3> param0,
  int param1,
  Pointer param2,
)>('sqlite3_busy_handler');

int sqlite3_busy_timeout(
  Pointer<sqlite3> param0,
  int ms,
) =>
    _sqlite3_busy_timeout(
      param0,
      ms,
    );

late final _sqlite3_busy_timeout = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
  Int32 ms,
),
    int Function(
  Pointer<sqlite3> param0,
  int ms,
)>('sqlite3_busy_timeout');

int sqlite3_cancel_auto_extension(
  int xEntryPoint,
) =>
    _sqlite3_cancel_auto_extension(
      xEntryPoint,
    );

late final _sqlite3_cancel_auto_extension = _winsqlite3.lookupFunction<
    Int32 Function(
  IntPtr xEntryPoint,
),
    int Function(
  int xEntryPoint,
)>('sqlite3_cancel_auto_extension');

int sqlite3_changes(
  Pointer<sqlite3> param0,
) =>
    _sqlite3_changes(
      param0,
    );

late final _sqlite3_changes = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
),
    int Function(
  Pointer<sqlite3> param0,
)>('sqlite3_changes');

int sqlite3_clear_bindings(
  Pointer<sqlite3_stmt> param0,
) =>
    _sqlite3_clear_bindings(
      param0,
    );

late final _sqlite3_clear_bindings = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
)>('sqlite3_clear_bindings');

int sqlite3_close(
  Pointer<sqlite3> param0,
) =>
    _sqlite3_close(
      param0,
    );

late final _sqlite3_close = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
),
    int Function(
  Pointer<sqlite3> param0,
)>('sqlite3_close');

int sqlite3_close_v2(
  Pointer<sqlite3> param0,
) =>
    _sqlite3_close_v2(
      param0,
    );

late final _sqlite3_close_v2 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
),
    int Function(
  Pointer<sqlite3> param0,
)>('sqlite3_close_v2');

int sqlite3_collation_needed(
  Pointer<sqlite3> param0,
  Pointer param1,
  int param2,
) =>
    _sqlite3_collation_needed(
      param0,
      param1,
      param2,
    );

late final _sqlite3_collation_needed = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
  Pointer param1,
  IntPtr param2,
),
    int Function(
  Pointer<sqlite3> param0,
  Pointer param1,
  int param2,
)>('sqlite3_collation_needed');

int sqlite3_collation_needed16(
  Pointer<sqlite3> param0,
  Pointer param1,
  int param2,
) =>
    _sqlite3_collation_needed16(
      param0,
      param1,
      param2,
    );

late final _sqlite3_collation_needed16 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
  Pointer param1,
  IntPtr param2,
),
    int Function(
  Pointer<sqlite3> param0,
  Pointer param1,
  int param2,
)>('sqlite3_collation_needed16');

Pointer sqlite3_column_blob(
  Pointer<sqlite3_stmt> param0,
  int iCol,
) =>
    _sqlite3_column_blob(
      param0,
      iCol,
    );

late final _sqlite3_column_blob = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3_stmt> param0,
  Int32 iCol,
),
    Pointer Function(
  Pointer<sqlite3_stmt> param0,
  int iCol,
)>('sqlite3_column_blob');

int sqlite3_column_bytes(
  Pointer<sqlite3_stmt> param0,
  int iCol,
) =>
    _sqlite3_column_bytes(
      param0,
      iCol,
    );

late final _sqlite3_column_bytes = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
  Int32 iCol,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
  int iCol,
)>('sqlite3_column_bytes');

int sqlite3_column_bytes16(
  Pointer<sqlite3_stmt> param0,
  int iCol,
) =>
    _sqlite3_column_bytes16(
      param0,
      iCol,
    );

late final _sqlite3_column_bytes16 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
  Int32 iCol,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
  int iCol,
)>('sqlite3_column_bytes16');

int sqlite3_column_count(
  Pointer<sqlite3_stmt> pStmt,
) =>
    _sqlite3_column_count(
      pStmt,
    );

late final _sqlite3_column_count = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> pStmt,
),
    int Function(
  Pointer<sqlite3_stmt> pStmt,
)>('sqlite3_column_count');

Pointer<Utf8> sqlite3_column_database_name(
  Pointer<sqlite3_stmt> param0,
  int param1,
) =>
    _sqlite3_column_database_name(
      param0,
      param1,
    );

late final _sqlite3_column_database_name = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
),
    Pointer<Utf8> Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
)>('sqlite3_column_database_name');

Pointer sqlite3_column_database_name16(
  Pointer<sqlite3_stmt> param0,
  int param1,
) =>
    _sqlite3_column_database_name16(
      param0,
      param1,
    );

late final _sqlite3_column_database_name16 = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
),
    Pointer Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
)>('sqlite3_column_database_name16');

Pointer<Utf8> sqlite3_column_decltype(
  Pointer<sqlite3_stmt> param0,
  int param1,
) =>
    _sqlite3_column_decltype(
      param0,
      param1,
    );

late final _sqlite3_column_decltype = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
),
    Pointer<Utf8> Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
)>('sqlite3_column_decltype');

Pointer sqlite3_column_decltype16(
  Pointer<sqlite3_stmt> param0,
  int param1,
) =>
    _sqlite3_column_decltype16(
      param0,
      param1,
    );

late final _sqlite3_column_decltype16 = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
),
    Pointer Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
)>('sqlite3_column_decltype16');

double sqlite3_column_double(
  Pointer<sqlite3_stmt> param0,
  int iCol,
) =>
    _sqlite3_column_double(
      param0,
      iCol,
    );

late final _sqlite3_column_double = _winsqlite3.lookupFunction<
    Double Function(
  Pointer<sqlite3_stmt> param0,
  Int32 iCol,
),
    double Function(
  Pointer<sqlite3_stmt> param0,
  int iCol,
)>('sqlite3_column_double');

int sqlite3_column_int(
  Pointer<sqlite3_stmt> param0,
  int iCol,
) =>
    _sqlite3_column_int(
      param0,
      iCol,
    );

late final _sqlite3_column_int = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
  Int32 iCol,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
  int iCol,
)>('sqlite3_column_int');

int sqlite3_column_int64(
  Pointer<sqlite3_stmt> param0,
  int iCol,
) =>
    _sqlite3_column_int64(
      param0,
      iCol,
    );

late final _sqlite3_column_int64 = _winsqlite3.lookupFunction<
    Int64 Function(
  Pointer<sqlite3_stmt> param0,
  Int32 iCol,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
  int iCol,
)>('sqlite3_column_int64');

Pointer<Utf8> sqlite3_column_name(
  Pointer<sqlite3_stmt> param0,
  int N,
) =>
    _sqlite3_column_name(
      param0,
      N,
    );

late final _sqlite3_column_name = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<sqlite3_stmt> param0,
  Int32 N,
),
    Pointer<Utf8> Function(
  Pointer<sqlite3_stmt> param0,
  int N,
)>('sqlite3_column_name');

Pointer sqlite3_column_name16(
  Pointer<sqlite3_stmt> param0,
  int N,
) =>
    _sqlite3_column_name16(
      param0,
      N,
    );

late final _sqlite3_column_name16 = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3_stmt> param0,
  Int32 N,
),
    Pointer Function(
  Pointer<sqlite3_stmt> param0,
  int N,
)>('sqlite3_column_name16');

Pointer<Utf8> sqlite3_column_origin_name(
  Pointer<sqlite3_stmt> param0,
  int param1,
) =>
    _sqlite3_column_origin_name(
      param0,
      param1,
    );

late final _sqlite3_column_origin_name = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
),
    Pointer<Utf8> Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
)>('sqlite3_column_origin_name');

Pointer sqlite3_column_origin_name16(
  Pointer<sqlite3_stmt> param0,
  int param1,
) =>
    _sqlite3_column_origin_name16(
      param0,
      param1,
    );

late final _sqlite3_column_origin_name16 = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
),
    Pointer Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
)>('sqlite3_column_origin_name16');

Pointer<Utf8> sqlite3_column_table_name(
  Pointer<sqlite3_stmt> param0,
  int param1,
) =>
    _sqlite3_column_table_name(
      param0,
      param1,
    );

late final _sqlite3_column_table_name = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
),
    Pointer<Utf8> Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
)>('sqlite3_column_table_name');

Pointer sqlite3_column_table_name16(
  Pointer<sqlite3_stmt> param0,
  int param1,
) =>
    _sqlite3_column_table_name16(
      param0,
      param1,
    );

late final _sqlite3_column_table_name16 = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3_stmt> param0,
  Int32 param1,
),
    Pointer Function(
  Pointer<sqlite3_stmt> param0,
  int param1,
)>('sqlite3_column_table_name16');

Pointer<Uint8> sqlite3_column_text(
  Pointer<sqlite3_stmt> param0,
  int iCol,
) =>
    _sqlite3_column_text(
      param0,
      iCol,
    );

late final _sqlite3_column_text = _winsqlite3.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<sqlite3_stmt> param0,
  Int32 iCol,
),
    Pointer<Uint8> Function(
  Pointer<sqlite3_stmt> param0,
  int iCol,
)>('sqlite3_column_text');

Pointer sqlite3_column_text16(
  Pointer<sqlite3_stmt> param0,
  int iCol,
) =>
    _sqlite3_column_text16(
      param0,
      iCol,
    );

late final _sqlite3_column_text16 = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3_stmt> param0,
  Int32 iCol,
),
    Pointer Function(
  Pointer<sqlite3_stmt> param0,
  int iCol,
)>('sqlite3_column_text16');

int sqlite3_column_type(
  Pointer<sqlite3_stmt> param0,
  int iCol,
) =>
    _sqlite3_column_type(
      param0,
      iCol,
    );

late final _sqlite3_column_type = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
  Int32 iCol,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
  int iCol,
)>('sqlite3_column_type');

Pointer<sqlite3_value> sqlite3_column_value(
  Pointer<sqlite3_stmt> param0,
  int iCol,
) =>
    _sqlite3_column_value(
      param0,
      iCol,
    );

late final _sqlite3_column_value = _winsqlite3.lookupFunction<
    Pointer<sqlite3_value> Function(
  Pointer<sqlite3_stmt> param0,
  Int32 iCol,
),
    Pointer<sqlite3_value> Function(
  Pointer<sqlite3_stmt> param0,
  int iCol,
)>('sqlite3_column_value');

Pointer sqlite3_commit_hook(
  Pointer<sqlite3> param0,
  int param1,
  Pointer param2,
) =>
    _sqlite3_commit_hook(
      param0,
      param1,
      param2,
    );

late final _sqlite3_commit_hook = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3> param0,
  IntPtr param1,
  Pointer param2,
),
    Pointer Function(
  Pointer<sqlite3> param0,
  int param1,
  Pointer param2,
)>('sqlite3_commit_hook');

Pointer<Utf8> sqlite3_compileoption_get(
  int N,
) =>
    _sqlite3_compileoption_get(
      N,
    );

late final _sqlite3_compileoption_get = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Int32 N,
),
    Pointer<Utf8> Function(
  int N,
)>('sqlite3_compileoption_get');

int sqlite3_compileoption_used(
  Pointer<Utf8> zOptName,
) =>
    _sqlite3_compileoption_used(
      zOptName,
    );

late final _sqlite3_compileoption_used = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<Utf8> zOptName,
),
    int Function(
  Pointer<Utf8> zOptName,
)>('sqlite3_compileoption_used');

int sqlite3_complete(
  Pointer<Utf8> sql,
) =>
    _sqlite3_complete(
      sql,
    );

late final _sqlite3_complete = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<Utf8> sql,
),
    int Function(
  Pointer<Utf8> sql,
)>('sqlite3_complete');

int sqlite3_complete16(
  Pointer sql,
) =>
    _sqlite3_complete16(
      sql,
    );

late final _sqlite3_complete16 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer sql,
),
    int Function(
  Pointer sql,
)>('sqlite3_complete16');

int sqlite3_config(
  int param0,
) =>
    _sqlite3_config(
      param0,
    );

late final _sqlite3_config = _winsqlite3.lookupFunction<
    Int32 Function(
  Int32 param0,
),
    int Function(
  int param0,
)>('sqlite3_config');

Pointer<sqlite3> sqlite3_context_db_handle(
  Pointer<sqlite3_context> param0,
) =>
    _sqlite3_context_db_handle(
      param0,
    );

late final _sqlite3_context_db_handle = _winsqlite3.lookupFunction<
    Pointer<sqlite3> Function(
  Pointer<sqlite3_context> param0,
),
    Pointer<sqlite3> Function(
  Pointer<sqlite3_context> param0,
)>('sqlite3_context_db_handle');

int sqlite3_create_collation(
  Pointer<sqlite3> param0,
  Pointer<Utf8> zName,
  int eTextRep,
  Pointer pArg,
  int xCompare,
) =>
    _sqlite3_create_collation(
      param0,
      zName,
      eTextRep,
      pArg,
      xCompare,
    );

late final _sqlite3_create_collation = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
  Pointer<Utf8> zName,
  Int32 eTextRep,
  Pointer pArg,
  IntPtr xCompare,
),
    int Function(
  Pointer<sqlite3> param0,
  Pointer<Utf8> zName,
  int eTextRep,
  Pointer pArg,
  int xCompare,
)>('sqlite3_create_collation');

int sqlite3_create_collation16(
  Pointer<sqlite3> param0,
  Pointer zName,
  int eTextRep,
  Pointer pArg,
  int xCompare,
) =>
    _sqlite3_create_collation16(
      param0,
      zName,
      eTextRep,
      pArg,
      xCompare,
    );

late final _sqlite3_create_collation16 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
  Pointer zName,
  Int32 eTextRep,
  Pointer pArg,
  IntPtr xCompare,
),
    int Function(
  Pointer<sqlite3> param0,
  Pointer zName,
  int eTextRep,
  Pointer pArg,
  int xCompare,
)>('sqlite3_create_collation16');

int sqlite3_create_collation_v2(
  Pointer<sqlite3> param0,
  Pointer<Utf8> zName,
  int eTextRep,
  Pointer pArg,
  int xCompare,
  int xDestroy,
) =>
    _sqlite3_create_collation_v2(
      param0,
      zName,
      eTextRep,
      pArg,
      xCompare,
      xDestroy,
    );

late final _sqlite3_create_collation_v2 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
  Pointer<Utf8> zName,
  Int32 eTextRep,
  Pointer pArg,
  IntPtr xCompare,
  IntPtr xDestroy,
),
    int Function(
  Pointer<sqlite3> param0,
  Pointer<Utf8> zName,
  int eTextRep,
  Pointer pArg,
  int xCompare,
  int xDestroy,
)>('sqlite3_create_collation_v2');

Pointer<Utf8> sqlite3_create_filename(
  Pointer<Utf8> zDatabase,
  Pointer<Utf8> zJournal,
  Pointer<Utf8> zWal,
  int nParam,
  Pointer<Pointer<Int8>> azParam,
) =>
    _sqlite3_create_filename(
      zDatabase,
      zJournal,
      zWal,
      nParam,
      azParam,
    );

late final _sqlite3_create_filename = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> zDatabase,
  Pointer<Utf8> zJournal,
  Pointer<Utf8> zWal,
  Int32 nParam,
  Pointer<Pointer<Int8>> azParam,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> zDatabase,
  Pointer<Utf8> zJournal,
  Pointer<Utf8> zWal,
  int nParam,
  Pointer<Pointer<Int8>> azParam,
)>('sqlite3_create_filename');

int sqlite3_create_function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zFunctionName,
  int nArg,
  int eTextRep,
  Pointer pApp,
  int xFunc,
  int xStep,
  int xFinal,
) =>
    _sqlite3_create_function(
      db,
      zFunctionName,
      nArg,
      eTextRep,
      pApp,
      xFunc,
      xStep,
      xFinal,
    );

late final _sqlite3_create_function = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zFunctionName,
  Int32 nArg,
  Int32 eTextRep,
  Pointer pApp,
  IntPtr xFunc,
  IntPtr xStep,
  IntPtr xFinal,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zFunctionName,
  int nArg,
  int eTextRep,
  Pointer pApp,
  int xFunc,
  int xStep,
  int xFinal,
)>('sqlite3_create_function');

int sqlite3_create_function16(
  Pointer<sqlite3> db,
  Pointer zFunctionName,
  int nArg,
  int eTextRep,
  Pointer pApp,
  int xFunc,
  int xStep,
  int xFinal,
) =>
    _sqlite3_create_function16(
      db,
      zFunctionName,
      nArg,
      eTextRep,
      pApp,
      xFunc,
      xStep,
      xFinal,
    );

late final _sqlite3_create_function16 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer zFunctionName,
  Int32 nArg,
  Int32 eTextRep,
  Pointer pApp,
  IntPtr xFunc,
  IntPtr xStep,
  IntPtr xFinal,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer zFunctionName,
  int nArg,
  int eTextRep,
  Pointer pApp,
  int xFunc,
  int xStep,
  int xFinal,
)>('sqlite3_create_function16');

int sqlite3_create_function_v2(
  Pointer<sqlite3> db,
  Pointer<Utf8> zFunctionName,
  int nArg,
  int eTextRep,
  Pointer pApp,
  int xFunc,
  int xStep,
  int xFinal,
  int xDestroy,
) =>
    _sqlite3_create_function_v2(
      db,
      zFunctionName,
      nArg,
      eTextRep,
      pApp,
      xFunc,
      xStep,
      xFinal,
      xDestroy,
    );

late final _sqlite3_create_function_v2 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zFunctionName,
  Int32 nArg,
  Int32 eTextRep,
  Pointer pApp,
  IntPtr xFunc,
  IntPtr xStep,
  IntPtr xFinal,
  IntPtr xDestroy,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zFunctionName,
  int nArg,
  int eTextRep,
  Pointer pApp,
  int xFunc,
  int xStep,
  int xFinal,
  int xDestroy,
)>('sqlite3_create_function_v2');

int sqlite3_create_module(
  Pointer<sqlite3> db,
  Pointer<Utf8> zName,
  Pointer<sqlite3_module> p,
  Pointer pClientData,
) =>
    _sqlite3_create_module(
      db,
      zName,
      p,
      pClientData,
    );

late final _sqlite3_create_module = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zName,
  Pointer<sqlite3_module> p,
  Pointer pClientData,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zName,
  Pointer<sqlite3_module> p,
  Pointer pClientData,
)>('sqlite3_create_module');

int sqlite3_create_module_v2(
  Pointer<sqlite3> db,
  Pointer<Utf8> zName,
  Pointer<sqlite3_module> p,
  Pointer pClientData,
  int xDestroy,
) =>
    _sqlite3_create_module_v2(
      db,
      zName,
      p,
      pClientData,
      xDestroy,
    );

late final _sqlite3_create_module_v2 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zName,
  Pointer<sqlite3_module> p,
  Pointer pClientData,
  IntPtr xDestroy,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zName,
  Pointer<sqlite3_module> p,
  Pointer pClientData,
  int xDestroy,
)>('sqlite3_create_module_v2');

int sqlite3_create_window_function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zFunctionName,
  int nArg,
  int eTextRep,
  Pointer pApp,
  int xStep,
  int xFinal,
  int xValue,
  int xInverse,
  int xDestroy,
) =>
    _sqlite3_create_window_function(
      db,
      zFunctionName,
      nArg,
      eTextRep,
      pApp,
      xStep,
      xFinal,
      xValue,
      xInverse,
      xDestroy,
    );

late final _sqlite3_create_window_function = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zFunctionName,
  Int32 nArg,
  Int32 eTextRep,
  Pointer pApp,
  IntPtr xStep,
  IntPtr xFinal,
  IntPtr xValue,
  IntPtr xInverse,
  IntPtr xDestroy,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zFunctionName,
  int nArg,
  int eTextRep,
  Pointer pApp,
  int xStep,
  int xFinal,
  int xValue,
  int xInverse,
  int xDestroy,
)>('sqlite3_create_window_function');

int sqlite3_data_count(
  Pointer<sqlite3_stmt> pStmt,
) =>
    _sqlite3_data_count(
      pStmt,
    );

late final _sqlite3_data_count = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> pStmt,
),
    int Function(
  Pointer<sqlite3_stmt> pStmt,
)>('sqlite3_data_count');

Pointer<sqlite3_file> sqlite3_database_file_object(
  Pointer<Utf8> param0,
) =>
    _sqlite3_database_file_object(
      param0,
    );

late final _sqlite3_database_file_object = _winsqlite3.lookupFunction<
    Pointer<sqlite3_file> Function(
  Pointer<Utf8> param0,
),
    Pointer<sqlite3_file> Function(
  Pointer<Utf8> param0,
)>('sqlite3_database_file_object');

int sqlite3_db_cacheflush(
  Pointer<sqlite3> param0,
) =>
    _sqlite3_db_cacheflush(
      param0,
    );

late final _sqlite3_db_cacheflush = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
),
    int Function(
  Pointer<sqlite3> param0,
)>('sqlite3_db_cacheflush');

int sqlite3_db_config(
  Pointer<sqlite3> param0,
  int op,
) =>
    _sqlite3_db_config(
      param0,
      op,
    );

late final _sqlite3_db_config = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
  Int32 op,
),
    int Function(
  Pointer<sqlite3> param0,
  int op,
)>('sqlite3_db_config');

Pointer<Utf8> sqlite3_db_filename(
  Pointer<sqlite3> db,
  Pointer<Utf8> zDbName,
) =>
    _sqlite3_db_filename(
      db,
      zDbName,
    );

late final _sqlite3_db_filename = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zDbName,
),
    Pointer<Utf8> Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zDbName,
)>('sqlite3_db_filename');

Pointer<sqlite3> sqlite3_db_handle(
  Pointer<sqlite3_stmt> param0,
) =>
    _sqlite3_db_handle(
      param0,
    );

late final _sqlite3_db_handle = _winsqlite3.lookupFunction<
    Pointer<sqlite3> Function(
  Pointer<sqlite3_stmt> param0,
),
    Pointer<sqlite3> Function(
  Pointer<sqlite3_stmt> param0,
)>('sqlite3_db_handle');

Pointer<sqlite3_mutex> sqlite3_db_mutex(
  Pointer<sqlite3> param0,
) =>
    _sqlite3_db_mutex(
      param0,
    );

late final _sqlite3_db_mutex = _winsqlite3.lookupFunction<
    Pointer<sqlite3_mutex> Function(
  Pointer<sqlite3> param0,
),
    Pointer<sqlite3_mutex> Function(
  Pointer<sqlite3> param0,
)>('sqlite3_db_mutex');

int sqlite3_db_readonly(
  Pointer<sqlite3> db,
  Pointer<Utf8> zDbName,
) =>
    _sqlite3_db_readonly(
      db,
      zDbName,
    );

late final _sqlite3_db_readonly = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zDbName,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zDbName,
)>('sqlite3_db_readonly');

int sqlite3_db_release_memory(
  Pointer<sqlite3> param0,
) =>
    _sqlite3_db_release_memory(
      param0,
    );

late final _sqlite3_db_release_memory = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
),
    int Function(
  Pointer<sqlite3> param0,
)>('sqlite3_db_release_memory');

int sqlite3_db_status(
  Pointer<sqlite3> param0,
  int op,
  Pointer<Int32> pCur,
  Pointer<Int32> pHiwtr,
  int resetFlg,
) =>
    _sqlite3_db_status(
      param0,
      op,
      pCur,
      pHiwtr,
      resetFlg,
    );

late final _sqlite3_db_status = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
  Int32 op,
  Pointer<Int32> pCur,
  Pointer<Int32> pHiwtr,
  Int32 resetFlg,
),
    int Function(
  Pointer<sqlite3> param0,
  int op,
  Pointer<Int32> pCur,
  Pointer<Int32> pHiwtr,
  int resetFlg,
)>('sqlite3_db_status');

int sqlite3_declare_vtab(
  Pointer<sqlite3> param0,
  Pointer<Utf8> zSQL,
) =>
    _sqlite3_declare_vtab(
      param0,
      zSQL,
    );

late final _sqlite3_declare_vtab = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
  Pointer<Utf8> zSQL,
),
    int Function(
  Pointer<sqlite3> param0,
  Pointer<Utf8> zSQL,
)>('sqlite3_declare_vtab');

int sqlite3_deserialize(
  Pointer<sqlite3> db,
  Pointer<Utf8> zSchema,
  Pointer<Uint8> pData,
  int szDb,
  int szBuf,
  int mFlags,
) =>
    _sqlite3_deserialize(
      db,
      zSchema,
      pData,
      szDb,
      szBuf,
      mFlags,
    );

late final _sqlite3_deserialize = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zSchema,
  Pointer<Uint8> pData,
  Int64 szDb,
  Int64 szBuf,
  Uint32 mFlags,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zSchema,
  Pointer<Uint8> pData,
  int szDb,
  int szBuf,
  int mFlags,
)>('sqlite3_deserialize');

int sqlite3_drop_modules(
  Pointer<sqlite3> db,
  Pointer<Pointer<Int8>> azKeep,
) =>
    _sqlite3_drop_modules(
      db,
      azKeep,
    );

late final _sqlite3_drop_modules = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer<Pointer<Int8>> azKeep,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer<Pointer<Int8>> azKeep,
)>('sqlite3_drop_modules');

int sqlite3_enable_load_extension(
  Pointer<sqlite3> db,
  int onoff,
) =>
    _sqlite3_enable_load_extension(
      db,
      onoff,
    );

late final _sqlite3_enable_load_extension = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Int32 onoff,
),
    int Function(
  Pointer<sqlite3> db,
  int onoff,
)>('sqlite3_enable_load_extension');

int sqlite3_enable_shared_cache(
  int param0,
) =>
    _sqlite3_enable_shared_cache(
      param0,
    );

late final _sqlite3_enable_shared_cache = _winsqlite3.lookupFunction<
    Int32 Function(
  Int32 param0,
),
    int Function(
  int param0,
)>('sqlite3_enable_shared_cache');

int sqlite3_errcode(
  Pointer<sqlite3> db,
) =>
    _sqlite3_errcode(
      db,
    );

late final _sqlite3_errcode = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
),
    int Function(
  Pointer<sqlite3> db,
)>('sqlite3_errcode');

Pointer<Utf8> sqlite3_errmsg(
  Pointer<sqlite3> param0,
) =>
    _sqlite3_errmsg(
      param0,
    );

late final _sqlite3_errmsg = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<sqlite3> param0,
),
    Pointer<Utf8> Function(
  Pointer<sqlite3> param0,
)>('sqlite3_errmsg');

Pointer sqlite3_errmsg16(
  Pointer<sqlite3> param0,
) =>
    _sqlite3_errmsg16(
      param0,
    );

late final _sqlite3_errmsg16 = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3> param0,
),
    Pointer Function(
  Pointer<sqlite3> param0,
)>('sqlite3_errmsg16');

Pointer<Utf8> sqlite3_errstr(
  int param0,
) =>
    _sqlite3_errstr(
      param0,
    );

late final _sqlite3_errstr = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Int32 param0,
),
    Pointer<Utf8> Function(
  int param0,
)>('sqlite3_errstr');

int sqlite3_exec(
  Pointer<sqlite3> param0,
  Pointer<Utf8> sql,
  int callback,
  Pointer param3,
  Pointer<Pointer<Int8>> errmsg,
) =>
    _sqlite3_exec(
      param0,
      sql,
      callback,
      param3,
      errmsg,
    );

late final _sqlite3_exec = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
  Pointer<Utf8> sql,
  IntPtr callback,
  Pointer param3,
  Pointer<Pointer<Int8>> errmsg,
),
    int Function(
  Pointer<sqlite3> param0,
  Pointer<Utf8> sql,
  int callback,
  Pointer param3,
  Pointer<Pointer<Int8>> errmsg,
)>('sqlite3_exec');

Pointer<Utf8> sqlite3_expanded_sql(
  Pointer<sqlite3_stmt> pStmt,
) =>
    _sqlite3_expanded_sql(
      pStmt,
    );

late final _sqlite3_expanded_sql = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<sqlite3_stmt> pStmt,
),
    Pointer<Utf8> Function(
  Pointer<sqlite3_stmt> pStmt,
)>('sqlite3_expanded_sql');

int sqlite3_expired(
  Pointer<sqlite3_stmt> param0,
) =>
    _sqlite3_expired(
      param0,
    );

late final _sqlite3_expired = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
)>('sqlite3_expired');

int sqlite3_extended_errcode(
  Pointer<sqlite3> db,
) =>
    _sqlite3_extended_errcode(
      db,
    );

late final _sqlite3_extended_errcode = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
),
    int Function(
  Pointer<sqlite3> db,
)>('sqlite3_extended_errcode');

int sqlite3_extended_result_codes(
  Pointer<sqlite3> param0,
  int onoff,
) =>
    _sqlite3_extended_result_codes(
      param0,
      onoff,
    );

late final _sqlite3_extended_result_codes = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
  Int32 onoff,
),
    int Function(
  Pointer<sqlite3> param0,
  int onoff,
)>('sqlite3_extended_result_codes');

int sqlite3_file_control(
  Pointer<sqlite3> param0,
  Pointer<Utf8> zDbName,
  int op,
  Pointer param3,
) =>
    _sqlite3_file_control(
      param0,
      zDbName,
      op,
      param3,
    );

late final _sqlite3_file_control = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
  Pointer<Utf8> zDbName,
  Int32 op,
  Pointer param3,
),
    int Function(
  Pointer<sqlite3> param0,
  Pointer<Utf8> zDbName,
  int op,
  Pointer param3,
)>('sqlite3_file_control');

Pointer<Utf8> sqlite3_filename_database(
  Pointer<Utf8> param0,
) =>
    _sqlite3_filename_database(
      param0,
    );

late final _sqlite3_filename_database = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> param0,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> param0,
)>('sqlite3_filename_database');

Pointer<Utf8> sqlite3_filename_journal(
  Pointer<Utf8> param0,
) =>
    _sqlite3_filename_journal(
      param0,
    );

late final _sqlite3_filename_journal = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> param0,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> param0,
)>('sqlite3_filename_journal');

Pointer<Utf8> sqlite3_filename_wal(
  Pointer<Utf8> param0,
) =>
    _sqlite3_filename_wal(
      param0,
    );

late final _sqlite3_filename_wal = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> param0,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> param0,
)>('sqlite3_filename_wal');

int sqlite3_finalize(
  Pointer<sqlite3_stmt> pStmt,
) =>
    _sqlite3_finalize(
      pStmt,
    );

late final _sqlite3_finalize = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> pStmt,
),
    int Function(
  Pointer<sqlite3_stmt> pStmt,
)>('sqlite3_finalize');

void sqlite3_free(
  Pointer param0,
) =>
    _sqlite3_free(
      param0,
    );

late final _sqlite3_free = _winsqlite3.lookupFunction<
    Void Function(
  Pointer param0,
),
    void Function(
  Pointer param0,
)>('sqlite3_free');

void sqlite3_free_filename(
  Pointer<Utf8> param0,
) =>
    _sqlite3_free_filename(
      param0,
    );

late final _sqlite3_free_filename = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<Utf8> param0,
),
    void Function(
  Pointer<Utf8> param0,
)>('sqlite3_free_filename');

void sqlite3_free_table(
  Pointer<Pointer<Int8>> result,
) =>
    _sqlite3_free_table(
      result,
    );

late final _sqlite3_free_table = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<Pointer<Int8>> result,
),
    void Function(
  Pointer<Pointer<Int8>> result,
)>('sqlite3_free_table');

int sqlite3_get_autocommit(
  Pointer<sqlite3> param0,
) =>
    _sqlite3_get_autocommit(
      param0,
    );

late final _sqlite3_get_autocommit = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
),
    int Function(
  Pointer<sqlite3> param0,
)>('sqlite3_get_autocommit');

Pointer sqlite3_get_auxdata(
  Pointer<sqlite3_context> param0,
  int N,
) =>
    _sqlite3_get_auxdata(
      param0,
      N,
    );

late final _sqlite3_get_auxdata = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3_context> param0,
  Int32 N,
),
    Pointer Function(
  Pointer<sqlite3_context> param0,
  int N,
)>('sqlite3_get_auxdata');

int sqlite3_get_table(
  Pointer<sqlite3> db,
  Pointer<Utf8> zSql,
  Pointer<Pointer<Pointer<Int8>>> pazResult,
  Pointer<Int32> pnRow,
  Pointer<Int32> pnColumn,
  Pointer<Pointer<Int8>> pzErrmsg,
) =>
    _sqlite3_get_table(
      db,
      zSql,
      pazResult,
      pnRow,
      pnColumn,
      pzErrmsg,
    );

late final _sqlite3_get_table = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zSql,
  Pointer<Pointer<Pointer<Int8>>> pazResult,
  Pointer<Int32> pnRow,
  Pointer<Int32> pnColumn,
  Pointer<Pointer<Int8>> pzErrmsg,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zSql,
  Pointer<Pointer<Pointer<Int8>>> pazResult,
  Pointer<Int32> pnRow,
  Pointer<Int32> pnColumn,
  Pointer<Pointer<Int8>> pzErrmsg,
)>('sqlite3_get_table');

int sqlite3_global_recover() => _sqlite3_global_recover();

late final _sqlite3_global_recover = _winsqlite3
    .lookupFunction<Int32 Function(), int Function()>('sqlite3_global_recover');

int sqlite3_hard_heap_limit64(
  int N,
) =>
    _sqlite3_hard_heap_limit64(
      N,
    );

late final _sqlite3_hard_heap_limit64 = _winsqlite3.lookupFunction<
    Int64 Function(
  Int64 N,
),
    int Function(
  int N,
)>('sqlite3_hard_heap_limit64');

int sqlite3_initialize() => _sqlite3_initialize();

late final _sqlite3_initialize = _winsqlite3
    .lookupFunction<Int32 Function(), int Function()>('sqlite3_initialize');

void sqlite3_interrupt(
  Pointer<sqlite3> param0,
) =>
    _sqlite3_interrupt(
      param0,
    );

late final _sqlite3_interrupt = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3> param0,
),
    void Function(
  Pointer<sqlite3> param0,
)>('sqlite3_interrupt');

int sqlite3_keyword_check(
  Pointer<Utf8> param0,
  int param1,
) =>
    _sqlite3_keyword_check(
      param0,
      param1,
    );

late final _sqlite3_keyword_check = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<Utf8> param0,
  Int32 param1,
),
    int Function(
  Pointer<Utf8> param0,
  int param1,
)>('sqlite3_keyword_check');

int sqlite3_keyword_count() => _sqlite3_keyword_count();

late final _sqlite3_keyword_count = _winsqlite3
    .lookupFunction<Int32 Function(), int Function()>('sqlite3_keyword_count');

int sqlite3_keyword_name(
  int param0,
  Pointer<Pointer<Int8>> param1,
  Pointer<Int32> param2,
) =>
    _sqlite3_keyword_name(
      param0,
      param1,
      param2,
    );

late final _sqlite3_keyword_name = _winsqlite3.lookupFunction<
    Int32 Function(
  Int32 param0,
  Pointer<Pointer<Int8>> param1,
  Pointer<Int32> param2,
),
    int Function(
  int param0,
  Pointer<Pointer<Int8>> param1,
  Pointer<Int32> param2,
)>('sqlite3_keyword_name');

int sqlite3_last_insert_rowid(
  Pointer<sqlite3> param0,
) =>
    _sqlite3_last_insert_rowid(
      param0,
    );

late final _sqlite3_last_insert_rowid = _winsqlite3.lookupFunction<
    Int64 Function(
  Pointer<sqlite3> param0,
),
    int Function(
  Pointer<sqlite3> param0,
)>('sqlite3_last_insert_rowid');

Pointer<Utf8> sqlite3_libversion() => _sqlite3_libversion();

late final _sqlite3_libversion = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(), Pointer<Utf8> Function()>('sqlite3_libversion');

int sqlite3_libversion_number() => _sqlite3_libversion_number();

late final _sqlite3_libversion_number =
    _winsqlite3.lookupFunction<Int32 Function(), int Function()>(
        'sqlite3_libversion_number');

int sqlite3_limit(
  Pointer<sqlite3> param0,
  int id,
  int newVal,
) =>
    _sqlite3_limit(
      param0,
      id,
      newVal,
    );

late final _sqlite3_limit = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
  Int32 id,
  Int32 newVal,
),
    int Function(
  Pointer<sqlite3> param0,
  int id,
  int newVal,
)>('sqlite3_limit');

int sqlite3_load_extension(
  Pointer<sqlite3> db,
  Pointer<Utf8> zFile,
  Pointer<Utf8> zProc,
  Pointer<Pointer<Int8>> pzErrMsg,
) =>
    _sqlite3_load_extension(
      db,
      zFile,
      zProc,
      pzErrMsg,
    );

late final _sqlite3_load_extension = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zFile,
  Pointer<Utf8> zProc,
  Pointer<Pointer<Int8>> pzErrMsg,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zFile,
  Pointer<Utf8> zProc,
  Pointer<Pointer<Int8>> pzErrMsg,
)>('sqlite3_load_extension');

void sqlite3_log(
  int iErrCode,
  Pointer<Utf8> zFormat,
) =>
    _sqlite3_log(
      iErrCode,
      zFormat,
    );

late final _sqlite3_log = _winsqlite3.lookupFunction<
    Void Function(
  Int32 iErrCode,
  Pointer<Utf8> zFormat,
),
    void Function(
  int iErrCode,
  Pointer<Utf8> zFormat,
)>('sqlite3_log');

Pointer sqlite3_malloc(
  int param0,
) =>
    _sqlite3_malloc(
      param0,
    );

late final _sqlite3_malloc = _winsqlite3.lookupFunction<
    Pointer Function(
  Int32 param0,
),
    Pointer Function(
  int param0,
)>('sqlite3_malloc');

Pointer sqlite3_malloc64(
  int param0,
) =>
    _sqlite3_malloc64(
      param0,
    );

late final _sqlite3_malloc64 = _winsqlite3.lookupFunction<
    Pointer Function(
  Uint64 param0,
),
    Pointer Function(
  int param0,
)>('sqlite3_malloc64');

int sqlite3_memory_alarm(
  int param0,
  Pointer param1,
  int param2,
) =>
    _sqlite3_memory_alarm(
      param0,
      param1,
      param2,
    );

late final _sqlite3_memory_alarm = _winsqlite3.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Pointer param1,
  Int64 param2,
),
    int Function(
  int param0,
  Pointer param1,
  int param2,
)>('sqlite3_memory_alarm');

int sqlite3_memory_highwater(
  int resetFlag,
) =>
    _sqlite3_memory_highwater(
      resetFlag,
    );

late final _sqlite3_memory_highwater = _winsqlite3.lookupFunction<
    Int64 Function(
  Int32 resetFlag,
),
    int Function(
  int resetFlag,
)>('sqlite3_memory_highwater');

int sqlite3_memory_used() => _sqlite3_memory_used();

late final _sqlite3_memory_used = _winsqlite3
    .lookupFunction<Int64 Function(), int Function()>('sqlite3_memory_used');

Pointer<Utf8> sqlite3_mprintf(
  Pointer<Utf8> param0,
) =>
    _sqlite3_mprintf(
      param0,
    );

late final _sqlite3_mprintf = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> param0,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> param0,
)>('sqlite3_mprintf');

int sqlite3_msize(
  Pointer param0,
) =>
    _sqlite3_msize(
      param0,
    );

late final _sqlite3_msize = _winsqlite3.lookupFunction<
    Uint64 Function(
  Pointer param0,
),
    int Function(
  Pointer param0,
)>('sqlite3_msize');

Pointer<sqlite3_mutex> sqlite3_mutex_alloc(
  int param0,
) =>
    _sqlite3_mutex_alloc(
      param0,
    );

late final _sqlite3_mutex_alloc = _winsqlite3.lookupFunction<
    Pointer<sqlite3_mutex> Function(
  Int32 param0,
),
    Pointer<sqlite3_mutex> Function(
  int param0,
)>('sqlite3_mutex_alloc');

void sqlite3_mutex_enter(
  Pointer<sqlite3_mutex> param0,
) =>
    _sqlite3_mutex_enter(
      param0,
    );

late final _sqlite3_mutex_enter = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_mutex> param0,
),
    void Function(
  Pointer<sqlite3_mutex> param0,
)>('sqlite3_mutex_enter');

void sqlite3_mutex_free(
  Pointer<sqlite3_mutex> param0,
) =>
    _sqlite3_mutex_free(
      param0,
    );

late final _sqlite3_mutex_free = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_mutex> param0,
),
    void Function(
  Pointer<sqlite3_mutex> param0,
)>('sqlite3_mutex_free');

void sqlite3_mutex_leave(
  Pointer<sqlite3_mutex> param0,
) =>
    _sqlite3_mutex_leave(
      param0,
    );

late final _sqlite3_mutex_leave = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_mutex> param0,
),
    void Function(
  Pointer<sqlite3_mutex> param0,
)>('sqlite3_mutex_leave');

int sqlite3_mutex_try(
  Pointer<sqlite3_mutex> param0,
) =>
    _sqlite3_mutex_try(
      param0,
    );

late final _sqlite3_mutex_try = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_mutex> param0,
),
    int Function(
  Pointer<sqlite3_mutex> param0,
)>('sqlite3_mutex_try');

Pointer<sqlite3_stmt> sqlite3_next_stmt(
  Pointer<sqlite3> pDb,
  Pointer<sqlite3_stmt> pStmt,
) =>
    _sqlite3_next_stmt(
      pDb,
      pStmt,
    );

late final _sqlite3_next_stmt = _winsqlite3.lookupFunction<
    Pointer<sqlite3_stmt> Function(
  Pointer<sqlite3> pDb,
  Pointer<sqlite3_stmt> pStmt,
),
    Pointer<sqlite3_stmt> Function(
  Pointer<sqlite3> pDb,
  Pointer<sqlite3_stmt> pStmt,
)>('sqlite3_next_stmt');

int sqlite3_open(
  Pointer<Utf8> filename,
  Pointer<Pointer<sqlite3>> ppDb,
) =>
    _sqlite3_open(
      filename,
      ppDb,
    );

late final _sqlite3_open = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<Utf8> filename,
  Pointer<Pointer<sqlite3>> ppDb,
),
    int Function(
  Pointer<Utf8> filename,
  Pointer<Pointer<sqlite3>> ppDb,
)>('sqlite3_open');

int sqlite3_open16(
  Pointer filename,
  Pointer<Pointer<sqlite3>> ppDb,
) =>
    _sqlite3_open16(
      filename,
      ppDb,
    );

late final _sqlite3_open16 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer filename,
  Pointer<Pointer<sqlite3>> ppDb,
),
    int Function(
  Pointer filename,
  Pointer<Pointer<sqlite3>> ppDb,
)>('sqlite3_open16');

int sqlite3_open_v2(
  Pointer<Utf8> filename,
  Pointer<Pointer<sqlite3>> ppDb,
  int flags,
  Pointer<Utf8> zVfs,
) =>
    _sqlite3_open_v2(
      filename,
      ppDb,
      flags,
      zVfs,
    );

late final _sqlite3_open_v2 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<Utf8> filename,
  Pointer<Pointer<sqlite3>> ppDb,
  Int32 flags,
  Pointer<Utf8> zVfs,
),
    int Function(
  Pointer<Utf8> filename,
  Pointer<Pointer<sqlite3>> ppDb,
  int flags,
  Pointer<Utf8> zVfs,
)>('sqlite3_open_v2');

int sqlite3_os_end() => _sqlite3_os_end();

late final _sqlite3_os_end = _winsqlite3
    .lookupFunction<Int32 Function(), int Function()>('sqlite3_os_end');

int sqlite3_os_init() => _sqlite3_os_init();

late final _sqlite3_os_init = _winsqlite3
    .lookupFunction<Int32 Function(), int Function()>('sqlite3_os_init');

int sqlite3_overload_function(
  Pointer<sqlite3> param0,
  Pointer<Utf8> zFuncName,
  int nArg,
) =>
    _sqlite3_overload_function(
      param0,
      zFuncName,
      nArg,
    );

late final _sqlite3_overload_function = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
  Pointer<Utf8> zFuncName,
  Int32 nArg,
),
    int Function(
  Pointer<sqlite3> param0,
  Pointer<Utf8> zFuncName,
  int nArg,
)>('sqlite3_overload_function');

int sqlite3_prepare(
  Pointer<sqlite3> db,
  Pointer<Utf8> zSql,
  int nByte,
  Pointer<Pointer<sqlite3_stmt>> ppStmt,
  Pointer<Pointer<Int8>> pzTail,
) =>
    _sqlite3_prepare(
      db,
      zSql,
      nByte,
      ppStmt,
      pzTail,
    );

late final _sqlite3_prepare = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zSql,
  Int32 nByte,
  Pointer<Pointer<sqlite3_stmt>> ppStmt,
  Pointer<Pointer<Int8>> pzTail,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zSql,
  int nByte,
  Pointer<Pointer<sqlite3_stmt>> ppStmt,
  Pointer<Pointer<Int8>> pzTail,
)>('sqlite3_prepare');

int sqlite3_prepare16(
  Pointer<sqlite3> db,
  Pointer zSql,
  int nByte,
  Pointer<Pointer<sqlite3_stmt>> ppStmt,
  Pointer<Pointer> pzTail,
) =>
    _sqlite3_prepare16(
      db,
      zSql,
      nByte,
      ppStmt,
      pzTail,
    );

late final _sqlite3_prepare16 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer zSql,
  Int32 nByte,
  Pointer<Pointer<sqlite3_stmt>> ppStmt,
  Pointer<Pointer> pzTail,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer zSql,
  int nByte,
  Pointer<Pointer<sqlite3_stmt>> ppStmt,
  Pointer<Pointer> pzTail,
)>('sqlite3_prepare16');

int sqlite3_prepare16_v2(
  Pointer<sqlite3> db,
  Pointer zSql,
  int nByte,
  Pointer<Pointer<sqlite3_stmt>> ppStmt,
  Pointer<Pointer> pzTail,
) =>
    _sqlite3_prepare16_v2(
      db,
      zSql,
      nByte,
      ppStmt,
      pzTail,
    );

late final _sqlite3_prepare16_v2 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer zSql,
  Int32 nByte,
  Pointer<Pointer<sqlite3_stmt>> ppStmt,
  Pointer<Pointer> pzTail,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer zSql,
  int nByte,
  Pointer<Pointer<sqlite3_stmt>> ppStmt,
  Pointer<Pointer> pzTail,
)>('sqlite3_prepare16_v2');

int sqlite3_prepare16_v3(
  Pointer<sqlite3> db,
  Pointer zSql,
  int nByte,
  int prepFlags,
  Pointer<Pointer<sqlite3_stmt>> ppStmt,
  Pointer<Pointer> pzTail,
) =>
    _sqlite3_prepare16_v3(
      db,
      zSql,
      nByte,
      prepFlags,
      ppStmt,
      pzTail,
    );

late final _sqlite3_prepare16_v3 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer zSql,
  Int32 nByte,
  Uint32 prepFlags,
  Pointer<Pointer<sqlite3_stmt>> ppStmt,
  Pointer<Pointer> pzTail,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer zSql,
  int nByte,
  int prepFlags,
  Pointer<Pointer<sqlite3_stmt>> ppStmt,
  Pointer<Pointer> pzTail,
)>('sqlite3_prepare16_v3');

int sqlite3_prepare_v2(
  Pointer<sqlite3> db,
  Pointer<Utf8> zSql,
  int nByte,
  Pointer<Pointer<sqlite3_stmt>> ppStmt,
  Pointer<Pointer<Int8>> pzTail,
) =>
    _sqlite3_prepare_v2(
      db,
      zSql,
      nByte,
      ppStmt,
      pzTail,
    );

late final _sqlite3_prepare_v2 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zSql,
  Int32 nByte,
  Pointer<Pointer<sqlite3_stmt>> ppStmt,
  Pointer<Pointer<Int8>> pzTail,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zSql,
  int nByte,
  Pointer<Pointer<sqlite3_stmt>> ppStmt,
  Pointer<Pointer<Int8>> pzTail,
)>('sqlite3_prepare_v2');

int sqlite3_prepare_v3(
  Pointer<sqlite3> db,
  Pointer<Utf8> zSql,
  int nByte,
  int prepFlags,
  Pointer<Pointer<sqlite3_stmt>> ppStmt,
  Pointer<Pointer<Int8>> pzTail,
) =>
    _sqlite3_prepare_v3(
      db,
      zSql,
      nByte,
      prepFlags,
      ppStmt,
      pzTail,
    );

late final _sqlite3_prepare_v3 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zSql,
  Int32 nByte,
  Uint32 prepFlags,
  Pointer<Pointer<sqlite3_stmt>> ppStmt,
  Pointer<Pointer<Int8>> pzTail,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zSql,
  int nByte,
  int prepFlags,
  Pointer<Pointer<sqlite3_stmt>> ppStmt,
  Pointer<Pointer<Int8>> pzTail,
)>('sqlite3_prepare_v3');

Pointer sqlite3_profile(
  Pointer<sqlite3> param0,
  int xProfile,
  Pointer param2,
) =>
    _sqlite3_profile(
      param0,
      xProfile,
      param2,
    );

late final _sqlite3_profile = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3> param0,
  IntPtr xProfile,
  Pointer param2,
),
    Pointer Function(
  Pointer<sqlite3> param0,
  int xProfile,
  Pointer param2,
)>('sqlite3_profile');

void sqlite3_progress_handler(
  Pointer<sqlite3> param0,
  int param1,
  int param2,
  Pointer param3,
) =>
    _sqlite3_progress_handler(
      param0,
      param1,
      param2,
      param3,
    );

late final _sqlite3_progress_handler = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3> param0,
  Int32 param1,
  IntPtr param2,
  Pointer param3,
),
    void Function(
  Pointer<sqlite3> param0,
  int param1,
  int param2,
  Pointer param3,
)>('sqlite3_progress_handler');

void sqlite3_randomness(
  int N,
  Pointer P,
) =>
    _sqlite3_randomness(
      N,
      P,
    );

late final _sqlite3_randomness = _winsqlite3.lookupFunction<
    Void Function(
  Int32 N,
  Pointer P,
),
    void Function(
  int N,
  Pointer P,
)>('sqlite3_randomness');

Pointer sqlite3_realloc(
  Pointer param0,
  int param1,
) =>
    _sqlite3_realloc(
      param0,
      param1,
    );

late final _sqlite3_realloc = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer param0,
  Int32 param1,
),
    Pointer Function(
  Pointer param0,
  int param1,
)>('sqlite3_realloc');

Pointer sqlite3_realloc64(
  Pointer param0,
  int param1,
) =>
    _sqlite3_realloc64(
      param0,
      param1,
    );

late final _sqlite3_realloc64 = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer param0,
  Uint64 param1,
),
    Pointer Function(
  Pointer param0,
  int param1,
)>('sqlite3_realloc64');

int sqlite3_release_memory(
  int param0,
) =>
    _sqlite3_release_memory(
      param0,
    );

late final _sqlite3_release_memory = _winsqlite3.lookupFunction<
    Int32 Function(
  Int32 param0,
),
    int Function(
  int param0,
)>('sqlite3_release_memory');

int sqlite3_reset(
  Pointer<sqlite3_stmt> pStmt,
) =>
    _sqlite3_reset(
      pStmt,
    );

late final _sqlite3_reset = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> pStmt,
),
    int Function(
  Pointer<sqlite3_stmt> pStmt,
)>('sqlite3_reset');

void sqlite3_reset_auto_extension() => _sqlite3_reset_auto_extension();

late final _sqlite3_reset_auto_extension =
    _winsqlite3.lookupFunction<Void Function(), void Function()>(
        'sqlite3_reset_auto_extension');

void sqlite3_result_blob(
  Pointer<sqlite3_context> param0,
  Pointer param1,
  int param2,
  int param3,
) =>
    _sqlite3_result_blob(
      param0,
      param1,
      param2,
      param3,
    );

late final _sqlite3_result_blob = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_context> param0,
  Pointer param1,
  Int32 param2,
  IntPtr param3,
),
    void Function(
  Pointer<sqlite3_context> param0,
  Pointer param1,
  int param2,
  int param3,
)>('sqlite3_result_blob');

void sqlite3_result_blob64(
  Pointer<sqlite3_context> param0,
  Pointer param1,
  int param2,
  int param3,
) =>
    _sqlite3_result_blob64(
      param0,
      param1,
      param2,
      param3,
    );

late final _sqlite3_result_blob64 = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_context> param0,
  Pointer param1,
  Uint64 param2,
  IntPtr param3,
),
    void Function(
  Pointer<sqlite3_context> param0,
  Pointer param1,
  int param2,
  int param3,
)>('sqlite3_result_blob64');

void sqlite3_result_double(
  Pointer<sqlite3_context> param0,
  double param1,
) =>
    _sqlite3_result_double(
      param0,
      param1,
    );

late final _sqlite3_result_double = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_context> param0,
  Double param1,
),
    void Function(
  Pointer<sqlite3_context> param0,
  double param1,
)>('sqlite3_result_double');

void sqlite3_result_error(
  Pointer<sqlite3_context> param0,
  Pointer<Utf8> param1,
  int param2,
) =>
    _sqlite3_result_error(
      param0,
      param1,
      param2,
    );

late final _sqlite3_result_error = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_context> param0,
  Pointer<Utf8> param1,
  Int32 param2,
),
    void Function(
  Pointer<sqlite3_context> param0,
  Pointer<Utf8> param1,
  int param2,
)>('sqlite3_result_error');

void sqlite3_result_error16(
  Pointer<sqlite3_context> param0,
  Pointer param1,
  int param2,
) =>
    _sqlite3_result_error16(
      param0,
      param1,
      param2,
    );

late final _sqlite3_result_error16 = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_context> param0,
  Pointer param1,
  Int32 param2,
),
    void Function(
  Pointer<sqlite3_context> param0,
  Pointer param1,
  int param2,
)>('sqlite3_result_error16');

void sqlite3_result_error_code(
  Pointer<sqlite3_context> param0,
  int param1,
) =>
    _sqlite3_result_error_code(
      param0,
      param1,
    );

late final _sqlite3_result_error_code = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_context> param0,
  Int32 param1,
),
    void Function(
  Pointer<sqlite3_context> param0,
  int param1,
)>('sqlite3_result_error_code');

void sqlite3_result_error_nomem(
  Pointer<sqlite3_context> param0,
) =>
    _sqlite3_result_error_nomem(
      param0,
    );

late final _sqlite3_result_error_nomem = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_context> param0,
),
    void Function(
  Pointer<sqlite3_context> param0,
)>('sqlite3_result_error_nomem');

void sqlite3_result_error_toobig(
  Pointer<sqlite3_context> param0,
) =>
    _sqlite3_result_error_toobig(
      param0,
    );

late final _sqlite3_result_error_toobig = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_context> param0,
),
    void Function(
  Pointer<sqlite3_context> param0,
)>('sqlite3_result_error_toobig');

void sqlite3_result_int(
  Pointer<sqlite3_context> param0,
  int param1,
) =>
    _sqlite3_result_int(
      param0,
      param1,
    );

late final _sqlite3_result_int = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_context> param0,
  Int32 param1,
),
    void Function(
  Pointer<sqlite3_context> param0,
  int param1,
)>('sqlite3_result_int');

void sqlite3_result_int64(
  Pointer<sqlite3_context> param0,
  int param1,
) =>
    _sqlite3_result_int64(
      param0,
      param1,
    );

late final _sqlite3_result_int64 = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_context> param0,
  Int64 param1,
),
    void Function(
  Pointer<sqlite3_context> param0,
  int param1,
)>('sqlite3_result_int64');

void sqlite3_result_null(
  Pointer<sqlite3_context> param0,
) =>
    _sqlite3_result_null(
      param0,
    );

late final _sqlite3_result_null = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_context> param0,
),
    void Function(
  Pointer<sqlite3_context> param0,
)>('sqlite3_result_null');

void sqlite3_result_pointer(
  Pointer<sqlite3_context> param0,
  Pointer param1,
  Pointer<Utf8> param2,
  int param3,
) =>
    _sqlite3_result_pointer(
      param0,
      param1,
      param2,
      param3,
    );

late final _sqlite3_result_pointer = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_context> param0,
  Pointer param1,
  Pointer<Utf8> param2,
  IntPtr param3,
),
    void Function(
  Pointer<sqlite3_context> param0,
  Pointer param1,
  Pointer<Utf8> param2,
  int param3,
)>('sqlite3_result_pointer');

void sqlite3_result_subtype(
  Pointer<sqlite3_context> param0,
  int param1,
) =>
    _sqlite3_result_subtype(
      param0,
      param1,
    );

late final _sqlite3_result_subtype = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_context> param0,
  Uint32 param1,
),
    void Function(
  Pointer<sqlite3_context> param0,
  int param1,
)>('sqlite3_result_subtype');

void sqlite3_result_text(
  Pointer<sqlite3_context> param0,
  Pointer<Utf8> param1,
  int param2,
  int param3,
) =>
    _sqlite3_result_text(
      param0,
      param1,
      param2,
      param3,
    );

late final _sqlite3_result_text = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_context> param0,
  Pointer<Utf8> param1,
  Int32 param2,
  IntPtr param3,
),
    void Function(
  Pointer<sqlite3_context> param0,
  Pointer<Utf8> param1,
  int param2,
  int param3,
)>('sqlite3_result_text');

void sqlite3_result_text16(
  Pointer<sqlite3_context> param0,
  Pointer param1,
  int param2,
  int param3,
) =>
    _sqlite3_result_text16(
      param0,
      param1,
      param2,
      param3,
    );

late final _sqlite3_result_text16 = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_context> param0,
  Pointer param1,
  Int32 param2,
  IntPtr param3,
),
    void Function(
  Pointer<sqlite3_context> param0,
  Pointer param1,
  int param2,
  int param3,
)>('sqlite3_result_text16');

void sqlite3_result_text16be(
  Pointer<sqlite3_context> param0,
  Pointer param1,
  int param2,
  int param3,
) =>
    _sqlite3_result_text16be(
      param0,
      param1,
      param2,
      param3,
    );

late final _sqlite3_result_text16be = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_context> param0,
  Pointer param1,
  Int32 param2,
  IntPtr param3,
),
    void Function(
  Pointer<sqlite3_context> param0,
  Pointer param1,
  int param2,
  int param3,
)>('sqlite3_result_text16be');

void sqlite3_result_text16le(
  Pointer<sqlite3_context> param0,
  Pointer param1,
  int param2,
  int param3,
) =>
    _sqlite3_result_text16le(
      param0,
      param1,
      param2,
      param3,
    );

late final _sqlite3_result_text16le = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_context> param0,
  Pointer param1,
  Int32 param2,
  IntPtr param3,
),
    void Function(
  Pointer<sqlite3_context> param0,
  Pointer param1,
  int param2,
  int param3,
)>('sqlite3_result_text16le');

void sqlite3_result_text64(
  Pointer<sqlite3_context> param0,
  Pointer<Utf8> param1,
  int param2,
  int param3,
  int encoding,
) =>
    _sqlite3_result_text64(
      param0,
      param1,
      param2,
      param3,
      encoding,
    );

late final _sqlite3_result_text64 = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_context> param0,
  Pointer<Utf8> param1,
  Uint64 param2,
  IntPtr param3,
  Uint8 encoding,
),
    void Function(
  Pointer<sqlite3_context> param0,
  Pointer<Utf8> param1,
  int param2,
  int param3,
  int encoding,
)>('sqlite3_result_text64');

void sqlite3_result_value(
  Pointer<sqlite3_context> param0,
  Pointer<sqlite3_value> param1,
) =>
    _sqlite3_result_value(
      param0,
      param1,
    );

late final _sqlite3_result_value = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_context> param0,
  Pointer<sqlite3_value> param1,
),
    void Function(
  Pointer<sqlite3_context> param0,
  Pointer<sqlite3_value> param1,
)>('sqlite3_result_value');

void sqlite3_result_zeroblob(
  Pointer<sqlite3_context> param0,
  int n,
) =>
    _sqlite3_result_zeroblob(
      param0,
      n,
    );

late final _sqlite3_result_zeroblob = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_context> param0,
  Int32 n,
),
    void Function(
  Pointer<sqlite3_context> param0,
  int n,
)>('sqlite3_result_zeroblob');

int sqlite3_result_zeroblob64(
  Pointer<sqlite3_context> param0,
  int n,
) =>
    _sqlite3_result_zeroblob64(
      param0,
      n,
    );

late final _sqlite3_result_zeroblob64 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_context> param0,
  Uint64 n,
),
    int Function(
  Pointer<sqlite3_context> param0,
  int n,
)>('sqlite3_result_zeroblob64');

Pointer sqlite3_rollback_hook(
  Pointer<sqlite3> param0,
  int param1,
  Pointer param2,
) =>
    _sqlite3_rollback_hook(
      param0,
      param1,
      param2,
    );

late final _sqlite3_rollback_hook = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3> param0,
  IntPtr param1,
  Pointer param2,
),
    Pointer Function(
  Pointer<sqlite3> param0,
  int param1,
  Pointer param2,
)>('sqlite3_rollback_hook');

int sqlite3_rtree_geometry_callback(
  Pointer<sqlite3> db,
  Pointer<Utf8> zGeom,
  int xGeom,
  Pointer pContext,
) =>
    _sqlite3_rtree_geometry_callback(
      db,
      zGeom,
      xGeom,
      pContext,
    );

late final _sqlite3_rtree_geometry_callback = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zGeom,
  IntPtr xGeom,
  Pointer pContext,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zGeom,
  int xGeom,
  Pointer pContext,
)>('sqlite3_rtree_geometry_callback');

int sqlite3_rtree_query_callback(
  Pointer<sqlite3> db,
  Pointer<Utf8> zQueryFunc,
  int xQueryFunc,
  Pointer pContext,
  int xDestructor,
) =>
    _sqlite3_rtree_query_callback(
      db,
      zQueryFunc,
      xQueryFunc,
      pContext,
      xDestructor,
    );

late final _sqlite3_rtree_query_callback = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zQueryFunc,
  IntPtr xQueryFunc,
  Pointer pContext,
  IntPtr xDestructor,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zQueryFunc,
  int xQueryFunc,
  Pointer pContext,
  int xDestructor,
)>('sqlite3_rtree_query_callback');

Pointer<Uint8> sqlite3_serialize(
  Pointer<sqlite3> db,
  Pointer<Utf8> zSchema,
  Pointer<Int64> piSize,
  int mFlags,
) =>
    _sqlite3_serialize(
      db,
      zSchema,
      piSize,
      mFlags,
    );

late final _sqlite3_serialize = _winsqlite3.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zSchema,
  Pointer<Int64> piSize,
  Uint32 mFlags,
),
    Pointer<Uint8> Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zSchema,
  Pointer<Int64> piSize,
  int mFlags,
)>('sqlite3_serialize');

int sqlite3_set_authorizer(
  Pointer<sqlite3> param0,
  int xAuth,
  Pointer pUserData,
) =>
    _sqlite3_set_authorizer(
      param0,
      xAuth,
      pUserData,
    );

late final _sqlite3_set_authorizer = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
  IntPtr xAuth,
  Pointer pUserData,
),
    int Function(
  Pointer<sqlite3> param0,
  int xAuth,
  Pointer pUserData,
)>('sqlite3_set_authorizer');

void sqlite3_set_auxdata(
  Pointer<sqlite3_context> param0,
  int N,
  Pointer param2,
  int param3,
) =>
    _sqlite3_set_auxdata(
      param0,
      N,
      param2,
      param3,
    );

late final _sqlite3_set_auxdata = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_context> param0,
  Int32 N,
  Pointer param2,
  IntPtr param3,
),
    void Function(
  Pointer<sqlite3_context> param0,
  int N,
  Pointer param2,
  int param3,
)>('sqlite3_set_auxdata');

void sqlite3_set_last_insert_rowid(
  Pointer<sqlite3> param0,
  int param1,
) =>
    _sqlite3_set_last_insert_rowid(
      param0,
      param1,
    );

late final _sqlite3_set_last_insert_rowid = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3> param0,
  Int64 param1,
),
    void Function(
  Pointer<sqlite3> param0,
  int param1,
)>('sqlite3_set_last_insert_rowid');

int sqlite3_shutdown() => _sqlite3_shutdown();

late final _sqlite3_shutdown = _winsqlite3
    .lookupFunction<Int32 Function(), int Function()>('sqlite3_shutdown');

int sqlite3_sleep(
  int param0,
) =>
    _sqlite3_sleep(
      param0,
    );

late final _sqlite3_sleep = _winsqlite3.lookupFunction<
    Int32 Function(
  Int32 param0,
),
    int Function(
  int param0,
)>('sqlite3_sleep');

Pointer<Utf8> sqlite3_snprintf(
  int param0,
  Pointer<Utf8> param1,
  Pointer<Utf8> param2,
) =>
    _sqlite3_snprintf(
      param0,
      param1,
      param2,
    );

late final _sqlite3_snprintf = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Int32 param0,
  Pointer<Utf8> param1,
  Pointer<Utf8> param2,
),
    Pointer<Utf8> Function(
  int param0,
  Pointer<Utf8> param1,
  Pointer<Utf8> param2,
)>('sqlite3_snprintf');

void sqlite3_soft_heap_limit(
  int N,
) =>
    _sqlite3_soft_heap_limit(
      N,
    );

late final _sqlite3_soft_heap_limit = _winsqlite3.lookupFunction<
    Void Function(
  Int32 N,
),
    void Function(
  int N,
)>('sqlite3_soft_heap_limit');

int sqlite3_soft_heap_limit64(
  int N,
) =>
    _sqlite3_soft_heap_limit64(
      N,
    );

late final _sqlite3_soft_heap_limit64 = _winsqlite3.lookupFunction<
    Int64 Function(
  Int64 N,
),
    int Function(
  int N,
)>('sqlite3_soft_heap_limit64');

Pointer<Utf8> sqlite3_sourceid() => _sqlite3_sourceid();

late final _sqlite3_sourceid = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(), Pointer<Utf8> Function()>('sqlite3_sourceid');

Pointer<Utf8> sqlite3_sql(
  Pointer<sqlite3_stmt> pStmt,
) =>
    _sqlite3_sql(
      pStmt,
    );

late final _sqlite3_sql = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<sqlite3_stmt> pStmt,
),
    Pointer<Utf8> Function(
  Pointer<sqlite3_stmt> pStmt,
)>('sqlite3_sql');

int sqlite3_status(
  int op,
  Pointer<Int32> pCurrent,
  Pointer<Int32> pHighwater,
  int resetFlag,
) =>
    _sqlite3_status(
      op,
      pCurrent,
      pHighwater,
      resetFlag,
    );

late final _sqlite3_status = _winsqlite3.lookupFunction<
    Int32 Function(
  Int32 op,
  Pointer<Int32> pCurrent,
  Pointer<Int32> pHighwater,
  Int32 resetFlag,
),
    int Function(
  int op,
  Pointer<Int32> pCurrent,
  Pointer<Int32> pHighwater,
  int resetFlag,
)>('sqlite3_status');

int sqlite3_status64(
  int op,
  Pointer<Int64> pCurrent,
  Pointer<Int64> pHighwater,
  int resetFlag,
) =>
    _sqlite3_status64(
      op,
      pCurrent,
      pHighwater,
      resetFlag,
    );

late final _sqlite3_status64 = _winsqlite3.lookupFunction<
    Int32 Function(
  Int32 op,
  Pointer<Int64> pCurrent,
  Pointer<Int64> pHighwater,
  Int32 resetFlag,
),
    int Function(
  int op,
  Pointer<Int64> pCurrent,
  Pointer<Int64> pHighwater,
  int resetFlag,
)>('sqlite3_status64');

int sqlite3_step(
  Pointer<sqlite3_stmt> param0,
) =>
    _sqlite3_step(
      param0,
    );

late final _sqlite3_step = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
)>('sqlite3_step');

int sqlite3_stmt_busy(
  Pointer<sqlite3_stmt> param0,
) =>
    _sqlite3_stmt_busy(
      param0,
    );

late final _sqlite3_stmt_busy = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
)>('sqlite3_stmt_busy');

int sqlite3_stmt_isexplain(
  Pointer<sqlite3_stmt> pStmt,
) =>
    _sqlite3_stmt_isexplain(
      pStmt,
    );

late final _sqlite3_stmt_isexplain = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> pStmt,
),
    int Function(
  Pointer<sqlite3_stmt> pStmt,
)>('sqlite3_stmt_isexplain');

int sqlite3_stmt_readonly(
  Pointer<sqlite3_stmt> pStmt,
) =>
    _sqlite3_stmt_readonly(
      pStmt,
    );

late final _sqlite3_stmt_readonly = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> pStmt,
),
    int Function(
  Pointer<sqlite3_stmt> pStmt,
)>('sqlite3_stmt_readonly');

int sqlite3_stmt_status(
  Pointer<sqlite3_stmt> param0,
  int op,
  int resetFlg,
) =>
    _sqlite3_stmt_status(
      param0,
      op,
      resetFlg,
    );

late final _sqlite3_stmt_status = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
  Int32 op,
  Int32 resetFlg,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
  int op,
  int resetFlg,
)>('sqlite3_stmt_status');

void sqlite3_str_append(
  Pointer<sqlite3_str> param0,
  Pointer<Utf8> zIn,
  int N,
) =>
    _sqlite3_str_append(
      param0,
      zIn,
      N,
    );

late final _sqlite3_str_append = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_str> param0,
  Pointer<Utf8> zIn,
  Int32 N,
),
    void Function(
  Pointer<sqlite3_str> param0,
  Pointer<Utf8> zIn,
  int N,
)>('sqlite3_str_append');

void sqlite3_str_appendall(
  Pointer<sqlite3_str> param0,
  Pointer<Utf8> zIn,
) =>
    _sqlite3_str_appendall(
      param0,
      zIn,
    );

late final _sqlite3_str_appendall = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_str> param0,
  Pointer<Utf8> zIn,
),
    void Function(
  Pointer<sqlite3_str> param0,
  Pointer<Utf8> zIn,
)>('sqlite3_str_appendall');

void sqlite3_str_appendchar(
  Pointer<sqlite3_str> param0,
  int N,
  int C,
) =>
    _sqlite3_str_appendchar(
      param0,
      N,
      C,
    );

late final _sqlite3_str_appendchar = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_str> param0,
  Int32 N,
  Uint8 C,
),
    void Function(
  Pointer<sqlite3_str> param0,
  int N,
  int C,
)>('sqlite3_str_appendchar');

void sqlite3_str_appendf(
  Pointer<sqlite3_str> param0,
  Pointer<Utf8> zFormat,
) =>
    _sqlite3_str_appendf(
      param0,
      zFormat,
    );

late final _sqlite3_str_appendf = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_str> param0,
  Pointer<Utf8> zFormat,
),
    void Function(
  Pointer<sqlite3_str> param0,
  Pointer<Utf8> zFormat,
)>('sqlite3_str_appendf');

int sqlite3_str_errcode(
  Pointer<sqlite3_str> param0,
) =>
    _sqlite3_str_errcode(
      param0,
    );

late final _sqlite3_str_errcode = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_str> param0,
),
    int Function(
  Pointer<sqlite3_str> param0,
)>('sqlite3_str_errcode');

Pointer<Utf8> sqlite3_str_finish(
  Pointer<sqlite3_str> param0,
) =>
    _sqlite3_str_finish(
      param0,
    );

late final _sqlite3_str_finish = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<sqlite3_str> param0,
),
    Pointer<Utf8> Function(
  Pointer<sqlite3_str> param0,
)>('sqlite3_str_finish');

int sqlite3_str_length(
  Pointer<sqlite3_str> param0,
) =>
    _sqlite3_str_length(
      param0,
    );

late final _sqlite3_str_length = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_str> param0,
),
    int Function(
  Pointer<sqlite3_str> param0,
)>('sqlite3_str_length');

Pointer<sqlite3_str> sqlite3_str_new(
  Pointer<sqlite3> param0,
) =>
    _sqlite3_str_new(
      param0,
    );

late final _sqlite3_str_new = _winsqlite3.lookupFunction<
    Pointer<sqlite3_str> Function(
  Pointer<sqlite3> param0,
),
    Pointer<sqlite3_str> Function(
  Pointer<sqlite3> param0,
)>('sqlite3_str_new');

void sqlite3_str_reset(
  Pointer<sqlite3_str> param0,
) =>
    _sqlite3_str_reset(
      param0,
    );

late final _sqlite3_str_reset = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_str> param0,
),
    void Function(
  Pointer<sqlite3_str> param0,
)>('sqlite3_str_reset');

Pointer<Utf8> sqlite3_str_value(
  Pointer<sqlite3_str> param0,
) =>
    _sqlite3_str_value(
      param0,
    );

late final _sqlite3_str_value = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<sqlite3_str> param0,
),
    Pointer<Utf8> Function(
  Pointer<sqlite3_str> param0,
)>('sqlite3_str_value');

void sqlite3_str_vappendf(
  Pointer<sqlite3_str> param0,
  Pointer<Utf8> zFormat,
  Pointer<Int8> param2,
) =>
    _sqlite3_str_vappendf(
      param0,
      zFormat,
      param2,
    );

late final _sqlite3_str_vappendf = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_str> param0,
  Pointer<Utf8> zFormat,
  Pointer<Int8> param2,
),
    void Function(
  Pointer<sqlite3_str> param0,
  Pointer<Utf8> zFormat,
  Pointer<Int8> param2,
)>('sqlite3_str_vappendf');

int sqlite3_strglob(
  Pointer<Utf8> zGlob,
  Pointer<Utf8> zStr,
) =>
    _sqlite3_strglob(
      zGlob,
      zStr,
    );

late final _sqlite3_strglob = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<Utf8> zGlob,
  Pointer<Utf8> zStr,
),
    int Function(
  Pointer<Utf8> zGlob,
  Pointer<Utf8> zStr,
)>('sqlite3_strglob');

int sqlite3_stricmp(
  Pointer<Utf8> param0,
  Pointer<Utf8> param1,
) =>
    _sqlite3_stricmp(
      param0,
      param1,
    );

late final _sqlite3_stricmp = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<Utf8> param0,
  Pointer<Utf8> param1,
),
    int Function(
  Pointer<Utf8> param0,
  Pointer<Utf8> param1,
)>('sqlite3_stricmp');

int sqlite3_strlike(
  Pointer<Utf8> zGlob,
  Pointer<Utf8> zStr,
  int cEsc,
) =>
    _sqlite3_strlike(
      zGlob,
      zStr,
      cEsc,
    );

late final _sqlite3_strlike = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<Utf8> zGlob,
  Pointer<Utf8> zStr,
  Uint32 cEsc,
),
    int Function(
  Pointer<Utf8> zGlob,
  Pointer<Utf8> zStr,
  int cEsc,
)>('sqlite3_strlike');

int sqlite3_strnicmp(
  Pointer<Utf8> param0,
  Pointer<Utf8> param1,
  int param2,
) =>
    _sqlite3_strnicmp(
      param0,
      param1,
      param2,
    );

late final _sqlite3_strnicmp = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<Utf8> param0,
  Pointer<Utf8> param1,
  Int32 param2,
),
    int Function(
  Pointer<Utf8> param0,
  Pointer<Utf8> param1,
  int param2,
)>('sqlite3_strnicmp');

int sqlite3_system_errno(
  Pointer<sqlite3> param0,
) =>
    _sqlite3_system_errno(
      param0,
    );

late final _sqlite3_system_errno = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
),
    int Function(
  Pointer<sqlite3> param0,
)>('sqlite3_system_errno');

int sqlite3_table_column_metadata(
  Pointer<sqlite3> db,
  Pointer<Utf8> zDbName,
  Pointer<Utf8> zTableName,
  Pointer<Utf8> zColumnName,
  Pointer<Pointer<Int8>> pzDataType,
  Pointer<Pointer<Int8>> pzCollSeq,
  Pointer<Int32> pNotNull,
  Pointer<Int32> pPrimaryKey,
  Pointer<Int32> pAutoinc,
) =>
    _sqlite3_table_column_metadata(
      db,
      zDbName,
      zTableName,
      zColumnName,
      pzDataType,
      pzCollSeq,
      pNotNull,
      pPrimaryKey,
      pAutoinc,
    );

late final _sqlite3_table_column_metadata = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zDbName,
  Pointer<Utf8> zTableName,
  Pointer<Utf8> zColumnName,
  Pointer<Pointer<Int8>> pzDataType,
  Pointer<Pointer<Int8>> pzCollSeq,
  Pointer<Int32> pNotNull,
  Pointer<Int32> pPrimaryKey,
  Pointer<Int32> pAutoinc,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zDbName,
  Pointer<Utf8> zTableName,
  Pointer<Utf8> zColumnName,
  Pointer<Pointer<Int8>> pzDataType,
  Pointer<Pointer<Int8>> pzCollSeq,
  Pointer<Int32> pNotNull,
  Pointer<Int32> pPrimaryKey,
  Pointer<Int32> pAutoinc,
)>('sqlite3_table_column_metadata');

int sqlite3_test_control(
  int op,
) =>
    _sqlite3_test_control(
      op,
    );

late final _sqlite3_test_control = _winsqlite3.lookupFunction<
    Int32 Function(
  Int32 op,
),
    int Function(
  int op,
)>('sqlite3_test_control');

void sqlite3_thread_cleanup() => _sqlite3_thread_cleanup();

late final _sqlite3_thread_cleanup = _winsqlite3
    .lookupFunction<Void Function(), void Function()>('sqlite3_thread_cleanup');

int sqlite3_threadsafe() => _sqlite3_threadsafe();

late final _sqlite3_threadsafe = _winsqlite3
    .lookupFunction<Int32 Function(), int Function()>('sqlite3_threadsafe');

int sqlite3_total_changes(
  Pointer<sqlite3> param0,
) =>
    _sqlite3_total_changes(
      param0,
    );

late final _sqlite3_total_changes = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
),
    int Function(
  Pointer<sqlite3> param0,
)>('sqlite3_total_changes');

Pointer sqlite3_trace(
  Pointer<sqlite3> param0,
  int xTrace,
  Pointer param2,
) =>
    _sqlite3_trace(
      param0,
      xTrace,
      param2,
    );

late final _sqlite3_trace = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3> param0,
  IntPtr xTrace,
  Pointer param2,
),
    Pointer Function(
  Pointer<sqlite3> param0,
  int xTrace,
  Pointer param2,
)>('sqlite3_trace');

int sqlite3_trace_v2(
  Pointer<sqlite3> param0,
  int uMask,
  int xCallback,
  Pointer pCtx,
) =>
    _sqlite3_trace_v2(
      param0,
      uMask,
      xCallback,
      pCtx,
    );

late final _sqlite3_trace_v2 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
  Uint32 uMask,
  IntPtr xCallback,
  Pointer pCtx,
),
    int Function(
  Pointer<sqlite3> param0,
  int uMask,
  int xCallback,
  Pointer pCtx,
)>('sqlite3_trace_v2');

int sqlite3_transfer_bindings(
  Pointer<sqlite3_stmt> param0,
  Pointer<sqlite3_stmt> param1,
) =>
    _sqlite3_transfer_bindings(
      param0,
      param1,
    );

late final _sqlite3_transfer_bindings = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_stmt> param0,
  Pointer<sqlite3_stmt> param1,
),
    int Function(
  Pointer<sqlite3_stmt> param0,
  Pointer<sqlite3_stmt> param1,
)>('sqlite3_transfer_bindings');

int sqlite3_txn_state(
  Pointer<sqlite3> param0,
  Pointer<Utf8> zSchema,
) =>
    _sqlite3_txn_state(
      param0,
      zSchema,
    );

late final _sqlite3_txn_state = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
  Pointer<Utf8> zSchema,
),
    int Function(
  Pointer<sqlite3> param0,
  Pointer<Utf8> zSchema,
)>('sqlite3_txn_state');

Pointer sqlite3_update_hook(
  Pointer<sqlite3> param0,
  int param1,
  Pointer param2,
) =>
    _sqlite3_update_hook(
      param0,
      param1,
      param2,
    );

late final _sqlite3_update_hook = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3> param0,
  IntPtr param1,
  Pointer param2,
),
    Pointer Function(
  Pointer<sqlite3> param0,
  int param1,
  Pointer param2,
)>('sqlite3_update_hook');

int sqlite3_uri_boolean(
  Pointer<Utf8> zFile,
  Pointer<Utf8> zParam,
  int bDefault,
) =>
    _sqlite3_uri_boolean(
      zFile,
      zParam,
      bDefault,
    );

late final _sqlite3_uri_boolean = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<Utf8> zFile,
  Pointer<Utf8> zParam,
  Int32 bDefault,
),
    int Function(
  Pointer<Utf8> zFile,
  Pointer<Utf8> zParam,
  int bDefault,
)>('sqlite3_uri_boolean');

int sqlite3_uri_int64(
  Pointer<Utf8> param0,
  Pointer<Utf8> param1,
  int param2,
) =>
    _sqlite3_uri_int64(
      param0,
      param1,
      param2,
    );

late final _sqlite3_uri_int64 = _winsqlite3.lookupFunction<
    Int64 Function(
  Pointer<Utf8> param0,
  Pointer<Utf8> param1,
  Int64 param2,
),
    int Function(
  Pointer<Utf8> param0,
  Pointer<Utf8> param1,
  int param2,
)>('sqlite3_uri_int64');

Pointer<Utf8> sqlite3_uri_key(
  Pointer<Utf8> zFilename,
  int N,
) =>
    _sqlite3_uri_key(
      zFilename,
      N,
    );

late final _sqlite3_uri_key = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> zFilename,
  Int32 N,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> zFilename,
  int N,
)>('sqlite3_uri_key');

Pointer<Utf8> sqlite3_uri_parameter(
  Pointer<Utf8> zFilename,
  Pointer<Utf8> zParam,
) =>
    _sqlite3_uri_parameter(
      zFilename,
      zParam,
    );

late final _sqlite3_uri_parameter = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> zFilename,
  Pointer<Utf8> zParam,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> zFilename,
  Pointer<Utf8> zParam,
)>('sqlite3_uri_parameter');

Pointer sqlite3_user_data(
  Pointer<sqlite3_context> param0,
) =>
    _sqlite3_user_data(
      param0,
    );

late final _sqlite3_user_data = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3_context> param0,
),
    Pointer Function(
  Pointer<sqlite3_context> param0,
)>('sqlite3_user_data');

Pointer sqlite3_value_blob(
  Pointer<sqlite3_value> param0,
) =>
    _sqlite3_value_blob(
      param0,
    );

late final _sqlite3_value_blob = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3_value> param0,
),
    Pointer Function(
  Pointer<sqlite3_value> param0,
)>('sqlite3_value_blob');

int sqlite3_value_bytes(
  Pointer<sqlite3_value> param0,
) =>
    _sqlite3_value_bytes(
      param0,
    );

late final _sqlite3_value_bytes = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_value> param0,
),
    int Function(
  Pointer<sqlite3_value> param0,
)>('sqlite3_value_bytes');

int sqlite3_value_bytes16(
  Pointer<sqlite3_value> param0,
) =>
    _sqlite3_value_bytes16(
      param0,
    );

late final _sqlite3_value_bytes16 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_value> param0,
),
    int Function(
  Pointer<sqlite3_value> param0,
)>('sqlite3_value_bytes16');

double sqlite3_value_double(
  Pointer<sqlite3_value> param0,
) =>
    _sqlite3_value_double(
      param0,
    );

late final _sqlite3_value_double = _winsqlite3.lookupFunction<
    Double Function(
  Pointer<sqlite3_value> param0,
),
    double Function(
  Pointer<sqlite3_value> param0,
)>('sqlite3_value_double');

Pointer<sqlite3_value> sqlite3_value_dup(
  Pointer<sqlite3_value> param0,
) =>
    _sqlite3_value_dup(
      param0,
    );

late final _sqlite3_value_dup = _winsqlite3.lookupFunction<
    Pointer<sqlite3_value> Function(
  Pointer<sqlite3_value> param0,
),
    Pointer<sqlite3_value> Function(
  Pointer<sqlite3_value> param0,
)>('sqlite3_value_dup');

void sqlite3_value_free(
  Pointer<sqlite3_value> param0,
) =>
    _sqlite3_value_free(
      param0,
    );

late final _sqlite3_value_free = _winsqlite3.lookupFunction<
    Void Function(
  Pointer<sqlite3_value> param0,
),
    void Function(
  Pointer<sqlite3_value> param0,
)>('sqlite3_value_free');

int sqlite3_value_frombind(
  Pointer<sqlite3_value> param0,
) =>
    _sqlite3_value_frombind(
      param0,
    );

late final _sqlite3_value_frombind = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_value> param0,
),
    int Function(
  Pointer<sqlite3_value> param0,
)>('sqlite3_value_frombind');

int sqlite3_value_int(
  Pointer<sqlite3_value> param0,
) =>
    _sqlite3_value_int(
      param0,
    );

late final _sqlite3_value_int = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_value> param0,
),
    int Function(
  Pointer<sqlite3_value> param0,
)>('sqlite3_value_int');

int sqlite3_value_int64(
  Pointer<sqlite3_value> param0,
) =>
    _sqlite3_value_int64(
      param0,
    );

late final _sqlite3_value_int64 = _winsqlite3.lookupFunction<
    Int64 Function(
  Pointer<sqlite3_value> param0,
),
    int Function(
  Pointer<sqlite3_value> param0,
)>('sqlite3_value_int64');

int sqlite3_value_nochange(
  Pointer<sqlite3_value> param0,
) =>
    _sqlite3_value_nochange(
      param0,
    );

late final _sqlite3_value_nochange = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_value> param0,
),
    int Function(
  Pointer<sqlite3_value> param0,
)>('sqlite3_value_nochange');

int sqlite3_value_numeric_type(
  Pointer<sqlite3_value> param0,
) =>
    _sqlite3_value_numeric_type(
      param0,
    );

late final _sqlite3_value_numeric_type = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_value> param0,
),
    int Function(
  Pointer<sqlite3_value> param0,
)>('sqlite3_value_numeric_type');

Pointer sqlite3_value_pointer(
  Pointer<sqlite3_value> param0,
  Pointer<Utf8> param1,
) =>
    _sqlite3_value_pointer(
      param0,
      param1,
    );

late final _sqlite3_value_pointer = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3_value> param0,
  Pointer<Utf8> param1,
),
    Pointer Function(
  Pointer<sqlite3_value> param0,
  Pointer<Utf8> param1,
)>('sqlite3_value_pointer');

int sqlite3_value_subtype(
  Pointer<sqlite3_value> param0,
) =>
    _sqlite3_value_subtype(
      param0,
    );

late final _sqlite3_value_subtype = _winsqlite3.lookupFunction<
    Uint32 Function(
  Pointer<sqlite3_value> param0,
),
    int Function(
  Pointer<sqlite3_value> param0,
)>('sqlite3_value_subtype');

Pointer<Uint8> sqlite3_value_text(
  Pointer<sqlite3_value> param0,
) =>
    _sqlite3_value_text(
      param0,
    );

late final _sqlite3_value_text = _winsqlite3.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<sqlite3_value> param0,
),
    Pointer<Uint8> Function(
  Pointer<sqlite3_value> param0,
)>('sqlite3_value_text');

Pointer sqlite3_value_text16(
  Pointer<sqlite3_value> param0,
) =>
    _sqlite3_value_text16(
      param0,
    );

late final _sqlite3_value_text16 = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3_value> param0,
),
    Pointer Function(
  Pointer<sqlite3_value> param0,
)>('sqlite3_value_text16');

Pointer sqlite3_value_text16be(
  Pointer<sqlite3_value> param0,
) =>
    _sqlite3_value_text16be(
      param0,
    );

late final _sqlite3_value_text16be = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3_value> param0,
),
    Pointer Function(
  Pointer<sqlite3_value> param0,
)>('sqlite3_value_text16be');

Pointer sqlite3_value_text16le(
  Pointer<sqlite3_value> param0,
) =>
    _sqlite3_value_text16le(
      param0,
    );

late final _sqlite3_value_text16le = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3_value> param0,
),
    Pointer Function(
  Pointer<sqlite3_value> param0,
)>('sqlite3_value_text16le');

int sqlite3_value_type(
  Pointer<sqlite3_value> param0,
) =>
    _sqlite3_value_type(
      param0,
    );

late final _sqlite3_value_type = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_value> param0,
),
    int Function(
  Pointer<sqlite3_value> param0,
)>('sqlite3_value_type');

Pointer<sqlite3_vfs> sqlite3_vfs_find(
  Pointer<Utf8> zVfsName,
) =>
    _sqlite3_vfs_find(
      zVfsName,
    );

late final _sqlite3_vfs_find = _winsqlite3.lookupFunction<
    Pointer<sqlite3_vfs> Function(
  Pointer<Utf8> zVfsName,
),
    Pointer<sqlite3_vfs> Function(
  Pointer<Utf8> zVfsName,
)>('sqlite3_vfs_find');

int sqlite3_vfs_register(
  Pointer<sqlite3_vfs> param0,
  int makeDflt,
) =>
    _sqlite3_vfs_register(
      param0,
      makeDflt,
    );

late final _sqlite3_vfs_register = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_vfs> param0,
  Int32 makeDflt,
),
    int Function(
  Pointer<sqlite3_vfs> param0,
  int makeDflt,
)>('sqlite3_vfs_register');

int sqlite3_vfs_unregister(
  Pointer<sqlite3_vfs> param0,
) =>
    _sqlite3_vfs_unregister(
      param0,
    );

late final _sqlite3_vfs_unregister = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_vfs> param0,
),
    int Function(
  Pointer<sqlite3_vfs> param0,
)>('sqlite3_vfs_unregister');

Pointer<Utf8> sqlite3_vmprintf(
  Pointer<Utf8> param0,
  Pointer<Int8> param1,
) =>
    _sqlite3_vmprintf(
      param0,
      param1,
    );

late final _sqlite3_vmprintf = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> param0,
  Pointer<Int8> param1,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> param0,
  Pointer<Int8> param1,
)>('sqlite3_vmprintf');

Pointer<Utf8> sqlite3_vsnprintf(
  int param0,
  Pointer<Utf8> param1,
  Pointer<Utf8> param2,
  Pointer<Int8> param3,
) =>
    _sqlite3_vsnprintf(
      param0,
      param1,
      param2,
      param3,
    );

late final _sqlite3_vsnprintf = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Int32 param0,
  Pointer<Utf8> param1,
  Pointer<Utf8> param2,
  Pointer<Int8> param3,
),
    Pointer<Utf8> Function(
  int param0,
  Pointer<Utf8> param1,
  Pointer<Utf8> param2,
  Pointer<Int8> param3,
)>('sqlite3_vsnprintf');

Pointer<Utf8> sqlite3_vtab_collation(
  Pointer<sqlite3_index_info> param0,
  int param1,
) =>
    _sqlite3_vtab_collation(
      param0,
      param1,
    );

late final _sqlite3_vtab_collation = _winsqlite3.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<sqlite3_index_info> param0,
  Int32 param1,
),
    Pointer<Utf8> Function(
  Pointer<sqlite3_index_info> param0,
  int param1,
)>('sqlite3_vtab_collation');

int sqlite3_vtab_config(
  Pointer<sqlite3> param0,
  int op,
) =>
    _sqlite3_vtab_config(
      param0,
      op,
    );

late final _sqlite3_vtab_config = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
  Int32 op,
),
    int Function(
  Pointer<sqlite3> param0,
  int op,
)>('sqlite3_vtab_config');

int sqlite3_vtab_nochange(
  Pointer<sqlite3_context> param0,
) =>
    _sqlite3_vtab_nochange(
      param0,
    );

late final _sqlite3_vtab_nochange = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3_context> param0,
),
    int Function(
  Pointer<sqlite3_context> param0,
)>('sqlite3_vtab_nochange');

int sqlite3_vtab_on_conflict(
  Pointer<sqlite3> param0,
) =>
    _sqlite3_vtab_on_conflict(
      param0,
    );

late final _sqlite3_vtab_on_conflict = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> param0,
),
    int Function(
  Pointer<sqlite3> param0,
)>('sqlite3_vtab_on_conflict');

int sqlite3_wal_autocheckpoint(
  Pointer<sqlite3> db,
  int N,
) =>
    _sqlite3_wal_autocheckpoint(
      db,
      N,
    );

late final _sqlite3_wal_autocheckpoint = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Int32 N,
),
    int Function(
  Pointer<sqlite3> db,
  int N,
)>('sqlite3_wal_autocheckpoint');

int sqlite3_wal_checkpoint(
  Pointer<sqlite3> db,
  Pointer<Utf8> zDb,
) =>
    _sqlite3_wal_checkpoint(
      db,
      zDb,
    );

late final _sqlite3_wal_checkpoint = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zDb,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zDb,
)>('sqlite3_wal_checkpoint');

int sqlite3_wal_checkpoint_v2(
  Pointer<sqlite3> db,
  Pointer<Utf8> zDb,
  int eMode,
  Pointer<Int32> pnLog,
  Pointer<Int32> pnCkpt,
) =>
    _sqlite3_wal_checkpoint_v2(
      db,
      zDb,
      eMode,
      pnLog,
      pnCkpt,
    );

late final _sqlite3_wal_checkpoint_v2 = _winsqlite3.lookupFunction<
    Int32 Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zDb,
  Int32 eMode,
  Pointer<Int32> pnLog,
  Pointer<Int32> pnCkpt,
),
    int Function(
  Pointer<sqlite3> db,
  Pointer<Utf8> zDb,
  int eMode,
  Pointer<Int32> pnLog,
  Pointer<Int32> pnCkpt,
)>('sqlite3_wal_checkpoint_v2');

Pointer sqlite3_wal_hook(
  Pointer<sqlite3> param0,
  int param1,
  Pointer param2,
) =>
    _sqlite3_wal_hook(
      param0,
      param1,
      param2,
    );

late final _sqlite3_wal_hook = _winsqlite3.lookupFunction<
    Pointer Function(
  Pointer<sqlite3> param0,
  IntPtr param1,
  Pointer param2,
),
    Pointer Function(
  Pointer<sqlite3> param0,
  int param1,
  Pointer param2,
)>('sqlite3_wal_hook');

int sqlite3_win32_set_directory(
  int type,
  Pointer zValue,
) =>
    _sqlite3_win32_set_directory(
      type,
      zValue,
    );

late final _sqlite3_win32_set_directory = _winsqlite3.lookupFunction<
    Int32 Function(
  Uint32 type,
  Pointer zValue,
),
    int Function(
  int type,
  Pointer zValue,
)>('sqlite3_win32_set_directory');

int sqlite3_win32_set_directory16(
  int type,
  Pointer zValue,
) =>
    _sqlite3_win32_set_directory16(
      type,
      zValue,
    );

late final _sqlite3_win32_set_directory16 = _winsqlite3.lookupFunction<
    Int32 Function(
  Uint32 type,
  Pointer zValue,
),
    int Function(
  int type,
  Pointer zValue,
)>('sqlite3_win32_set_directory16');

int sqlite3_win32_set_directory8(
  int type,
  Pointer<Utf8> zValue,
) =>
    _sqlite3_win32_set_directory8(
      type,
      zValue,
    );

late final _sqlite3_win32_set_directory8 = _winsqlite3.lookupFunction<
    Int32 Function(
  Uint32 type,
  Pointer<Utf8> zValue,
),
    int Function(
  int type,
  Pointer<Utf8> zValue,
)>('sqlite3_win32_set_directory8');
