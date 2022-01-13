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
import '../../storage/structuredstorage/structs.g.dart';
import '../../storage/jet/structs.g.dart';
import '../../storage/jet/callbacks.g.dart';
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// esent.dll
// -----------------------------------------------------------------------
final _esent = DynamicLibrary.open('esent.dll');

int JetAddColumn(
  int sesid,
  int tableid,
  Pointer<Uint16> szColumnName,
  Pointer<JET_COLUMNDEF> pcolumndef,
  Pointer pvDefault,
  int cbDefault,
  Pointer<Uint32> pcolumnid,
) =>
    _JetAddColumn(
      sesid,
      tableid,
      szColumnName,
      pcolumndef,
      pvDefault,
      cbDefault,
      pcolumnid,
    );

late final _JetAddColumn = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<Uint16> szColumnName,
  Pointer<JET_COLUMNDEF> pcolumndef,
  Pointer pvDefault,
  Uint32 cbDefault,
  Pointer<Uint32> pcolumnid,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<Uint16> szColumnName,
  Pointer<JET_COLUMNDEF> pcolumndef,
  Pointer pvDefault,
  int cbDefault,
  Pointer<Uint32> pcolumnid,
)>('JetAddColumnW');

int JetAttachDatabase2(
  int sesid,
  Pointer<Uint16> szFilename,
  int cpgDatabaseSizeMax,
  int grbit,
) =>
    _JetAttachDatabase2(
      sesid,
      szFilename,
      cpgDatabaseSizeMax,
      grbit,
    );

late final _JetAttachDatabase2 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Pointer<Uint16> szFilename,
  Uint32 cpgDatabaseSizeMax,
  Uint32 grbit,
),
    int Function(
  int sesid,
  Pointer<Uint16> szFilename,
  int cpgDatabaseSizeMax,
  int grbit,
)>('JetAttachDatabase2W');

int JetAttachDatabase(
  int sesid,
  Pointer<Uint16> szFilename,
  int grbit,
) =>
    _JetAttachDatabase(
      sesid,
      szFilename,
      grbit,
    );

late final _JetAttachDatabase = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Pointer<Uint16> szFilename,
  Uint32 grbit,
),
    int Function(
  int sesid,
  Pointer<Uint16> szFilename,
  int grbit,
)>('JetAttachDatabaseW');

int JetBackupInstance(
  int instance,
  Pointer<Uint16> szBackupPath,
  int grbit,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfnStatus,
) =>
    _JetBackupInstance(
      instance,
      szBackupPath,
      grbit,
      pfnStatus,
    );

late final _JetBackupInstance = _esent.lookupFunction<
    Int32 Function(
  IntPtr instance,
  Pointer<Uint16> szBackupPath,
  Uint32 grbit,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfnStatus,
),
    int Function(
  int instance,
  Pointer<Uint16> szBackupPath,
  int grbit,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfnStatus,
)>('JetBackupInstanceW');

int JetBackup(
  Pointer<Uint16> szBackupPath,
  int grbit,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfnStatus,
) =>
    _JetBackup(
      szBackupPath,
      grbit,
      pfnStatus,
    );

late final _JetBackup = _esent.lookupFunction<
    Int32 Function(
  Pointer<Uint16> szBackupPath,
  Uint32 grbit,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfnStatus,
),
    int Function(
  Pointer<Uint16> szBackupPath,
  int grbit,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfnStatus,
)>('JetBackupW');

int JetBeginExternalBackup(
  int grbit,
) =>
    _JetBeginExternalBackup(
      grbit,
    );

late final _JetBeginExternalBackup = _esent.lookupFunction<
    Int32 Function(
  Uint32 grbit,
),
    int Function(
  int grbit,
)>('JetBeginExternalBackup');

int JetBeginExternalBackupInstance(
  int instance,
  int grbit,
) =>
    _JetBeginExternalBackupInstance(
      instance,
      grbit,
    );

late final _JetBeginExternalBackupInstance = _esent.lookupFunction<
    Int32 Function(
  IntPtr instance,
  Uint32 grbit,
),
    int Function(
  int instance,
  int grbit,
)>('JetBeginExternalBackupInstance');

int JetBeginSession(
  int instance,
  Pointer<IntPtr> psesid,
  Pointer<Uint16> szUserName,
  Pointer<Uint16> szPassword,
) =>
    _JetBeginSession(
      instance,
      psesid,
      szUserName,
      szPassword,
    );

late final _JetBeginSession = _esent.lookupFunction<
    Int32 Function(
  IntPtr instance,
  Pointer<IntPtr> psesid,
  Pointer<Uint16> szUserName,
  Pointer<Uint16> szPassword,
),
    int Function(
  int instance,
  Pointer<IntPtr> psesid,
  Pointer<Uint16> szUserName,
  Pointer<Uint16> szPassword,
)>('JetBeginSessionW');

int JetBeginTransaction(
  int sesid,
) =>
    _JetBeginTransaction(
      sesid,
    );

late final _JetBeginTransaction = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
),
    int Function(
  int sesid,
)>('JetBeginTransaction');

int JetBeginTransaction2(
  int sesid,
  int grbit,
) =>
    _JetBeginTransaction2(
      sesid,
      grbit,
    );

late final _JetBeginTransaction2 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int grbit,
)>('JetBeginTransaction2');

int JetBeginTransaction3(
  int sesid,
  int trxid,
  int grbit,
) =>
    _JetBeginTransaction3(
      sesid,
      trxid,
      grbit,
    );

late final _JetBeginTransaction3 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Int64 trxid,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int trxid,
  int grbit,
)>('JetBeginTransaction3');

int JetCloseDatabase(
  int sesid,
  int dbid,
  int grbit,
) =>
    _JetCloseDatabase(
      sesid,
      dbid,
      grbit,
    );

late final _JetCloseDatabase = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 dbid,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int dbid,
  int grbit,
)>('JetCloseDatabase');

int JetCloseFile(
  int hfFile,
) =>
    _JetCloseFile(
      hfFile,
    );

late final _JetCloseFile = _esent.lookupFunction<
    Int32 Function(
  IntPtr hfFile,
),
    int Function(
  int hfFile,
)>('JetCloseFile');

int JetCloseFileInstance(
  int instance,
  int hfFile,
) =>
    _JetCloseFileInstance(
      instance,
      hfFile,
    );

late final _JetCloseFileInstance = _esent.lookupFunction<
    Int32 Function(
  IntPtr instance,
  IntPtr hfFile,
),
    int Function(
  int instance,
  int hfFile,
)>('JetCloseFileInstance');

int JetCloseTable(
  int sesid,
  int tableid,
) =>
    _JetCloseTable(
      sesid,
      tableid,
    );

late final _JetCloseTable = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
),
    int Function(
  int sesid,
  int tableid,
)>('JetCloseTable');

int JetCommitTransaction(
  int sesid,
  int grbit,
) =>
    _JetCommitTransaction(
      sesid,
      grbit,
    );

late final _JetCommitTransaction = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int grbit,
)>('JetCommitTransaction');

int JetCommitTransaction2(
  int sesid,
  int grbit,
  int cmsecDurableCommit,
  Pointer<JET_COMMIT_ID> pCommitId,
) =>
    _JetCommitTransaction2(
      sesid,
      grbit,
      cmsecDurableCommit,
      pCommitId,
    );

late final _JetCommitTransaction2 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 grbit,
  Uint32 cmsecDurableCommit,
  Pointer<JET_COMMIT_ID> pCommitId,
),
    int Function(
  int sesid,
  int grbit,
  int cmsecDurableCommit,
  Pointer<JET_COMMIT_ID> pCommitId,
)>('JetCommitTransaction2');

int JetCompact(
  int sesid,
  Pointer<Uint16> szDatabaseSrc,
  Pointer<Uint16> szDatabaseDest,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfnStatus,
  Pointer<CONVERT_> pconvert,
  int grbit,
) =>
    _JetCompact(
      sesid,
      szDatabaseSrc,
      szDatabaseDest,
      pfnStatus,
      pconvert,
      grbit,
    );

late final _JetCompact = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Pointer<Uint16> szDatabaseSrc,
  Pointer<Uint16> szDatabaseDest,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfnStatus,
  Pointer<CONVERT_> pconvert,
  Uint32 grbit,
),
    int Function(
  int sesid,
  Pointer<Uint16> szDatabaseSrc,
  Pointer<Uint16> szDatabaseDest,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfnStatus,
  Pointer<CONVERT_> pconvert,
  int grbit,
)>('JetCompactW');

int JetComputeStats(
  int sesid,
  int tableid,
) =>
    _JetComputeStats(
      sesid,
      tableid,
    );

late final _JetComputeStats = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
),
    int Function(
  int sesid,
  int tableid,
)>('JetComputeStats');

int JetConfigureProcessForCrashDump(
  int grbit,
) =>
    _JetConfigureProcessForCrashDump(
      grbit,
    );

late final _JetConfigureProcessForCrashDump = _esent.lookupFunction<
    Int32 Function(
  Uint32 grbit,
),
    int Function(
  int grbit,
)>('JetConfigureProcessForCrashDump');

int JetCreateDatabase2(
  int sesid,
  Pointer<Uint16> szFilename,
  int cpgDatabaseSizeMax,
  Pointer<Uint32> pdbid,
  int grbit,
) =>
    _JetCreateDatabase2(
      sesid,
      szFilename,
      cpgDatabaseSizeMax,
      pdbid,
      grbit,
    );

late final _JetCreateDatabase2 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Pointer<Uint16> szFilename,
  Uint32 cpgDatabaseSizeMax,
  Pointer<Uint32> pdbid,
  Uint32 grbit,
),
    int Function(
  int sesid,
  Pointer<Uint16> szFilename,
  int cpgDatabaseSizeMax,
  Pointer<Uint32> pdbid,
  int grbit,
)>('JetCreateDatabase2W');

int JetCreateDatabase(
  int sesid,
  Pointer<Uint16> szFilename,
  Pointer<Uint16> szConnect,
  Pointer<Uint32> pdbid,
  int grbit,
) =>
    _JetCreateDatabase(
      sesid,
      szFilename,
      szConnect,
      pdbid,
      grbit,
    );

late final _JetCreateDatabase = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Pointer<Uint16> szFilename,
  Pointer<Uint16> szConnect,
  Pointer<Uint32> pdbid,
  Uint32 grbit,
),
    int Function(
  int sesid,
  Pointer<Uint16> szFilename,
  Pointer<Uint16> szConnect,
  Pointer<Uint32> pdbid,
  int grbit,
)>('JetCreateDatabaseW');

int JetCreateIndex2(
  int sesid,
  int tableid,
  Pointer<JET_INDEXCREATE_> pindexcreate,
  int cIndexCreate,
) =>
    _JetCreateIndex2(
      sesid,
      tableid,
      pindexcreate,
      cIndexCreate,
    );

late final _JetCreateIndex2 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<JET_INDEXCREATE_> pindexcreate,
  Uint32 cIndexCreate,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<JET_INDEXCREATE_> pindexcreate,
  int cIndexCreate,
)>('JetCreateIndex2W');

int JetCreateIndex3(
  int sesid,
  int tableid,
  Pointer<JET_INDEXCREATE2_> pindexcreate,
  int cIndexCreate,
) =>
    _JetCreateIndex3(
      sesid,
      tableid,
      pindexcreate,
      cIndexCreate,
    );

