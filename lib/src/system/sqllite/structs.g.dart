// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../system/sqllite/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class Fts5Context extends Opaque {}

/// {@category Struct}
class Fts5ExtensionApi extends Struct {
  @Int32()
  external int iVersion;

  @IntPtr()
  external int xUserData;

  @IntPtr()
  external int xColumnCount;

  @IntPtr()
  external int xRowCount;

  @IntPtr()
  external int xColumnTotalSize;

  @IntPtr()
  external int xTokenize;

  @IntPtr()
  external int xPhraseCount;

  @IntPtr()
  external int xPhraseSize;

  @IntPtr()
  external int xInstCount;

  @IntPtr()
  external int xInst;

  @IntPtr()
  external int xRowid;

  @IntPtr()
  external int xColumnText;

  @IntPtr()
  external int xColumnSize;

  @IntPtr()
  external int xQueryPhrase;

  @IntPtr()
  external int xSetAuxdata;

  @IntPtr()
  external int xGetAuxdata;

  @IntPtr()
  external int xPhraseFirst;

  @IntPtr()
  external int xPhraseNext;

  @IntPtr()
  external int xPhraseFirstColumn;

  @IntPtr()
  external int xPhraseNextColumn;
}

/// {@category Struct}
class Fts5PhraseIter extends Struct {
  external Pointer<Uint8> a;

  external Pointer<Uint8> b;
}

/// {@category Struct}
class Fts5Tokenizer extends Opaque {}

/// {@category Struct}
class fts5_api extends Struct {
  @Int32()
  external int iVersion;

  @IntPtr()
  external int xCreateTokenizer;

  @IntPtr()
  external int xFindTokenizer;

  @IntPtr()
  external int xCreateFunction;
}

/// {@category Struct}
class fts5_tokenizer extends Struct {
  @IntPtr()
  external int xCreate;

  @IntPtr()
  external int xDelete;

  @IntPtr()
  external int xTokenize;
}

/// {@category Struct}
class sqlite3 extends Opaque {}

/// {@category Struct}
class sqlite3_api_routines extends Struct {
  @IntPtr()
  external int aggregate_context;

  @IntPtr()
  external int aggregate_count;

  @IntPtr()
  external int bind_blob;

  @IntPtr()
  external int bind_double;

  @IntPtr()
  external int bind_int;

  @IntPtr()
  external int bind_int64;

  @IntPtr()
  external int bind_null;

  @IntPtr()
  external int bind_parameter_count;

  @IntPtr()
  external int bind_parameter_index;

  @IntPtr()
  external int bind_parameter_name;

  @IntPtr()
  external int bind_text;

  @IntPtr()
  external int bind_text16;

  @IntPtr()
  external int bind_value;

  @IntPtr()
  external int busy_handler;

  @IntPtr()
  external int busy_timeout;

  @IntPtr()
  external int changes;

  @IntPtr()
  external int close;

  @IntPtr()
  external int collation_needed;

  @IntPtr()
  external int collation_needed16;

  @IntPtr()
  external int column_blob;

  @IntPtr()
  external int column_bytes;

  @IntPtr()
  external int column_bytes16;

  @IntPtr()
  external int column_count;

  @IntPtr()
  external int column_database_name;

  @IntPtr()
  external int column_database_name16;

  @IntPtr()
  external int column_decltype;

  @IntPtr()
  external int column_decltype16;

  @IntPtr()
  external int column_double;

  @IntPtr()
  external int column_int;

  @IntPtr()
  external int column_int64;

  @IntPtr()
  external int column_name;

  @IntPtr()
  external int column_name16;

  @IntPtr()
  external int column_origin_name;

  @IntPtr()
  external int column_origin_name16;

  @IntPtr()
  external int column_table_name;

  @IntPtr()
  external int column_table_name16;

  @IntPtr()
  external int column_text;

  @IntPtr()
  external int column_text16;

  @IntPtr()
  external int column_type;

