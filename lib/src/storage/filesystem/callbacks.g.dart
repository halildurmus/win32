// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// Native callback functions that can get called by the Win32 API

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../security/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../storage/filesystem/structs.g.dart';

typedef CACHE_ACCESS_CHECK = Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  IntPtr hClientToken,
  Uint32 dwDesiredAccess,
  Pointer<GENERIC_MAPPING> GenericMapping,
  Pointer<PRIVILEGE_SET> PrivilegeSet,
  Pointer<Uint32> PrivilegeSetLength,
  Pointer<Uint32> GrantedAccess,
  Pointer<Int32> AccessStatus,
);
typedef CACHE_DESTROY_CALLBACK = Void Function(
  Uint32 cb,
  Pointer<Uint8> lpb,
);
typedef CACHE_KEY_COMPARE = Int32 Function(
  Uint32 cbKey1,
  Pointer<Uint8> lpbKey1,
  Uint32 cbKey2,
  Pointer<Uint8> lpbKey2,
);
typedef CACHE_KEY_HASH = Uint32 Function(
  Pointer<Uint8> lpbKey,
  Uint32 cbKey,
);
typedef CACHE_READ_CALLBACK = Int32 Function(
  Uint32 cb,
  Pointer<Uint8> lpb,
  Pointer lpvContext,
);
typedef CLAIMMEDIALABEL = Uint32 Function(
  Pointer<Uint8> pBuffer,
  Uint32 nBufferSize,
  Pointer<MediaLabelInfo> pLabelInfo,
);
typedef CLAIMMEDIALABELEX = Uint32 Function(
  Pointer<Uint8> pBuffer,
  Uint32 nBufferSize,
  Pointer<MediaLabelInfo> pLabelInfo,
  Pointer<GUID> LabelGuid,
);
typedef CLFS_BLOCK_ALLOCATION = Pointer Function(
  Uint32 cbBufferLength,
  Pointer pvUserContext,
);
typedef CLFS_BLOCK_DEALLOCATION = Void Function(
  Pointer pvBuffer,
  Pointer pvUserContext,
);
typedef FCACHE_CREATE_CALLBACK = IntPtr Function(
  Pointer<Utf8> lpstrName,
  Pointer lpvData,
  Pointer<Uint32> cbFileSize,
  Pointer<Uint32> cbFileSizeHigh,
);
typedef FCACHE_RICHCREATE_CALLBACK = IntPtr Function(
  Pointer<Utf8> lpstrName,
  Pointer lpvData,
  Pointer<Uint32> cbFileSize,
  Pointer<Uint32> cbFileSizeHigh,
  Pointer<Int32> pfDidWeScanIt,
  Pointer<Int32> pfIsStuffed,
  Pointer<Int32> pfStoredWithDots,
  Pointer<Int32> pfStoredWithTerminatingDot,
);
typedef LPPROGRESS_ROUTINE = Uint32 Function(
  Int64 TotalFileSize,
  Int64 TotalBytesTransferred,
  Int64 StreamSize,
  Int64 StreamBytesTransferred,
  Uint32 dwStreamNumber,
  Uint32 dwCallbackReason,
  IntPtr hSourceFile,
  IntPtr hDestinationFile,
  Pointer lpData,
);
typedef MAXMEDIALABEL = Uint32 Function(
  Pointer<Uint32> pMaxSize,
);
typedef PCLFS_COMPLETION_ROUTINE = Void Function(
  Pointer pvOverlapped,
  Uint32 ulReserved,
);
typedef PCOPYFILE2_PROGRESS_ROUTINE = Int32 Function(
  Pointer<COPYFILE2_MESSAGE> pMessage,
  Pointer pvCallbackContext,
);
typedef PFE_EXPORT_FUNC = Uint32 Function(
  Pointer<Uint8> pbData,
  Pointer pvCallbackContext,
  Uint32 ulLength,
);
typedef PFE_IMPORT_FUNC = Uint32 Function(
  Pointer<Uint8> pbData,
  Pointer pvCallbackContext,
  Pointer<Uint32> ulLength,
);
typedef PFN_IO_COMPLETION = Void Function(
  Pointer<FIO_CONTEXT> pContext,
  Pointer<FH_OVERLAPPED> lpo,
  Uint32 cb,
  Uint32 dwCompletionStatus,
);
typedef PLOG_FULL_HANDLER_CALLBACK = Void Function(
  IntPtr hLogFile,
  Uint32 dwError,
  Int32 fLogIsPinned,
  Pointer pvClientContext,
);
typedef PLOG_TAIL_ADVANCE_CALLBACK = Void Function(
  IntPtr hLogFile,
  CLS_LSN lsnTarget,
  Pointer pvClientContext,
);
typedef PLOG_UNPINNED_CALLBACK = Void Function(
  IntPtr hLogFile,
  Pointer pvClientContext,
);
typedef WofEnumEntryProc = Int32 Function(
  Pointer EntryInfo,
  Pointer UserData,
);
typedef WofEnumFilesProc = Int32 Function(
  Pointer<Utf16> FilePath,
  Pointer ExternalFileInfo,
  Pointer UserData,
);