late final _JetCreateIndex3 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<JET_INDEXCREATE2_> pindexcreate,
  Uint32 cIndexCreate,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<JET_INDEXCREATE2_> pindexcreate,
  int cIndexCreate,
)>('JetCreateIndex3W');

int JetCreateIndex4(
  int sesid,
  int tableid,
  Pointer<JET_INDEXCREATE3_> pindexcreate,
  int cIndexCreate,
) =>
    _JetCreateIndex4(
      sesid,
      tableid,
      pindexcreate,
      cIndexCreate,
    );

late final _JetCreateIndex4 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<JET_INDEXCREATE3_> pindexcreate,
  Uint32 cIndexCreate,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<JET_INDEXCREATE3_> pindexcreate,
  int cIndexCreate,
)>('JetCreateIndex4W');

int JetCreateIndex(
  int sesid,
  int tableid,
  Pointer<Uint16> szIndexName,
  int grbit,
  Pointer<Utf16> szKey,
  int cbKey,
  int lDensity,
) =>
    _JetCreateIndex(
      sesid,
      tableid,
      szIndexName,
      grbit,
      szKey,
      cbKey,
      lDensity,
    );

late final _JetCreateIndex = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<Uint16> szIndexName,
  Uint32 grbit,
  Pointer<Utf16> szKey,
  Uint32 cbKey,
  Uint32 lDensity,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<Uint16> szIndexName,
  int grbit,
  Pointer<Utf16> szKey,
  int cbKey,
  int lDensity,
)>('JetCreateIndexW');

int JetCreateInstance2(
  Pointer<IntPtr> pinstance,
  Pointer<Uint16> szInstanceName,
  Pointer<Uint16> szDisplayName,
  int grbit,
) =>
    _JetCreateInstance2(
      pinstance,
      szInstanceName,
      szDisplayName,
      grbit,
    );

late final _JetCreateInstance2 = _esent.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> pinstance,
  Pointer<Uint16> szInstanceName,
  Pointer<Uint16> szDisplayName,
  Uint32 grbit,
),
    int Function(
  Pointer<IntPtr> pinstance,
  Pointer<Uint16> szInstanceName,
  Pointer<Uint16> szDisplayName,
  int grbit,
)>('JetCreateInstance2W');

int JetCreateInstance(
  Pointer<IntPtr> pinstance,
  Pointer<Uint16> szInstanceName,
) =>
    _JetCreateInstance(
      pinstance,
      szInstanceName,
    );

late final _JetCreateInstance = _esent.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> pinstance,
  Pointer<Uint16> szInstanceName,
),
    int Function(
  Pointer<IntPtr> pinstance,
  Pointer<Uint16> szInstanceName,
)>('JetCreateInstanceW');

int JetCreateTableColumnIndex2(
  int sesid,
  int dbid,
  Pointer<JET_TABLECREATE2_> ptablecreate,
) =>
    _JetCreateTableColumnIndex2(
      sesid,
      dbid,
      ptablecreate,
    );

late final _JetCreateTableColumnIndex2 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 dbid,
  Pointer<JET_TABLECREATE2_> ptablecreate,
),
    int Function(
  int sesid,
  int dbid,
  Pointer<JET_TABLECREATE2_> ptablecreate,
)>('JetCreateTableColumnIndex2W');

int JetCreateTableColumnIndex3(
  int sesid,
  int dbid,
  Pointer<JET_TABLECREATE3_> ptablecreate,
) =>
    _JetCreateTableColumnIndex3(
      sesid,
      dbid,
      ptablecreate,
    );

late final _JetCreateTableColumnIndex3 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 dbid,
  Pointer<JET_TABLECREATE3_> ptablecreate,
),
    int Function(
  int sesid,
  int dbid,
  Pointer<JET_TABLECREATE3_> ptablecreate,
)>('JetCreateTableColumnIndex3W');

int JetCreateTableColumnIndex4(
  int sesid,
  int dbid,
  Pointer<JET_TABLECREATE4_> ptablecreate,
) =>
    _JetCreateTableColumnIndex4(
      sesid,
      dbid,
      ptablecreate,
    );

late final _JetCreateTableColumnIndex4 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 dbid,
  Pointer<JET_TABLECREATE4_> ptablecreate,
),
    int Function(
  int sesid,
  int dbid,
  Pointer<JET_TABLECREATE4_> ptablecreate,
)>('JetCreateTableColumnIndex4W');

int JetCreateTableColumnIndex(
  int sesid,
  int dbid,
  Pointer<JET_TABLECREATE_> ptablecreate,
) =>
    _JetCreateTableColumnIndex(
      sesid,
      dbid,
      ptablecreate,
    );

late final _JetCreateTableColumnIndex = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 dbid,
  Pointer<JET_TABLECREATE_> ptablecreate,
),
    int Function(
  int sesid,
  int dbid,
  Pointer<JET_TABLECREATE_> ptablecreate,
)>('JetCreateTableColumnIndexW');

int JetCreateTable(
  int sesid,
  int dbid,
  Pointer<Uint16> szTableName,
  int lPages,
  int lDensity,
  Pointer<IntPtr> ptableid,
) =>
    _JetCreateTable(
      sesid,
      dbid,
      szTableName,
      lPages,
      lDensity,
      ptableid,
    );

late final _JetCreateTable = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 dbid,
  Pointer<Uint16> szTableName,
  Uint32 lPages,
  Uint32 lDensity,
  Pointer<IntPtr> ptableid,
),
    int Function(
  int sesid,
  int dbid,
  Pointer<Uint16> szTableName,
  int lPages,
  int lDensity,
  Pointer<IntPtr> ptableid,
)>('JetCreateTableW');

int JetDefragment2(
  int sesid,
  int dbid,
  Pointer<Uint16> szTableName,
  Pointer<Uint32> pcPasses,
  Pointer<Uint32> pcSeconds,
  Pointer<NativeFunction<JET_CALLBACK>> callback,
  int grbit,
) =>
    _JetDefragment2(
      sesid,
      dbid,
      szTableName,
      pcPasses,
      pcSeconds,
      callback,
      grbit,
    );

late final _JetDefragment2 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 dbid,
  Pointer<Uint16> szTableName,
  Pointer<Uint32> pcPasses,
  Pointer<Uint32> pcSeconds,
  Pointer<NativeFunction<JET_CALLBACK>> callback,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int dbid,
  Pointer<Uint16> szTableName,
  Pointer<Uint32> pcPasses,
  Pointer<Uint32> pcSeconds,
  Pointer<NativeFunction<JET_CALLBACK>> callback,
  int grbit,
)>('JetDefragment2W');

int JetDefragment3(
  int sesid,
  Pointer<Uint16> szDatabaseName,
  Pointer<Uint16> szTableName,
  Pointer<Uint32> pcPasses,
  Pointer<Uint32> pcSeconds,
  Pointer<NativeFunction<JET_CALLBACK>> callback,
  Pointer pvContext,
  int grbit,
) =>
    _JetDefragment3(
      sesid,
      szDatabaseName,
      szTableName,
      pcPasses,
      pcSeconds,
      callback,
      pvContext,
      grbit,
    );

late final _JetDefragment3 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Pointer<Uint16> szDatabaseName,
  Pointer<Uint16> szTableName,
  Pointer<Uint32> pcPasses,
  Pointer<Uint32> pcSeconds,
  Pointer<NativeFunction<JET_CALLBACK>> callback,
  Pointer pvContext,
  Uint32 grbit,
),
    int Function(
  int sesid,
  Pointer<Uint16> szDatabaseName,
  Pointer<Uint16> szTableName,
  Pointer<Uint32> pcPasses,
  Pointer<Uint32> pcSeconds,
  Pointer<NativeFunction<JET_CALLBACK>> callback,
  Pointer pvContext,
  int grbit,
)>('JetDefragment3W');

int JetDefragment(
  int sesid,
  int dbid,
  Pointer<Uint16> szTableName,
  Pointer<Uint32> pcPasses,
  Pointer<Uint32> pcSeconds,
  int grbit,
) =>
    _JetDefragment(
      sesid,
      dbid,
      szTableName,
      pcPasses,
      pcSeconds,
      grbit,
    );

late final _JetDefragment = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 dbid,
  Pointer<Uint16> szTableName,
  Pointer<Uint32> pcPasses,
  Pointer<Uint32> pcSeconds,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int dbid,
  Pointer<Uint16> szTableName,
  Pointer<Uint32> pcPasses,
  Pointer<Uint32> pcSeconds,
  int grbit,
)>('JetDefragmentW');

int JetDelete(
  int sesid,
  int tableid,
) =>
    _JetDelete(
      sesid,
      tableid,
    );

late final _JetDelete = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
),
    int Function(
  int sesid,
  int tableid,
)>('JetDelete');

int JetDeleteColumn2(
  int sesid,
  int tableid,
  Pointer<Uint16> szColumnName,
  int grbit,
) =>
    _JetDeleteColumn2(
      sesid,
      tableid,
      szColumnName,
      grbit,
    );

late final _JetDeleteColumn2 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<Uint16> szColumnName,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<Uint16> szColumnName,
  int grbit,
)>('JetDeleteColumn2W');

int JetDeleteColumn(
  int sesid,
  int tableid,
  Pointer<Uint16> szColumnName,
) =>
    _JetDeleteColumn(
      sesid,
      tableid,
      szColumnName,
    );

late final _JetDeleteColumn = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<Uint16> szColumnName,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<Uint16> szColumnName,
)>('JetDeleteColumnW');

int JetDeleteIndex(
  int sesid,
  int tableid,
  Pointer<Uint16> szIndexName,
) =>
    _JetDeleteIndex(
      sesid,
      tableid,
      szIndexName,
    );

late final _JetDeleteIndex = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<Uint16> szIndexName,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<Uint16> szIndexName,
)>('JetDeleteIndexW');

int JetDeleteTable(
  int sesid,
  int dbid,
  Pointer<Uint16> szTableName,
) =>
    _JetDeleteTable(
      sesid,
      dbid,
      szTableName,
    );

late final _JetDeleteTable = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 dbid,
  Pointer<Uint16> szTableName,
),
    int Function(
  int sesid,
  int dbid,
  Pointer<Uint16> szTableName,
)>('JetDeleteTableW');

int JetDetachDatabase2(
  int sesid,
  Pointer<Uint16> szFilename,
  int grbit,
) =>
    _JetDetachDatabase2(
      sesid,
      szFilename,
      grbit,
    );

late final _JetDetachDatabase2 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Pointer<Uint16> szFilename,
  Uint32 grbit,
),
    int Function(
  int sesid,
  Pointer<Uint16> szFilename,
  int grbit,
)>('JetDetachDatabase2W');

int JetDetachDatabase(
  int sesid,
  Pointer<Uint16> szFilename,
) =>
    _JetDetachDatabase(
      sesid,
      szFilename,
    );

late final _JetDetachDatabase = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Pointer<Uint16> szFilename,
),
    int Function(
  int sesid,
  Pointer<Uint16> szFilename,
)>('JetDetachDatabaseW');

int JetDupCursor(
  int sesid,
  int tableid,
  Pointer<IntPtr> ptableid,
  int grbit,
) =>
    _JetDupCursor(
      sesid,
      tableid,
      ptableid,
      grbit,
    );

late final _JetDupCursor = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<IntPtr> ptableid,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<IntPtr> ptableid,
  int grbit,
)>('JetDupCursor');