  external Pointer<
          Pointer<
              Pointer<
                  Pointer<
                      Pointer<
                          Pointer<
                              Pointer<
                                  Pointer<
                                      Pointer<
                                          Pointer<
                                              Pointer<
                                                  Pointer<
                                                      Pointer<
                                                          Pointer<
                                                              Pointer<
                                                                  Pointer<
                                                                      Pointer<
                                                                          sqlite3_value>>>>>>>>>>>>>>>>>
      column_value;

  @IntPtr()
  external int commit_hook;

  @IntPtr()
  external int complete;

  @IntPtr()
  external int complete16;

  @IntPtr()
  external int create_collation;

  @IntPtr()
  external int create_collation16;

  @IntPtr()
  external int create_function;

  @IntPtr()
  external int create_function16;

  @IntPtr()
  external int create_module;

  @IntPtr()
  external int data_count;

  external Pointer<
          Pointer<
              Pointer<
                  Pointer<
                      Pointer<
                          Pointer<
                              Pointer<
                                  Pointer<
                                      Pointer<
                                          Pointer<
                                              Pointer<
                                                  Pointer<
                                                      Pointer<
                                                          Pointer<
                                                              Pointer<
                                                                  Pointer<
                                                                      Pointer<
                                                                          sqlite3>>>>>>>>>>>>>>>>>
      db_handle;

  @IntPtr()
  external int declare_vtab;

  @IntPtr()
  external int enable_shared_cache;

  @IntPtr()
  external int errcode;

  @IntPtr()
  external int errmsg;

  @IntPtr()
  external int errmsg16;

  @IntPtr()
  external int exec;

  @IntPtr()
  external int expired;

  @IntPtr()
  external int finalize;

  @IntPtr()
  external int free;

  @IntPtr()
  external int free_table;

  @IntPtr()
  external int get_autocommit;

  @IntPtr()
  external int get_auxdata;

  @IntPtr()
  external int get_table;

  @IntPtr()
  external int global_recover;

  @IntPtr()
  external int interruptx;

  @IntPtr()
  external int last_insert_rowid;

  @IntPtr()
  external int libversion;

  @IntPtr()
  external int libversion_number;

  @IntPtr()
  external int malloc;

  @IntPtr()
  external int mprintf;

  @IntPtr()
  external int open;

  @IntPtr()
  external int open16;

  @IntPtr()
  external int prepare;

  @IntPtr()
  external int prepare16;

  @IntPtr()
  external int profile;

  @IntPtr()
  external int progress_handler;

  @IntPtr()
  external int realloc;

  @IntPtr()
  external int reset;

  @IntPtr()
  external int result_blob;

  @IntPtr()
  external int result_double;

  @IntPtr()
  external int result_error;

  @IntPtr()
  external int result_error16;

  @IntPtr()
  external int result_int;

  @IntPtr()
  external int result_int64;

  @IntPtr()
  external int result_null;

  @IntPtr()
  external int result_text;

  @IntPtr()
  external int result_text16;

  @IntPtr()
  external int result_text16be;

  @IntPtr()
  external int result_text16le;

  @IntPtr()
  external int result_value;

  @IntPtr()
  external int rollback_hook;

  @IntPtr()
  external int set_authorizer;

  @IntPtr()
  external int set_auxdata;

  @IntPtr()
  external int xsnprintf;

  @IntPtr()
  external int step;

  @IntPtr()
  external int table_column_metadata;

  @IntPtr()
  external int thread_cleanup;

  @IntPtr()
  external int total_changes;

  @IntPtr()
  external int trace;

  @IntPtr()
  external int transfer_bindings;

  @IntPtr()
  external int update_hook;

  @IntPtr()
  external int user_data;

  @IntPtr()
  external int value_blob;

  @IntPtr()
  external int value_bytes;

  @IntPtr()
  external int value_bytes16;

  @IntPtr()
  external int value_double;

  @IntPtr()
  external int value_int;

  @IntPtr()
  external int value_int64;