int JetDupSession(
  int sesid,
  Pointer<IntPtr> psesid,
) =>
    _JetDupSession(
      sesid,
      psesid,
    );

late final _JetDupSession = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Pointer<IntPtr> psesid,
),
    int Function(
  int sesid,
  Pointer<IntPtr> psesid,
)>('JetDupSession');

int JetEnableMultiInstance(
  Pointer<JET_SETSYSPARAM_> psetsysparam,
  int csetsysparam,
  Pointer<Uint32> pcsetsucceed,
) =>
    _JetEnableMultiInstance(
      psetsysparam,
      csetsysparam,
      pcsetsucceed,
    );

late final _JetEnableMultiInstance = _esent.lookupFunction<
    Int32 Function(
  Pointer<JET_SETSYSPARAM_> psetsysparam,
  Uint32 csetsysparam,
  Pointer<Uint32> pcsetsucceed,
),
    int Function(
  Pointer<JET_SETSYSPARAM_> psetsysparam,
  int csetsysparam,
  Pointer<Uint32> pcsetsucceed,
)>('JetEnableMultiInstanceW');

int JetEndExternalBackup() => _JetEndExternalBackup();

late final _JetEndExternalBackup = _esent
    .lookupFunction<Int32 Function(), int Function()>('JetEndExternalBackup');

int JetEndExternalBackupInstance(
  int instance,
) =>
    _JetEndExternalBackupInstance(
      instance,
    );

late final _JetEndExternalBackupInstance = _esent.lookupFunction<
    Int32 Function(
  IntPtr instance,
),
    int Function(
  int instance,
)>('JetEndExternalBackupInstance');

int JetEndExternalBackupInstance2(
  int instance,
  int grbit,
) =>
    _JetEndExternalBackupInstance2(
      instance,
      grbit,
    );

late final _JetEndExternalBackupInstance2 = _esent.lookupFunction<
    Int32 Function(
  IntPtr instance,
  Uint32 grbit,
),
    int Function(
  int instance,
  int grbit,
)>('JetEndExternalBackupInstance2');

int JetEndSession(
  int sesid,
  int grbit,
) =>
    _JetEndSession(
      sesid,
      grbit,
    );

late final _JetEndSession = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int grbit,
)>('JetEndSession');

int JetEnumerateColumns(
  int sesid,
  int tableid,
  int cEnumColumnId,
  Pointer<JET_ENUMCOLUMNID> rgEnumColumnId,
  Pointer<Uint32> pcEnumColumn,
  Pointer<Pointer<JET_ENUMCOLUMN>> prgEnumColumn,
  Pointer<NativeFunction<JET_PFNREALLOC>> pfnRealloc,
  Pointer pvReallocContext,
  int cbDataMost,
  int grbit,
) =>
    _JetEnumerateColumns(
      sesid,
      tableid,
      cEnumColumnId,
      rgEnumColumnId,
      pcEnumColumn,
      prgEnumColumn,
      pfnRealloc,
      pvReallocContext,
      cbDataMost,
      grbit,
    );

late final _JetEnumerateColumns = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Uint32 cEnumColumnId,
  Pointer<JET_ENUMCOLUMNID> rgEnumColumnId,
  Pointer<Uint32> pcEnumColumn,
  Pointer<Pointer<JET_ENUMCOLUMN>> prgEnumColumn,
  Pointer<NativeFunction<JET_PFNREALLOC>> pfnRealloc,
  Pointer pvReallocContext,
  Uint32 cbDataMost,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  int cEnumColumnId,
  Pointer<JET_ENUMCOLUMNID> rgEnumColumnId,
  Pointer<Uint32> pcEnumColumn,
  Pointer<Pointer<JET_ENUMCOLUMN>> prgEnumColumn,
  Pointer<NativeFunction<JET_PFNREALLOC>> pfnRealloc,
  Pointer pvReallocContext,
  int cbDataMost,
  int grbit,
)>('JetEnumerateColumns');

int JetEscrowUpdate(
  int sesid,
  int tableid,
  int columnid,
  Pointer pv,
  int cbMax,
  Pointer pvOld,
  int cbOldMax,
  Pointer<Uint32> pcbOldActual,
  int grbit,
) =>
    _JetEscrowUpdate(
      sesid,
      tableid,
      columnid,
      pv,
      cbMax,
      pvOld,
      cbOldMax,
      pcbOldActual,
      grbit,
    );

late final _JetEscrowUpdate = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Uint32 columnid,
  Pointer pv,
  Uint32 cbMax,
  Pointer pvOld,
  Uint32 cbOldMax,
  Pointer<Uint32> pcbOldActual,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  int columnid,
  Pointer pv,
  int cbMax,
  Pointer pvOld,
  int cbOldMax,
  Pointer<Uint32> pcbOldActual,
  int grbit,
)>('JetEscrowUpdate');

int JetExternalRestore2(
  Pointer<Uint16> szCheckpointFilePath,
  Pointer<Uint16> szLogPath,
  Pointer<JET_RSTMAP_> rgrstmap,
  int crstfilemap,
  Pointer<Uint16> szBackupLogPath,
  Pointer<JET_LOGINFO_> pLogInfo,
  Pointer<Uint16> szTargetInstanceName,
  Pointer<Uint16> szTargetInstanceLogPath,
  Pointer<Uint16> szTargetInstanceCheckpointPath,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfn,
) =>
    _JetExternalRestore2(
      szCheckpointFilePath,
      szLogPath,
      rgrstmap,
      crstfilemap,
      szBackupLogPath,
      pLogInfo,
      szTargetInstanceName,
      szTargetInstanceLogPath,
      szTargetInstanceCheckpointPath,
      pfn,
    );

late final _JetExternalRestore2 = _esent.lookupFunction<
    Int32 Function(
  Pointer<Uint16> szCheckpointFilePath,
  Pointer<Uint16> szLogPath,
  Pointer<JET_RSTMAP_> rgrstmap,
  Int32 crstfilemap,
  Pointer<Uint16> szBackupLogPath,
  Pointer<JET_LOGINFO_> pLogInfo,
  Pointer<Uint16> szTargetInstanceName,
  Pointer<Uint16> szTargetInstanceLogPath,
  Pointer<Uint16> szTargetInstanceCheckpointPath,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfn,
),
    int Function(
  Pointer<Uint16> szCheckpointFilePath,
  Pointer<Uint16> szLogPath,
  Pointer<JET_RSTMAP_> rgrstmap,
  int crstfilemap,
  Pointer<Uint16> szBackupLogPath,
  Pointer<JET_LOGINFO_> pLogInfo,
  Pointer<Uint16> szTargetInstanceName,
  Pointer<Uint16> szTargetInstanceLogPath,
  Pointer<Uint16> szTargetInstanceCheckpointPath,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfn,
)>('JetExternalRestore2W');

int JetExternalRestore(
  Pointer<Uint16> szCheckpointFilePath,
  Pointer<Uint16> szLogPath,
  Pointer<JET_RSTMAP_> rgrstmap,
  int crstfilemap,
  Pointer<Uint16> szBackupLogPath,
  int genLow,
  int genHigh,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfn,
) =>
    _JetExternalRestore(
      szCheckpointFilePath,
      szLogPath,
      rgrstmap,
      crstfilemap,
      szBackupLogPath,
      genLow,
      genHigh,
      pfn,
    );

late final _JetExternalRestore = _esent.lookupFunction<
    Int32 Function(
  Pointer<Uint16> szCheckpointFilePath,
  Pointer<Uint16> szLogPath,
  Pointer<JET_RSTMAP_> rgrstmap,
  Int32 crstfilemap,
  Pointer<Uint16> szBackupLogPath,
  Int32 genLow,
  Int32 genHigh,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfn,
),
    int Function(
  Pointer<Uint16> szCheckpointFilePath,
  Pointer<Uint16> szLogPath,
  Pointer<JET_RSTMAP_> rgrstmap,
  int crstfilemap,
  Pointer<Uint16> szBackupLogPath,
  int genLow,
  int genHigh,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfn,
)>('JetExternalRestoreW');

int JetFreeBuffer(
  Pointer<Utf8> pbBuf,
) =>
    _JetFreeBuffer(
      pbBuf,
    );

late final _JetFreeBuffer = _esent.lookupFunction<
    Int32 Function(
  Pointer<Utf8> pbBuf,
),
    int Function(
  Pointer<Utf8> pbBuf,
)>('JetFreeBuffer');

int JetGetAttachInfoInstance(
  int instance,
  Pointer<Uint16> szzDatabases,
  int cbMax,
  Pointer<Uint32> pcbActual,
) =>
    _JetGetAttachInfoInstance(
      instance,
      szzDatabases,
      cbMax,
      pcbActual,
    );

late final _JetGetAttachInfoInstance = _esent.lookupFunction<
    Int32 Function(
  IntPtr instance,
  Pointer<Uint16> szzDatabases,
  Uint32 cbMax,
  Pointer<Uint32> pcbActual,
),
    int Function(
  int instance,
  Pointer<Uint16> szzDatabases,
  int cbMax,
  Pointer<Uint32> pcbActual,
)>('JetGetAttachInfoInstanceW');

int JetGetAttachInfo(
  Pointer<Uint16> wszzDatabases,
  int cbMax,
  Pointer<Uint32> pcbActual,
) =>
    _JetGetAttachInfo(
      wszzDatabases,
      cbMax,
      pcbActual,
    );

late final _JetGetAttachInfo = _esent.lookupFunction<
    Int32 Function(
  Pointer<Uint16> wszzDatabases,
  Uint32 cbMax,
  Pointer<Uint32> pcbActual,
),
    int Function(
  Pointer<Uint16> wszzDatabases,
  int cbMax,
  Pointer<Uint32> pcbActual,
)>('JetGetAttachInfoW');

int JetGetBookmark(
  int sesid,
  int tableid,
  Pointer pvBookmark,
  int cbMax,
  Pointer<Uint32> pcbActual,
) =>
    _JetGetBookmark(
      sesid,
      tableid,
      pvBookmark,
      cbMax,
      pcbActual,
    );

late final _JetGetBookmark = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer pvBookmark,
  Uint32 cbMax,
  Pointer<Uint32> pcbActual,
),
    int Function(
  int sesid,
  int tableid,
  Pointer pvBookmark,
  int cbMax,
  Pointer<Uint32> pcbActual,
)>('JetGetBookmark');

int JetGetColumnInfo(
  int sesid,
  int dbid,
  Pointer<Uint16> szTableName,
  Pointer<Uint16> pwColumnNameOrId,
  Pointer pvResult,
  int cbMax,
  int InfoLevel,
) =>
    _JetGetColumnInfo(
      sesid,
      dbid,
      szTableName,
      pwColumnNameOrId,
      pvResult,
      cbMax,
      InfoLevel,
    );

late final _JetGetColumnInfo = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 dbid,
  Pointer<Uint16> szTableName,
  Pointer<Uint16> pwColumnNameOrId,
  Pointer pvResult,
  Uint32 cbMax,
  Uint32 InfoLevel,
),
    int Function(
  int sesid,
  int dbid,
  Pointer<Uint16> szTableName,
  Pointer<Uint16> pwColumnNameOrId,
  Pointer pvResult,
  int cbMax,
  int InfoLevel,
)>('JetGetColumnInfoW');

int JetGetCurrentIndex(
  int sesid,
  int tableid,
  Pointer<Uint16> szIndexName,
  int cbIndexName,
) =>
    _JetGetCurrentIndex(
      sesid,
      tableid,
      szIndexName,
      cbIndexName,
    );

late final _JetGetCurrentIndex = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<Uint16> szIndexName,
  Uint32 cbIndexName,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<Uint16> szIndexName,
  int cbIndexName,
)>('JetGetCurrentIndexW');

int JetGetCursorInfo(
  int sesid,
  int tableid,
  Pointer pvResult,
  int cbMax,
  int InfoLevel,
) =>
    _JetGetCursorInfo(
      sesid,
      tableid,
      pvResult,
      cbMax,
      InfoLevel,
    );

late final _JetGetCursorInfo = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer pvResult,
  Uint32 cbMax,
  Uint32 InfoLevel,
),
    int Function(
  int sesid,
  int tableid,
  Pointer pvResult,
  int cbMax,
  int InfoLevel,
)>('JetGetCursorInfo');

int JetGetDatabaseFileInfo(
  Pointer<Uint16> szDatabaseName,
  Pointer pvResult,
  int cbMax,
  int InfoLevel,
) =>
    _JetGetDatabaseFileInfo(
      szDatabaseName,
      pvResult,
      cbMax,
      InfoLevel,
    );

late final _JetGetDatabaseFileInfo = _esent.lookupFunction<
    Int32 Function(
  Pointer<Uint16> szDatabaseName,
  Pointer pvResult,
  Uint32 cbMax,
  Uint32 InfoLevel,
),
    int Function(
  Pointer<Uint16> szDatabaseName,
  Pointer pvResult,
  int cbMax,
  int InfoLevel,
)>('JetGetDatabaseFileInfoW');

int JetGetDatabaseInfo(
  int sesid,
  int dbid,
  Pointer pvResult,
  int cbMax,
  int InfoLevel,
) =>
    _JetGetDatabaseInfo(
      sesid,
      dbid,
      pvResult,
      cbMax,
      InfoLevel,
    );

late final _JetGetDatabaseInfo = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 dbid,
  Pointer pvResult,
  Uint32 cbMax,
  Uint32 InfoLevel,
),
    int Function(
  int sesid,
  int dbid,
  Pointer pvResult,
  int cbMax,
  int InfoLevel,
)>('JetGetDatabaseInfoW');

int JetGetErrorInfo(
  Pointer pvContext,
  Pointer pvResult,
  int cbMax,
  int InfoLevel,
  int grbit,
) =>
    _JetGetErrorInfo(
      pvContext,
      pvResult,
      cbMax,
      InfoLevel,
      grbit,
    );

late final _JetGetErrorInfo = _esent.lookupFunction<
    Int32 Function(
  Pointer pvContext,
  Pointer pvResult,
  Uint32 cbMax,
  Uint32 InfoLevel,
  Uint32 grbit,
),
    int Function(
  Pointer pvContext,
  Pointer pvResult,
  int cbMax,
  int InfoLevel,
  int grbit,
)>('JetGetErrorInfoW');

int JetGetIndexInfo(
  int sesid,
  int dbid,
  Pointer<Uint16> szTableName,
  Pointer<Uint16> szIndexName,
  Pointer pvResult,
  int cbResult,
  int InfoLevel,
) =>
    _JetGetIndexInfo(
      sesid,
      dbid,
      szTableName,
      szIndexName,
      pvResult,
      cbResult,
      InfoLevel,
    );

late final _JetGetIndexInfo = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 dbid,
  Pointer<Uint16> szTableName,
  Pointer<Uint16> szIndexName,
  Pointer pvResult,
  Uint32 cbResult,
  Uint32 InfoLevel,
),
    int Function(
  int sesid,
  int dbid,
  Pointer<Uint16> szTableName,
  Pointer<Uint16> szIndexName,
  Pointer pvResult,
  int cbResult,
  int InfoLevel,
)>('JetGetIndexInfoW');

int JetGetInstanceInfo(
  Pointer<Uint32> pcInstanceInfo,
  Pointer<Pointer<JET_INSTANCE_INFO_>> paInstanceInfo,
) =>
    _JetGetInstanceInfo(
      pcInstanceInfo,
      paInstanceInfo,
    );

late final _JetGetInstanceInfo = _esent.lookupFunction<
    Int32 Function(
  Pointer<Uint32> pcInstanceInfo,
  Pointer<Pointer<JET_INSTANCE_INFO_>> paInstanceInfo,
),
    int Function(
  Pointer<Uint32> pcInstanceInfo,
  Pointer<Pointer<JET_INSTANCE_INFO_>> paInstanceInfo,
)>('JetGetInstanceInfoW');

int JetGetInstanceMiscInfo(
  int instance,
  Pointer pvResult,
  int cbMax,
  int InfoLevel,
) =>
    _JetGetInstanceMiscInfo(
      instance,
      pvResult,
      cbMax,
      InfoLevel,
    );

late final _JetGetInstanceMiscInfo = _esent.lookupFunction<
    Int32 Function(
  IntPtr instance,
  Pointer pvResult,
  Uint32 cbMax,
  Uint32 InfoLevel,
),
    int Function(
  int instance,
  Pointer pvResult,
  int cbMax,
  int InfoLevel,
)>('JetGetInstanceMiscInfo');

int JetGetLS(
  int sesid,
  int tableid,
  Pointer<IntPtr> pls,
  int grbit,
) =>
    _JetGetLS(
      sesid,
      tableid,
      pls,
      grbit,
    );

late final _JetGetLS = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<IntPtr> pls,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<IntPtr> pls,
  int grbit,
)>('JetGetLS');

int JetGetLock(
  int sesid,
  int tableid,
  int grbit,
) =>
    _JetGetLock(
      sesid,
      tableid,
      grbit,
    );

late final _JetGetLock = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  int grbit,
)>('JetGetLock');

int JetGetLogInfoInstance2(
  int instance,
  Pointer<Uint16> wszzLogs,
  int cbMax,
  Pointer<Uint32> pcbActual,
  Pointer<JET_LOGINFO_> pLogInfo,
) =>
    _JetGetLogInfoInstance2(
      instance,
      wszzLogs,
      cbMax,
      pcbActual,
      pLogInfo,
    );

late final _JetGetLogInfoInstance2 = _esent.lookupFunction<
    Int32 Function(
  IntPtr instance,
  Pointer<Uint16> wszzLogs,
  Uint32 cbMax,
  Pointer<Uint32> pcbActual,
  Pointer<JET_LOGINFO_> pLogInfo,
),
    int Function(
  int instance,
  Pointer<Uint16> wszzLogs,
  int cbMax,
  Pointer<Uint32> pcbActual,
  Pointer<JET_LOGINFO_> pLogInfo,
)>('JetGetLogInfoInstance2W');

int JetGetLogInfoInstance(
  int instance,
  Pointer<Uint16> wszzLogs,
  int cbMax,
  Pointer<Uint32> pcbActual,
) =>
    _JetGetLogInfoInstance(
      instance,
      wszzLogs,
      cbMax,
      pcbActual,
    );

late final _JetGetLogInfoInstance = _esent.lookupFunction<
    Int32 Function(
  IntPtr instance,
  Pointer<Uint16> wszzLogs,
  Uint32 cbMax,
  Pointer<Uint32> pcbActual,
),
    int Function(
  int instance,
  Pointer<Uint16> wszzLogs,
  int cbMax,
  Pointer<Uint32> pcbActual,
)>('JetGetLogInfoInstanceW');

int JetGetLogInfo(
  Pointer<Uint16> szzLogs,
  int cbMax,
  Pointer<Uint32> pcbActual,
) =>
    _JetGetLogInfo(
      szzLogs,
      cbMax,
      pcbActual,
    );

late final _JetGetLogInfo = _esent.lookupFunction<
    Int32 Function(
  Pointer<Uint16> szzLogs,
  Uint32 cbMax,
  Pointer<Uint32> pcbActual,
),
    int Function(
  Pointer<Uint16> szzLogs,
  int cbMax,
  Pointer<Uint32> pcbActual,
)>('JetGetLogInfoW');

int JetGetObjectInfo(
  int sesid,
  int dbid,
  int objtyp,
  Pointer<Uint16> szContainerName,
  Pointer<Uint16> szObjectName,
  Pointer pvResult,
  int cbMax,
  int InfoLevel,
) =>
    _JetGetObjectInfo(
      sesid,
      dbid,
      objtyp,
      szContainerName,
      szObjectName,
      pvResult,
      cbMax,
      InfoLevel,
    );

late final _JetGetObjectInfo = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 dbid,
  Uint32 objtyp,
  Pointer<Uint16> szContainerName,
  Pointer<Uint16> szObjectName,
  Pointer pvResult,
  Uint32 cbMax,
  Uint32 InfoLevel,
),
    int Function(
  int sesid,
  int dbid,
  int objtyp,
  Pointer<Uint16> szContainerName,
  Pointer<Uint16> szObjectName,
  Pointer pvResult,
  int cbMax,
  int InfoLevel,
)>('JetGetObjectInfoW');

int JetGetRecordPosition(
  int sesid,
  int tableid,
  Pointer<JET_RECPOS> precpos,
  int cbRecpos,
) =>
    _JetGetRecordPosition(
      sesid,
      tableid,
      precpos,
      cbRecpos,
    );

late final _JetGetRecordPosition = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<JET_RECPOS> precpos,
  Uint32 cbRecpos,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<JET_RECPOS> precpos,
  int cbRecpos,
)>('JetGetRecordPosition');

int JetGetRecordSize(
  int sesid,
  int tableid,
  Pointer<JET_RECSIZE> precsize,
  int grbit,
) =>
    _JetGetRecordSize(
      sesid,
      tableid,
      precsize,
      grbit,
    );

late final _JetGetRecordSize = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<JET_RECSIZE> precsize,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<JET_RECSIZE> precsize,
  int grbit,
)>('JetGetRecordSize');

int JetGetRecordSize2(
  int sesid,
  int tableid,
  Pointer<JET_RECSIZE2> precsize,
  int grbit,
) =>
    _JetGetRecordSize2(
      sesid,
      tableid,
      precsize,
      grbit,
    );

late final _JetGetRecordSize2 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<JET_RECSIZE2> precsize,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<JET_RECSIZE2> precsize,
  int grbit,
)>('JetGetRecordSize2');

int JetGetSecondaryIndexBookmark(
  int sesid,
  int tableid,
  Pointer pvSecondaryKey,
  int cbSecondaryKeyMax,
  Pointer<Uint32> pcbSecondaryKeyActual,
  Pointer pvPrimaryBookmark,
  int cbPrimaryBookmarkMax,
  Pointer<Uint32> pcbPrimaryBookmarkActual,
  int grbit,
) =>
    _JetGetSecondaryIndexBookmark(
      sesid,
      tableid,
      pvSecondaryKey,
      cbSecondaryKeyMax,
      pcbSecondaryKeyActual,
      pvPrimaryBookmark,
      cbPrimaryBookmarkMax,
      pcbPrimaryBookmarkActual,
      grbit,
    );

late final _JetGetSecondaryIndexBookmark = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer pvSecondaryKey,
  Uint32 cbSecondaryKeyMax,
  Pointer<Uint32> pcbSecondaryKeyActual,
  Pointer pvPrimaryBookmark,
  Uint32 cbPrimaryBookmarkMax,
  Pointer<Uint32> pcbPrimaryBookmarkActual,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  Pointer pvSecondaryKey,
  int cbSecondaryKeyMax,
  Pointer<Uint32> pcbSecondaryKeyActual,
  Pointer pvPrimaryBookmark,
  int cbPrimaryBookmarkMax,
  Pointer<Uint32> pcbPrimaryBookmarkActual,
  int grbit,
)>('JetGetSecondaryIndexBookmark');