  @IntPtr()
  external int value_numeric_type;

  @IntPtr()
  external int value_text;

  @IntPtr()
  external int value_text16;

  @IntPtr()
  external int value_text16be;

  @IntPtr()
  external int value_text16le;

  @IntPtr()
  external int value_type;

  @IntPtr()
  external int vmprintf;

  @IntPtr()
  external int overload_function;

  @IntPtr()
  external int prepare_v2;

  @IntPtr()
  external int prepare16_v2;

  @IntPtr()
  external int clear_bindings;

  @IntPtr()
  external int create_module_v2;

  @IntPtr()
  external int bind_zeroblob;

  @IntPtr()
  external int blob_bytes;

  @IntPtr()
  external int blob_close;

  @IntPtr()
  external int blob_open;

  @IntPtr()
  external int blob_read;

  @IntPtr()
  external int blob_write;

  @IntPtr()
  external int create_collation_v2;

  @IntPtr()
  external int file_control;

  @IntPtr()
  external int memory_highwater;

  @IntPtr()
  external int memory_used;

  external Pointer<
          Pointer<
              Pointer<
                  Pointer<
                      Pointer<
                          Pointer<Pointer<Pointer<Pointer<sqlite3_mutex>>>>>>>>>
      mutex_alloc;

  @IntPtr()
  external int mutex_enter;

  @IntPtr()
  external int mutex_free;

  @IntPtr()
  external int mutex_leave;

  @IntPtr()
  external int mutex_try;

  @IntPtr()
  external int open_v2;

  @IntPtr()
  external int release_memory;

  @IntPtr()
  external int result_error_nomem;

  @IntPtr()
  external int result_error_toobig;

  @IntPtr()
  external int sleep;

  @IntPtr()
  external int soft_heap_limit;

  external Pointer<
          Pointer<
              Pointer<
                  Pointer<
                      Pointer<
                          Pointer<
                              Pointer<
                                  Pointer<Pointer<Pointer<sqlite3_vfs>>>>>>>>>>
      vfs_find;

  @IntPtr()
  external int vfs_register;

  @IntPtr()
  external int vfs_unregister;

  @IntPtr()
  external int xthreadsafe;

  @IntPtr()
  external int result_zeroblob;

  @IntPtr()
  external int result_error_code;

  @IntPtr()
  external int test_control;

  @IntPtr()
  external int randomness;

  external Pointer<
          Pointer<
              Pointer<
                  Pointer<
                      Pointer<
                          Pointer<
                              Pointer<
                                  Pointer<
                                      Pointer<
                                          Pointer<
                                              Pointer<
                                                  Pointer<
                                                      Pointer<
                                                          Pointer<
                                                              Pointer<
                                                                  Pointer<
                                                                      Pointer<
                                                                          Pointer<
                                                                              Pointer<Pointer<sqlite3>>>>>>>>>>>>>>>>>>>>
      context_db_handle;

  @IntPtr()
  external int extended_result_codes;

  @IntPtr()
  external int limit;

  external Pointer<
          Pointer<
              Pointer<
                  Pointer<
                      Pointer<
                          Pointer<
                              Pointer<
                                  Pointer<
                                      Pointer<
                                          Pointer<
                                              Pointer<
                                                  Pointer<
                                                      sqlite3_stmt>>>>>>>>>>>>
      next_stmt;

  @IntPtr()
  external int sql;

  @IntPtr()
  external int status;

  @IntPtr()
  external int backup_finish;

  external Pointer<
          Pointer<
              Pointer<
                  Pointer<
                      Pointer<
                          Pointer<
                              Pointer<
                                  Pointer<
                                      Pointer<
                                          Pointer<
                                              Pointer<
                                                  Pointer<
                                                      sqlite3_backup>>>>>>>>>>>>
      backup_init;

  @IntPtr()
  external int backup_pagecount;

  @IntPtr()
  external int backup_remaining;

  @IntPtr()
  external int backup_step;