int JetGetSessionParameter(
  int sesid,
  int sesparamid,
  Pointer pvParam,
  int cbParamMax,
  Pointer<Uint32> pcbParamActual,
) =>
    _JetGetSessionParameter(
      sesid,
      sesparamid,
      pvParam,
      cbParamMax,
      pcbParamActual,
    );

late final _JetGetSessionParameter = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 sesparamid,
  Pointer pvParam,
  Uint32 cbParamMax,
  Pointer<Uint32> pcbParamActual,
),
    int Function(
  int sesid,
  int sesparamid,
  Pointer pvParam,
  int cbParamMax,
  Pointer<Uint32> pcbParamActual,
)>('JetGetSessionParameter');

int JetGetSystemParameter(
  int instance,
  int sesid,
  int paramid,
  Pointer<IntPtr> plParam,
  Pointer<Uint16> szParam,
  int cbMax,
) =>
    _JetGetSystemParameter(
      instance,
      sesid,
      paramid,
      plParam,
      szParam,
      cbMax,
    );

late final _JetGetSystemParameter = _esent.lookupFunction<
    Int32 Function(
  IntPtr instance,
  IntPtr sesid,
  Uint32 paramid,
  Pointer<IntPtr> plParam,
  Pointer<Uint16> szParam,
  Uint32 cbMax,
),
    int Function(
  int instance,
  int sesid,
  int paramid,
  Pointer<IntPtr> plParam,
  Pointer<Uint16> szParam,
  int cbMax,
)>('JetGetSystemParameterW');

int JetGetTableColumnInfo(
  int sesid,
  int tableid,
  Pointer<Uint16> szColumnName,
  Pointer pvResult,
  int cbMax,
  int InfoLevel,
) =>
    _JetGetTableColumnInfo(
      sesid,
      tableid,
      szColumnName,
      pvResult,
      cbMax,
      InfoLevel,
    );

late final _JetGetTableColumnInfo = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<Uint16> szColumnName,
  Pointer pvResult,
  Uint32 cbMax,
  Uint32 InfoLevel,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<Uint16> szColumnName,
  Pointer pvResult,
  int cbMax,
  int InfoLevel,
)>('JetGetTableColumnInfoW');

int JetGetTableIndexInfo(
  int sesid,
  int tableid,
  Pointer<Uint16> szIndexName,
  Pointer pvResult,
  int cbResult,
  int InfoLevel,
) =>
    _JetGetTableIndexInfo(
      sesid,
      tableid,
      szIndexName,
      pvResult,
      cbResult,
      InfoLevel,
    );

late final _JetGetTableIndexInfo = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<Uint16> szIndexName,
  Pointer pvResult,
  Uint32 cbResult,
  Uint32 InfoLevel,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<Uint16> szIndexName,
  Pointer pvResult,
  int cbResult,
  int InfoLevel,
)>('JetGetTableIndexInfoW');

int JetGetTableInfo(
  int sesid,
  int tableid,
  Pointer pvResult,
  int cbMax,
  int InfoLevel,
) =>
    _JetGetTableInfo(
      sesid,
      tableid,
      pvResult,
      cbMax,
      InfoLevel,
    );

late final _JetGetTableInfo = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer pvResult,
  Uint32 cbMax,
  Uint32 InfoLevel,
),
    int Function(
  int sesid,
  int tableid,
  Pointer pvResult,
  int cbMax,
  int InfoLevel,
)>('JetGetTableInfoW');

int JetGetThreadStats(
  Pointer pvResult,
  int cbMax,
) =>
    _JetGetThreadStats(
      pvResult,
      cbMax,
    );

late final _JetGetThreadStats = _esent.lookupFunction<
    Int32 Function(
  Pointer pvResult,
  Uint32 cbMax,
),
    int Function(
  Pointer pvResult,
  int cbMax,
)>('JetGetThreadStats');

int JetGetTruncateLogInfoInstance(
  int instance,
  Pointer<Uint16> wszzLogs,
  int cbMax,
  Pointer<Uint32> pcbActual,
) =>
    _JetGetTruncateLogInfoInstance(
      instance,
      wszzLogs,
      cbMax,
      pcbActual,
    );

late final _JetGetTruncateLogInfoInstance = _esent.lookupFunction<
    Int32 Function(
  IntPtr instance,
  Pointer<Uint16> wszzLogs,
  Uint32 cbMax,
  Pointer<Uint32> pcbActual,
),
    int Function(
  int instance,
  Pointer<Uint16> wszzLogs,
  int cbMax,
  Pointer<Uint32> pcbActual,
)>('JetGetTruncateLogInfoInstanceW');

int JetGetVersion(
  int sesid,
  Pointer<Uint32> pwVersion,
) =>
    _JetGetVersion(
      sesid,
      pwVersion,
    );

late final _JetGetVersion = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Pointer<Uint32> pwVersion,
),
    int Function(
  int sesid,
  Pointer<Uint32> pwVersion,
)>('JetGetVersion');

int JetGotoBookmark(
  int sesid,
  int tableid,
  Pointer pvBookmark,
  int cbBookmark,
) =>
    _JetGotoBookmark(
      sesid,
      tableid,
      pvBookmark,
      cbBookmark,
    );

late final _JetGotoBookmark = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer pvBookmark,
  Uint32 cbBookmark,
),
    int Function(
  int sesid,
  int tableid,
  Pointer pvBookmark,
  int cbBookmark,
)>('JetGotoBookmark');

int JetGotoPosition(
  int sesid,
  int tableid,
  Pointer<JET_RECPOS> precpos,
) =>
    _JetGotoPosition(
      sesid,
      tableid,
      precpos,
    );

late final _JetGotoPosition = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<JET_RECPOS> precpos,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<JET_RECPOS> precpos,
)>('JetGotoPosition');

int JetGotoSecondaryIndexBookmark(
  int sesid,
  int tableid,
  Pointer pvSecondaryKey,
  int cbSecondaryKey,
  Pointer pvPrimaryBookmark,
  int cbPrimaryBookmark,
  int grbit,
) =>
    _JetGotoSecondaryIndexBookmark(
      sesid,
      tableid,
      pvSecondaryKey,
      cbSecondaryKey,
      pvPrimaryBookmark,
      cbPrimaryBookmark,
      grbit,
    );

late final _JetGotoSecondaryIndexBookmark = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer pvSecondaryKey,
  Uint32 cbSecondaryKey,
  Pointer pvPrimaryBookmark,
  Uint32 cbPrimaryBookmark,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  Pointer pvSecondaryKey,
  int cbSecondaryKey,
  Pointer pvPrimaryBookmark,
  int cbPrimaryBookmark,
  int grbit,
)>('JetGotoSecondaryIndexBookmark');

int JetGrowDatabase(
  int sesid,
  int dbid,
  int cpg,
  Pointer<Uint32> pcpgReal,
) =>
    _JetGrowDatabase(
      sesid,
      dbid,
      cpg,
      pcpgReal,
    );

late final _JetGrowDatabase = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 dbid,
  Uint32 cpg,
  Pointer<Uint32> pcpgReal,
),
    int Function(
  int sesid,
  int dbid,
  int cpg,
  Pointer<Uint32> pcpgReal,
)>('JetGrowDatabase');

int JetIdle(
  int sesid,
  int grbit,
) =>
    _JetIdle(
      sesid,
      grbit,
    );

late final _JetIdle = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int grbit,
)>('JetIdle');

int JetIndexRecordCount(
  int sesid,
  int tableid,
  Pointer<Uint32> pcrec,
  int crecMax,
) =>
    _JetIndexRecordCount(
      sesid,
      tableid,
      pcrec,
      crecMax,
    );

late final _JetIndexRecordCount = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<Uint32> pcrec,
  Uint32 crecMax,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<Uint32> pcrec,
  int crecMax,
)>('JetIndexRecordCount');

int JetInit(
  Pointer<IntPtr> pinstance,
) =>
    _JetInit(
      pinstance,
    );

late final _JetInit = _esent.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> pinstance,
),
    int Function(
  Pointer<IntPtr> pinstance,
)>('JetInit');

int JetInit2(
  Pointer<IntPtr> pinstance,
  int grbit,
) =>
    _JetInit2(
      pinstance,
      grbit,
    );

late final _JetInit2 = _esent.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> pinstance,
  Uint32 grbit,
),
    int Function(
  Pointer<IntPtr> pinstance,
  int grbit,
)>('JetInit2');

int JetInit3(
  Pointer<IntPtr> pinstance,
  Pointer<JET_RSTINFO_> prstInfo,
  int grbit,
) =>
    _JetInit3(
      pinstance,
      prstInfo,
      grbit,
    );

late final _JetInit3 = _esent.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> pinstance,
  Pointer<JET_RSTINFO_> prstInfo,
  Uint32 grbit,
),
    int Function(
  Pointer<IntPtr> pinstance,
  Pointer<JET_RSTINFO_> prstInfo,
  int grbit,
)>('JetInit3W');

int JetIntersectIndexes(
  int sesid,
  Pointer<JET_INDEXRANGE> rgindexrange,
  int cindexrange,
  Pointer<JET_RECORDLIST> precordlist,
  int grbit,
) =>
    _JetIntersectIndexes(
      sesid,
      rgindexrange,
      cindexrange,
      precordlist,
      grbit,
    );

late final _JetIntersectIndexes = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Pointer<JET_INDEXRANGE> rgindexrange,
  Uint32 cindexrange,
  Pointer<JET_RECORDLIST> precordlist,
  Uint32 grbit,
),
    int Function(
  int sesid,
  Pointer<JET_INDEXRANGE> rgindexrange,
  int cindexrange,
  Pointer<JET_RECORDLIST> precordlist,
  int grbit,
)>('JetIntersectIndexes');

int JetMakeKey(
  int sesid,
  int tableid,
  Pointer pvData,
  int cbData,
  int grbit,
) =>
    _JetMakeKey(
      sesid,
      tableid,
      pvData,
      cbData,
      grbit,
    );

late final _JetMakeKey = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer pvData,
  Uint32 cbData,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  Pointer pvData,
  int cbData,
  int grbit,
)>('JetMakeKey');

int JetMove(
  int sesid,
  int tableid,
  int cRow,
  int grbit,
) =>
    _JetMove(
      sesid,
      tableid,
      cRow,
      grbit,
    );

late final _JetMove = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Int32 cRow,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  int cRow,
  int grbit,
)>('JetMove');

int JetOSSnapshotAbort(
  int snapId,
  int grbit,
) =>
    _JetOSSnapshotAbort(
      snapId,
      grbit,
    );

late final _JetOSSnapshotAbort = _esent.lookupFunction<
    Int32 Function(
  IntPtr snapId,
  Uint32 grbit,
),
    int Function(
  int snapId,
  int grbit,
)>('JetOSSnapshotAbort');

int JetOSSnapshotEnd(
  int snapId,
  int grbit,
) =>
    _JetOSSnapshotEnd(
      snapId,
      grbit,
    );

late final _JetOSSnapshotEnd = _esent.lookupFunction<
    Int32 Function(
  IntPtr snapId,
  Uint32 grbit,
),
    int Function(
  int snapId,
  int grbit,
)>('JetOSSnapshotEnd');