  @IntPtr()
  external int compileoption_get;

  @IntPtr()
  external int compileoption_used;

  @IntPtr()
  external int create_function_v2;

  @IntPtr()
  external int db_config;

  external Pointer<
          Pointer<
              Pointer<
                  Pointer<
                      Pointer<
                          Pointer<
                              Pointer<
                                  Pointer<
                                      Pointer<
                                          Pointer<
                                              Pointer<
                                                  Pointer<
                                                      sqlite3_mutex>>>>>>>>>>>>
      db_mutex;

  @IntPtr()
  external int db_status;

  @IntPtr()
  external int extended_errcode;

  @IntPtr()
  external int log;

  @IntPtr()
  external int soft_heap_limit64;

  @IntPtr()
  external int sourceid;

  @IntPtr()
  external int stmt_status;

  @IntPtr()
  external int strnicmp;

  @IntPtr()
  external int unlock_notify;

  @IntPtr()
  external int wal_autocheckpoint;

  @IntPtr()
  external int wal_checkpoint;

  @IntPtr()
  external int wal_hook;

  @IntPtr()
  external int blob_reopen;

  @IntPtr()
  external int vtab_config;

  @IntPtr()
  external int vtab_on_conflict;

  @IntPtr()
  external int close_v2;

  @IntPtr()
  external int db_filename;

  @IntPtr()
  external int db_readonly;

  @IntPtr()
  external int db_release_memory;

  @IntPtr()
  external int errstr;

  @IntPtr()
  external int stmt_busy;

  @IntPtr()
  external int stmt_readonly;

  @IntPtr()
  external int stricmp;

  @IntPtr()
  external int uri_boolean;

  @IntPtr()
  external int uri_int64;

  @IntPtr()
  external int uri_parameter;

  @IntPtr()
  external int xvsnprintf;

  @IntPtr()
  external int wal_checkpoint_v2;

  @IntPtr()
  external int auto_extension;

  @IntPtr()
  external int bind_blob64;

  @IntPtr()
  external int bind_text64;

  @IntPtr()
  external int cancel_auto_extension;

  @IntPtr()
  external int load_extension;

  @IntPtr()
  external int malloc64;

  @IntPtr()
  external int msize;

  @IntPtr()
  external int realloc64;

  @IntPtr()
  external int reset_auto_extension;

  @IntPtr()
  external int result_blob64;

  @IntPtr()
  external int result_text64;

  @IntPtr()
  external int strglob;

  external Pointer<
          Pointer<
              Pointer<
                  Pointer<
                      Pointer<
                          Pointer<
                              Pointer<
                                  Pointer<
                                      Pointer<Pointer<sqlite3_value>>>>>>>>>>
      value_dup;

  @IntPtr()
  external int value_free;

  @IntPtr()
  external int result_zeroblob64;

  @IntPtr()
  external int bind_zeroblob64;

  @IntPtr()
  external int value_subtype;

  @IntPtr()
  external int result_subtype;

  @IntPtr()
  external int status64;

  @IntPtr()
  external int strlike;

  @IntPtr()
  external int db_cacheflush;

  @IntPtr()
  external int system_errno;

  @IntPtr()
  external int trace_v2;

  @IntPtr()
  external int expanded_sql;

  @IntPtr()
  external int set_last_insert_rowid;

  @IntPtr()
  external int prepare_v3;

  @IntPtr()
  external int prepare16_v3;

  @IntPtr()
  external int bind_pointer;

  @IntPtr()
  external int result_pointer;

  @IntPtr()
  external int value_pointer;

  @IntPtr()
  external int vtab_nochange;

  @IntPtr()
  external int value_nochange;

  @IntPtr()
  external int vtab_collation;

  @IntPtr()
  external int keyword_count;

  @IntPtr()
  external int keyword_name;

  @IntPtr()
  external int keyword_check;

  external Pointer<
          Pointer<
              Pointer<
                  Pointer<
                      Pointer<
                          Pointer<
                              Pointer<
                                  Pointer<
                                      Pointer<
                                          Pointer<
                                              Pointer<
                                                  Pointer<
                                                      sqlite3_str>>>>>>>>>>>>
      str_new;

  @IntPtr()
  external int str_finish;

  @IntPtr()
  external int str_appendf;

  @IntPtr()
  external int str_vappendf;

  @IntPtr()
  external int str_append;

  @IntPtr()
  external int str_appendall;

  @IntPtr()
  external int str_appendchar;

  @IntPtr()
  external int str_reset;

  @IntPtr()
  external int str_errcode;

  @IntPtr()
  external int str_length;

  @IntPtr()
  external int str_value;

  @IntPtr()
  external int create_window_function;

  @IntPtr()
  external int normalized_sql;

  @IntPtr()
  external int stmt_isexplain;

  @IntPtr()
  external int value_frombind;

  @IntPtr()
  external int drop_modules;

  @IntPtr()
  external int hard_heap_limit64;

  @IntPtr()
  external int uri_key;

  @IntPtr()
  external int filename_database;

  @IntPtr()
  external int filename_journal;

  @IntPtr()
  external int filename_wal;

  @IntPtr()
  external int create_filename;

  @IntPtr()
  external int free_filename;

  external Pointer<
          Pointer<
              Pointer<
                  Pointer<
                      Pointer<
                          Pointer<
                              Pointer<
                                  Pointer<Pointer<Pointer<sqlite3_file>>>>>>>>>>
      database_file_object;

  @IntPtr()
  external int txn_state;
}

/// {@category Struct}
class sqlite3_backup extends Opaque {}

/// {@category Struct}
class sqlite3_blob extends Opaque {}

/// {@category Struct}
class sqlite3_context extends Opaque {}

/// {@category Struct}
class sqlite3_file extends Struct {
  external Pointer<sqlite3_io_methods> pMethods;
}

/// {@category Struct}
class sqlite3_index_info extends Struct {
  @Int32()
  external int nConstraint;

  external Pointer<_sqlite3_index_info_sqlite3_index_constraint> aConstraint;

  @Int32()
  external int nOrderBy;

  external Pointer<_sqlite3_index_info_sqlite3_index_orderby> aOrderBy;

  external Pointer<_sqlite3_index_info_sqlite3_index_constraint_usage>
      aConstraintUsage;

  @Int32()
  external int idxNum;

  external Pointer<Utf8> idxStr;

  @Int32()
  external int needToFreeIdxStr;

  @Int32()
  external int orderByConsumed;

  @Double()
  external double estimatedCost;

  @Int64()
  external int estimatedRows;

  @Int32()
  external int idxFlags;

  @Uint64()
  external int colUsed;
}

/// {@category Struct}
class _sqlite3_index_info_sqlite3_index_constraint extends Struct {
  @Int32()
  external int iColumn;

  @Uint8()
  external int op;

  @Uint8()
  external int usable;

  @Int32()
  external int iTermOffset;
}

/// {@category Struct}
class _sqlite3_index_info_sqlite3_index_orderby extends Struct {
  @Int32()
  external int iColumn;

  @Uint8()
  external int desc;
}

/// {@category Struct}
class _sqlite3_index_info_sqlite3_index_constraint_usage extends Struct {
  @Int32()
  external int argvIndex;

  @Uint8()
  external int omit;
}

/// {@category Struct}
class sqlite3_io_methods extends Struct {
  @Int32()
  external int iVersion;

  @IntPtr()
  external int xClose;

  @IntPtr()
  external int xRead;

  @IntPtr()
  external int xWrite;

  @IntPtr()
  external int xTruncate;

  @IntPtr()
  external int xSync;

  @IntPtr()
  external int xFileSize;

  @IntPtr()
  external int xLock;

  @IntPtr()
  external int xUnlock;

  @IntPtr()
  external int xCheckReservedLock;

  @IntPtr()
  external int xFileControl;

  @IntPtr()
  external int xSectorSize;