int JetOSSnapshotFreeze(
  int snapId,
  Pointer<Uint32> pcInstanceInfo,
  Pointer<Pointer<JET_INSTANCE_INFO_>> paInstanceInfo,
  int grbit,
) =>
    _JetOSSnapshotFreeze(
      snapId,
      pcInstanceInfo,
      paInstanceInfo,
      grbit,
    );

late final _JetOSSnapshotFreeze = _esent.lookupFunction<
    Int32 Function(
  IntPtr snapId,
  Pointer<Uint32> pcInstanceInfo,
  Pointer<Pointer<JET_INSTANCE_INFO_>> paInstanceInfo,
  Uint32 grbit,
),
    int Function(
  int snapId,
  Pointer<Uint32> pcInstanceInfo,
  Pointer<Pointer<JET_INSTANCE_INFO_>> paInstanceInfo,
  int grbit,
)>('JetOSSnapshotFreezeW');

int JetOSSnapshotGetFreezeInfo(
  int snapId,
  Pointer<Uint32> pcInstanceInfo,
  Pointer<Pointer<JET_INSTANCE_INFO_>> paInstanceInfo,
  int grbit,
) =>
    _JetOSSnapshotGetFreezeInfo(
      snapId,
      pcInstanceInfo,
      paInstanceInfo,
      grbit,
    );

late final _JetOSSnapshotGetFreezeInfo = _esent.lookupFunction<
    Int32 Function(
  IntPtr snapId,
  Pointer<Uint32> pcInstanceInfo,
  Pointer<Pointer<JET_INSTANCE_INFO_>> paInstanceInfo,
  Uint32 grbit,
),
    int Function(
  int snapId,
  Pointer<Uint32> pcInstanceInfo,
  Pointer<Pointer<JET_INSTANCE_INFO_>> paInstanceInfo,
  int grbit,
)>('JetOSSnapshotGetFreezeInfoW');

int JetOSSnapshotPrepare(
  Pointer<IntPtr> psnapId,
  int grbit,
) =>
    _JetOSSnapshotPrepare(
      psnapId,
      grbit,
    );

late final _JetOSSnapshotPrepare = _esent.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> psnapId,
  Uint32 grbit,
),
    int Function(
  Pointer<IntPtr> psnapId,
  int grbit,
)>('JetOSSnapshotPrepare');

int JetOSSnapshotPrepareInstance(
  int snapId,
  int instance,
  int grbit,
) =>
    _JetOSSnapshotPrepareInstance(
      snapId,
      instance,
      grbit,
    );

late final _JetOSSnapshotPrepareInstance = _esent.lookupFunction<
    Int32 Function(
  IntPtr snapId,
  IntPtr instance,
  Uint32 grbit,
),
    int Function(
  int snapId,
  int instance,
  int grbit,
)>('JetOSSnapshotPrepareInstance');

int JetOSSnapshotThaw(
  int snapId,
  int grbit,
) =>
    _JetOSSnapshotThaw(
      snapId,
      grbit,
    );

late final _JetOSSnapshotThaw = _esent.lookupFunction<
    Int32 Function(
  IntPtr snapId,
  Uint32 grbit,
),
    int Function(
  int snapId,
  int grbit,
)>('JetOSSnapshotThaw');

int JetOSSnapshotTruncateLog(
  int snapId,
  int grbit,
) =>
    _JetOSSnapshotTruncateLog(
      snapId,
      grbit,
    );

late final _JetOSSnapshotTruncateLog = _esent.lookupFunction<
    Int32 Function(
  IntPtr snapId,
  Uint32 grbit,
),
    int Function(
  int snapId,
  int grbit,
)>('JetOSSnapshotTruncateLog');

int JetOSSnapshotTruncateLogInstance(
  int snapId,
  int instance,
  int grbit,
) =>
    _JetOSSnapshotTruncateLogInstance(
      snapId,
      instance,
      grbit,
    );

late final _JetOSSnapshotTruncateLogInstance = _esent.lookupFunction<
    Int32 Function(
  IntPtr snapId,
  IntPtr instance,
  Uint32 grbit,
),
    int Function(
  int snapId,
  int instance,
  int grbit,
)>('JetOSSnapshotTruncateLogInstance');

int JetOpenDatabase(
  int sesid,
  Pointer<Uint16> szFilename,
  Pointer<Uint16> szConnect,
  Pointer<Uint32> pdbid,
  int grbit,
) =>
    _JetOpenDatabase(
      sesid,
      szFilename,
      szConnect,
      pdbid,
      grbit,
    );

late final _JetOpenDatabase = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Pointer<Uint16> szFilename,
  Pointer<Uint16> szConnect,
  Pointer<Uint32> pdbid,
  Uint32 grbit,
),
    int Function(
  int sesid,
  Pointer<Uint16> szFilename,
  Pointer<Uint16> szConnect,
  Pointer<Uint32> pdbid,
  int grbit,
)>('JetOpenDatabaseW');

int JetOpenFileInstance(
  int instance,
  Pointer<Uint16> szFileName,
  Pointer<IntPtr> phfFile,
  Pointer<Uint32> pulFileSizeLow,
  Pointer<Uint32> pulFileSizeHigh,
) =>
    _JetOpenFileInstance(
      instance,
      szFileName,
      phfFile,
      pulFileSizeLow,
      pulFileSizeHigh,
    );

late final _JetOpenFileInstance = _esent.lookupFunction<
    Int32 Function(
  IntPtr instance,
  Pointer<Uint16> szFileName,
  Pointer<IntPtr> phfFile,
  Pointer<Uint32> pulFileSizeLow,
  Pointer<Uint32> pulFileSizeHigh,
),
    int Function(
  int instance,
  Pointer<Uint16> szFileName,
  Pointer<IntPtr> phfFile,
  Pointer<Uint32> pulFileSizeLow,
  Pointer<Uint32> pulFileSizeHigh,
)>('JetOpenFileInstanceW');

int JetOpenFile(
  Pointer<Uint16> szFileName,
  Pointer<IntPtr> phfFile,
  Pointer<Uint32> pulFileSizeLow,
  Pointer<Uint32> pulFileSizeHigh,
) =>
    _JetOpenFile(
      szFileName,
      phfFile,
      pulFileSizeLow,
      pulFileSizeHigh,
    );

late final _JetOpenFile = _esent.lookupFunction<
    Int32 Function(
  Pointer<Uint16> szFileName,
  Pointer<IntPtr> phfFile,
  Pointer<Uint32> pulFileSizeLow,
  Pointer<Uint32> pulFileSizeHigh,
),
    int Function(
  Pointer<Uint16> szFileName,
  Pointer<IntPtr> phfFile,
  Pointer<Uint32> pulFileSizeLow,
  Pointer<Uint32> pulFileSizeHigh,
)>('JetOpenFileW');

int JetOpenTable(
  int sesid,
  int dbid,
  Pointer<Uint16> szTableName,
  Pointer pvParameters,
  int cbParameters,
  int grbit,
  Pointer<IntPtr> ptableid,
) =>
    _JetOpenTable(
      sesid,
      dbid,
      szTableName,
      pvParameters,
      cbParameters,
      grbit,
      ptableid,
    );

late final _JetOpenTable = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 dbid,
  Pointer<Uint16> szTableName,
  Pointer pvParameters,
  Uint32 cbParameters,
  Uint32 grbit,
  Pointer<IntPtr> ptableid,
),
    int Function(
  int sesid,
  int dbid,
  Pointer<Uint16> szTableName,
  Pointer pvParameters,
  int cbParameters,
  int grbit,
  Pointer<IntPtr> ptableid,
)>('JetOpenTableW');

int JetOpenTempTable(
  int sesid,
  Pointer<JET_COLUMNDEF> prgcolumndef,
  int ccolumn,
  int grbit,
  Pointer<IntPtr> ptableid,
  Pointer<Uint32> prgcolumnid,
) =>
    _JetOpenTempTable(
      sesid,
      prgcolumndef,
      ccolumn,
      grbit,
      ptableid,
      prgcolumnid,
    );

late final _JetOpenTempTable = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Pointer<JET_COLUMNDEF> prgcolumndef,
  Uint32 ccolumn,
  Uint32 grbit,
  Pointer<IntPtr> ptableid,
  Pointer<Uint32> prgcolumnid,
),
    int Function(
  int sesid,
  Pointer<JET_COLUMNDEF> prgcolumndef,
  int ccolumn,
  int grbit,
  Pointer<IntPtr> ptableid,
  Pointer<Uint32> prgcolumnid,
)>('JetOpenTempTable');

int JetOpenTempTable2(
  int sesid,
  Pointer<JET_COLUMNDEF> prgcolumndef,
  int ccolumn,
  int lcid,
  int grbit,
  Pointer<IntPtr> ptableid,
  Pointer<Uint32> prgcolumnid,
) =>
    _JetOpenTempTable2(
      sesid,
      prgcolumndef,
      ccolumn,
      lcid,
      grbit,
      ptableid,
      prgcolumnid,
    );

late final _JetOpenTempTable2 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Pointer<JET_COLUMNDEF> prgcolumndef,
  Uint32 ccolumn,
  Uint32 lcid,
  Uint32 grbit,
  Pointer<IntPtr> ptableid,
  Pointer<Uint32> prgcolumnid,
),
    int Function(
  int sesid,
  Pointer<JET_COLUMNDEF> prgcolumndef,
  int ccolumn,
  int lcid,
  int grbit,
  Pointer<IntPtr> ptableid,
  Pointer<Uint32> prgcolumnid,
)>('JetOpenTempTable2');

int JetOpenTempTable3(
  int sesid,
  Pointer<JET_COLUMNDEF> prgcolumndef,
  int ccolumn,
  Pointer<JET_UNICODEINDEX> pidxunicode,
  int grbit,
  Pointer<IntPtr> ptableid,
  Pointer<Uint32> prgcolumnid,
) =>
    _JetOpenTempTable3(
      sesid,
      prgcolumndef,
      ccolumn,
      pidxunicode,
      grbit,
      ptableid,
      prgcolumnid,
    );

late final _JetOpenTempTable3 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Pointer<JET_COLUMNDEF> prgcolumndef,
  Uint32 ccolumn,
  Pointer<JET_UNICODEINDEX> pidxunicode,
  Uint32 grbit,
  Pointer<IntPtr> ptableid,
  Pointer<Uint32> prgcolumnid,
),
    int Function(
  int sesid,
  Pointer<JET_COLUMNDEF> prgcolumndef,
  int ccolumn,
  Pointer<JET_UNICODEINDEX> pidxunicode,
  int grbit,
  Pointer<IntPtr> ptableid,
  Pointer<Uint32> prgcolumnid,
)>('JetOpenTempTable3');

int JetOpenTemporaryTable(
  int sesid,
  Pointer<JET_OPENTEMPORARYTABLE> popentemporarytable,
) =>
    _JetOpenTemporaryTable(
      sesid,
      popentemporarytable,
    );

late final _JetOpenTemporaryTable = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Pointer<JET_OPENTEMPORARYTABLE> popentemporarytable,
),
    int Function(
  int sesid,
  Pointer<JET_OPENTEMPORARYTABLE> popentemporarytable,
)>('JetOpenTemporaryTable');

int JetOpenTemporaryTable2(
  int sesid,
  Pointer<JET_OPENTEMPORARYTABLE2> popentemporarytable,
) =>
    _JetOpenTemporaryTable2(
      sesid,
      popentemporarytable,
    );