  @IntPtr()
  external int xDeviceCharacteristics;

  @IntPtr()
  external int xShmMap;

  @IntPtr()
  external int xShmLock;

  @IntPtr()
  external int xShmBarrier;

  @IntPtr()
  external int xShmUnmap;

  @IntPtr()
  external int xFetch;

  @IntPtr()
  external int xUnfetch;
}

/// {@category Struct}
class sqlite3_mem_methods extends Struct {
  @IntPtr()
  external int xMalloc;

  @IntPtr()
  external int xFree;

  @IntPtr()
  external int xRealloc;

  @IntPtr()
  external int xSize;

  @IntPtr()
  external int xRoundup;

  @IntPtr()
  external int xInit;

  @IntPtr()
  external int xShutdown;

  external Pointer pAppData;
}

/// {@category Struct}
class sqlite3_module extends Struct {
  @Int32()
  external int iVersion;

  @IntPtr()
  external int xCreate;

  @IntPtr()
  external int xConnect;

  @IntPtr()
  external int xBestIndex;

  @IntPtr()
  external int xDisconnect;

  @IntPtr()
  external int xDestroy;

  @IntPtr()
  external int xOpen;

  @IntPtr()
  external int xClose;

  @IntPtr()
  external int xFilter;

  @IntPtr()
  external int xNext;

  @IntPtr()
  external int xEof;

  @IntPtr()
  external int xColumn;

  @IntPtr()
  external int xRowid;

  @IntPtr()
  external int xUpdate;

  @IntPtr()
  external int xBegin;

  @IntPtr()
  external int xSync;

  @IntPtr()
  external int xCommit;

  @IntPtr()
  external int xRollback;

  @IntPtr()
  external int xFindFunction;

  @IntPtr()
  external int xRename;

  @IntPtr()
  external int xSavepoint;

  @IntPtr()
  external int xRelease;

  @IntPtr()
  external int xRollbackTo;

  @IntPtr()
  external int xShadowName;
}

/// {@category Struct}
class sqlite3_mutex extends Opaque {}

/// {@category Struct}
class sqlite3_mutex_methods extends Struct {
  @IntPtr()
  external int xMutexInit;

  @IntPtr()
  external int xMutexEnd;

  external Pointer<
          Pointer<
              Pointer<
                  Pointer<
                      Pointer<
                          Pointer<Pointer<Pointer<Pointer<sqlite3_mutex>>>>>>>>>
      xMutexAlloc;

  @IntPtr()
  external int xMutexFree;

  @IntPtr()
  external int xMutexEnter;

  @IntPtr()
  external int xMutexTry;

  @IntPtr()
  external int xMutexLeave;

  @IntPtr()
  external int xMutexHeld;

  @IntPtr()
  external int xMutexNotheld;
}

/// {@category Struct}
class sqlite3_pcache extends Opaque {}

/// {@category Struct}
class sqlite3_pcache_methods extends Struct {
  external Pointer pArg;

  @IntPtr()
  external int xInit;

  @IntPtr()
  external int xShutdown;

  external Pointer<
          Pointer<
              Pointer<
                  Pointer<
                      Pointer<
                          Pointer<
                              Pointer<Pointer<Pointer<sqlite3_pcache>>>>>>>>>
      xCreate;

  @IntPtr()
  external int xCachesize;

  @IntPtr()
  external int xPagecount;

  @IntPtr()
  external int xFetch;

  @IntPtr()
  external int xUnpin;

  @IntPtr()
  external int xRekey;

  @IntPtr()
  external int xTruncate;

  @IntPtr()
  external int xDestroy;
}

/// {@category Struct}
class sqlite3_pcache_methods2 extends Struct {
  @Int32()
  external int iVersion;

  external Pointer pArg;

  @IntPtr()
  external int xInit;

  @IntPtr()
  external int xShutdown;