late final _JetOpenTemporaryTable2 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Pointer<JET_OPENTEMPORARYTABLE2> popentemporarytable,
),
    int Function(
  int sesid,
  Pointer<JET_OPENTEMPORARYTABLE2> popentemporarytable,
)>('JetOpenTemporaryTable2');

int JetPrepareUpdate(
  int sesid,
  int tableid,
  int prep,
) =>
    _JetPrepareUpdate(
      sesid,
      tableid,
      prep,
    );

late final _JetPrepareUpdate = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Uint32 prep,
),
    int Function(
  int sesid,
  int tableid,
  int prep,
)>('JetPrepareUpdate');

int JetPrereadIndexRanges(
  int sesid,
  int tableid,
  Pointer<JET_INDEX_RANGE> rgIndexRanges,
  int cIndexRanges,
  Pointer<Uint32> pcRangesPreread,
  Pointer<Uint32> rgcolumnidPreread,
  int ccolumnidPreread,
  int grbit,
) =>
    _JetPrereadIndexRanges(
      sesid,
      tableid,
      rgIndexRanges,
      cIndexRanges,
      pcRangesPreread,
      rgcolumnidPreread,
      ccolumnidPreread,
      grbit,
    );

late final _JetPrereadIndexRanges = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<JET_INDEX_RANGE> rgIndexRanges,
  Uint32 cIndexRanges,
  Pointer<Uint32> pcRangesPreread,
  Pointer<Uint32> rgcolumnidPreread,
  Uint32 ccolumnidPreread,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<JET_INDEX_RANGE> rgIndexRanges,
  int cIndexRanges,
  Pointer<Uint32> pcRangesPreread,
  Pointer<Uint32> rgcolumnidPreread,
  int ccolumnidPreread,
  int grbit,
)>('JetPrereadIndexRanges');

int JetPrereadKeys(
  int sesid,
  int tableid,
  Pointer<Pointer> rgpvKeys,
  Pointer<Uint32> rgcbKeys,
  int ckeys,
  Pointer<Int32> pckeysPreread,
  int grbit,
) =>
    _JetPrereadKeys(
      sesid,
      tableid,
      rgpvKeys,
      rgcbKeys,
      ckeys,
      pckeysPreread,
      grbit,
    );

late final _JetPrereadKeys = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<Pointer> rgpvKeys,
  Pointer<Uint32> rgcbKeys,
  Int32 ckeys,
  Pointer<Int32> pckeysPreread,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<Pointer> rgpvKeys,
  Pointer<Uint32> rgcbKeys,
  int ckeys,
  Pointer<Int32> pckeysPreread,
  int grbit,
)>('JetPrereadKeys');

int JetReadFile(
  int hfFile,
  Pointer pv,
  int cb,
  Pointer<Uint32> pcbActual,
) =>
    _JetReadFile(
      hfFile,
      pv,
      cb,
      pcbActual,
    );

late final _JetReadFile = _esent.lookupFunction<
    Int32 Function(
  IntPtr hfFile,
  Pointer pv,
  Uint32 cb,
  Pointer<Uint32> pcbActual,
),
    int Function(
  int hfFile,
  Pointer pv,
  int cb,
  Pointer<Uint32> pcbActual,
)>('JetReadFile');

int JetReadFileInstance(
  int instance,
  int hfFile,
  Pointer pv,
  int cb,
  Pointer<Uint32> pcbActual,
) =>
    _JetReadFileInstance(
      instance,
      hfFile,
      pv,
      cb,
      pcbActual,
    );

late final _JetReadFileInstance = _esent.lookupFunction<
    Int32 Function(
  IntPtr instance,
  IntPtr hfFile,
  Pointer pv,
  Uint32 cb,
  Pointer<Uint32> pcbActual,
),
    int Function(
  int instance,
  int hfFile,
  Pointer pv,
  int cb,
  Pointer<Uint32> pcbActual,
)>('JetReadFileInstance');

int JetRegisterCallback(
  int sesid,
  int tableid,
  int cbtyp,
  Pointer<NativeFunction<JET_CALLBACK>> pCallback,
  Pointer pvContext,
  Pointer<IntPtr> phCallbackId,
) =>
    _JetRegisterCallback(
      sesid,
      tableid,
      cbtyp,
      pCallback,
      pvContext,
      phCallbackId,
    );

late final _JetRegisterCallback = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Uint32 cbtyp,
  Pointer<NativeFunction<JET_CALLBACK>> pCallback,
  Pointer pvContext,
  Pointer<IntPtr> phCallbackId,
),
    int Function(
  int sesid,
  int tableid,
  int cbtyp,
  Pointer<NativeFunction<JET_CALLBACK>> pCallback,
  Pointer pvContext,
  Pointer<IntPtr> phCallbackId,
)>('JetRegisterCallback');

int JetRenameColumn(
  int sesid,
  int tableid,
  Pointer<Uint16> szName,
  Pointer<Uint16> szNameNew,
  int grbit,
) =>
    _JetRenameColumn(
      sesid,
      tableid,
      szName,
      szNameNew,
      grbit,
    );

late final _JetRenameColumn = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<Uint16> szName,
  Pointer<Uint16> szNameNew,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<Uint16> szName,
  Pointer<Uint16> szNameNew,
  int grbit,
)>('JetRenameColumnW');

int JetRenameTable(
  int sesid,
  int dbid,
  Pointer<Uint16> szName,
  Pointer<Uint16> szNameNew,
) =>
    _JetRenameTable(
      sesid,
      dbid,
      szName,
      szNameNew,
    );

late final _JetRenameTable = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 dbid,
  Pointer<Uint16> szName,
  Pointer<Uint16> szNameNew,
),
    int Function(
  int sesid,
  int dbid,
  Pointer<Uint16> szName,
  Pointer<Uint16> szNameNew,
)>('JetRenameTableW');

int JetResetSessionContext(
  int sesid,
) =>
    _JetResetSessionContext(
      sesid,
    );

late final _JetResetSessionContext = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
),
    int Function(
  int sesid,
)>('JetResetSessionContext');

int JetResetTableSequential(
  int sesid,
  int tableid,
  int grbit,
) =>
    _JetResetTableSequential(
      sesid,
      tableid,
      grbit,
    );

late final _JetResetTableSequential = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  int grbit,
)>('JetResetTableSequential');

int JetResizeDatabase(
  int sesid,
  int dbid,
  int cpgTarget,
  Pointer<Uint32> pcpgActual,
  int grbit,
) =>
    _JetResizeDatabase(
      sesid,
      dbid,
      cpgTarget,
      pcpgActual,
      grbit,
    );

late final _JetResizeDatabase = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 dbid,
  Uint32 cpgTarget,
  Pointer<Uint32> pcpgActual,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int dbid,
  int cpgTarget,
  Pointer<Uint32> pcpgActual,
  int grbit,
)>('JetResizeDatabase');

int JetRestore2(
  Pointer<Uint16> sz,
  Pointer<Uint16> szDest,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfn,
) =>
    _JetRestore2(
      sz,
      szDest,
      pfn,
    );

late final _JetRestore2 = _esent.lookupFunction<
    Int32 Function(
  Pointer<Uint16> sz,
  Pointer<Uint16> szDest,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfn,
),
    int Function(
  Pointer<Uint16> sz,
  Pointer<Uint16> szDest,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfn,
)>('JetRestore2W');

int JetRestoreInstance(
  int instance,
  Pointer<Uint16> sz,
  Pointer<Uint16> szDest,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfn,
) =>
    _JetRestoreInstance(
      instance,
      sz,
      szDest,
      pfn,
    );

late final _JetRestoreInstance = _esent.lookupFunction<
    Int32 Function(
  IntPtr instance,
  Pointer<Uint16> sz,
  Pointer<Uint16> szDest,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfn,
),
    int Function(
  int instance,
  Pointer<Uint16> sz,
  Pointer<Uint16> szDest,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfn,
)>('JetRestoreInstanceW');

int JetRestore(
  Pointer<Uint16> szSource,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfn,
) =>
    _JetRestore(
      szSource,
      pfn,
    );

late final _JetRestore = _esent.lookupFunction<
    Int32 Function(
  Pointer<Uint16> szSource,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfn,
),
    int Function(
  Pointer<Uint16> szSource,
  Pointer<NativeFunction<JET_PFNSTATUS>> pfn,
)>('JetRestoreW');

int JetRetrieveColumn(
  int sesid,
  int tableid,
  int columnid,
  Pointer pvData,
  int cbData,
  Pointer<Uint32> pcbActual,
  int grbit,
  Pointer<JET_RETINFO> pretinfo,
) =>
    _JetRetrieveColumn(
      sesid,
      tableid,
      columnid,
      pvData,
      cbData,
      pcbActual,
      grbit,
      pretinfo,
    );

late final _JetRetrieveColumn = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Uint32 columnid,
  Pointer pvData,
  Uint32 cbData,
  Pointer<Uint32> pcbActual,
  Uint32 grbit,
  Pointer<JET_RETINFO> pretinfo,
),
    int Function(
  int sesid,
  int tableid,
  int columnid,
  Pointer pvData,
  int cbData,
  Pointer<Uint32> pcbActual,
  int grbit,
  Pointer<JET_RETINFO> pretinfo,
)>('JetRetrieveColumn');

int JetRetrieveColumns(
  int sesid,
  int tableid,
  Pointer<JET_RETRIEVECOLUMN> pretrievecolumn,
  int cretrievecolumn,
) =>
    _JetRetrieveColumns(
      sesid,
      tableid,
      pretrievecolumn,
      cretrievecolumn,
    );

late final _JetRetrieveColumns = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<JET_RETRIEVECOLUMN> pretrievecolumn,
  Uint32 cretrievecolumn,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<JET_RETRIEVECOLUMN> pretrievecolumn,
  int cretrievecolumn,
)>('JetRetrieveColumns');

int JetRetrieveKey(
  int sesid,
  int tableid,
  Pointer pvKey,
  int cbMax,
  Pointer<Uint32> pcbActual,
  int grbit,
) =>
    _JetRetrieveKey(
      sesid,
      tableid,
      pvKey,
      cbMax,
      pcbActual,
      grbit,
    );

late final _JetRetrieveKey = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer pvKey,
  Uint32 cbMax,
  Pointer<Uint32> pcbActual,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  Pointer pvKey,
  int cbMax,
  Pointer<Uint32> pcbActual,
  int grbit,
)>('JetRetrieveKey');

int JetRollback(
  int sesid,
  int grbit,
) =>
    _JetRollback(
      sesid,
      grbit,
    );

late final _JetRollback = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int grbit,
)>('JetRollback');

int JetSeek(
  int sesid,
  int tableid,
  int grbit,
) =>
    _JetSeek(
      sesid,
      tableid,
      grbit,
    );

late final _JetSeek = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  int grbit,
)>('JetSeek');

int JetSetColumn(
  int sesid,
  int tableid,
  int columnid,
  Pointer pvData,
  int cbData,
  int grbit,
  Pointer<JET_SETINFO> psetinfo,
) =>
    _JetSetColumn(
      sesid,
      tableid,
      columnid,
      pvData,
      cbData,
      grbit,
      psetinfo,
    );

late final _JetSetColumn = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Uint32 columnid,
  Pointer pvData,
  Uint32 cbData,
  Uint32 grbit,
  Pointer<JET_SETINFO> psetinfo,
),
    int Function(
  int sesid,
  int tableid,
  int columnid,
  Pointer pvData,
  int cbData,
  int grbit,
  Pointer<JET_SETINFO> psetinfo,
)>('JetSetColumn');

int JetSetColumnDefaultValue(
  int sesid,
  int dbid,
  Pointer<Uint16> szTableName,
  Pointer<Uint16> szColumnName,
  Pointer pvData,
  int cbData,
  int grbit,
) =>
    _JetSetColumnDefaultValue(
      sesid,
      dbid,
      szTableName,
      szColumnName,
      pvData,
      cbData,
      grbit,
    );

late final _JetSetColumnDefaultValue = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 dbid,
  Pointer<Uint16> szTableName,
  Pointer<Uint16> szColumnName,
  Pointer pvData,
  Uint32 cbData,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int dbid,
  Pointer<Uint16> szTableName,
  Pointer<Uint16> szColumnName,
  Pointer pvData,
  int cbData,
  int grbit,
)>('JetSetColumnDefaultValueW');

int JetSetColumns(
  int sesid,
  int tableid,
  Pointer<JET_SETCOLUMN> psetcolumn,
  int csetcolumn,
) =>
    _JetSetColumns(
      sesid,
      tableid,
      psetcolumn,
      csetcolumn,
    );

late final _JetSetColumns = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<JET_SETCOLUMN> psetcolumn,
  Uint32 csetcolumn,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<JET_SETCOLUMN> psetcolumn,
  int csetcolumn,
)>('JetSetColumns');

int JetSetCurrentIndex2(
  int sesid,
  int tableid,
  Pointer<Uint16> szIndexName,
  int grbit,
) =>
    _JetSetCurrentIndex2(
      sesid,
      tableid,
      szIndexName,
      grbit,
    );

late final _JetSetCurrentIndex2 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<Uint16> szIndexName,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<Uint16> szIndexName,
  int grbit,
)>('JetSetCurrentIndex2W');

int JetSetCurrentIndex3(
  int sesid,
  int tableid,
  Pointer<Uint16> szIndexName,
  int grbit,
  int itagSequence,
) =>
    _JetSetCurrentIndex3(
      sesid,
      tableid,
      szIndexName,
      grbit,
      itagSequence,
    );

late final _JetSetCurrentIndex3 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<Uint16> szIndexName,
  Uint32 grbit,
  Uint32 itagSequence,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<Uint16> szIndexName,
  int grbit,
  int itagSequence,
)>('JetSetCurrentIndex3W');

int JetSetCurrentIndex4(
  int sesid,
  int tableid,
  Pointer<Uint16> szIndexName,
  Pointer<JET_INDEXID> pindexid,
  int grbit,
  int itagSequence,
) =>
    _JetSetCurrentIndex4(
      sesid,
      tableid,
      szIndexName,
      pindexid,
      grbit,
      itagSequence,
    );

late final _JetSetCurrentIndex4 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<Uint16> szIndexName,
  Pointer<JET_INDEXID> pindexid,
  Uint32 grbit,
  Uint32 itagSequence,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<Uint16> szIndexName,
  Pointer<JET_INDEXID> pindexid,
  int grbit,
  int itagSequence,
)>('JetSetCurrentIndex4W');

int JetSetCurrentIndex(
  int sesid,
  int tableid,
  Pointer<Uint16> szIndexName,
) =>
    _JetSetCurrentIndex(
      sesid,
      tableid,
      szIndexName,
    );

late final _JetSetCurrentIndex = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<Uint16> szIndexName,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<Uint16> szIndexName,
)>('JetSetCurrentIndexW');

int JetSetCursorFilter(
  int sesid,
  int tableid,
  Pointer<JET_INDEX_COLUMN> rgColumnFilters,
  int cColumnFilters,
  int grbit,
) =>
    _JetSetCursorFilter(
      sesid,
      tableid,
      rgColumnFilters,
      cColumnFilters,
      grbit,
    );

late final _JetSetCursorFilter = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer<JET_INDEX_COLUMN> rgColumnFilters,
  Uint32 cColumnFilters,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  Pointer<JET_INDEX_COLUMN> rgColumnFilters,
  int cColumnFilters,
  int grbit,
)>('JetSetCursorFilter');

int JetSetDatabaseSize(
  int sesid,
  Pointer<Uint16> szDatabaseName,
  int cpg,
  Pointer<Uint32> pcpgReal,
) =>
    _JetSetDatabaseSize(
      sesid,
      szDatabaseName,
      cpg,
      pcpgReal,
    );

late final _JetSetDatabaseSize = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Pointer<Uint16> szDatabaseName,
  Uint32 cpg,
  Pointer<Uint32> pcpgReal,
),
    int Function(
  int sesid,
  Pointer<Uint16> szDatabaseName,
  int cpg,
  Pointer<Uint32> pcpgReal,
)>('JetSetDatabaseSizeW');

int JetSetIndexRange(
  int sesid,
  int tableidSrc,
  int grbit,
) =>
    _JetSetIndexRange(
      sesid,
      tableidSrc,
      grbit,
    );

late final _JetSetIndexRange = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableidSrc,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableidSrc,
  int grbit,
)>('JetSetIndexRange');

int JetSetLS(
  int sesid,
  int tableid,
  int ls,
  int grbit,
) =>
    _JetSetLS(
      sesid,
      tableid,
      ls,
      grbit,
    );

late final _JetSetLS = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  IntPtr ls,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  int ls,
  int grbit,
)>('JetSetLS');

int JetSetSessionContext(
  int sesid,
  int ulContext,
) =>
    _JetSetSessionContext(
      sesid,
      ulContext,
    );

late final _JetSetSessionContext = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr ulContext,
),
    int Function(
  int sesid,
  int ulContext,
)>('JetSetSessionContext');

int JetSetSessionParameter(
  int sesid,
  int sesparamid,
  Pointer pvParam,
  int cbParam,
) =>
    _JetSetSessionParameter(
      sesid,
      sesparamid,
      pvParam,
      cbParam,
    );

late final _JetSetSessionParameter = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  Uint32 sesparamid,
  Pointer pvParam,
  Uint32 cbParam,
),
    int Function(
  int sesid,
  int sesparamid,
  Pointer pvParam,
  int cbParam,
)>('JetSetSessionParameter');

int JetSetSystemParameter(
  Pointer<IntPtr> pinstance,
  int sesid,
  int paramid,
  int lParam,
  Pointer<Uint16> szParam,
) =>
    _JetSetSystemParameter(
      pinstance,
      sesid,
      paramid,
      lParam,
      szParam,
    );

late final _JetSetSystemParameter = _esent.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> pinstance,
  IntPtr sesid,
  Uint32 paramid,
  IntPtr lParam,
  Pointer<Uint16> szParam,
),
    int Function(
  Pointer<IntPtr> pinstance,
  int sesid,
  int paramid,
  int lParam,
  Pointer<Uint16> szParam,
)>('JetSetSystemParameterW');

int JetSetTableSequential(
  int sesid,
  int tableid,
  int grbit,
) =>
    _JetSetTableSequential(
      sesid,
      tableid,
      grbit,
    );

late final _JetSetTableSequential = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  int grbit,
)>('JetSetTableSequential');

int JetStopBackup() => _JetStopBackup();

late final _JetStopBackup =
    _esent.lookupFunction<Int32 Function(), int Function()>('JetStopBackup');

int JetStopBackupInstance(
  int instance,
) =>
    _JetStopBackupInstance(
      instance,
    );

late final _JetStopBackupInstance = _esent.lookupFunction<
    Int32 Function(
  IntPtr instance,
),
    int Function(
  int instance,
)>('JetStopBackupInstance');

int JetStopService() => _JetStopService();

late final _JetStopService =
    _esent.lookupFunction<Int32 Function(), int Function()>('JetStopService');

int JetStopServiceInstance(
  int instance,
) =>
    _JetStopServiceInstance(
      instance,
    );

late final _JetStopServiceInstance = _esent.lookupFunction<
    Int32 Function(
  IntPtr instance,
),
    int Function(
  int instance,
)>('JetStopServiceInstance');

int JetStopServiceInstance2(
  int instance,
  int grbit,
) =>
    _JetStopServiceInstance2(
      instance,
      grbit,
    );

late final _JetStopServiceInstance2 = _esent.lookupFunction<
    Int32 Function(
  IntPtr instance,
  Uint32 grbit,
),
    int Function(
  int instance,
  int grbit,
)>('JetStopServiceInstance2');

int JetTerm(
  int instance,
) =>
    _JetTerm(
      instance,
    );

late final _JetTerm = _esent.lookupFunction<
    Int32 Function(
  IntPtr instance,
),
    int Function(
  int instance,
)>('JetTerm');

int JetTerm2(
  int instance,
  int grbit,
) =>
    _JetTerm2(
      instance,
      grbit,
    );

late final _JetTerm2 = _esent.lookupFunction<
    Int32 Function(
  IntPtr instance,
  Uint32 grbit,
),
    int Function(
  int instance,
  int grbit,
)>('JetTerm2');

int JetTruncateLog() => _JetTruncateLog();

late final _JetTruncateLog =
    _esent.lookupFunction<Int32 Function(), int Function()>('JetTruncateLog');

int JetTruncateLogInstance(
  int instance,
) =>
    _JetTruncateLogInstance(
      instance,
    );

late final _JetTruncateLogInstance = _esent.lookupFunction<
    Int32 Function(
  IntPtr instance,
),
    int Function(
  int instance,
)>('JetTruncateLogInstance');

int JetUnregisterCallback(
  int sesid,
  int tableid,
  int cbtyp,
  int hCallbackId,
) =>
    _JetUnregisterCallback(
      sesid,
      tableid,
      cbtyp,
      hCallbackId,
    );

late final _JetUnregisterCallback = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Uint32 cbtyp,
  IntPtr hCallbackId,
),
    int Function(
  int sesid,
  int tableid,
  int cbtyp,
  int hCallbackId,
)>('JetUnregisterCallback');

int JetUpdate(
  int sesid,
  int tableid,
  Pointer pvBookmark,
  int cbBookmark,
  Pointer<Uint32> pcbActual,
) =>
    _JetUpdate(
      sesid,
      tableid,
      pvBookmark,
      cbBookmark,
      pcbActual,
    );

late final _JetUpdate = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer pvBookmark,
  Uint32 cbBookmark,
  Pointer<Uint32> pcbActual,
),
    int Function(
  int sesid,
  int tableid,
  Pointer pvBookmark,
  int cbBookmark,
  Pointer<Uint32> pcbActual,
)>('JetUpdate');

int JetUpdate2(
  int sesid,
  int tableid,
  Pointer pvBookmark,
  int cbBookmark,
  Pointer<Uint32> pcbActual,
  int grbit,
) =>
    _JetUpdate2(
      sesid,
      tableid,
      pvBookmark,
      cbBookmark,
      pcbActual,
      grbit,
    );

late final _JetUpdate2 = _esent.lookupFunction<
    Int32 Function(
  IntPtr sesid,
  IntPtr tableid,
  Pointer pvBookmark,
  Uint32 cbBookmark,
  Pointer<Uint32> pcbActual,
  Uint32 grbit,
),
    int Function(
  int sesid,
  int tableid,
  Pointer pvBookmark,
  int cbBookmark,
  Pointer<Uint32> pcbActual,
  int grbit,
)>('JetUpdate2');