  external Pointer<
          Pointer<
              Pointer<
                  Pointer<
                      Pointer<
                          Pointer<
                              Pointer<Pointer<Pointer<sqlite3_pcache>>>>>>>>>
      xCreate;

  @IntPtr()
  external int xCachesize;

  @IntPtr()
  external int xPagecount;

  external Pointer<
          Pointer<
              Pointer<
                  Pointer<
                      Pointer<
                          Pointer<
                              Pointer<
                                  Pointer<
                                      Pointer<
                                          Pointer<
                                              Pointer<
                                                  Pointer<
                                                      Pointer<
                                                          Pointer<
                                                              Pointer<
                                                                  Pointer<
                                                                      Pointer<
                                                                          Pointer<
                                                                              Pointer<sqlite3_pcache_page>>>>>>>>>>>>>>>>>>>
      xFetch;

  @IntPtr()
  external int xUnpin;

  @IntPtr()
  external int xRekey;

  @IntPtr()
  external int xTruncate;

  @IntPtr()
  external int xDestroy;

  @IntPtr()
  external int xShrink;
}

/// {@category Struct}
class sqlite3_pcache_page extends Struct {
  external Pointer pBuf;

  external Pointer pExtra;
}

/// {@category Struct}
class sqlite3_rtree_geometry extends Struct {
  external Pointer pContext;

  @Int32()
  external int nParam;

  external Pointer<Double> aParam;

  external Pointer pUser;

  @IntPtr()
  external int xDelUser;
}

/// {@category Struct}
class sqlite3_rtree_query_info extends Struct {
  external Pointer pContext;

  @Int32()
  external int nParam;

  external Pointer<Double> aParam;

  external Pointer pUser;

  @IntPtr()
  external int xDelUser;

  external Pointer<Double> aCoord;

  external Pointer<Uint32> anQueue;

  @Int32()
  external int nCoord;

  @Int32()
  external int iLevel;

  @Int32()
  external int mxLevel;

  @Int64()
  external int iRowid;

  @Double()
  external double rParentScore;

  @Int32()
  external int eParentWithin;

  @Int32()
  external int eWithin;

  @Double()
  external double rScore;

  external Pointer<Pointer<sqlite3_value>> apSqlParam;
}

/// {@category Struct}
class sqlite3_snapshot extends Struct {
  @Array(48)
  external Array<Uint8> hidden;
}

/// {@category Struct}
class sqlite3_stmt extends Opaque {}

/// {@category Struct}
class sqlite3_str extends Opaque {}

/// {@category Struct}
class sqlite3_value extends Opaque {}

/// {@category Struct}
class sqlite3_vfs extends Struct {
  @Int32()
  external int iVersion;

  @Int32()
  external int szOsFile;

  @Int32()
  external int mxPathname;

  external Pointer<sqlite3_vfs> pNext;

  external Pointer<Utf8> zName;

  external Pointer pAppData;

  @IntPtr()
  external int xOpen;

  @IntPtr()
  external int xDelete;

  @IntPtr()
  external int xAccess;

  @IntPtr()
  external int xFullPathname;

  @IntPtr()
  external int xDlOpen;

  @IntPtr()
  external int xDlError;

  @IntPtr()
  external int xDlSym;

  @IntPtr()
  external int xDlClose;

  @IntPtr()
  external int xRandomness;

  @IntPtr()
  external int xSleep;

  @IntPtr()
  external int xCurrentTime;

  @IntPtr()
  external int xGetLastError;

  @IntPtr()
  external int xCurrentTimeInt64;

  @IntPtr()
  external int xSetSystemCall;

  @IntPtr()
  external int xGetSystemCall;

  @IntPtr()
  external int xNextSystemCall;
}

/// {@category Struct}
class sqlite3_vtab extends Struct {
  external Pointer<sqlite3_module> pModule;

  @Int32()
  external int nRef;

  external Pointer<Utf8> zErrMsg;
}

/// {@category Struct}
class sqlite3_vtab_cursor extends Struct {
  external Pointer<sqlite3_vtab> pVtab;
}
