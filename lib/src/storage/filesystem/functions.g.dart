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
import '../../storage/filesystem/structs.g.dart';
import '../../storage/filesystem/callbacks.g.dart';
import '../../security/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/io/callbacks.g.dart';
import '../../system/windowsprogramming/structs.g.dart'; // -----------------------------------------------------------------------

// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int AreFileApisANSI() => _AreFileApisANSI();

late final _AreFileApisANSI = _kernel32
    .lookupFunction<Int32 Function(), int Function()>('AreFileApisANSI');

int AreShortNamesEnabled(
  int $Handle,
  Pointer<Int32> Enabled,
) =>
    _AreShortNamesEnabled(
      $Handle,
      Enabled,
    );

late final _AreShortNamesEnabled = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr $Handle,
  Pointer<Int32> Enabled,
),
    int Function(
  int $Handle,
  Pointer<Int32> Enabled,
)>('AreShortNamesEnabled');

int BackupRead(
  int hFile,
  Pointer<Uint8> lpBuffer,
  int nNumberOfBytesToRead,
  Pointer<Uint32> lpNumberOfBytesRead,
  int bAbort,
  int bProcessSecurity,
  Pointer<Pointer> lpContext,
) =>
    _BackupRead(
      hFile,
      lpBuffer,
      nNumberOfBytesToRead,
      lpNumberOfBytesRead,
      bAbort,
      bProcessSecurity,
      lpContext,
    );

late final _BackupRead = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<Uint8> lpBuffer,
  Uint32 nNumberOfBytesToRead,
  Pointer<Uint32> lpNumberOfBytesRead,
  Int32 bAbort,
  Int32 bProcessSecurity,
  Pointer<Pointer> lpContext,
),
    int Function(
  int hFile,
  Pointer<Uint8> lpBuffer,
  int nNumberOfBytesToRead,
  Pointer<Uint32> lpNumberOfBytesRead,
  int bAbort,
  int bProcessSecurity,
  Pointer<Pointer> lpContext,
)>('BackupRead');

int BackupSeek(
  int hFile,
  int dwLowBytesToSeek,
  int dwHighBytesToSeek,
  Pointer<Uint32> lpdwLowByteSeeked,
  Pointer<Uint32> lpdwHighByteSeeked,
  Pointer<Pointer> lpContext,
) =>
    _BackupSeek(
      hFile,
      dwLowBytesToSeek,
      dwHighBytesToSeek,
      lpdwLowByteSeeked,
      lpdwHighByteSeeked,
      lpContext,
    );

late final _BackupSeek = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Uint32 dwLowBytesToSeek,
  Uint32 dwHighBytesToSeek,
  Pointer<Uint32> lpdwLowByteSeeked,
  Pointer<Uint32> lpdwHighByteSeeked,
  Pointer<Pointer> lpContext,
),
    int Function(
  int hFile,
  int dwLowBytesToSeek,
  int dwHighBytesToSeek,
  Pointer<Uint32> lpdwLowByteSeeked,
  Pointer<Uint32> lpdwHighByteSeeked,
  Pointer<Pointer> lpContext,
)>('BackupSeek');

int BackupWrite(
  int hFile,
  Pointer<Uint8> lpBuffer,
  int nNumberOfBytesToWrite,
  Pointer<Uint32> lpNumberOfBytesWritten,
  int bAbort,
  int bProcessSecurity,
  Pointer<Pointer> lpContext,
) =>
    _BackupWrite(
      hFile,
      lpBuffer,
      nNumberOfBytesToWrite,
      lpNumberOfBytesWritten,
      bAbort,
      bProcessSecurity,
      lpContext,
    );

late final _BackupWrite = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<Uint8> lpBuffer,
  Uint32 nNumberOfBytesToWrite,
  Pointer<Uint32> lpNumberOfBytesWritten,
  Int32 bAbort,
  Int32 bProcessSecurity,
  Pointer<Pointer> lpContext,
),
    int Function(
  int hFile,
  Pointer<Uint8> lpBuffer,
  int nNumberOfBytesToWrite,
  Pointer<Uint32> lpNumberOfBytesWritten,
  int bAbort,
  int bProcessSecurity,
  Pointer<Pointer> lpContext,
)>('BackupWrite');

int CheckNameLegalDOS8Dot3(
  Pointer<Utf16> lpName,
  Pointer<Utf8> lpOemName,
  int OemNameSize,
  Pointer<Int32> pbNameContainsSpaces,
  Pointer<Int32> pbNameLegal,
) =>
    _CheckNameLegalDOS8Dot3(
      lpName,
      lpOemName,
      OemNameSize,
      pbNameContainsSpaces,
      pbNameLegal,
    );

late final _CheckNameLegalDOS8Dot3 = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpName,
  Pointer<Utf8> lpOemName,
  Uint32 OemNameSize,
  Pointer<Int32> pbNameContainsSpaces,
  Pointer<Int32> pbNameLegal,
),
    int Function(
  Pointer<Utf16> lpName,
  Pointer<Utf8> lpOemName,
  int OemNameSize,
  Pointer<Int32> pbNameContainsSpaces,
  Pointer<Int32> pbNameLegal,
)>('CheckNameLegalDOS8Dot3W');

int CompareFileTime(
  Pointer<FILETIME> lpFileTime1,
  Pointer<FILETIME> lpFileTime2,
) =>
    _CompareFileTime(
      lpFileTime1,
      lpFileTime2,
    );

late final _CompareFileTime = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<FILETIME> lpFileTime1,
  Pointer<FILETIME> lpFileTime2,
),
    int Function(
  Pointer<FILETIME> lpFileTime1,
  Pointer<FILETIME> lpFileTime2,
)>('CompareFileTime');

int CopyFile2(
  Pointer<Utf16> pwszExistingFileName,
  Pointer<Utf16> pwszNewFileName,
  Pointer<COPYFILE2_EXTENDED_PARAMETERS> pExtendedParameters,
) =>
    _CopyFile2(
      pwszExistingFileName,
      pwszNewFileName,
      pExtendedParameters,
    );

late final _CopyFile2 = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszExistingFileName,
  Pointer<Utf16> pwszNewFileName,
  Pointer<COPYFILE2_EXTENDED_PARAMETERS> pExtendedParameters,
),
    int Function(
  Pointer<Utf16> pwszExistingFileName,
  Pointer<Utf16> pwszNewFileName,
  Pointer<COPYFILE2_EXTENDED_PARAMETERS> pExtendedParameters,
)>('CopyFile2');

int CopyFileEx(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  Pointer<NativeFunction<LPPROGRESS_ROUTINE>> lpProgressRoutine,
  Pointer lpData,
  Pointer<Int32> pbCancel,
  int dwCopyFlags,
) =>
    _CopyFileEx(
      lpExistingFileName,
      lpNewFileName,
      lpProgressRoutine,
      lpData,
      pbCancel,
      dwCopyFlags,
    );

late final _CopyFileEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  Pointer<NativeFunction<LPPROGRESS_ROUTINE>> lpProgressRoutine,
  Pointer lpData,
  Pointer<Int32> pbCancel,
  Uint32 dwCopyFlags,
),
    int Function(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  Pointer<NativeFunction<LPPROGRESS_ROUTINE>> lpProgressRoutine,
  Pointer lpData,
  Pointer<Int32> pbCancel,
  int dwCopyFlags,
)>('CopyFileExW');

int CopyFileTransacted(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  Pointer<NativeFunction<LPPROGRESS_ROUTINE>> lpProgressRoutine,
  Pointer lpData,
  Pointer<Int32> pbCancel,
  int dwCopyFlags,
  int hTransaction,
) =>
    _CopyFileTransacted(
      lpExistingFileName,
      lpNewFileName,
      lpProgressRoutine,
      lpData,
      pbCancel,
      dwCopyFlags,
      hTransaction,
    );

late final _CopyFileTransacted = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  Pointer<NativeFunction<LPPROGRESS_ROUTINE>> lpProgressRoutine,
  Pointer lpData,
  Pointer<Int32> pbCancel,
  Uint32 dwCopyFlags,
  IntPtr hTransaction,
),
    int Function(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  Pointer<NativeFunction<LPPROGRESS_ROUTINE>> lpProgressRoutine,
  Pointer lpData,
  Pointer<Int32> pbCancel,
  int dwCopyFlags,
  int hTransaction,
)>('CopyFileTransactedW');

int CopyFile(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  int bFailIfExists,
) =>
    _CopyFile(
      lpExistingFileName,
      lpNewFileName,
      bFailIfExists,
    );

late final _CopyFile = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  Int32 bFailIfExists,
),
    int Function(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  int bFailIfExists,
)>('CopyFileW');

int CopyLZFile(
  int hfSource,
  int hfDest,
) =>
    _CopyLZFile(
      hfSource,
      hfDest,
    );

late final _CopyLZFile = _kernel32.lookupFunction<
    Int32 Function(
  Int32 hfSource,
  Int32 hfDest,
),
    int Function(
  int hfSource,
  int hfDest,
)>('CopyLZFile');

int CreateDirectoryEx(
  Pointer<Utf16> lpTemplateDirectory,
  Pointer<Utf16> lpNewDirectory,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
) =>
    _CreateDirectoryEx(
      lpTemplateDirectory,
      lpNewDirectory,
      lpSecurityAttributes,
    );

late final _CreateDirectoryEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpTemplateDirectory,
  Pointer<Utf16> lpNewDirectory,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
),
    int Function(
  Pointer<Utf16> lpTemplateDirectory,
  Pointer<Utf16> lpNewDirectory,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
)>('CreateDirectoryExW');

int CreateDirectoryTransacted(
  Pointer<Utf16> lpTemplateDirectory,
  Pointer<Utf16> lpNewDirectory,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  int hTransaction,
) =>
    _CreateDirectoryTransacted(
      lpTemplateDirectory,
      lpNewDirectory,
      lpSecurityAttributes,
      hTransaction,
    );

late final _CreateDirectoryTransacted = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpTemplateDirectory,
  Pointer<Utf16> lpNewDirectory,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  IntPtr hTransaction,
),
    int Function(
  Pointer<Utf16> lpTemplateDirectory,
  Pointer<Utf16> lpNewDirectory,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  int hTransaction,
)>('CreateDirectoryTransactedW');

int CreateDirectory(
  Pointer<Utf16> lpPathName,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
) =>
    _CreateDirectory(
      lpPathName,
      lpSecurityAttributes,
    );

late final _CreateDirectory = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpPathName,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
),
    int Function(
  Pointer<Utf16> lpPathName,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
)>('CreateDirectoryW');

int CreateFile2(
  Pointer<Utf16> lpFileName,
  int dwDesiredAccess,
  int dwShareMode,
  int dwCreationDisposition,
  Pointer<CREATEFILE2_EXTENDED_PARAMETERS> pCreateExParams,
) =>
    _CreateFile2(
      lpFileName,
      dwDesiredAccess,
      dwShareMode,
      dwCreationDisposition,
      pCreateExParams,
    );

late final _CreateFile2 = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpFileName,
  Uint32 dwDesiredAccess,
  Uint32 dwShareMode,
  Uint32 dwCreationDisposition,
  Pointer<CREATEFILE2_EXTENDED_PARAMETERS> pCreateExParams,
),
    int Function(
  Pointer<Utf16> lpFileName,
  int dwDesiredAccess,
  int dwShareMode,
  int dwCreationDisposition,
  Pointer<CREATEFILE2_EXTENDED_PARAMETERS> pCreateExParams,
)>('CreateFile2');

int CreateFileTransacted(
  Pointer<Utf16> lpFileName,
  int dwDesiredAccess,
  int dwShareMode,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  int dwCreationDisposition,
  int dwFlagsAndAttributes,
  int hTemplateFile,
  int hTransaction,
  Pointer<Uint32> pusMiniVersion,
  Pointer lpExtendedParameter,
) =>
    _CreateFileTransacted(
      lpFileName,
      dwDesiredAccess,
      dwShareMode,
      lpSecurityAttributes,
      dwCreationDisposition,
      dwFlagsAndAttributes,
      hTemplateFile,
      hTransaction,
      pusMiniVersion,
      lpExtendedParameter,
    );

late final _CreateFileTransacted = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpFileName,
  Uint32 dwDesiredAccess,
  Uint32 dwShareMode,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  Uint32 dwCreationDisposition,
  Uint32 dwFlagsAndAttributes,
  IntPtr hTemplateFile,
  IntPtr hTransaction,
  Pointer<Uint32> pusMiniVersion,
  Pointer lpExtendedParameter,
),
    int Function(
  Pointer<Utf16> lpFileName,
  int dwDesiredAccess,
  int dwShareMode,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  int dwCreationDisposition,
  int dwFlagsAndAttributes,
  int hTemplateFile,
  int hTransaction,
  Pointer<Uint32> pusMiniVersion,
  Pointer lpExtendedParameter,
)>('CreateFileTransactedW');

int CreateFile(
  Pointer<Utf16> lpFileName,
  int dwDesiredAccess,
  int dwShareMode,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  int dwCreationDisposition,
  int dwFlagsAndAttributes,
  int hTemplateFile,
) =>
    _CreateFile(
      lpFileName,
      dwDesiredAccess,
      dwShareMode,
      lpSecurityAttributes,
      dwCreationDisposition,
      dwFlagsAndAttributes,
      hTemplateFile,
    );

late final _CreateFile = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpFileName,
  Uint32 dwDesiredAccess,
  Uint32 dwShareMode,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  Uint32 dwCreationDisposition,
  Uint32 dwFlagsAndAttributes,
  IntPtr hTemplateFile,
),
    int Function(
  Pointer<Utf16> lpFileName,
  int dwDesiredAccess,
  int dwShareMode,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  int dwCreationDisposition,
  int dwFlagsAndAttributes,
  int hTemplateFile,
)>('CreateFileW');

int CreateHardLinkTransacted(
  Pointer<Utf16> lpFileName,
  Pointer<Utf16> lpExistingFileName,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  int hTransaction,
) =>
    _CreateHardLinkTransacted(
      lpFileName,
      lpExistingFileName,
      lpSecurityAttributes,
      hTransaction,
    );

late final _CreateHardLinkTransacted = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFileName,
  Pointer<Utf16> lpExistingFileName,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  IntPtr hTransaction,
),
    int Function(
  Pointer<Utf16> lpFileName,
  Pointer<Utf16> lpExistingFileName,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  int hTransaction,
)>('CreateHardLinkTransactedW');

int CreateHardLink(
  Pointer<Utf16> lpFileName,
  Pointer<Utf16> lpExistingFileName,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
) =>
    _CreateHardLink(
      lpFileName,
      lpExistingFileName,
      lpSecurityAttributes,
    );

late final _CreateHardLink = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFileName,
  Pointer<Utf16> lpExistingFileName,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
),
    int Function(
  Pointer<Utf16> lpFileName,
  Pointer<Utf16> lpExistingFileName,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
)>('CreateHardLinkW');

int CreateSymbolicLinkTransacted(
  Pointer<Utf16> lpSymlinkFileName,
  Pointer<Utf16> lpTargetFileName,
  int dwFlags,
  int hTransaction,
) =>
    _CreateSymbolicLinkTransacted(
      lpSymlinkFileName,
      lpTargetFileName,
      dwFlags,
      hTransaction,
    );

late final _CreateSymbolicLinkTransacted = _kernel32.lookupFunction<
    Uint8 Function(
  Pointer<Utf16> lpSymlinkFileName,
  Pointer<Utf16> lpTargetFileName,
  Uint32 dwFlags,
  IntPtr hTransaction,
),
    int Function(
  Pointer<Utf16> lpSymlinkFileName,
  Pointer<Utf16> lpTargetFileName,
  int dwFlags,
  int hTransaction,
)>('CreateSymbolicLinkTransactedW');

int CreateSymbolicLink(
  Pointer<Utf16> lpSymlinkFileName,
  Pointer<Utf16> lpTargetFileName,
  int dwFlags,
) =>
    _CreateSymbolicLink(
      lpSymlinkFileName,
      lpTargetFileName,
      dwFlags,
    );

late final _CreateSymbolicLink = _kernel32.lookupFunction<
    Uint8 Function(
  Pointer<Utf16> lpSymlinkFileName,
  Pointer<Utf16> lpTargetFileName,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> lpSymlinkFileName,
  Pointer<Utf16> lpTargetFileName,
  int dwFlags,
)>('CreateSymbolicLinkW');

int CreateTapePartition(
  int hDevice,
  int dwPartitionMethod,
  int dwCount,
  int dwSize,
) =>
    _CreateTapePartition(
      hDevice,
      dwPartitionMethod,
      dwCount,
      dwSize,
    );

late final _CreateTapePartition = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hDevice,
  Int32 dwPartitionMethod,
  Uint32 dwCount,
  Uint32 dwSize,
),
    int Function(
  int hDevice,
  int dwPartitionMethod,
  int dwCount,
  int dwSize,
)>('CreateTapePartition');

int DefineDosDevice(
  int dwFlags,
  Pointer<Utf16> lpDeviceName,
  Pointer<Utf16> lpTargetPath,
) =>
    _DefineDosDevice(
      dwFlags,
      lpDeviceName,
      lpTargetPath,
    );

late final _DefineDosDevice = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<Utf16> lpDeviceName,
  Pointer<Utf16> lpTargetPath,
),
    int Function(
  int dwFlags,
  Pointer<Utf16> lpDeviceName,
  Pointer<Utf16> lpTargetPath,
)>('DefineDosDeviceW');

int DeleteFileTransacted(
  Pointer<Utf16> lpFileName,
  int hTransaction,
) =>
    _DeleteFileTransacted(
      lpFileName,
      hTransaction,
    );

late final _DeleteFileTransacted = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFileName,
  IntPtr hTransaction,
),
    int Function(
  Pointer<Utf16> lpFileName,
  int hTransaction,
)>('DeleteFileTransactedW');

int DeleteFile(
  Pointer<Utf16> lpFileName,
) =>
    _DeleteFile(
      lpFileName,
    );

late final _DeleteFile = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFileName,
),
    int Function(
  Pointer<Utf16> lpFileName,
)>('DeleteFileW');

int DeleteVolumeMountPoint(
  Pointer<Utf16> lpszVolumeMountPoint,
) =>
    _DeleteVolumeMountPoint(
      lpszVolumeMountPoint,
    );

late final _DeleteVolumeMountPoint = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszVolumeMountPoint,
),
    int Function(
  Pointer<Utf16> lpszVolumeMountPoint,
)>('DeleteVolumeMountPointW');

int EraseTape(
  int hDevice,
  int dwEraseType,
  int bImmediate,
) =>
    _EraseTape(
      hDevice,
      dwEraseType,
      bImmediate,
    );

late final _EraseTape = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hDevice,
  Int32 dwEraseType,
  Int32 bImmediate,
),
    int Function(
  int hDevice,
  int dwEraseType,
  int bImmediate,
)>('EraseTape');

int FileTimeToLocalFileTime(
  Pointer<FILETIME> lpFileTime,
  Pointer<FILETIME> lpLocalFileTime,
) =>
    _FileTimeToLocalFileTime(
      lpFileTime,
      lpLocalFileTime,
    );

late final _FileTimeToLocalFileTime = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<FILETIME> lpFileTime,
  Pointer<FILETIME> lpLocalFileTime,
),
    int Function(
  Pointer<FILETIME> lpFileTime,
  Pointer<FILETIME> lpLocalFileTime,
)>('FileTimeToLocalFileTime');

int FindClose(
  int hFindFile,
) =>
    _FindClose(
      hFindFile,
    );

late final _FindClose = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFindFile,
),
    int Function(
  int hFindFile,
)>('FindClose');

int FindCloseChangeNotification(
  int hChangeHandle,
) =>
    _FindCloseChangeNotification(
      hChangeHandle,
    );

late final _FindCloseChangeNotification = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hChangeHandle,
),
    int Function(
  int hChangeHandle,
)>('FindCloseChangeNotification');

int FindFirstChangeNotification(
  Pointer<Utf16> lpPathName,
  int bWatchSubtree,
  int dwNotifyFilter,
) =>
    _FindFirstChangeNotification(
      lpPathName,
      bWatchSubtree,
      dwNotifyFilter,
    );

late final _FindFirstChangeNotification = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpPathName,
  Int32 bWatchSubtree,
  Uint32 dwNotifyFilter,
),
    int Function(
  Pointer<Utf16> lpPathName,
  int bWatchSubtree,
  int dwNotifyFilter,
)>('FindFirstChangeNotificationW');

int FindFirstFileEx(
  Pointer<Utf16> lpFileName,
  int fInfoLevelId,
  Pointer lpFindFileData,
  int fSearchOp,
  Pointer lpSearchFilter,
  int dwAdditionalFlags,
) =>
    _FindFirstFileEx(
      lpFileName,
      fInfoLevelId,
      lpFindFileData,
      fSearchOp,
      lpSearchFilter,
      dwAdditionalFlags,
    );

late final _FindFirstFileEx = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpFileName,
  Int32 fInfoLevelId,
  Pointer lpFindFileData,
  Int32 fSearchOp,
  Pointer lpSearchFilter,
  Uint32 dwAdditionalFlags,
),
    int Function(
  Pointer<Utf16> lpFileName,
  int fInfoLevelId,
  Pointer lpFindFileData,
  int fSearchOp,
  Pointer lpSearchFilter,
  int dwAdditionalFlags,
)>('FindFirstFileExW');

int FindFirstFileNameTransacted(
  Pointer<Utf16> lpFileName,
  int dwFlags,
  Pointer<Uint32> StringLength,
  Pointer<Utf16> LinkName,
  int hTransaction,
) =>
    _FindFirstFileNameTransacted(
      lpFileName,
      dwFlags,
      StringLength,
      LinkName,
      hTransaction,
    );

late final _FindFirstFileNameTransacted = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpFileName,
  Uint32 dwFlags,
  Pointer<Uint32> StringLength,
  Pointer<Utf16> LinkName,
  IntPtr hTransaction,
),
    int Function(
  Pointer<Utf16> lpFileName,
  int dwFlags,
  Pointer<Uint32> StringLength,
  Pointer<Utf16> LinkName,
  int hTransaction,
)>('FindFirstFileNameTransactedW');

int FindFirstFileName(
  Pointer<Utf16> lpFileName,
  int dwFlags,
  Pointer<Uint32> StringLength,
  Pointer<Utf16> LinkName,
) =>
    _FindFirstFileName(
      lpFileName,
      dwFlags,
      StringLength,
      LinkName,
    );

late final _FindFirstFileName = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpFileName,
  Uint32 dwFlags,
  Pointer<Uint32> StringLength,
  Pointer<Utf16> LinkName,
),
    int Function(
  Pointer<Utf16> lpFileName,
  int dwFlags,
  Pointer<Uint32> StringLength,
  Pointer<Utf16> LinkName,
)>('FindFirstFileNameW');

int FindFirstFileTransacted(
  Pointer<Utf16> lpFileName,
  int fInfoLevelId,
  Pointer lpFindFileData,
  int fSearchOp,
  Pointer lpSearchFilter,
  int dwAdditionalFlags,
  int hTransaction,
) =>
    _FindFirstFileTransacted(
      lpFileName,
      fInfoLevelId,
      lpFindFileData,
      fSearchOp,
      lpSearchFilter,
      dwAdditionalFlags,
      hTransaction,
    );

late final _FindFirstFileTransacted = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpFileName,
  Int32 fInfoLevelId,
  Pointer lpFindFileData,
  Int32 fSearchOp,
  Pointer lpSearchFilter,
  Uint32 dwAdditionalFlags,
  IntPtr hTransaction,
),
    int Function(
  Pointer<Utf16> lpFileName,
  int fInfoLevelId,
  Pointer lpFindFileData,
  int fSearchOp,
  Pointer lpSearchFilter,
  int dwAdditionalFlags,
  int hTransaction,
)>('FindFirstFileTransactedW');

int FindFirstFile(
  Pointer<Utf16> lpFileName,
  Pointer<WIN32_FIND_DATA> lpFindFileData,
) =>
    _FindFirstFile(
      lpFileName,
      lpFindFileData,
    );

late final _FindFirstFile = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpFileName,
  Pointer<WIN32_FIND_DATA> lpFindFileData,
),
    int Function(
  Pointer<Utf16> lpFileName,
  Pointer<WIN32_FIND_DATA> lpFindFileData,
)>('FindFirstFileW');

int FindFirstStreamTransacted(
  Pointer<Utf16> lpFileName,
  int InfoLevel,
  Pointer lpFindStreamData,
  int dwFlags,
  int hTransaction,
) =>
    _FindFirstStreamTransacted(
      lpFileName,
      InfoLevel,
      lpFindStreamData,
      dwFlags,
      hTransaction,
    );

late final _FindFirstStreamTransacted = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpFileName,
  Int32 InfoLevel,
  Pointer lpFindStreamData,
  Uint32 dwFlags,
  IntPtr hTransaction,
),
    int Function(
  Pointer<Utf16> lpFileName,
  int InfoLevel,
  Pointer lpFindStreamData,
  int dwFlags,
  int hTransaction,
)>('FindFirstStreamTransactedW');

int FindFirstStream(
  Pointer<Utf16> lpFileName,
  int InfoLevel,
  Pointer lpFindStreamData,
  int dwFlags,
) =>
    _FindFirstStream(
      lpFileName,
      InfoLevel,
      lpFindStreamData,
      dwFlags,
    );

late final _FindFirstStream = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpFileName,
  Int32 InfoLevel,
  Pointer lpFindStreamData,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> lpFileName,
  int InfoLevel,
  Pointer lpFindStreamData,
  int dwFlags,
)>('FindFirstStreamW');

int FindFirstVolumeMountPoint(
  Pointer<Utf16> lpszRootPathName,
  Pointer<Utf16> lpszVolumeMountPoint,
  int cchBufferLength,
) =>
    _FindFirstVolumeMountPoint(
      lpszRootPathName,
      lpszVolumeMountPoint,
      cchBufferLength,
    );

late final _FindFirstVolumeMountPoint = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpszRootPathName,
  Pointer<Utf16> lpszVolumeMountPoint,
  Uint32 cchBufferLength,
),
    int Function(
  Pointer<Utf16> lpszRootPathName,
  Pointer<Utf16> lpszVolumeMountPoint,
  int cchBufferLength,
)>('FindFirstVolumeMountPointW');

int FindFirstVolume(
  Pointer<Utf16> lpszVolumeName,
  int cchBufferLength,
) =>
    _FindFirstVolume(
      lpszVolumeName,
      cchBufferLength,
    );

late final _FindFirstVolume = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpszVolumeName,
  Uint32 cchBufferLength,
),
    int Function(
  Pointer<Utf16> lpszVolumeName,
  int cchBufferLength,
)>('FindFirstVolumeW');

int FindNextChangeNotification(
  int hChangeHandle,
) =>
    _FindNextChangeNotification(
      hChangeHandle,
    );

late final _FindNextChangeNotification = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hChangeHandle,
),
    int Function(
  int hChangeHandle,
)>('FindNextChangeNotification');

int FindNextFileName(
  int hFindStream,
  Pointer<Uint32> StringLength,
  Pointer<Utf16> LinkName,
) =>
    _FindNextFileName(
      hFindStream,
      StringLength,
      LinkName,
    );

late final _FindNextFileName = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFindStream,
  Pointer<Uint32> StringLength,
  Pointer<Utf16> LinkName,
),
    int Function(
  int hFindStream,
  Pointer<Uint32> StringLength,
  Pointer<Utf16> LinkName,
)>('FindNextFileNameW');

int FindNextFile(
  int hFindFile,
  Pointer<WIN32_FIND_DATA> lpFindFileData,
) =>
    _FindNextFile(
      hFindFile,
      lpFindFileData,
    );

late final _FindNextFile = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFindFile,
  Pointer<WIN32_FIND_DATA> lpFindFileData,
),
    int Function(
  int hFindFile,
  Pointer<WIN32_FIND_DATA> lpFindFileData,
)>('FindNextFileW');

int FindNextStream(
  int hFindStream,
  Pointer lpFindStreamData,
) =>
    _FindNextStream(
      hFindStream,
      lpFindStreamData,
    );

late final _FindNextStream = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFindStream,
  Pointer lpFindStreamData,
),
    int Function(
  int hFindStream,
  Pointer lpFindStreamData,
)>('FindNextStreamW');

int FindNextVolumeMountPoint(
  int hFindVolumeMountPoint,
  Pointer<Utf16> lpszVolumeMountPoint,
  int cchBufferLength,
) =>
    _FindNextVolumeMountPoint(
      hFindVolumeMountPoint,
      lpszVolumeMountPoint,
      cchBufferLength,
    );

late final _FindNextVolumeMountPoint = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFindVolumeMountPoint,
  Pointer<Utf16> lpszVolumeMountPoint,
  Uint32 cchBufferLength,
),
    int Function(
  int hFindVolumeMountPoint,
  Pointer<Utf16> lpszVolumeMountPoint,
  int cchBufferLength,
)>('FindNextVolumeMountPointW');

int FindNextVolume(
  int hFindVolume,
  Pointer<Utf16> lpszVolumeName,
  int cchBufferLength,
) =>
    _FindNextVolume(
      hFindVolume,
      lpszVolumeName,
      cchBufferLength,
    );

late final _FindNextVolume = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFindVolume,
  Pointer<Utf16> lpszVolumeName,
  Uint32 cchBufferLength,
),
    int Function(
  int hFindVolume,
  Pointer<Utf16> lpszVolumeName,
  int cchBufferLength,
)>('FindNextVolumeW');

int FindVolumeClose(
  int hFindVolume,
) =>
    _FindVolumeClose(
      hFindVolume,
    );

late final _FindVolumeClose = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFindVolume,
),
    int Function(
  int hFindVolume,
)>('FindVolumeClose');

int FindVolumeMountPointClose(
  int hFindVolumeMountPoint,
) =>
    _FindVolumeMountPointClose(
      hFindVolumeMountPoint,
    );

late final _FindVolumeMountPointClose = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFindVolumeMountPoint,
),
    int Function(
  int hFindVolumeMountPoint,
)>('FindVolumeMountPointClose');

int FlushFileBuffers(
  int hFile,
) =>
    _FlushFileBuffers(
      hFile,
    );

late final _FlushFileBuffers = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
),
    int Function(
  int hFile,
)>('FlushFileBuffers');

int GetBinaryType(
  Pointer<Utf16> lpApplicationName,
  Pointer<Uint32> lpBinaryType,
) =>
    _GetBinaryType(
      lpApplicationName,
      lpBinaryType,
    );

late final _GetBinaryType = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpApplicationName,
  Pointer<Uint32> lpBinaryType,
),
    int Function(
  Pointer<Utf16> lpApplicationName,
  Pointer<Uint32> lpBinaryType,
)>('GetBinaryTypeW');

int GetCompressedFileSizeTransacted(
  Pointer<Utf16> lpFileName,
  Pointer<Uint32> lpFileSizeHigh,
  int hTransaction,
) =>
    _GetCompressedFileSizeTransacted(
      lpFileName,
      lpFileSizeHigh,
      hTransaction,
    );

late final _GetCompressedFileSizeTransacted = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpFileName,
  Pointer<Uint32> lpFileSizeHigh,
  IntPtr hTransaction,
),
    int Function(
  Pointer<Utf16> lpFileName,
  Pointer<Uint32> lpFileSizeHigh,
  int hTransaction,
)>('GetCompressedFileSizeTransactedW');

int GetCompressedFileSize(
  Pointer<Utf16> lpFileName,
  Pointer<Uint32> lpFileSizeHigh,
) =>
    _GetCompressedFileSize(
      lpFileName,
      lpFileSizeHigh,
    );

late final _GetCompressedFileSize = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpFileName,
  Pointer<Uint32> lpFileSizeHigh,
),
    int Function(
  Pointer<Utf16> lpFileName,
  Pointer<Uint32> lpFileSizeHigh,
)>('GetCompressedFileSizeW');

int GetDiskFreeSpaceEx(
  Pointer<Utf16> lpDirectoryName,
  Pointer<Uint64> lpFreeBytesAvailableToCaller,
  Pointer<Uint64> lpTotalNumberOfBytes,
  Pointer<Uint64> lpTotalNumberOfFreeBytes,
) =>
    _GetDiskFreeSpaceEx(
      lpDirectoryName,
      lpFreeBytesAvailableToCaller,
      lpTotalNumberOfBytes,
      lpTotalNumberOfFreeBytes,
    );

late final _GetDiskFreeSpaceEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpDirectoryName,
  Pointer<Uint64> lpFreeBytesAvailableToCaller,
  Pointer<Uint64> lpTotalNumberOfBytes,
  Pointer<Uint64> lpTotalNumberOfFreeBytes,
),
    int Function(
  Pointer<Utf16> lpDirectoryName,
  Pointer<Uint64> lpFreeBytesAvailableToCaller,
  Pointer<Uint64> lpTotalNumberOfBytes,
  Pointer<Uint64> lpTotalNumberOfFreeBytes,
)>('GetDiskFreeSpaceExW');

int GetDiskFreeSpace(
  Pointer<Utf16> lpRootPathName,
  Pointer<Uint32> lpSectorsPerCluster,
  Pointer<Uint32> lpBytesPerSector,
  Pointer<Uint32> lpNumberOfFreeClusters,
  Pointer<Uint32> lpTotalNumberOfClusters,
) =>
    _GetDiskFreeSpace(
      lpRootPathName,
      lpSectorsPerCluster,
      lpBytesPerSector,
      lpNumberOfFreeClusters,
      lpTotalNumberOfClusters,
    );

late final _GetDiskFreeSpace = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpRootPathName,
  Pointer<Uint32> lpSectorsPerCluster,
  Pointer<Uint32> lpBytesPerSector,
  Pointer<Uint32> lpNumberOfFreeClusters,
  Pointer<Uint32> lpTotalNumberOfClusters,
),
    int Function(
  Pointer<Utf16> lpRootPathName,
  Pointer<Uint32> lpSectorsPerCluster,
  Pointer<Uint32> lpBytesPerSector,
  Pointer<Uint32> lpNumberOfFreeClusters,
  Pointer<Uint32> lpTotalNumberOfClusters,
)>('GetDiskFreeSpaceW');

int GetDiskSpaceInformation(
  Pointer<Utf16> rootPath,
  Pointer<DISK_SPACE_INFORMATION> diskSpaceInfo,
) =>
    _GetDiskSpaceInformation(
      rootPath,
      diskSpaceInfo,
    );

late final _GetDiskSpaceInformation = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> rootPath,
  Pointer<DISK_SPACE_INFORMATION> diskSpaceInfo,
),
    int Function(
  Pointer<Utf16> rootPath,
  Pointer<DISK_SPACE_INFORMATION> diskSpaceInfo,
)>('GetDiskSpaceInformationW');

int GetDriveType(
  Pointer<Utf16> lpRootPathName,
) =>
    _GetDriveType(
      lpRootPathName,
    );

late final _GetDriveType = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpRootPathName,
),
    int Function(
  Pointer<Utf16> lpRootPathName,
)>('GetDriveTypeW');

int GetExpandedName(
  Pointer<Utf16> lpszSource,
  Pointer<Utf16> lpszBuffer,
) =>
    _GetExpandedName(
      lpszSource,
      lpszBuffer,
    );

late final _GetExpandedName = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszSource,
  Pointer<Utf16> lpszBuffer,
),
    int Function(
  Pointer<Utf16> lpszSource,
  Pointer<Utf16> lpszBuffer,
)>('GetExpandedNameW');

int GetFileAttributesEx(
  Pointer<Utf16> lpFileName,
  int fInfoLevelId,
  Pointer lpFileInformation,
) =>
    _GetFileAttributesEx(
      lpFileName,
      fInfoLevelId,
      lpFileInformation,
    );

late final _GetFileAttributesEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFileName,
  Int32 fInfoLevelId,
  Pointer lpFileInformation,
),
    int Function(
  Pointer<Utf16> lpFileName,
  int fInfoLevelId,
  Pointer lpFileInformation,
)>('GetFileAttributesExW');

int GetFileAttributesTransacted(
  Pointer<Utf16> lpFileName,
  int fInfoLevelId,
  Pointer lpFileInformation,
  int hTransaction,
) =>
    _GetFileAttributesTransacted(
      lpFileName,
      fInfoLevelId,
      lpFileInformation,
      hTransaction,
    );

late final _GetFileAttributesTransacted = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFileName,
  Int32 fInfoLevelId,
  Pointer lpFileInformation,
  IntPtr hTransaction,
),
    int Function(
  Pointer<Utf16> lpFileName,
  int fInfoLevelId,
  Pointer lpFileInformation,
  int hTransaction,
)>('GetFileAttributesTransactedW');

int GetFileAttributes(
  Pointer<Utf16> lpFileName,
) =>
    _GetFileAttributes(
      lpFileName,
    );

late final _GetFileAttributes = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpFileName,
),
    int Function(
  Pointer<Utf16> lpFileName,
)>('GetFileAttributesW');

int GetFileBandwidthReservation(
  int hFile,
  Pointer<Uint32> lpPeriodMilliseconds,
  Pointer<Uint32> lpBytesPerPeriod,
  Pointer<Int32> pDiscardable,
  Pointer<Uint32> lpTransferSize,
  Pointer<Uint32> lpNumOutstandingRequests,
) =>
    _GetFileBandwidthReservation(
      hFile,
      lpPeriodMilliseconds,
      lpBytesPerPeriod,
      pDiscardable,
      lpTransferSize,
      lpNumOutstandingRequests,
    );

late final _GetFileBandwidthReservation = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<Uint32> lpPeriodMilliseconds,
  Pointer<Uint32> lpBytesPerPeriod,
  Pointer<Int32> pDiscardable,
  Pointer<Uint32> lpTransferSize,
  Pointer<Uint32> lpNumOutstandingRequests,
),
    int Function(
  int hFile,
  Pointer<Uint32> lpPeriodMilliseconds,
  Pointer<Uint32> lpBytesPerPeriod,
  Pointer<Int32> pDiscardable,
  Pointer<Uint32> lpTransferSize,
  Pointer<Uint32> lpNumOutstandingRequests,
)>('GetFileBandwidthReservation');

int GetFileInformationByHandle(
  int hFile,
  Pointer<BY_HANDLE_FILE_INFORMATION> lpFileInformation,
) =>
    _GetFileInformationByHandle(
      hFile,
      lpFileInformation,
    );

late final _GetFileInformationByHandle = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<BY_HANDLE_FILE_INFORMATION> lpFileInformation,
),
    int Function(
  int hFile,
  Pointer<BY_HANDLE_FILE_INFORMATION> lpFileInformation,
)>('GetFileInformationByHandle');

int GetFileInformationByHandleEx(
  int hFile,
  int FileInformationClass,
  Pointer lpFileInformation,
  int dwBufferSize,
) =>
    _GetFileInformationByHandleEx(
      hFile,
      FileInformationClass,
      lpFileInformation,
      dwBufferSize,
    );

late final _GetFileInformationByHandleEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Int32 FileInformationClass,
  Pointer lpFileInformation,
  Uint32 dwBufferSize,
),
    int Function(
  int hFile,
  int FileInformationClass,
  Pointer lpFileInformation,
  int dwBufferSize,
)>('GetFileInformationByHandleEx');

int GetFileSize(
  int hFile,
  Pointer<Uint32> lpFileSizeHigh,
) =>
    _GetFileSize(
      hFile,
      lpFileSizeHigh,
    );

late final _GetFileSize = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hFile,
  Pointer<Uint32> lpFileSizeHigh,
),
    int Function(
  int hFile,
  Pointer<Uint32> lpFileSizeHigh,
)>('GetFileSize');

int GetFileSizeEx(
  int hFile,
  Pointer<Int64> lpFileSize,
) =>
    _GetFileSizeEx(
      hFile,
      lpFileSize,
    );

late final _GetFileSizeEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<Int64> lpFileSize,
),
    int Function(
  int hFile,
  Pointer<Int64> lpFileSize,
)>('GetFileSizeEx');

int GetFileTime(
  int hFile,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpLastAccessTime,
  Pointer<FILETIME> lpLastWriteTime,
) =>
    _GetFileTime(
      hFile,
      lpCreationTime,
      lpLastAccessTime,
      lpLastWriteTime,
    );

late final _GetFileTime = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpLastAccessTime,
  Pointer<FILETIME> lpLastWriteTime,
),
    int Function(
  int hFile,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpLastAccessTime,
  Pointer<FILETIME> lpLastWriteTime,
)>('GetFileTime');

int GetFileType(
  int hFile,
) =>
    _GetFileType(
      hFile,
    );

late final _GetFileType = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hFile,
),
    int Function(
  int hFile,
)>('GetFileType');

int GetFinalPathNameByHandle(
  int hFile,
  Pointer<Utf16> lpszFilePath,
  int cchFilePath,
  int dwFlags,
) =>
    _GetFinalPathNameByHandle(
      hFile,
      lpszFilePath,
      cchFilePath,
      dwFlags,
    );

late final _GetFinalPathNameByHandle = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hFile,
  Pointer<Utf16> lpszFilePath,
  Uint32 cchFilePath,
  Uint32 dwFlags,
),
    int Function(
  int hFile,
  Pointer<Utf16> lpszFilePath,
  int cchFilePath,
  int dwFlags,
)>('GetFinalPathNameByHandleW');

int GetFullPathNameTransacted(
  Pointer<Utf16> lpFileName,
  int nBufferLength,
  Pointer<Utf16> lpBuffer,
  Pointer<Pointer<Utf16>> lpFilePart,
  int hTransaction,
) =>
    _GetFullPathNameTransacted(
      lpFileName,
      nBufferLength,
      lpBuffer,
      lpFilePart,
      hTransaction,
    );

late final _GetFullPathNameTransacted = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpFileName,
  Uint32 nBufferLength,
  Pointer<Utf16> lpBuffer,
  Pointer<Pointer<Utf16>> lpFilePart,
  IntPtr hTransaction,
),
    int Function(
  Pointer<Utf16> lpFileName,
  int nBufferLength,
  Pointer<Utf16> lpBuffer,
  Pointer<Pointer<Utf16>> lpFilePart,
  int hTransaction,
)>('GetFullPathNameTransactedW');

int GetFullPathName(
  Pointer<Utf16> lpFileName,
  int nBufferLength,
  Pointer<Utf16> lpBuffer,
  Pointer<Pointer<Utf16>> lpFilePart,
) =>
    _GetFullPathName(
      lpFileName,
      nBufferLength,
      lpBuffer,
      lpFilePart,
    );

late final _GetFullPathName = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpFileName,
  Uint32 nBufferLength,
  Pointer<Utf16> lpBuffer,
  Pointer<Pointer<Utf16>> lpFilePart,
),
    int Function(
  Pointer<Utf16> lpFileName,
  int nBufferLength,
  Pointer<Utf16> lpBuffer,
  Pointer<Pointer<Utf16>> lpFilePart,
)>('GetFullPathNameW');

int GetLogicalDriveStrings(
  int nBufferLength,
  Pointer<Utf16> lpBuffer,
) =>
    _GetLogicalDriveStrings(
      nBufferLength,
      lpBuffer,
    );

late final _GetLogicalDriveStrings = _kernel32.lookupFunction<
    Uint32 Function(
  Uint32 nBufferLength,
  Pointer<Utf16> lpBuffer,
),
    int Function(
  int nBufferLength,
  Pointer<Utf16> lpBuffer,
)>('GetLogicalDriveStringsW');

int GetLogicalDrives() => _GetLogicalDrives();

late final _GetLogicalDrives = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetLogicalDrives');

int GetLongPathNameTransacted(
  Pointer<Utf16> lpszShortPath,
  Pointer<Utf16> lpszLongPath,
  int cchBuffer,
  int hTransaction,
) =>
    _GetLongPathNameTransacted(
      lpszShortPath,
      lpszLongPath,
      cchBuffer,
      hTransaction,
    );

late final _GetLongPathNameTransacted = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpszShortPath,
  Pointer<Utf16> lpszLongPath,
  Uint32 cchBuffer,
  IntPtr hTransaction,
),
    int Function(
  Pointer<Utf16> lpszShortPath,
  Pointer<Utf16> lpszLongPath,
  int cchBuffer,
  int hTransaction,
)>('GetLongPathNameTransactedW');

int GetLongPathName(
  Pointer<Utf16> lpszShortPath,
  Pointer<Utf16> lpszLongPath,
  int cchBuffer,
) =>
    _GetLongPathName(
      lpszShortPath,
      lpszLongPath,
      cchBuffer,
    );

late final _GetLongPathName = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpszShortPath,
  Pointer<Utf16> lpszLongPath,
  Uint32 cchBuffer,
),
    int Function(
  Pointer<Utf16> lpszShortPath,
  Pointer<Utf16> lpszLongPath,
  int cchBuffer,
)>('GetLongPathNameW');

int GetShortPathName(
  Pointer<Utf16> lpszLongPath,
  Pointer<Utf16> lpszShortPath,
  int cchBuffer,
) =>
    _GetShortPathName(
      lpszLongPath,
      lpszShortPath,
      cchBuffer,
    );

late final _GetShortPathName = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpszLongPath,
  Pointer<Utf16> lpszShortPath,
  Uint32 cchBuffer,
),
    int Function(
  Pointer<Utf16> lpszLongPath,
  Pointer<Utf16> lpszShortPath,
  int cchBuffer,
)>('GetShortPathNameW');

int GetTapeParameters(
  int hDevice,
  int dwOperation,
  Pointer<Uint32> lpdwSize,
  Pointer lpTapeInformation,
) =>
    _GetTapeParameters(
      hDevice,
      dwOperation,
      lpdwSize,
      lpTapeInformation,
    );

late final _GetTapeParameters = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hDevice,
  Uint32 dwOperation,
  Pointer<Uint32> lpdwSize,
  Pointer lpTapeInformation,
),
    int Function(
  int hDevice,
  int dwOperation,
  Pointer<Uint32> lpdwSize,
  Pointer lpTapeInformation,
)>('GetTapeParameters');

int GetTapePosition(
  int hDevice,
  int dwPositionType,
  Pointer<Uint32> lpdwPartition,
  Pointer<Uint32> lpdwOffsetLow,
  Pointer<Uint32> lpdwOffsetHigh,
) =>
    _GetTapePosition(
      hDevice,
      dwPositionType,
      lpdwPartition,
      lpdwOffsetLow,
      lpdwOffsetHigh,
    );

late final _GetTapePosition = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hDevice,
  Int32 dwPositionType,
  Pointer<Uint32> lpdwPartition,
  Pointer<Uint32> lpdwOffsetLow,
  Pointer<Uint32> lpdwOffsetHigh,
),
    int Function(
  int hDevice,
  int dwPositionType,
  Pointer<Uint32> lpdwPartition,
  Pointer<Uint32> lpdwOffsetLow,
  Pointer<Uint32> lpdwOffsetHigh,
)>('GetTapePosition');

int GetTapeStatus(
  int hDevice,
) =>
    _GetTapeStatus(
      hDevice,
    );

late final _GetTapeStatus = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hDevice,
),
    int Function(
  int hDevice,
)>('GetTapeStatus');

int GetTempFileName(
  Pointer<Utf16> lpPathName,
  Pointer<Utf16> lpPrefixString,
  int uUnique,
  Pointer<Utf16> lpTempFileName,
) =>
    _GetTempFileName(
      lpPathName,
      lpPrefixString,
      uUnique,
      lpTempFileName,
    );

late final _GetTempFileName = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpPathName,
  Pointer<Utf16> lpPrefixString,
  Uint32 uUnique,
  Pointer<Utf16> lpTempFileName,
),
    int Function(
  Pointer<Utf16> lpPathName,
  Pointer<Utf16> lpPrefixString,
  int uUnique,
  Pointer<Utf16> lpTempFileName,
)>('GetTempFileNameW');

int GetTempPath2(
  int BufferLength,
  Pointer<Utf16> Buffer,
) =>
    _GetTempPath2(
      BufferLength,
      Buffer,
    );

late final _GetTempPath2 = _kernel32.lookupFunction<
    Uint32 Function(
  Uint32 BufferLength,
  Pointer<Utf16> Buffer,
),
    int Function(
  int BufferLength,
  Pointer<Utf16> Buffer,
)>('GetTempPath2W');

int GetTempPath(
  int nBufferLength,
  Pointer<Utf16> lpBuffer,
) =>
    _GetTempPath(
      nBufferLength,
      lpBuffer,
    );

late final _GetTempPath = _kernel32.lookupFunction<
    Uint32 Function(
  Uint32 nBufferLength,
  Pointer<Utf16> lpBuffer,
),
    int Function(
  int nBufferLength,
  Pointer<Utf16> lpBuffer,
)>('GetTempPathW');

int GetVolumeInformationByHandle(
  int hFile,
  Pointer<Utf16> lpVolumeNameBuffer,
  int nVolumeNameSize,
  Pointer<Uint32> lpVolumeSerialNumber,
  Pointer<Uint32> lpMaximumComponentLength,
  Pointer<Uint32> lpFileSystemFlags,
  Pointer<Utf16> lpFileSystemNameBuffer,
  int nFileSystemNameSize,
) =>
    _GetVolumeInformationByHandle(
      hFile,
      lpVolumeNameBuffer,
      nVolumeNameSize,
      lpVolumeSerialNumber,
      lpMaximumComponentLength,
      lpFileSystemFlags,
      lpFileSystemNameBuffer,
      nFileSystemNameSize,
    );

late final _GetVolumeInformationByHandle = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<Utf16> lpVolumeNameBuffer,
  Uint32 nVolumeNameSize,
  Pointer<Uint32> lpVolumeSerialNumber,
  Pointer<Uint32> lpMaximumComponentLength,
  Pointer<Uint32> lpFileSystemFlags,
  Pointer<Utf16> lpFileSystemNameBuffer,
  Uint32 nFileSystemNameSize,
),
    int Function(
  int hFile,
  Pointer<Utf16> lpVolumeNameBuffer,
  int nVolumeNameSize,
  Pointer<Uint32> lpVolumeSerialNumber,
  Pointer<Uint32> lpMaximumComponentLength,
  Pointer<Uint32> lpFileSystemFlags,
  Pointer<Utf16> lpFileSystemNameBuffer,
  int nFileSystemNameSize,
)>('GetVolumeInformationByHandleW');

int GetVolumeInformation(
  Pointer<Utf16> lpRootPathName,
  Pointer<Utf16> lpVolumeNameBuffer,
  int nVolumeNameSize,
  Pointer<Uint32> lpVolumeSerialNumber,
  Pointer<Uint32> lpMaximumComponentLength,
  Pointer<Uint32> lpFileSystemFlags,
  Pointer<Utf16> lpFileSystemNameBuffer,
  int nFileSystemNameSize,
) =>
    _GetVolumeInformation(
      lpRootPathName,
      lpVolumeNameBuffer,
      nVolumeNameSize,
      lpVolumeSerialNumber,
      lpMaximumComponentLength,
      lpFileSystemFlags,
      lpFileSystemNameBuffer,
      nFileSystemNameSize,
    );

late final _GetVolumeInformation = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpRootPathName,
  Pointer<Utf16> lpVolumeNameBuffer,
  Uint32 nVolumeNameSize,
  Pointer<Uint32> lpVolumeSerialNumber,
  Pointer<Uint32> lpMaximumComponentLength,
  Pointer<Uint32> lpFileSystemFlags,
  Pointer<Utf16> lpFileSystemNameBuffer,
  Uint32 nFileSystemNameSize,
),
    int Function(
  Pointer<Utf16> lpRootPathName,
  Pointer<Utf16> lpVolumeNameBuffer,
  int nVolumeNameSize,
  Pointer<Uint32> lpVolumeSerialNumber,
  Pointer<Uint32> lpMaximumComponentLength,
  Pointer<Uint32> lpFileSystemFlags,
  Pointer<Utf16> lpFileSystemNameBuffer,
  int nFileSystemNameSize,
)>('GetVolumeInformationW');

int GetVolumeNameForVolumeMountPoint(
  Pointer<Utf16> lpszVolumeMountPoint,
  Pointer<Utf16> lpszVolumeName,
  int cchBufferLength,
) =>
    _GetVolumeNameForVolumeMountPoint(
      lpszVolumeMountPoint,
      lpszVolumeName,
      cchBufferLength,
    );

late final _GetVolumeNameForVolumeMountPoint = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszVolumeMountPoint,
  Pointer<Utf16> lpszVolumeName,
  Uint32 cchBufferLength,
),
    int Function(
  Pointer<Utf16> lpszVolumeMountPoint,
  Pointer<Utf16> lpszVolumeName,
  int cchBufferLength,
)>('GetVolumeNameForVolumeMountPointW');

int GetVolumePathName(
  Pointer<Utf16> lpszFileName,
  Pointer<Utf16> lpszVolumePathName,
  int cchBufferLength,
) =>
    _GetVolumePathName(
      lpszFileName,
      lpszVolumePathName,
      cchBufferLength,
    );

late final _GetVolumePathName = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszFileName,
  Pointer<Utf16> lpszVolumePathName,
  Uint32 cchBufferLength,
),
    int Function(
  Pointer<Utf16> lpszFileName,
  Pointer<Utf16> lpszVolumePathName,
  int cchBufferLength,
)>('GetVolumePathNameW');

int GetVolumePathNamesForVolumeName(
  Pointer<Utf16> lpszVolumeName,
  Pointer<Utf16> lpszVolumePathNames,
  int cchBufferLength,
  Pointer<Uint32> lpcchReturnLength,
) =>
    _GetVolumePathNamesForVolumeName(
      lpszVolumeName,
      lpszVolumePathNames,
      cchBufferLength,
      lpcchReturnLength,
    );

late final _GetVolumePathNamesForVolumeName = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszVolumeName,
  Pointer<Utf16> lpszVolumePathNames,
  Uint32 cchBufferLength,
  Pointer<Uint32> lpcchReturnLength,
),
    int Function(
  Pointer<Utf16> lpszVolumeName,
  Pointer<Utf16> lpszVolumePathNames,
  int cchBufferLength,
  Pointer<Uint32> lpcchReturnLength,
)>('GetVolumePathNamesForVolumeNameW');

void LZClose(
  int hFile,
) =>
    _LZClose(
      hFile,
    );

late final _LZClose = _kernel32.lookupFunction<
    Void Function(
  Int32 hFile,
),
    void Function(
  int hFile,
)>('LZClose');

int LZCopy(
  int hfSource,
  int hfDest,
) =>
    _LZCopy(
      hfSource,
      hfDest,
    );

late final _LZCopy = _kernel32.lookupFunction<
    Int32 Function(
  Int32 hfSource,
  Int32 hfDest,
),
    int Function(
  int hfSource,
  int hfDest,
)>('LZCopy');

void LZDone() => _LZDone();

late final _LZDone =
    _kernel32.lookupFunction<Void Function(), void Function()>('LZDone');

int LZInit(
  int hfSource,
) =>
    _LZInit(
      hfSource,
    );

late final _LZInit = _kernel32.lookupFunction<
    Int32 Function(
  Int32 hfSource,
),
    int Function(
  int hfSource,
)>('LZInit');

int LZOpenFile(
  Pointer<Utf16> lpFileName,
  Pointer<OFSTRUCT> lpReOpenBuf,
  int wStyle,
) =>
    _LZOpenFile(
      lpFileName,
      lpReOpenBuf,
      wStyle,
    );

late final _LZOpenFile = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFileName,
  Pointer<OFSTRUCT> lpReOpenBuf,
  Uint32 wStyle,
),
    int Function(
  Pointer<Utf16> lpFileName,
  Pointer<OFSTRUCT> lpReOpenBuf,
  int wStyle,
)>('LZOpenFileW');

int LZRead(
  int hFile,
  Pointer<Utf8> lpBuffer,
  int cbRead,
) =>
    _LZRead(
      hFile,
      lpBuffer,
      cbRead,
    );

late final _LZRead = _kernel32.lookupFunction<
    Int32 Function(
  Int32 hFile,
  Pointer<Utf8> lpBuffer,
  Int32 cbRead,
),
    int Function(
  int hFile,
  Pointer<Utf8> lpBuffer,
  int cbRead,
)>('LZRead');

int LZSeek(
  int hFile,
  int lOffset,
  int iOrigin,
) =>
    _LZSeek(
      hFile,
      lOffset,
      iOrigin,
    );

late final _LZSeek = _kernel32.lookupFunction<
    Int32 Function(
  Int32 hFile,
  Int32 lOffset,
  Int32 iOrigin,
),
    int Function(
  int hFile,
  int lOffset,
  int iOrigin,
)>('LZSeek');

int LZStart() => _LZStart();

late final _LZStart =
    _kernel32.lookupFunction<Int32 Function(), int Function()>('LZStart');

int LocalFileTimeToFileTime(
  Pointer<FILETIME> lpLocalFileTime,
  Pointer<FILETIME> lpFileTime,
) =>
    _LocalFileTimeToFileTime(
      lpLocalFileTime,
      lpFileTime,
    );

late final _LocalFileTimeToFileTime = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<FILETIME> lpLocalFileTime,
  Pointer<FILETIME> lpFileTime,
),
    int Function(
  Pointer<FILETIME> lpLocalFileTime,
  Pointer<FILETIME> lpFileTime,
)>('LocalFileTimeToFileTime');

int LockFile(
  int hFile,
  int dwFileOffsetLow,
  int dwFileOffsetHigh,
  int nNumberOfBytesToLockLow,
  int nNumberOfBytesToLockHigh,
) =>
    _LockFile(
      hFile,
      dwFileOffsetLow,
      dwFileOffsetHigh,
      nNumberOfBytesToLockLow,
      nNumberOfBytesToLockHigh,
    );

late final _LockFile = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Uint32 dwFileOffsetLow,
  Uint32 dwFileOffsetHigh,
  Uint32 nNumberOfBytesToLockLow,
  Uint32 nNumberOfBytesToLockHigh,
),
    int Function(
  int hFile,
  int dwFileOffsetLow,
  int dwFileOffsetHigh,
  int nNumberOfBytesToLockLow,
  int nNumberOfBytesToLockHigh,
)>('LockFile');

int LockFileEx(
  int hFile,
  int dwFlags,
  int dwReserved,
  int nNumberOfBytesToLockLow,
  int nNumberOfBytesToLockHigh,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _LockFileEx(
      hFile,
      dwFlags,
      dwReserved,
      nNumberOfBytesToLockLow,
      nNumberOfBytesToLockHigh,
      lpOverlapped,
    );

late final _LockFileEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Uint32 dwFlags,
  Uint32 dwReserved,
  Uint32 nNumberOfBytesToLockLow,
  Uint32 nNumberOfBytesToLockHigh,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hFile,
  int dwFlags,
  int dwReserved,
  int nNumberOfBytesToLockLow,
  int nNumberOfBytesToLockHigh,
  Pointer<OVERLAPPED> lpOverlapped,
)>('LockFileEx');

int MoveFileEx(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  int dwFlags,
) =>
    _MoveFileEx(
      lpExistingFileName,
      lpNewFileName,
      dwFlags,
    );

late final _MoveFileEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  int dwFlags,
)>('MoveFileExW');

int MoveFileTransacted(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  Pointer<NativeFunction<LPPROGRESS_ROUTINE>> lpProgressRoutine,
  Pointer lpData,
  int dwFlags,
  int hTransaction,
) =>
    _MoveFileTransacted(
      lpExistingFileName,
      lpNewFileName,
      lpProgressRoutine,
      lpData,
      dwFlags,
      hTransaction,
    );

late final _MoveFileTransacted = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  Pointer<NativeFunction<LPPROGRESS_ROUTINE>> lpProgressRoutine,
  Pointer lpData,
  Uint32 dwFlags,
  IntPtr hTransaction,
),
    int Function(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  Pointer<NativeFunction<LPPROGRESS_ROUTINE>> lpProgressRoutine,
  Pointer lpData,
  int dwFlags,
  int hTransaction,
)>('MoveFileTransactedW');

int MoveFile(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
) =>
    _MoveFile(
      lpExistingFileName,
      lpNewFileName,
    );

late final _MoveFile = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
),
    int Function(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
)>('MoveFileW');

int MoveFileWithProgress(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  Pointer<NativeFunction<LPPROGRESS_ROUTINE>> lpProgressRoutine,
  Pointer lpData,
  int dwFlags,
) =>
    _MoveFileWithProgress(
      lpExistingFileName,
      lpNewFileName,
      lpProgressRoutine,
      lpData,
      dwFlags,
    );

late final _MoveFileWithProgress = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  Pointer<NativeFunction<LPPROGRESS_ROUTINE>> lpProgressRoutine,
  Pointer lpData,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  Pointer<NativeFunction<LPPROGRESS_ROUTINE>> lpProgressRoutine,
  Pointer lpData,
  int dwFlags,
)>('MoveFileWithProgressW');

int OpenFile(
  Pointer<Utf8> lpFileName,
  Pointer<OFSTRUCT> lpReOpenBuff,
  int uStyle,
) =>
    _OpenFile(
      lpFileName,
      lpReOpenBuff,
      uStyle,
    );

late final _OpenFile = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf8> lpFileName,
  Pointer<OFSTRUCT> lpReOpenBuff,
  Uint32 uStyle,
),
    int Function(
  Pointer<Utf8> lpFileName,
  Pointer<OFSTRUCT> lpReOpenBuff,
  int uStyle,
)>('OpenFile');

int OpenFileById(
  int hVolumeHint,
  Pointer<FILE_ID_DESCRIPTOR> lpFileId,
  int dwDesiredAccess,
  int dwShareMode,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  int dwFlagsAndAttributes,
) =>
    _OpenFileById(
      hVolumeHint,
      lpFileId,
      dwDesiredAccess,
      dwShareMode,
      lpSecurityAttributes,
      dwFlagsAndAttributes,
    );

late final _OpenFileById = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr hVolumeHint,
  Pointer<FILE_ID_DESCRIPTOR> lpFileId,
  Uint32 dwDesiredAccess,
  Uint32 dwShareMode,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  Uint32 dwFlagsAndAttributes,
),
    int Function(
  int hVolumeHint,
  Pointer<FILE_ID_DESCRIPTOR> lpFileId,
  int dwDesiredAccess,
  int dwShareMode,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  int dwFlagsAndAttributes,
)>('OpenFileById');

int PrepareTape(
  int hDevice,
  int dwOperation,
  int bImmediate,
) =>
    _PrepareTape(
      hDevice,
      dwOperation,
      bImmediate,
    );

late final _PrepareTape = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hDevice,
  Int32 dwOperation,
  Int32 bImmediate,
),
    int Function(
  int hDevice,
  int dwOperation,
  int bImmediate,
)>('PrepareTape');

int QueryDosDevice(
  Pointer<Utf16> lpDeviceName,
  Pointer<Utf16> lpTargetPath,
  int ucchMax,
) =>
    _QueryDosDevice(
      lpDeviceName,
      lpTargetPath,
      ucchMax,
    );

late final _QueryDosDevice = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpDeviceName,
  Pointer<Utf16> lpTargetPath,
  Uint32 ucchMax,
),
    int Function(
  Pointer<Utf16> lpDeviceName,
  Pointer<Utf16> lpTargetPath,
  int ucchMax,
)>('QueryDosDeviceW');

int ReOpenFile(
  int hOriginalFile,
  int dwDesiredAccess,
  int dwShareMode,
  int dwFlagsAndAttributes,
) =>
    _ReOpenFile(
      hOriginalFile,
      dwDesiredAccess,
      dwShareMode,
      dwFlagsAndAttributes,
    );

late final _ReOpenFile = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr hOriginalFile,
  Uint32 dwDesiredAccess,
  Uint32 dwShareMode,
  Uint32 dwFlagsAndAttributes,
),
    int Function(
  int hOriginalFile,
  int dwDesiredAccess,
  int dwShareMode,
  int dwFlagsAndAttributes,
)>('ReOpenFile');

int ReadDirectoryChangesEx(
  int hDirectory,
  Pointer lpBuffer,
  int nBufferLength,
  int bWatchSubtree,
  int dwNotifyFilter,
  Pointer<Uint32> lpBytesReturned,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
  int ReadDirectoryNotifyInformationClass,
) =>
    _ReadDirectoryChangesEx(
      hDirectory,
      lpBuffer,
      nBufferLength,
      bWatchSubtree,
      dwNotifyFilter,
      lpBytesReturned,
      lpOverlapped,
      lpCompletionRoutine,
      ReadDirectoryNotifyInformationClass,
    );

late final _ReadDirectoryChangesEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hDirectory,
  Pointer lpBuffer,
  Uint32 nBufferLength,
  Int32 bWatchSubtree,
  Uint32 dwNotifyFilter,
  Pointer<Uint32> lpBytesReturned,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
  Int32 ReadDirectoryNotifyInformationClass,
),
    int Function(
  int hDirectory,
  Pointer lpBuffer,
  int nBufferLength,
  int bWatchSubtree,
  int dwNotifyFilter,
  Pointer<Uint32> lpBytesReturned,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
  int ReadDirectoryNotifyInformationClass,
)>('ReadDirectoryChangesExW');

int ReadDirectoryChanges(
  int hDirectory,
  Pointer lpBuffer,
  int nBufferLength,
  int bWatchSubtree,
  int dwNotifyFilter,
  Pointer<Uint32> lpBytesReturned,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
) =>
    _ReadDirectoryChanges(
      hDirectory,
      lpBuffer,
      nBufferLength,
      bWatchSubtree,
      dwNotifyFilter,
      lpBytesReturned,
      lpOverlapped,
      lpCompletionRoutine,
    );

late final _ReadDirectoryChanges = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hDirectory,
  Pointer lpBuffer,
  Uint32 nBufferLength,
  Int32 bWatchSubtree,
  Uint32 dwNotifyFilter,
  Pointer<Uint32> lpBytesReturned,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
),
    int Function(
  int hDirectory,
  Pointer lpBuffer,
  int nBufferLength,
  int bWatchSubtree,
  int dwNotifyFilter,
  Pointer<Uint32> lpBytesReturned,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
)>('ReadDirectoryChangesW');

int ReadFile(
  int hFile,
  Pointer lpBuffer,
  int nNumberOfBytesToRead,
  Pointer<Uint32> lpNumberOfBytesRead,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _ReadFile(
      hFile,
      lpBuffer,
      nNumberOfBytesToRead,
      lpNumberOfBytesRead,
      lpOverlapped,
    );

late final _ReadFile = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer lpBuffer,
  Uint32 nNumberOfBytesToRead,
  Pointer<Uint32> lpNumberOfBytesRead,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hFile,
  Pointer lpBuffer,
  int nNumberOfBytesToRead,
  Pointer<Uint32> lpNumberOfBytesRead,
  Pointer<OVERLAPPED> lpOverlapped,
)>('ReadFile');

int ReadFileEx(
  int hFile,
  Pointer lpBuffer,
  int nNumberOfBytesToRead,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
) =>
    _ReadFileEx(
      hFile,
      lpBuffer,
      nNumberOfBytesToRead,
      lpOverlapped,
      lpCompletionRoutine,
    );

late final _ReadFileEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer lpBuffer,
  Uint32 nNumberOfBytesToRead,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
),
    int Function(
  int hFile,
  Pointer lpBuffer,
  int nNumberOfBytesToRead,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
)>('ReadFileEx');

int ReadFileScatter(
  int hFile,
  Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
  int nNumberOfBytesToRead,
  Pointer<Uint32> lpReserved,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _ReadFileScatter(
      hFile,
      aSegmentArray,
      nNumberOfBytesToRead,
      lpReserved,
      lpOverlapped,
    );

late final _ReadFileScatter = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
  Uint32 nNumberOfBytesToRead,
  Pointer<Uint32> lpReserved,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hFile,
  Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
  int nNumberOfBytesToRead,
  Pointer<Uint32> lpReserved,
  Pointer<OVERLAPPED> lpOverlapped,
)>('ReadFileScatter');

int RemoveDirectoryTransacted(
  Pointer<Utf16> lpPathName,
  int hTransaction,
) =>
    _RemoveDirectoryTransacted(
      lpPathName,
      hTransaction,
    );

late final _RemoveDirectoryTransacted = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpPathName,
  IntPtr hTransaction,
),
    int Function(
  Pointer<Utf16> lpPathName,
  int hTransaction,
)>('RemoveDirectoryTransactedW');

int RemoveDirectory(
  Pointer<Utf16> lpPathName,
) =>
    _RemoveDirectory(
      lpPathName,
    );

late final _RemoveDirectory = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpPathName,
),
    int Function(
  Pointer<Utf16> lpPathName,
)>('RemoveDirectoryW');

int ReplaceFile(
  Pointer<Utf16> lpReplacedFileName,
  Pointer<Utf16> lpReplacementFileName,
  Pointer<Utf16> lpBackupFileName,
  int dwReplaceFlags,
  Pointer lpExclude,
  Pointer lpReserved,
) =>
    _ReplaceFile(
      lpReplacedFileName,
      lpReplacementFileName,
      lpBackupFileName,
      dwReplaceFlags,
      lpExclude,
      lpReserved,
    );

late final _ReplaceFile = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpReplacedFileName,
  Pointer<Utf16> lpReplacementFileName,
  Pointer<Utf16> lpBackupFileName,
  Uint32 dwReplaceFlags,
  Pointer lpExclude,
  Pointer lpReserved,
),
    int Function(
  Pointer<Utf16> lpReplacedFileName,
  Pointer<Utf16> lpReplacementFileName,
  Pointer<Utf16> lpBackupFileName,
  int dwReplaceFlags,
  Pointer lpExclude,
  Pointer lpReserved,
)>('ReplaceFileW');

int SearchPath(
  Pointer<Utf16> lpPath,
  Pointer<Utf16> lpFileName,
  Pointer<Utf16> lpExtension,
  int nBufferLength,
  Pointer<Utf16> lpBuffer,
  Pointer<Pointer<Utf16>> lpFilePart,
) =>
    _SearchPath(
      lpPath,
      lpFileName,
      lpExtension,
      nBufferLength,
      lpBuffer,
      lpFilePart,
    );

late final _SearchPath = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpPath,
  Pointer<Utf16> lpFileName,
  Pointer<Utf16> lpExtension,
  Uint32 nBufferLength,
  Pointer<Utf16> lpBuffer,
  Pointer<Pointer<Utf16>> lpFilePart,
),
    int Function(
  Pointer<Utf16> lpPath,
  Pointer<Utf16> lpFileName,
  Pointer<Utf16> lpExtension,
  int nBufferLength,
  Pointer<Utf16> lpBuffer,
  Pointer<Pointer<Utf16>> lpFilePart,
)>('SearchPathW');

int SetEndOfFile(
  int hFile,
) =>
    _SetEndOfFile(
      hFile,
    );

late final _SetEndOfFile = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
),
    int Function(
  int hFile,
)>('SetEndOfFile');

void SetFileApisToANSI() => _SetFileApisToANSI();

late final _SetFileApisToANSI = _kernel32
    .lookupFunction<Void Function(), void Function()>('SetFileApisToANSI');

void SetFileApisToOEM() => _SetFileApisToOEM();

late final _SetFileApisToOEM = _kernel32
    .lookupFunction<Void Function(), void Function()>('SetFileApisToOEM');

int SetFileAttributesTransacted(
  Pointer<Utf16> lpFileName,
  int dwFileAttributes,
  int hTransaction,
) =>
    _SetFileAttributesTransacted(
      lpFileName,
      dwFileAttributes,
      hTransaction,
    );

late final _SetFileAttributesTransacted = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFileName,
  Uint32 dwFileAttributes,
  IntPtr hTransaction,
),
    int Function(
  Pointer<Utf16> lpFileName,
  int dwFileAttributes,
  int hTransaction,
)>('SetFileAttributesTransactedW');

int SetFileAttributes(
  Pointer<Utf16> lpFileName,
  int dwFileAttributes,
) =>
    _SetFileAttributes(
      lpFileName,
      dwFileAttributes,
    );

late final _SetFileAttributes = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFileName,
  Uint32 dwFileAttributes,
),
    int Function(
  Pointer<Utf16> lpFileName,
  int dwFileAttributes,
)>('SetFileAttributesW');

int SetFileBandwidthReservation(
  int hFile,
  int nPeriodMilliseconds,
  int nBytesPerPeriod,
  int bDiscardable,
  Pointer<Uint32> lpTransferSize,
  Pointer<Uint32> lpNumOutstandingRequests,
) =>
    _SetFileBandwidthReservation(
      hFile,
      nPeriodMilliseconds,
      nBytesPerPeriod,
      bDiscardable,
      lpTransferSize,
      lpNumOutstandingRequests,
    );

late final _SetFileBandwidthReservation = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Uint32 nPeriodMilliseconds,
  Uint32 nBytesPerPeriod,
  Int32 bDiscardable,
  Pointer<Uint32> lpTransferSize,
  Pointer<Uint32> lpNumOutstandingRequests,
),
    int Function(
  int hFile,
  int nPeriodMilliseconds,
  int nBytesPerPeriod,
  int bDiscardable,
  Pointer<Uint32> lpTransferSize,
  Pointer<Uint32> lpNumOutstandingRequests,
)>('SetFileBandwidthReservation');

int SetFileCompletionNotificationModes(
  int FileHandle,
  int Flags,
) =>
    _SetFileCompletionNotificationModes(
      FileHandle,
      Flags,
    );

late final _SetFileCompletionNotificationModes = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Uint8 Flags,
),
    int Function(
  int FileHandle,
  int Flags,
)>('SetFileCompletionNotificationModes');

int SetFileInformationByHandle(
  int hFile,
  int FileInformationClass,
  Pointer lpFileInformation,
  int dwBufferSize,
) =>
    _SetFileInformationByHandle(
      hFile,
      FileInformationClass,
      lpFileInformation,
      dwBufferSize,
    );

late final _SetFileInformationByHandle = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Int32 FileInformationClass,
  Pointer lpFileInformation,
  Uint32 dwBufferSize,
),
    int Function(
  int hFile,
  int FileInformationClass,
  Pointer lpFileInformation,
  int dwBufferSize,
)>('SetFileInformationByHandle');

int SetFileIoOverlappedRange(
  int FileHandle,
  Pointer<Uint8> OverlappedRangeStart,
  int Length,
) =>
    _SetFileIoOverlappedRange(
      FileHandle,
      OverlappedRangeStart,
      Length,
    );

late final _SetFileIoOverlappedRange = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Pointer<Uint8> OverlappedRangeStart,
  Uint32 Length,
),
    int Function(
  int FileHandle,
  Pointer<Uint8> OverlappedRangeStart,
  int Length,
)>('SetFileIoOverlappedRange');

int SetFilePointer(
  int hFile,
  int lDistanceToMove,
  Pointer<Int32> lpDistanceToMoveHigh,
  int dwMoveMethod,
) =>
    _SetFilePointer(
      hFile,
      lDistanceToMove,
      lpDistanceToMoveHigh,
      dwMoveMethod,
    );

late final _SetFilePointer = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hFile,
  Int32 lDistanceToMove,
  Pointer<Int32> lpDistanceToMoveHigh,
  Uint32 dwMoveMethod,
),
    int Function(
  int hFile,
  int lDistanceToMove,
  Pointer<Int32> lpDistanceToMoveHigh,
  int dwMoveMethod,
)>('SetFilePointer');

int SetFilePointerEx(
  int hFile,
  int liDistanceToMove,
  Pointer<Int64> lpNewFilePointer,
  int dwMoveMethod,
) =>
    _SetFilePointerEx(
      hFile,
      liDistanceToMove,
      lpNewFilePointer,
      dwMoveMethod,
    );

late final _SetFilePointerEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Int64 liDistanceToMove,
  Pointer<Int64> lpNewFilePointer,
  Uint32 dwMoveMethod,
),
    int Function(
  int hFile,
  int liDistanceToMove,
  Pointer<Int64> lpNewFilePointer,
  int dwMoveMethod,
)>('SetFilePointerEx');

int SetFileShortName(
  int hFile,
  Pointer<Utf16> lpShortName,
) =>
    _SetFileShortName(
      hFile,
      lpShortName,
    );

late final _SetFileShortName = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<Utf16> lpShortName,
),
    int Function(
  int hFile,
  Pointer<Utf16> lpShortName,
)>('SetFileShortNameW');

int SetFileTime(
  int hFile,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpLastAccessTime,
  Pointer<FILETIME> lpLastWriteTime,
) =>
    _SetFileTime(
      hFile,
      lpCreationTime,
      lpLastAccessTime,
      lpLastWriteTime,
    );

late final _SetFileTime = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpLastAccessTime,
  Pointer<FILETIME> lpLastWriteTime,
),
    int Function(
  int hFile,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpLastAccessTime,
  Pointer<FILETIME> lpLastWriteTime,
)>('SetFileTime');

int SetFileValidData(
  int hFile,
  int ValidDataLength,
) =>
    _SetFileValidData(
      hFile,
      ValidDataLength,
    );

late final _SetFileValidData = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Int64 ValidDataLength,
),
    int Function(
  int hFile,
  int ValidDataLength,
)>('SetFileValidData');

int SetSearchPathMode(
  int Flags,
) =>
    _SetSearchPathMode(
      Flags,
    );

late final _SetSearchPathMode = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 Flags,
),
    int Function(
  int Flags,
)>('SetSearchPathMode');

int SetTapeParameters(
  int hDevice,
  int dwOperation,
  Pointer lpTapeInformation,
) =>
    _SetTapeParameters(
      hDevice,
      dwOperation,
      lpTapeInformation,
    );

late final _SetTapeParameters = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hDevice,
  Uint32 dwOperation,
  Pointer lpTapeInformation,
),
    int Function(
  int hDevice,
  int dwOperation,
  Pointer lpTapeInformation,
)>('SetTapeParameters');

int SetTapePosition(
  int hDevice,
  int dwPositionMethod,
  int dwPartition,
  int dwOffsetLow,
  int dwOffsetHigh,
  int bImmediate,
) =>
    _SetTapePosition(
      hDevice,
      dwPositionMethod,
      dwPartition,
      dwOffsetLow,
      dwOffsetHigh,
      bImmediate,
    );

late final _SetTapePosition = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hDevice,
  Int32 dwPositionMethod,
  Uint32 dwPartition,
  Uint32 dwOffsetLow,
  Uint32 dwOffsetHigh,
  Int32 bImmediate,
),
    int Function(
  int hDevice,
  int dwPositionMethod,
  int dwPartition,
  int dwOffsetLow,
  int dwOffsetHigh,
  int bImmediate,
)>('SetTapePosition');

int SetVolumeLabel(
  Pointer<Utf16> lpRootPathName,
  Pointer<Utf16> lpVolumeName,
) =>
    _SetVolumeLabel(
      lpRootPathName,
      lpVolumeName,
    );

late final _SetVolumeLabel = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpRootPathName,
  Pointer<Utf16> lpVolumeName,
),
    int Function(
  Pointer<Utf16> lpRootPathName,
  Pointer<Utf16> lpVolumeName,
)>('SetVolumeLabelW');

int SetVolumeMountPoint(
  Pointer<Utf16> lpszVolumeMountPoint,
  Pointer<Utf16> lpszVolumeName,
) =>
    _SetVolumeMountPoint(
      lpszVolumeMountPoint,
      lpszVolumeName,
    );

late final _SetVolumeMountPoint = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszVolumeMountPoint,
  Pointer<Utf16> lpszVolumeName,
),
    int Function(
  Pointer<Utf16> lpszVolumeMountPoint,
  Pointer<Utf16> lpszVolumeName,
)>('SetVolumeMountPointW');

int UnlockFile(
  int hFile,
  int dwFileOffsetLow,
  int dwFileOffsetHigh,
  int nNumberOfBytesToUnlockLow,
  int nNumberOfBytesToUnlockHigh,
) =>
    _UnlockFile(
      hFile,
      dwFileOffsetLow,
      dwFileOffsetHigh,
      nNumberOfBytesToUnlockLow,
      nNumberOfBytesToUnlockHigh,
    );

late final _UnlockFile = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Uint32 dwFileOffsetLow,
  Uint32 dwFileOffsetHigh,
  Uint32 nNumberOfBytesToUnlockLow,
  Uint32 nNumberOfBytesToUnlockHigh,
),
    int Function(
  int hFile,
  int dwFileOffsetLow,
  int dwFileOffsetHigh,
  int nNumberOfBytesToUnlockLow,
  int nNumberOfBytesToUnlockHigh,
)>('UnlockFile');

int UnlockFileEx(
  int hFile,
  int dwReserved,
  int nNumberOfBytesToUnlockLow,
  int nNumberOfBytesToUnlockHigh,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _UnlockFileEx(
      hFile,
      dwReserved,
      nNumberOfBytesToUnlockLow,
      nNumberOfBytesToUnlockHigh,
      lpOverlapped,
    );

late final _UnlockFileEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Uint32 dwReserved,
  Uint32 nNumberOfBytesToUnlockLow,
  Uint32 nNumberOfBytesToUnlockHigh,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hFile,
  int dwReserved,
  int nNumberOfBytesToUnlockLow,
  int nNumberOfBytesToUnlockHigh,
  Pointer<OVERLAPPED> lpOverlapped,
)>('UnlockFileEx');

int VerLanguageName(
  int wLang,
  Pointer<Utf16> szLang,
  int cchLang,
) =>
    _VerLanguageName(
      wLang,
      szLang,
      cchLang,
    );

late final _VerLanguageName = _kernel32.lookupFunction<
    Uint32 Function(
  Uint32 wLang,
  Pointer<Utf16> szLang,
  Uint32 cchLang,
),
    int Function(
  int wLang,
  Pointer<Utf16> szLang,
  int cchLang,
)>('VerLanguageNameW');

int Wow64DisableWow64FsRedirection(
  Pointer<Pointer> OldValue,
) =>
    _Wow64DisableWow64FsRedirection(
      OldValue,
    );

late final _Wow64DisableWow64FsRedirection = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Pointer> OldValue,
),
    int Function(
  Pointer<Pointer> OldValue,
)>('Wow64DisableWow64FsRedirection');

int Wow64EnableWow64FsRedirection(
  int Wow64FsEnableRedirection,
) =>
    _Wow64EnableWow64FsRedirection(
      Wow64FsEnableRedirection,
    );

late final _Wow64EnableWow64FsRedirection = _kernel32.lookupFunction<
    Uint8 Function(
  Uint8 Wow64FsEnableRedirection,
),
    int Function(
  int Wow64FsEnableRedirection,
)>('Wow64EnableWow64FsRedirection');

int Wow64RevertWow64FsRedirection(
  Pointer OlValue,
) =>
    _Wow64RevertWow64FsRedirection(
      OlValue,
    );

late final _Wow64RevertWow64FsRedirection = _kernel32.lookupFunction<
    Int32 Function(
  Pointer OlValue,
),
    int Function(
  Pointer OlValue,
)>('Wow64RevertWow64FsRedirection');

int WriteFile(
  int hFile,
  Pointer lpBuffer,
  int nNumberOfBytesToWrite,
  Pointer<Uint32> lpNumberOfBytesWritten,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _WriteFile(
      hFile,
      lpBuffer,
      nNumberOfBytesToWrite,
      lpNumberOfBytesWritten,
      lpOverlapped,
    );

late final _WriteFile = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer lpBuffer,
  Uint32 nNumberOfBytesToWrite,
  Pointer<Uint32> lpNumberOfBytesWritten,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hFile,
  Pointer lpBuffer,
  int nNumberOfBytesToWrite,
  Pointer<Uint32> lpNumberOfBytesWritten,
  Pointer<OVERLAPPED> lpOverlapped,
)>('WriteFile');

int WriteFileEx(
  int hFile,
  Pointer lpBuffer,
  int nNumberOfBytesToWrite,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
) =>
    _WriteFileEx(
      hFile,
      lpBuffer,
      nNumberOfBytesToWrite,
      lpOverlapped,
      lpCompletionRoutine,
    );

late final _WriteFileEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer lpBuffer,
  Uint32 nNumberOfBytesToWrite,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
),
    int Function(
  int hFile,
  Pointer lpBuffer,
  int nNumberOfBytesToWrite,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> lpCompletionRoutine,
)>('WriteFileEx');

int WriteFileGather(
  int hFile,
  Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
  int nNumberOfBytesToWrite,
  Pointer<Uint32> lpReserved,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _WriteFileGather(
      hFile,
      aSegmentArray,
      nNumberOfBytesToWrite,
      lpReserved,
      lpOverlapped,
    );

late final _WriteFileGather = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
  Uint32 nNumberOfBytesToWrite,
  Pointer<Uint32> lpReserved,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hFile,
  Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
  int nNumberOfBytesToWrite,
  Pointer<Uint32> lpReserved,
  Pointer<OVERLAPPED> lpOverlapped,
)>('WriteFileGather');

int WriteTapemark(
  int hDevice,
  int dwTapemarkType,
  int dwTapemarkCount,
  int bImmediate,
) =>
    _WriteTapemark(
      hDevice,
      dwTapemarkType,
      dwTapemarkCount,
      bImmediate,
    );

late final _WriteTapemark = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hDevice,
  Int32 dwTapemarkType,
  Uint32 dwTapemarkCount,
  Int32 bImmediate,
),
    int Function(
  int hDevice,
  int dwTapemarkType,
  int dwTapemarkCount,
  int bImmediate,
)>('WriteTapemark');

// -----------------------------------------------------------------------
// api-ms-win-core-file-fromapp-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_file_fromapp_l1_1_0 =
    DynamicLibrary.open('api-ms-win-core-file-fromapp-l1-1-0.dll');

int CopyFileFromApp(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  int bFailIfExists,
) =>
    _CopyFileFromApp(
      lpExistingFileName,
      lpNewFileName,
      bFailIfExists,
    );

late final _CopyFileFromApp =
    _api_ms_win_core_file_fromapp_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  Int32 bFailIfExists,
),
        int Function(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
  int bFailIfExists,
)>('CopyFileFromAppW');

int CreateDirectoryFromApp(
  Pointer<Utf16> lpPathName,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
) =>
    _CreateDirectoryFromApp(
      lpPathName,
      lpSecurityAttributes,
    );

late final _CreateDirectoryFromApp =
    _api_ms_win_core_file_fromapp_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf16> lpPathName,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
),
        int Function(
  Pointer<Utf16> lpPathName,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
)>('CreateDirectoryFromAppW');

int CreateFile2FromApp(
  Pointer<Utf16> lpFileName,
  int dwDesiredAccess,
  int dwShareMode,
  int dwCreationDisposition,
  Pointer<CREATEFILE2_EXTENDED_PARAMETERS> pCreateExParams,
) =>
    _CreateFile2FromApp(
      lpFileName,
      dwDesiredAccess,
      dwShareMode,
      dwCreationDisposition,
      pCreateExParams,
    );

late final _CreateFile2FromApp =
    _api_ms_win_core_file_fromapp_l1_1_0.lookupFunction<
        IntPtr Function(
  Pointer<Utf16> lpFileName,
  Uint32 dwDesiredAccess,
  Uint32 dwShareMode,
  Uint32 dwCreationDisposition,
  Pointer<CREATEFILE2_EXTENDED_PARAMETERS> pCreateExParams,
),
        int Function(
  Pointer<Utf16> lpFileName,
  int dwDesiredAccess,
  int dwShareMode,
  int dwCreationDisposition,
  Pointer<CREATEFILE2_EXTENDED_PARAMETERS> pCreateExParams,
)>('CreateFile2FromAppW');

int CreateFileFromApp(
  Pointer<Utf16> lpFileName,
  int dwDesiredAccess,
  int dwShareMode,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  int dwCreationDisposition,
  int dwFlagsAndAttributes,
  int hTemplateFile,
) =>
    _CreateFileFromApp(
      lpFileName,
      dwDesiredAccess,
      dwShareMode,
      lpSecurityAttributes,
      dwCreationDisposition,
      dwFlagsAndAttributes,
      hTemplateFile,
    );

late final _CreateFileFromApp =
    _api_ms_win_core_file_fromapp_l1_1_0.lookupFunction<
        IntPtr Function(
  Pointer<Utf16> lpFileName,
  Uint32 dwDesiredAccess,
  Uint32 dwShareMode,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  Uint32 dwCreationDisposition,
  Uint32 dwFlagsAndAttributes,
  IntPtr hTemplateFile,
),
        int Function(
  Pointer<Utf16> lpFileName,
  int dwDesiredAccess,
  int dwShareMode,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  int dwCreationDisposition,
  int dwFlagsAndAttributes,
  int hTemplateFile,
)>('CreateFileFromAppW');

int DeleteFileFromApp(
  Pointer<Utf16> lpFileName,
) =>
    _DeleteFileFromApp(
      lpFileName,
    );

late final _DeleteFileFromApp =
    _api_ms_win_core_file_fromapp_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf16> lpFileName,
),
        int Function(
  Pointer<Utf16> lpFileName,
)>('DeleteFileFromAppW');

int FindFirstFileExFromApp(
  Pointer<Utf16> lpFileName,
  int fInfoLevelId,
  Pointer lpFindFileData,
  int fSearchOp,
  Pointer lpSearchFilter,
  int dwAdditionalFlags,
) =>
    _FindFirstFileExFromApp(
      lpFileName,
      fInfoLevelId,
      lpFindFileData,
      fSearchOp,
      lpSearchFilter,
      dwAdditionalFlags,
    );

late final _FindFirstFileExFromApp =
    _api_ms_win_core_file_fromapp_l1_1_0.lookupFunction<
        IntPtr Function(
  Pointer<Utf16> lpFileName,
  Int32 fInfoLevelId,
  Pointer lpFindFileData,
  Int32 fSearchOp,
  Pointer lpSearchFilter,
  Uint32 dwAdditionalFlags,
),
        int Function(
  Pointer<Utf16> lpFileName,
  int fInfoLevelId,
  Pointer lpFindFileData,
  int fSearchOp,
  Pointer lpSearchFilter,
  int dwAdditionalFlags,
)>('FindFirstFileExFromAppW');

int GetFileAttributesExFromApp(
  Pointer<Utf16> lpFileName,
  int fInfoLevelId,
  Pointer lpFileInformation,
) =>
    _GetFileAttributesExFromApp(
      lpFileName,
      fInfoLevelId,
      lpFileInformation,
    );

late final _GetFileAttributesExFromApp =
    _api_ms_win_core_file_fromapp_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf16> lpFileName,
  Int32 fInfoLevelId,
  Pointer lpFileInformation,
),
        int Function(
  Pointer<Utf16> lpFileName,
  int fInfoLevelId,
  Pointer lpFileInformation,
)>('GetFileAttributesExFromAppW');

int MoveFileFromApp(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
) =>
    _MoveFileFromApp(
      lpExistingFileName,
      lpNewFileName,
    );

late final _MoveFileFromApp =
    _api_ms_win_core_file_fromapp_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
),
        int Function(
  Pointer<Utf16> lpExistingFileName,
  Pointer<Utf16> lpNewFileName,
)>('MoveFileFromAppW');

int RemoveDirectoryFromApp(
  Pointer<Utf16> lpPathName,
) =>
    _RemoveDirectoryFromApp(
      lpPathName,
    );

late final _RemoveDirectoryFromApp =
    _api_ms_win_core_file_fromapp_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf16> lpPathName,
),
        int Function(
  Pointer<Utf16> lpPathName,
)>('RemoveDirectoryFromAppW');

int ReplaceFileFromApp(
  Pointer<Utf16> lpReplacedFileName,
  Pointer<Utf16> lpReplacementFileName,
  Pointer<Utf16> lpBackupFileName,
  int dwReplaceFlags,
  Pointer lpExclude,
  Pointer lpReserved,
) =>
    _ReplaceFileFromApp(
      lpReplacedFileName,
      lpReplacementFileName,
      lpBackupFileName,
      dwReplaceFlags,
      lpExclude,
      lpReserved,
    );

late final _ReplaceFileFromApp =
    _api_ms_win_core_file_fromapp_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf16> lpReplacedFileName,
  Pointer<Utf16> lpReplacementFileName,
  Pointer<Utf16> lpBackupFileName,
  Uint32 dwReplaceFlags,
  Pointer lpExclude,
  Pointer lpReserved,
),
        int Function(
  Pointer<Utf16> lpReplacedFileName,
  Pointer<Utf16> lpReplacementFileName,
  Pointer<Utf16> lpBackupFileName,
  int dwReplaceFlags,
  Pointer lpExclude,
  Pointer lpReserved,
)>('ReplaceFileFromAppW');

int SetFileAttributesFromApp(
  Pointer<Utf16> lpFileName,
  int dwFileAttributes,
) =>
    _SetFileAttributesFromApp(
      lpFileName,
      dwFileAttributes,
    );

late final _SetFileAttributesFromApp =
    _api_ms_win_core_file_fromapp_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf16> lpFileName,
  Uint32 dwFileAttributes,
),
        int Function(
  Pointer<Utf16> lpFileName,
  int dwFileAttributes,
)>('SetFileAttributesFromAppW');

// -----------------------------------------------------------------------
// version.dll
// -----------------------------------------------------------------------
final _version = DynamicLibrary.open('version.dll');

int GetFileVersionInfoEx(
  int dwFlags,
  Pointer<Utf16> lpwstrFilename,
  int dwHandle,
  int dwLen,
  Pointer lpData,
) =>
    _GetFileVersionInfoEx(
      dwFlags,
      lpwstrFilename,
      dwHandle,
      dwLen,
      lpData,
    );

late final _GetFileVersionInfoEx = _version.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<Utf16> lpwstrFilename,
  Uint32 dwHandle,
  Uint32 dwLen,
  Pointer lpData,
),
    int Function(
  int dwFlags,
  Pointer<Utf16> lpwstrFilename,
  int dwHandle,
  int dwLen,
  Pointer lpData,
)>('GetFileVersionInfoExW');

int GetFileVersionInfoSizeEx(
  int dwFlags,
  Pointer<Utf16> lpwstrFilename,
  Pointer<Uint32> lpdwHandle,
) =>
    _GetFileVersionInfoSizeEx(
      dwFlags,
      lpwstrFilename,
      lpdwHandle,
    );

late final _GetFileVersionInfoSizeEx = _version.lookupFunction<
    Uint32 Function(
  Uint32 dwFlags,
  Pointer<Utf16> lpwstrFilename,
  Pointer<Uint32> lpdwHandle,
),
    int Function(
  int dwFlags,
  Pointer<Utf16> lpwstrFilename,
  Pointer<Uint32> lpdwHandle,
)>('GetFileVersionInfoSizeExW');

int GetFileVersionInfoSize(
  Pointer<Utf16> lptstrFilename,
  Pointer<Uint32> lpdwHandle,
) =>
    _GetFileVersionInfoSize(
      lptstrFilename,
      lpdwHandle,
    );

late final _GetFileVersionInfoSize = _version.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lptstrFilename,
  Pointer<Uint32> lpdwHandle,
),
    int Function(
  Pointer<Utf16> lptstrFilename,
  Pointer<Uint32> lpdwHandle,
)>('GetFileVersionInfoSizeW');

int GetFileVersionInfo(
  Pointer<Utf16> lptstrFilename,
  int dwHandle,
  int dwLen,
  Pointer lpData,
) =>
    _GetFileVersionInfo(
      lptstrFilename,
      dwHandle,
      dwLen,
      lpData,
    );

late final _GetFileVersionInfo = _version.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lptstrFilename,
  Uint32 dwHandle,
  Uint32 dwLen,
  Pointer lpData,
),
    int Function(
  Pointer<Utf16> lptstrFilename,
  int dwHandle,
  int dwLen,
  Pointer lpData,
)>('GetFileVersionInfoW');

int VerFindFile(
  int uFlags,
  Pointer<Utf16> szFileName,
  Pointer<Utf16> szWinDir,
  Pointer<Utf16> szAppDir,
  Pointer<Utf16> szCurDir,
  Pointer<Uint32> puCurDirLen,
  Pointer<Utf16> szDestDir,
  Pointer<Uint32> puDestDirLen,
) =>
    _VerFindFile(
      uFlags,
      szFileName,
      szWinDir,
      szAppDir,
      szCurDir,
      puCurDirLen,
      szDestDir,
      puDestDirLen,
    );

late final _VerFindFile = _version.lookupFunction<
    Uint32 Function(
  Uint32 uFlags,
  Pointer<Utf16> szFileName,
  Pointer<Utf16> szWinDir,
  Pointer<Utf16> szAppDir,
  Pointer<Utf16> szCurDir,
  Pointer<Uint32> puCurDirLen,
  Pointer<Utf16> szDestDir,
  Pointer<Uint32> puDestDirLen,
),
    int Function(
  int uFlags,
  Pointer<Utf16> szFileName,
  Pointer<Utf16> szWinDir,
  Pointer<Utf16> szAppDir,
  Pointer<Utf16> szCurDir,
  Pointer<Uint32> puCurDirLen,
  Pointer<Utf16> szDestDir,
  Pointer<Uint32> puDestDirLen,
)>('VerFindFileW');

int VerInstallFile(
  int uFlags,
  Pointer<Utf16> szSrcFileName,
  Pointer<Utf16> szDestFileName,
  Pointer<Utf16> szSrcDir,
  Pointer<Utf16> szDestDir,
  Pointer<Utf16> szCurDir,
  Pointer<Utf16> szTmpFile,
  Pointer<Uint32> puTmpFileLen,
) =>
    _VerInstallFile(
      uFlags,
      szSrcFileName,
      szDestFileName,
      szSrcDir,
      szDestDir,
      szCurDir,
      szTmpFile,
      puTmpFileLen,
    );

late final _VerInstallFile = _version.lookupFunction<
    Uint32 Function(
  Uint32 uFlags,
  Pointer<Utf16> szSrcFileName,
  Pointer<Utf16> szDestFileName,
  Pointer<Utf16> szSrcDir,
  Pointer<Utf16> szDestDir,
  Pointer<Utf16> szCurDir,
  Pointer<Utf16> szTmpFile,
  Pointer<Uint32> puTmpFileLen,
),
    int Function(
  int uFlags,
  Pointer<Utf16> szSrcFileName,
  Pointer<Utf16> szDestFileName,
  Pointer<Utf16> szSrcDir,
  Pointer<Utf16> szDestDir,
  Pointer<Utf16> szCurDir,
  Pointer<Utf16> szTmpFile,
  Pointer<Uint32> puTmpFileLen,
)>('VerInstallFileW');

int VerQueryValue(
  Pointer pBlock,
  Pointer<Utf16> lpSubBlock,
  Pointer<Pointer> lplpBuffer,
  Pointer<Uint32> puLen,
) =>
    _VerQueryValue(
      pBlock,
      lpSubBlock,
      lplpBuffer,
      puLen,
    );

late final _VerQueryValue = _version.lookupFunction<
    Int32 Function(
  Pointer pBlock,
  Pointer<Utf16> lpSubBlock,
  Pointer<Pointer> lplpBuffer,
  Pointer<Uint32> puLen,
),
    int Function(
  Pointer pBlock,
  Pointer<Utf16> lpSubBlock,
  Pointer<Pointer> lplpBuffer,
  Pointer<Uint32> puLen,
)>('VerQueryValueW');

// -----------------------------------------------------------------------
// clfsw32.dll
// -----------------------------------------------------------------------
final _clfsw32 = DynamicLibrary.open('clfsw32.dll');

int AddLogContainer(
  int hLog,
  Pointer<Uint64> pcbContainer,
  Pointer<Utf16> pwszContainerPath,
  Pointer pReserved,
) =>
    _AddLogContainer(
      hLog,
      pcbContainer,
      pwszContainerPath,
      pReserved,
    );

late final _AddLogContainer = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Pointer<Uint64> pcbContainer,
  Pointer<Utf16> pwszContainerPath,
  Pointer pReserved,
),
    int Function(
  int hLog,
  Pointer<Uint64> pcbContainer,
  Pointer<Utf16> pwszContainerPath,
  Pointer pReserved,
)>('AddLogContainer');

int AddLogContainerSet(
  int hLog,
  int cContainer,
  Pointer<Uint64> pcbContainer,
  Pointer<Pointer<Utf16>> rgwszContainerPath,
  Pointer pReserved,
) =>
    _AddLogContainerSet(
      hLog,
      cContainer,
      pcbContainer,
      rgwszContainerPath,
      pReserved,
    );

late final _AddLogContainerSet = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Uint16 cContainer,
  Pointer<Uint64> pcbContainer,
  Pointer<Pointer<Utf16>> rgwszContainerPath,
  Pointer pReserved,
),
    int Function(
  int hLog,
  int cContainer,
  Pointer<Uint64> pcbContainer,
  Pointer<Pointer<Utf16>> rgwszContainerPath,
  Pointer pReserved,
)>('AddLogContainerSet');

int AdvanceLogBase(
  Pointer pvMarshal,
  Pointer<CLS_LSN> plsnBase,
  int fFlags,
  Pointer<OVERLAPPED> pOverlapped,
) =>
    _AdvanceLogBase(
      pvMarshal,
      plsnBase,
      fFlags,
      pOverlapped,
    );

late final _AdvanceLogBase = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer pvMarshal,
  Pointer<CLS_LSN> plsnBase,
  Uint32 fFlags,
  Pointer<OVERLAPPED> pOverlapped,
),
    int Function(
  Pointer pvMarshal,
  Pointer<CLS_LSN> plsnBase,
  int fFlags,
  Pointer<OVERLAPPED> pOverlapped,
)>('AdvanceLogBase');

int AlignReservedLog(
  Pointer pvMarshal,
  int cReservedRecords,
  Pointer<Int64> rgcbReservation,
  Pointer<Int64> pcbAlignReservation,
) =>
    _AlignReservedLog(
      pvMarshal,
      cReservedRecords,
      rgcbReservation,
      pcbAlignReservation,
    );

late final _AlignReservedLog = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer pvMarshal,
  Uint32 cReservedRecords,
  Pointer<Int64> rgcbReservation,
  Pointer<Int64> pcbAlignReservation,
),
    int Function(
  Pointer pvMarshal,
  int cReservedRecords,
  Pointer<Int64> rgcbReservation,
  Pointer<Int64> pcbAlignReservation,
)>('AlignReservedLog');

int AllocReservedLog(
  Pointer pvMarshal,
  int cReservedRecords,
  Pointer<Int64> pcbAdjustment,
) =>
    _AllocReservedLog(
      pvMarshal,
      cReservedRecords,
      pcbAdjustment,
    );

late final _AllocReservedLog = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer pvMarshal,
  Uint32 cReservedRecords,
  Pointer<Int64> pcbAdjustment,
),
    int Function(
  Pointer pvMarshal,
  int cReservedRecords,
  Pointer<Int64> pcbAdjustment,
)>('AllocReservedLog');

int CloseAndResetLogFile(
  int hLog,
) =>
    _CloseAndResetLogFile(
      hLog,
    );

late final _CloseAndResetLogFile = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
),
    int Function(
  int hLog,
)>('CloseAndResetLogFile');

int CreateLogContainerScanContext(
  int hLog,
  int cFromContainer,
  int cContainers,
  int eScanMode,
  Pointer<CLS_SCAN_CONTEXT> pcxScan,
  Pointer<OVERLAPPED> pOverlapped,
) =>
    _CreateLogContainerScanContext(
      hLog,
      cFromContainer,
      cContainers,
      eScanMode,
      pcxScan,
      pOverlapped,
    );

late final _CreateLogContainerScanContext = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Uint32 cFromContainer,
  Uint32 cContainers,
  Uint8 eScanMode,
  Pointer<CLS_SCAN_CONTEXT> pcxScan,
  Pointer<OVERLAPPED> pOverlapped,
),
    int Function(
  int hLog,
  int cFromContainer,
  int cContainers,
  int eScanMode,
  Pointer<CLS_SCAN_CONTEXT> pcxScan,
  Pointer<OVERLAPPED> pOverlapped,
)>('CreateLogContainerScanContext');

int CreateLogFile(
  Pointer<Utf16> pszLogFileName,
  int fDesiredAccess,
  int dwShareMode,
  Pointer<SECURITY_ATTRIBUTES> psaLogFile,
  int fCreateDisposition,
  int fFlagsAndAttributes,
) =>
    _CreateLogFile(
      pszLogFileName,
      fDesiredAccess,
      dwShareMode,
      psaLogFile,
      fCreateDisposition,
      fFlagsAndAttributes,
    );

late final _CreateLogFile = _clfsw32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> pszLogFileName,
  Uint32 fDesiredAccess,
  Uint32 dwShareMode,
  Pointer<SECURITY_ATTRIBUTES> psaLogFile,
  Uint32 fCreateDisposition,
  Uint32 fFlagsAndAttributes,
),
    int Function(
  Pointer<Utf16> pszLogFileName,
  int fDesiredAccess,
  int dwShareMode,
  Pointer<SECURITY_ATTRIBUTES> psaLogFile,
  int fCreateDisposition,
  int fFlagsAndAttributes,
)>('CreateLogFile');

int CreateLogMarshallingArea(
  int hLog,
  Pointer<NativeFunction<CLFS_BLOCK_ALLOCATION>> pfnAllocBuffer,
  Pointer<NativeFunction<CLFS_BLOCK_DEALLOCATION>> pfnFreeBuffer,
  Pointer pvBlockAllocContext,
  int cbMarshallingBuffer,
  int cMaxWriteBuffers,
  int cMaxReadBuffers,
  Pointer<Pointer> ppvMarshal,
) =>
    _CreateLogMarshallingArea(
      hLog,
      pfnAllocBuffer,
      pfnFreeBuffer,
      pvBlockAllocContext,
      cbMarshallingBuffer,
      cMaxWriteBuffers,
      cMaxReadBuffers,
      ppvMarshal,
    );

late final _CreateLogMarshallingArea = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Pointer<NativeFunction<CLFS_BLOCK_ALLOCATION>> pfnAllocBuffer,
  Pointer<NativeFunction<CLFS_BLOCK_DEALLOCATION>> pfnFreeBuffer,
  Pointer pvBlockAllocContext,
  Uint32 cbMarshallingBuffer,
  Uint32 cMaxWriteBuffers,
  Uint32 cMaxReadBuffers,
  Pointer<Pointer> ppvMarshal,
),
    int Function(
  int hLog,
  Pointer<NativeFunction<CLFS_BLOCK_ALLOCATION>> pfnAllocBuffer,
  Pointer<NativeFunction<CLFS_BLOCK_DEALLOCATION>> pfnFreeBuffer,
  Pointer pvBlockAllocContext,
  int cbMarshallingBuffer,
  int cMaxWriteBuffers,
  int cMaxReadBuffers,
  Pointer<Pointer> ppvMarshal,
)>('CreateLogMarshallingArea');

int DeleteLogByHandle(
  int hLog,
) =>
    _DeleteLogByHandle(
      hLog,
    );

late final _DeleteLogByHandle = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
),
    int Function(
  int hLog,
)>('DeleteLogByHandle');

int DeleteLogFile(
  Pointer<Utf16> pszLogFileName,
  Pointer pvReserved,
) =>
    _DeleteLogFile(
      pszLogFileName,
      pvReserved,
    );

late final _DeleteLogFile = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszLogFileName,
  Pointer pvReserved,
),
    int Function(
  Pointer<Utf16> pszLogFileName,
  Pointer pvReserved,
)>('DeleteLogFile');

int DeleteLogMarshallingArea(
  Pointer pvMarshal,
) =>
    _DeleteLogMarshallingArea(
      pvMarshal,
    );

late final _DeleteLogMarshallingArea = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer pvMarshal,
),
    int Function(
  Pointer pvMarshal,
)>('DeleteLogMarshallingArea');

int DeregisterManageableLogClient(
  int hLog,
) =>
    _DeregisterManageableLogClient(
      hLog,
    );

late final _DeregisterManageableLogClient = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
),
    int Function(
  int hLog,
)>('DeregisterManageableLogClient');

int FlushLogBuffers(
  Pointer pvMarshal,
  Pointer<OVERLAPPED> pOverlapped,
) =>
    _FlushLogBuffers(
      pvMarshal,
      pOverlapped,
    );

late final _FlushLogBuffers = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer pvMarshal,
  Pointer<OVERLAPPED> pOverlapped,
),
    int Function(
  Pointer pvMarshal,
  Pointer<OVERLAPPED> pOverlapped,
)>('FlushLogBuffers');

int FlushLogToLsn(
  Pointer pvMarshalContext,
  Pointer<CLS_LSN> plsnFlush,
  Pointer<CLS_LSN> plsnLastFlushed,
  Pointer<OVERLAPPED> pOverlapped,
) =>
    _FlushLogToLsn(
      pvMarshalContext,
      plsnFlush,
      plsnLastFlushed,
      pOverlapped,
    );

late final _FlushLogToLsn = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer pvMarshalContext,
  Pointer<CLS_LSN> plsnFlush,
  Pointer<CLS_LSN> plsnLastFlushed,
  Pointer<OVERLAPPED> pOverlapped,
),
    int Function(
  Pointer pvMarshalContext,
  Pointer<CLS_LSN> plsnFlush,
  Pointer<CLS_LSN> plsnLastFlushed,
  Pointer<OVERLAPPED> pOverlapped,
)>('FlushLogToLsn');

int FreeReservedLog(
  Pointer pvMarshal,
  int cReservedRecords,
  Pointer<Int64> pcbAdjustment,
) =>
    _FreeReservedLog(
      pvMarshal,
      cReservedRecords,
      pcbAdjustment,
    );

late final _FreeReservedLog = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer pvMarshal,
  Uint32 cReservedRecords,
  Pointer<Int64> pcbAdjustment,
),
    int Function(
  Pointer pvMarshal,
  int cReservedRecords,
  Pointer<Int64> pcbAdjustment,
)>('FreeReservedLog');

int GetLogContainerName(
  int hLog,
  int cidLogicalContainer,
  Pointer<Utf16> pwstrContainerName,
  int cLenContainerName,
  Pointer<Uint32> pcActualLenContainerName,
) =>
    _GetLogContainerName(
      hLog,
      cidLogicalContainer,
      pwstrContainerName,
      cLenContainerName,
      pcActualLenContainerName,
    );

late final _GetLogContainerName = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Uint32 cidLogicalContainer,
  Pointer<Utf16> pwstrContainerName,
  Uint32 cLenContainerName,
  Pointer<Uint32> pcActualLenContainerName,
),
    int Function(
  int hLog,
  int cidLogicalContainer,
  Pointer<Utf16> pwstrContainerName,
  int cLenContainerName,
  Pointer<Uint32> pcActualLenContainerName,
)>('GetLogContainerName');

int GetLogFileInformation(
  int hLog,
  Pointer<CLS_INFORMATION> pinfoBuffer,
  Pointer<Uint32> cbBuffer,
) =>
    _GetLogFileInformation(
      hLog,
      pinfoBuffer,
      cbBuffer,
    );

late final _GetLogFileInformation = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Pointer<CLS_INFORMATION> pinfoBuffer,
  Pointer<Uint32> cbBuffer,
),
    int Function(
  int hLog,
  Pointer<CLS_INFORMATION> pinfoBuffer,
  Pointer<Uint32> cbBuffer,
)>('GetLogFileInformation');

int GetLogIoStatistics(
  int hLog,
  Pointer pvStatsBuffer,
  int cbStatsBuffer,
  int eStatsClass,
  Pointer<Uint32> pcbStatsWritten,
) =>
    _GetLogIoStatistics(
      hLog,
      pvStatsBuffer,
      cbStatsBuffer,
      eStatsClass,
      pcbStatsWritten,
    );

late final _GetLogIoStatistics = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Pointer pvStatsBuffer,
  Uint32 cbStatsBuffer,
  Int32 eStatsClass,
  Pointer<Uint32> pcbStatsWritten,
),
    int Function(
  int hLog,
  Pointer pvStatsBuffer,
  int cbStatsBuffer,
  int eStatsClass,
  Pointer<Uint32> pcbStatsWritten,
)>('GetLogIoStatistics');

int GetLogReservationInfo(
  Pointer pvMarshal,
  Pointer<Uint32> pcbRecordNumber,
  Pointer<Int64> pcbUserReservation,
  Pointer<Int64> pcbCommitReservation,
) =>
    _GetLogReservationInfo(
      pvMarshal,
      pcbRecordNumber,
      pcbUserReservation,
      pcbCommitReservation,
    );

late final _GetLogReservationInfo = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer pvMarshal,
  Pointer<Uint32> pcbRecordNumber,
  Pointer<Int64> pcbUserReservation,
  Pointer<Int64> pcbCommitReservation,
),
    int Function(
  Pointer pvMarshal,
  Pointer<Uint32> pcbRecordNumber,
  Pointer<Int64> pcbUserReservation,
  Pointer<Int64> pcbCommitReservation,
)>('GetLogReservationInfo');

int GetNextLogArchiveExtent(
  Pointer pvArchiveContext,
  Pointer<CLS_ARCHIVE_DESCRIPTOR> rgadExtent,
  int cDescriptors,
  Pointer<Uint32> pcDescriptorsReturned,
) =>
    _GetNextLogArchiveExtent(
      pvArchiveContext,
      rgadExtent,
      cDescriptors,
      pcDescriptorsReturned,
    );

late final _GetNextLogArchiveExtent = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer pvArchiveContext,
  Pointer<CLS_ARCHIVE_DESCRIPTOR> rgadExtent,
  Uint32 cDescriptors,
  Pointer<Uint32> pcDescriptorsReturned,
),
    int Function(
  Pointer pvArchiveContext,
  Pointer<CLS_ARCHIVE_DESCRIPTOR> rgadExtent,
  int cDescriptors,
  Pointer<Uint32> pcDescriptorsReturned,
)>('GetNextLogArchiveExtent');

int HandleLogFull(
  int hLog,
) =>
    _HandleLogFull(
      hLog,
    );

late final _HandleLogFull = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
),
    int Function(
  int hLog,
)>('HandleLogFull');

int InstallLogPolicy(
  int hLog,
  Pointer<CLFS_MGMT_POLICY> pPolicy,
) =>
    _InstallLogPolicy(
      hLog,
      pPolicy,
    );

late final _InstallLogPolicy = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Pointer<CLFS_MGMT_POLICY> pPolicy,
),
    int Function(
  int hLog,
  Pointer<CLFS_MGMT_POLICY> pPolicy,
)>('InstallLogPolicy');

int LogTailAdvanceFailure(
  int hLog,
  int dwReason,
) =>
    _LogTailAdvanceFailure(
      hLog,
      dwReason,
    );

late final _LogTailAdvanceFailure = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Uint32 dwReason,
),
    int Function(
  int hLog,
  int dwReason,
)>('LogTailAdvanceFailure');

int LsnBlockOffset(
  Pointer<CLS_LSN> plsn,
) =>
    _LsnBlockOffset(
      plsn,
    );

late final _LsnBlockOffset = _clfsw32.lookupFunction<
    Uint32 Function(
  Pointer<CLS_LSN> plsn,
),
    int Function(
  Pointer<CLS_LSN> plsn,
)>('LsnBlockOffset');

int LsnContainer(
  Pointer<CLS_LSN> plsn,
) =>
    _LsnContainer(
      plsn,
    );

late final _LsnContainer = _clfsw32.lookupFunction<
    Uint32 Function(
  Pointer<CLS_LSN> plsn,
),
    int Function(
  Pointer<CLS_LSN> plsn,
)>('LsnContainer');

CLS_LSN LsnCreate(
  int cidContainer,
  int offBlock,
  int cRecord,
) =>
    _LsnCreate(
      cidContainer,
      offBlock,
      cRecord,
    );

late final _LsnCreate = _clfsw32.lookupFunction<
    CLS_LSN Function(
  Uint32 cidContainer,
  Uint32 offBlock,
  Uint32 cRecord,
),
    CLS_LSN Function(
  int cidContainer,
  int offBlock,
  int cRecord,
)>('LsnCreate');

int LsnEqual(
  Pointer<CLS_LSN> plsn1,
  Pointer<CLS_LSN> plsn2,
) =>
    _LsnEqual(
      plsn1,
      plsn2,
    );

late final _LsnEqual = _clfsw32.lookupFunction<
    Uint8 Function(
  Pointer<CLS_LSN> plsn1,
  Pointer<CLS_LSN> plsn2,
),
    int Function(
  Pointer<CLS_LSN> plsn1,
  Pointer<CLS_LSN> plsn2,
)>('LsnEqual');

int LsnGreater(
  Pointer<CLS_LSN> plsn1,
  Pointer<CLS_LSN> plsn2,
) =>
    _LsnGreater(
      plsn1,
      plsn2,
    );

late final _LsnGreater = _clfsw32.lookupFunction<
    Uint8 Function(
  Pointer<CLS_LSN> plsn1,
  Pointer<CLS_LSN> plsn2,
),
    int Function(
  Pointer<CLS_LSN> plsn1,
  Pointer<CLS_LSN> plsn2,
)>('LsnGreater');

CLS_LSN LsnIncrement(
  Pointer<CLS_LSN> plsn,
) =>
    _LsnIncrement(
      plsn,
    );

late final _LsnIncrement = _clfsw32.lookupFunction<
    CLS_LSN Function(
  Pointer<CLS_LSN> plsn,
),
    CLS_LSN Function(
  Pointer<CLS_LSN> plsn,
)>('LsnIncrement');

int LsnInvalid(
  Pointer<CLS_LSN> plsn,
) =>
    _LsnInvalid(
      plsn,
    );

late final _LsnInvalid = _clfsw32.lookupFunction<
    Uint8 Function(
  Pointer<CLS_LSN> plsn,
),
    int Function(
  Pointer<CLS_LSN> plsn,
)>('LsnInvalid');

int LsnLess(
  Pointer<CLS_LSN> plsn1,
  Pointer<CLS_LSN> plsn2,
) =>
    _LsnLess(
      plsn1,
      plsn2,
    );

late final _LsnLess = _clfsw32.lookupFunction<
    Uint8 Function(
  Pointer<CLS_LSN> plsn1,
  Pointer<CLS_LSN> plsn2,
),
    int Function(
  Pointer<CLS_LSN> plsn1,
  Pointer<CLS_LSN> plsn2,
)>('LsnLess');

int LsnNull(
  Pointer<CLS_LSN> plsn,
) =>
    _LsnNull(
      plsn,
    );

late final _LsnNull = _clfsw32.lookupFunction<
    Uint8 Function(
  Pointer<CLS_LSN> plsn,
),
    int Function(
  Pointer<CLS_LSN> plsn,
)>('LsnNull');

int LsnRecordSequence(
  Pointer<CLS_LSN> plsn,
) =>
    _LsnRecordSequence(
      plsn,
    );

late final _LsnRecordSequence = _clfsw32.lookupFunction<
    Uint32 Function(
  Pointer<CLS_LSN> plsn,
),
    int Function(
  Pointer<CLS_LSN> plsn,
)>('LsnRecordSequence');

int PrepareLogArchive(
  int hLog,
  Pointer<Utf16> pszBaseLogFileName,
  int cLen,
  Pointer<CLS_LSN> plsnLow,
  Pointer<CLS_LSN> plsnHigh,
  Pointer<Uint32> pcActualLength,
  Pointer<Uint64> poffBaseLogFileData,
  Pointer<Uint64> pcbBaseLogFileLength,
  Pointer<CLS_LSN> plsnBase,
  Pointer<CLS_LSN> plsnLast,
  Pointer<CLS_LSN> plsnCurrentArchiveTail,
  Pointer<Pointer> ppvArchiveContext,
) =>
    _PrepareLogArchive(
      hLog,
      pszBaseLogFileName,
      cLen,
      plsnLow,
      plsnHigh,
      pcActualLength,
      poffBaseLogFileData,
      pcbBaseLogFileLength,
      plsnBase,
      plsnLast,
      plsnCurrentArchiveTail,
      ppvArchiveContext,
    );

late final _PrepareLogArchive = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Pointer<Utf16> pszBaseLogFileName,
  Uint32 cLen,
  Pointer<CLS_LSN> plsnLow,
  Pointer<CLS_LSN> plsnHigh,
  Pointer<Uint32> pcActualLength,
  Pointer<Uint64> poffBaseLogFileData,
  Pointer<Uint64> pcbBaseLogFileLength,
  Pointer<CLS_LSN> plsnBase,
  Pointer<CLS_LSN> plsnLast,
  Pointer<CLS_LSN> plsnCurrentArchiveTail,
  Pointer<Pointer> ppvArchiveContext,
),
    int Function(
  int hLog,
  Pointer<Utf16> pszBaseLogFileName,
  int cLen,
  Pointer<CLS_LSN> plsnLow,
  Pointer<CLS_LSN> plsnHigh,
  Pointer<Uint32> pcActualLength,
  Pointer<Uint64> poffBaseLogFileData,
  Pointer<Uint64> pcbBaseLogFileLength,
  Pointer<CLS_LSN> plsnBase,
  Pointer<CLS_LSN> plsnLast,
  Pointer<CLS_LSN> plsnCurrentArchiveTail,
  Pointer<Pointer> ppvArchiveContext,
)>('PrepareLogArchive');

int QueryLogPolicy(
  int hLog,
  int ePolicyType,
  Pointer<CLFS_MGMT_POLICY> pPolicyBuffer,
  Pointer<Uint32> pcbPolicyBuffer,
) =>
    _QueryLogPolicy(
      hLog,
      ePolicyType,
      pPolicyBuffer,
      pcbPolicyBuffer,
    );

late final _QueryLogPolicy = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Int32 ePolicyType,
  Pointer<CLFS_MGMT_POLICY> pPolicyBuffer,
  Pointer<Uint32> pcbPolicyBuffer,
),
    int Function(
  int hLog,
  int ePolicyType,
  Pointer<CLFS_MGMT_POLICY> pPolicyBuffer,
  Pointer<Uint32> pcbPolicyBuffer,
)>('QueryLogPolicy');

int ReadLogArchiveMetadata(
  Pointer pvArchiveContext,
  int cbOffset,
  int cbBytesToRead,
  Pointer<Uint8> pbReadBuffer,
  Pointer<Uint32> pcbBytesRead,
) =>
    _ReadLogArchiveMetadata(
      pvArchiveContext,
      cbOffset,
      cbBytesToRead,
      pbReadBuffer,
      pcbBytesRead,
    );

late final _ReadLogArchiveMetadata = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer pvArchiveContext,
  Uint32 cbOffset,
  Uint32 cbBytesToRead,
  Pointer<Uint8> pbReadBuffer,
  Pointer<Uint32> pcbBytesRead,
),
    int Function(
  Pointer pvArchiveContext,
  int cbOffset,
  int cbBytesToRead,
  Pointer<Uint8> pbReadBuffer,
  Pointer<Uint32> pcbBytesRead,
)>('ReadLogArchiveMetadata');

int ReadLogNotification(
  int hLog,
  Pointer<CLFS_MGMT_NOTIFICATION> pNotification,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _ReadLogNotification(
      hLog,
      pNotification,
      lpOverlapped,
    );

late final _ReadLogNotification = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Pointer<CLFS_MGMT_NOTIFICATION> pNotification,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hLog,
  Pointer<CLFS_MGMT_NOTIFICATION> pNotification,
  Pointer<OVERLAPPED> lpOverlapped,
)>('ReadLogNotification');

int ReadLogRecord(
  Pointer pvMarshal,
  Pointer<CLS_LSN> plsnFirst,
  int eContextMode,
  Pointer<Pointer> ppvReadBuffer,
  Pointer<Uint32> pcbReadBuffer,
  Pointer<Uint8> peRecordType,
  Pointer<CLS_LSN> plsnUndoNext,
  Pointer<CLS_LSN> plsnPrevious,
  Pointer<Pointer> ppvReadContext,
  Pointer<OVERLAPPED> pOverlapped,
) =>
    _ReadLogRecord(
      pvMarshal,
      plsnFirst,
      eContextMode,
      ppvReadBuffer,
      pcbReadBuffer,
      peRecordType,
      plsnUndoNext,
      plsnPrevious,
      ppvReadContext,
      pOverlapped,
    );

late final _ReadLogRecord = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer pvMarshal,
  Pointer<CLS_LSN> plsnFirst,
  Int32 eContextMode,
  Pointer<Pointer> ppvReadBuffer,
  Pointer<Uint32> pcbReadBuffer,
  Pointer<Uint8> peRecordType,
  Pointer<CLS_LSN> plsnUndoNext,
  Pointer<CLS_LSN> plsnPrevious,
  Pointer<Pointer> ppvReadContext,
  Pointer<OVERLAPPED> pOverlapped,
),
    int Function(
  Pointer pvMarshal,
  Pointer<CLS_LSN> plsnFirst,
  int eContextMode,
  Pointer<Pointer> ppvReadBuffer,
  Pointer<Uint32> pcbReadBuffer,
  Pointer<Uint8> peRecordType,
  Pointer<CLS_LSN> plsnUndoNext,
  Pointer<CLS_LSN> plsnPrevious,
  Pointer<Pointer> ppvReadContext,
  Pointer<OVERLAPPED> pOverlapped,
)>('ReadLogRecord');

int ReadLogRestartArea(
  Pointer pvMarshal,
  Pointer<Pointer> ppvRestartBuffer,
  Pointer<Uint32> pcbRestartBuffer,
  Pointer<CLS_LSN> plsn,
  Pointer<Pointer> ppvContext,
  Pointer<OVERLAPPED> pOverlapped,
) =>
    _ReadLogRestartArea(
      pvMarshal,
      ppvRestartBuffer,
      pcbRestartBuffer,
      plsn,
      ppvContext,
      pOverlapped,
    );

late final _ReadLogRestartArea = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer pvMarshal,
  Pointer<Pointer> ppvRestartBuffer,
  Pointer<Uint32> pcbRestartBuffer,
  Pointer<CLS_LSN> plsn,
  Pointer<Pointer> ppvContext,
  Pointer<OVERLAPPED> pOverlapped,
),
    int Function(
  Pointer pvMarshal,
  Pointer<Pointer> ppvRestartBuffer,
  Pointer<Uint32> pcbRestartBuffer,
  Pointer<CLS_LSN> plsn,
  Pointer<Pointer> ppvContext,
  Pointer<OVERLAPPED> pOverlapped,
)>('ReadLogRestartArea');

int ReadNextLogRecord(
  Pointer pvReadContext,
  Pointer<Pointer> ppvBuffer,
  Pointer<Uint32> pcbBuffer,
  Pointer<Uint8> peRecordType,
  Pointer<CLS_LSN> plsnUser,
  Pointer<CLS_LSN> plsnUndoNext,
  Pointer<CLS_LSN> plsnPrevious,
  Pointer<CLS_LSN> plsnRecord,
  Pointer<OVERLAPPED> pOverlapped,
) =>
    _ReadNextLogRecord(
      pvReadContext,
      ppvBuffer,
      pcbBuffer,
      peRecordType,
      plsnUser,
      plsnUndoNext,
      plsnPrevious,
      plsnRecord,
      pOverlapped,
    );

late final _ReadNextLogRecord = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer pvReadContext,
  Pointer<Pointer> ppvBuffer,
  Pointer<Uint32> pcbBuffer,
  Pointer<Uint8> peRecordType,
  Pointer<CLS_LSN> plsnUser,
  Pointer<CLS_LSN> plsnUndoNext,
  Pointer<CLS_LSN> plsnPrevious,
  Pointer<CLS_LSN> plsnRecord,
  Pointer<OVERLAPPED> pOverlapped,
),
    int Function(
  Pointer pvReadContext,
  Pointer<Pointer> ppvBuffer,
  Pointer<Uint32> pcbBuffer,
  Pointer<Uint8> peRecordType,
  Pointer<CLS_LSN> plsnUser,
  Pointer<CLS_LSN> plsnUndoNext,
  Pointer<CLS_LSN> plsnPrevious,
  Pointer<CLS_LSN> plsnRecord,
  Pointer<OVERLAPPED> pOverlapped,
)>('ReadNextLogRecord');

int ReadPreviousLogRestartArea(
  Pointer pvReadContext,
  Pointer<Pointer> ppvRestartBuffer,
  Pointer<Uint32> pcbRestartBuffer,
  Pointer<CLS_LSN> plsnRestart,
  Pointer<OVERLAPPED> pOverlapped,
) =>
    _ReadPreviousLogRestartArea(
      pvReadContext,
      ppvRestartBuffer,
      pcbRestartBuffer,
      plsnRestart,
      pOverlapped,
    );

late final _ReadPreviousLogRestartArea = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer pvReadContext,
  Pointer<Pointer> ppvRestartBuffer,
  Pointer<Uint32> pcbRestartBuffer,
  Pointer<CLS_LSN> plsnRestart,
  Pointer<OVERLAPPED> pOverlapped,
),
    int Function(
  Pointer pvReadContext,
  Pointer<Pointer> ppvRestartBuffer,
  Pointer<Uint32> pcbRestartBuffer,
  Pointer<CLS_LSN> plsnRestart,
  Pointer<OVERLAPPED> pOverlapped,
)>('ReadPreviousLogRestartArea');

int RegisterForLogWriteNotification(
  int hLog,
  int cbThreshold,
  int fEnable,
) =>
    _RegisterForLogWriteNotification(
      hLog,
      cbThreshold,
      fEnable,
    );

late final _RegisterForLogWriteNotification = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Uint32 cbThreshold,
  Int32 fEnable,
),
    int Function(
  int hLog,
  int cbThreshold,
  int fEnable,
)>('RegisterForLogWriteNotification');

int RegisterManageableLogClient(
  int hLog,
  Pointer<LOG_MANAGEMENT_CALLBACKS> pCallbacks,
) =>
    _RegisterManageableLogClient(
      hLog,
      pCallbacks,
    );

late final _RegisterManageableLogClient = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Pointer<LOG_MANAGEMENT_CALLBACKS> pCallbacks,
),
    int Function(
  int hLog,
  Pointer<LOG_MANAGEMENT_CALLBACKS> pCallbacks,
)>('RegisterManageableLogClient');

int RemoveLogContainer(
  int hLog,
  Pointer<Utf16> pwszContainerPath,
  int fForce,
  Pointer pReserved,
) =>
    _RemoveLogContainer(
      hLog,
      pwszContainerPath,
      fForce,
      pReserved,
    );

late final _RemoveLogContainer = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Pointer<Utf16> pwszContainerPath,
  Int32 fForce,
  Pointer pReserved,
),
    int Function(
  int hLog,
  Pointer<Utf16> pwszContainerPath,
  int fForce,
  Pointer pReserved,
)>('RemoveLogContainer');

int RemoveLogContainerSet(
  int hLog,
  int cContainer,
  Pointer<Pointer<Utf16>> rgwszContainerPath,
  int fForce,
  Pointer pReserved,
) =>
    _RemoveLogContainerSet(
      hLog,
      cContainer,
      rgwszContainerPath,
      fForce,
      pReserved,
    );

late final _RemoveLogContainerSet = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Uint16 cContainer,
  Pointer<Pointer<Utf16>> rgwszContainerPath,
  Int32 fForce,
  Pointer pReserved,
),
    int Function(
  int hLog,
  int cContainer,
  Pointer<Pointer<Utf16>> rgwszContainerPath,
  int fForce,
  Pointer pReserved,
)>('RemoveLogContainerSet');

int RemoveLogPolicy(
  int hLog,
  int ePolicyType,
) =>
    _RemoveLogPolicy(
      hLog,
      ePolicyType,
    );

late final _RemoveLogPolicy = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Int32 ePolicyType,
),
    int Function(
  int hLog,
  int ePolicyType,
)>('RemoveLogPolicy');

int ReserveAndAppendLog(
  Pointer pvMarshal,
  Pointer<CLS_WRITE_ENTRY> rgWriteEntries,
  int cWriteEntries,
  Pointer<CLS_LSN> plsnUndoNext,
  Pointer<CLS_LSN> plsnPrevious,
  int cReserveRecords,
  Pointer<Int64> rgcbReservation,
  int fFlags,
  Pointer<CLS_LSN> plsn,
  Pointer<OVERLAPPED> pOverlapped,
) =>
    _ReserveAndAppendLog(
      pvMarshal,
      rgWriteEntries,
      cWriteEntries,
      plsnUndoNext,
      plsnPrevious,
      cReserveRecords,
      rgcbReservation,
      fFlags,
      plsn,
      pOverlapped,
    );

late final _ReserveAndAppendLog = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer pvMarshal,
  Pointer<CLS_WRITE_ENTRY> rgWriteEntries,
  Uint32 cWriteEntries,
  Pointer<CLS_LSN> plsnUndoNext,
  Pointer<CLS_LSN> plsnPrevious,
  Uint32 cReserveRecords,
  Pointer<Int64> rgcbReservation,
  Uint32 fFlags,
  Pointer<CLS_LSN> plsn,
  Pointer<OVERLAPPED> pOverlapped,
),
    int Function(
  Pointer pvMarshal,
  Pointer<CLS_WRITE_ENTRY> rgWriteEntries,
  int cWriteEntries,
  Pointer<CLS_LSN> plsnUndoNext,
  Pointer<CLS_LSN> plsnPrevious,
  int cReserveRecords,
  Pointer<Int64> rgcbReservation,
  int fFlags,
  Pointer<CLS_LSN> plsn,
  Pointer<OVERLAPPED> pOverlapped,
)>('ReserveAndAppendLog');

int ReserveAndAppendLogAligned(
  Pointer pvMarshal,
  Pointer<CLS_WRITE_ENTRY> rgWriteEntries,
  int cWriteEntries,
  int cbEntryAlignment,
  Pointer<CLS_LSN> plsnUndoNext,
  Pointer<CLS_LSN> plsnPrevious,
  int cReserveRecords,
  Pointer<Int64> rgcbReservation,
  int fFlags,
  Pointer<CLS_LSN> plsn,
  Pointer<OVERLAPPED> pOverlapped,
) =>
    _ReserveAndAppendLogAligned(
      pvMarshal,
      rgWriteEntries,
      cWriteEntries,
      cbEntryAlignment,
      plsnUndoNext,
      plsnPrevious,
      cReserveRecords,
      rgcbReservation,
      fFlags,
      plsn,
      pOverlapped,
    );

late final _ReserveAndAppendLogAligned = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer pvMarshal,
  Pointer<CLS_WRITE_ENTRY> rgWriteEntries,
  Uint32 cWriteEntries,
  Uint32 cbEntryAlignment,
  Pointer<CLS_LSN> plsnUndoNext,
  Pointer<CLS_LSN> plsnPrevious,
  Uint32 cReserveRecords,
  Pointer<Int64> rgcbReservation,
  Uint32 fFlags,
  Pointer<CLS_LSN> plsn,
  Pointer<OVERLAPPED> pOverlapped,
),
    int Function(
  Pointer pvMarshal,
  Pointer<CLS_WRITE_ENTRY> rgWriteEntries,
  int cWriteEntries,
  int cbEntryAlignment,
  Pointer<CLS_LSN> plsnUndoNext,
  Pointer<CLS_LSN> plsnPrevious,
  int cReserveRecords,
  Pointer<Int64> rgcbReservation,
  int fFlags,
  Pointer<CLS_LSN> plsn,
  Pointer<OVERLAPPED> pOverlapped,
)>('ReserveAndAppendLogAligned');

int ScanLogContainers(
  Pointer<CLS_SCAN_CONTEXT> pcxScan,
  int eScanMode,
  Pointer pReserved,
) =>
    _ScanLogContainers(
      pcxScan,
      eScanMode,
      pReserved,
    );

late final _ScanLogContainers = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer<CLS_SCAN_CONTEXT> pcxScan,
  Uint8 eScanMode,
  Pointer pReserved,
),
    int Function(
  Pointer<CLS_SCAN_CONTEXT> pcxScan,
  int eScanMode,
  Pointer pReserved,
)>('ScanLogContainers');

int SetEndOfLog(
  int hLog,
  Pointer<CLS_LSN> plsnEnd,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _SetEndOfLog(
      hLog,
      plsnEnd,
      lpOverlapped,
    );

late final _SetEndOfLog = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Pointer<CLS_LSN> plsnEnd,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hLog,
  Pointer<CLS_LSN> plsnEnd,
  Pointer<OVERLAPPED> lpOverlapped,
)>('SetEndOfLog');

int SetLogArchiveMode(
  int hLog,
  int eMode,
) =>
    _SetLogArchiveMode(
      hLog,
      eMode,
    );

late final _SetLogArchiveMode = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Int32 eMode,
),
    int Function(
  int hLog,
  int eMode,
)>('SetLogArchiveMode');

int SetLogArchiveTail(
  int hLog,
  Pointer<CLS_LSN> plsnArchiveTail,
  Pointer pReserved,
) =>
    _SetLogArchiveTail(
      hLog,
      plsnArchiveTail,
      pReserved,
    );

late final _SetLogArchiveTail = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Pointer<CLS_LSN> plsnArchiveTail,
  Pointer pReserved,
),
    int Function(
  int hLog,
  Pointer<CLS_LSN> plsnArchiveTail,
  Pointer pReserved,
)>('SetLogArchiveTail');

int SetLogFileSizeWithPolicy(
  int hLog,
  Pointer<Uint64> pDesiredSize,
  Pointer<Uint64> pResultingSize,
) =>
    _SetLogFileSizeWithPolicy(
      hLog,
      pDesiredSize,
      pResultingSize,
    );

late final _SetLogFileSizeWithPolicy = _clfsw32.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Pointer<Uint64> pDesiredSize,
  Pointer<Uint64> pResultingSize,
),
    int Function(
  int hLog,
  Pointer<Uint64> pDesiredSize,
  Pointer<Uint64> pResultingSize,
)>('SetLogFileSizeWithPolicy');

int TerminateLogArchive(
  Pointer pvArchiveContext,
) =>
    _TerminateLogArchive(
      pvArchiveContext,
    );

late final _TerminateLogArchive = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer pvArchiveContext,
),
    int Function(
  Pointer pvArchiveContext,
)>('TerminateLogArchive');

int TerminateReadLog(
  Pointer pvCursorContext,
) =>
    _TerminateReadLog(
      pvCursorContext,
    );

late final _TerminateReadLog = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer pvCursorContext,
),
    int Function(
  Pointer pvCursorContext,
)>('TerminateReadLog');

int TruncateLog(
  Pointer pvMarshal,
  Pointer<CLS_LSN> plsnEnd,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _TruncateLog(
      pvMarshal,
      plsnEnd,
      lpOverlapped,
    );

late final _TruncateLog = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer pvMarshal,
  Pointer<CLS_LSN> plsnEnd,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  Pointer pvMarshal,
  Pointer<CLS_LSN> plsnEnd,
  Pointer<OVERLAPPED> lpOverlapped,
)>('TruncateLog');

int ValidateLog(
  Pointer<Utf16> pszLogFileName,
  Pointer<SECURITY_ATTRIBUTES> psaLogFile,
  Pointer<CLS_INFORMATION> pinfoBuffer,
  Pointer<Uint32> pcbBuffer,
) =>
    _ValidateLog(
      pszLogFileName,
      psaLogFile,
      pinfoBuffer,
      pcbBuffer,
    );

late final _ValidateLog = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszLogFileName,
  Pointer<SECURITY_ATTRIBUTES> psaLogFile,
  Pointer<CLS_INFORMATION> pinfoBuffer,
  Pointer<Uint32> pcbBuffer,
),
    int Function(
  Pointer<Utf16> pszLogFileName,
  Pointer<SECURITY_ATTRIBUTES> psaLogFile,
  Pointer<CLS_INFORMATION> pinfoBuffer,
  Pointer<Uint32> pcbBuffer,
)>('ValidateLog');

int WriteLogRestartArea(
  Pointer pvMarshal,
  Pointer pvRestartBuffer,
  int cbRestartBuffer,
  Pointer<CLS_LSN> plsnBase,
  int fFlags,
  Pointer<Uint32> pcbWritten,
  Pointer<CLS_LSN> plsnNext,
  Pointer<OVERLAPPED> pOverlapped,
) =>
    _WriteLogRestartArea(
      pvMarshal,
      pvRestartBuffer,
      cbRestartBuffer,
      plsnBase,
      fFlags,
      pcbWritten,
      plsnNext,
      pOverlapped,
    );

late final _WriteLogRestartArea = _clfsw32.lookupFunction<
    Int32 Function(
  Pointer pvMarshal,
  Pointer pvRestartBuffer,
  Uint32 cbRestartBuffer,
  Pointer<CLS_LSN> plsnBase,
  Uint32 fFlags,
  Pointer<Uint32> pcbWritten,
  Pointer<CLS_LSN> plsnNext,
  Pointer<OVERLAPPED> pOverlapped,
),
    int Function(
  Pointer pvMarshal,
  Pointer pvRestartBuffer,
  int cbRestartBuffer,
  Pointer<CLS_LSN> plsnBase,
  int fFlags,
  Pointer<Uint32> pcbWritten,
  Pointer<CLS_LSN> plsnNext,
  Pointer<OVERLAPPED> pOverlapped,
)>('WriteLogRestartArea');

// -----------------------------------------------------------------------
// advapi32.dll
// -----------------------------------------------------------------------
final _advapi32 = DynamicLibrary.open('advapi32.dll');

int AddUsersToEncryptedFile(
  Pointer<Utf16> lpFileName,
  Pointer<ENCRYPTION_CERTIFICATE_LIST> pEncryptionCertificates,
) =>
    _AddUsersToEncryptedFile(
      lpFileName,
      pEncryptionCertificates,
    );

late final _AddUsersToEncryptedFile = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpFileName,
  Pointer<ENCRYPTION_CERTIFICATE_LIST> pEncryptionCertificates,
),
    int Function(
  Pointer<Utf16> lpFileName,
  Pointer<ENCRYPTION_CERTIFICATE_LIST> pEncryptionCertificates,
)>('AddUsersToEncryptedFile');

void CloseEncryptedFileRaw(
  Pointer pvContext,
) =>
    _CloseEncryptedFileRaw(
      pvContext,
    );

late final _CloseEncryptedFileRaw = _advapi32.lookupFunction<
    Void Function(
  Pointer pvContext,
),
    void Function(
  Pointer pvContext,
)>('CloseEncryptedFileRaw');

int DecryptFile(
  Pointer<Utf16> lpFileName,
  int dwReserved,
) =>
    _DecryptFile(
      lpFileName,
      dwReserved,
    );

late final _DecryptFile = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFileName,
  Uint32 dwReserved,
),
    int Function(
  Pointer<Utf16> lpFileName,
  int dwReserved,
)>('DecryptFileW');

int DuplicateEncryptionInfoFile(
  Pointer<Utf16> SrcFileName,
  Pointer<Utf16> DstFileName,
  int dwCreationDistribution,
  int dwAttributes,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
) =>
    _DuplicateEncryptionInfoFile(
      SrcFileName,
      DstFileName,
      dwCreationDistribution,
      dwAttributes,
      lpSecurityAttributes,
    );

late final _DuplicateEncryptionInfoFile = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> SrcFileName,
  Pointer<Utf16> DstFileName,
  Uint32 dwCreationDistribution,
  Uint32 dwAttributes,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
),
    int Function(
  Pointer<Utf16> SrcFileName,
  Pointer<Utf16> DstFileName,
  int dwCreationDistribution,
  int dwAttributes,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
)>('DuplicateEncryptionInfoFile');

int EncryptFile(
  Pointer<Utf16> lpFileName,
) =>
    _EncryptFile(
      lpFileName,
    );

late final _EncryptFile = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFileName,
),
    int Function(
  Pointer<Utf16> lpFileName,
)>('EncryptFileW');

int EncryptionDisable(
  Pointer<Utf16> DirPath,
  int Disable,
) =>
    _EncryptionDisable(
      DirPath,
      Disable,
    );

late final _EncryptionDisable = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> DirPath,
  Int32 Disable,
),
    int Function(
  Pointer<Utf16> DirPath,
  int Disable,
)>('EncryptionDisable');

int FileEncryptionStatus(
  Pointer<Utf16> lpFileName,
  Pointer<Uint32> lpStatus,
) =>
    _FileEncryptionStatus(
      lpFileName,
      lpStatus,
    );

late final _FileEncryptionStatus = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFileName,
  Pointer<Uint32> lpStatus,
),
    int Function(
  Pointer<Utf16> lpFileName,
  Pointer<Uint32> lpStatus,
)>('FileEncryptionStatusW');

void FreeEncryptedFileMetadata(
  Pointer<Uint8> pbMetadata,
) =>
    _FreeEncryptedFileMetadata(
      pbMetadata,
    );

late final _FreeEncryptedFileMetadata = _advapi32.lookupFunction<
    Void Function(
  Pointer<Uint8> pbMetadata,
),
    void Function(
  Pointer<Uint8> pbMetadata,
)>('FreeEncryptedFileMetadata');

void FreeEncryptionCertificateHashList(
  Pointer<ENCRYPTION_CERTIFICATE_HASH_LIST> pUsers,
) =>
    _FreeEncryptionCertificateHashList(
      pUsers,
    );

late final _FreeEncryptionCertificateHashList = _advapi32.lookupFunction<
    Void Function(
  Pointer<ENCRYPTION_CERTIFICATE_HASH_LIST> pUsers,
),
    void Function(
  Pointer<ENCRYPTION_CERTIFICATE_HASH_LIST> pUsers,
)>('FreeEncryptionCertificateHashList');

int GetEncryptedFileMetadata(
  Pointer<Utf16> lpFileName,
  Pointer<Uint32> pcbMetadata,
  Pointer<Pointer<Uint8>> ppbMetadata,
) =>
    _GetEncryptedFileMetadata(
      lpFileName,
      pcbMetadata,
      ppbMetadata,
    );

late final _GetEncryptedFileMetadata = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpFileName,
  Pointer<Uint32> pcbMetadata,
  Pointer<Pointer<Uint8>> ppbMetadata,
),
    int Function(
  Pointer<Utf16> lpFileName,
  Pointer<Uint32> pcbMetadata,
  Pointer<Pointer<Uint8>> ppbMetadata,
)>('GetEncryptedFileMetadata');

int OpenEncryptedFileRaw(
  Pointer<Utf16> lpFileName,
  int ulFlags,
  Pointer<Pointer> pvContext,
) =>
    _OpenEncryptedFileRaw(
      lpFileName,
      ulFlags,
      pvContext,
    );

late final _OpenEncryptedFileRaw = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpFileName,
  Uint32 ulFlags,
  Pointer<Pointer> pvContext,
),
    int Function(
  Pointer<Utf16> lpFileName,
  int ulFlags,
  Pointer<Pointer> pvContext,
)>('OpenEncryptedFileRawW');

int QueryRecoveryAgentsOnEncryptedFile(
  Pointer<Utf16> lpFileName,
  Pointer<Pointer<ENCRYPTION_CERTIFICATE_HASH_LIST>> pRecoveryAgents,
) =>
    _QueryRecoveryAgentsOnEncryptedFile(
      lpFileName,
      pRecoveryAgents,
    );

late final _QueryRecoveryAgentsOnEncryptedFile = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpFileName,
  Pointer<Pointer<ENCRYPTION_CERTIFICATE_HASH_LIST>> pRecoveryAgents,
),
    int Function(
  Pointer<Utf16> lpFileName,
  Pointer<Pointer<ENCRYPTION_CERTIFICATE_HASH_LIST>> pRecoveryAgents,
)>('QueryRecoveryAgentsOnEncryptedFile');

int QueryUsersOnEncryptedFile(
  Pointer<Utf16> lpFileName,
  Pointer<Pointer<ENCRYPTION_CERTIFICATE_HASH_LIST>> pUsers,
) =>
    _QueryUsersOnEncryptedFile(
      lpFileName,
      pUsers,
    );

late final _QueryUsersOnEncryptedFile = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpFileName,
  Pointer<Pointer<ENCRYPTION_CERTIFICATE_HASH_LIST>> pUsers,
),
    int Function(
  Pointer<Utf16> lpFileName,
  Pointer<Pointer<ENCRYPTION_CERTIFICATE_HASH_LIST>> pUsers,
)>('QueryUsersOnEncryptedFile');

int ReadEncryptedFileRaw(
  Pointer<NativeFunction<PFE_EXPORT_FUNC>> pfExportCallback,
  Pointer pvCallbackContext,
  Pointer pvContext,
) =>
    _ReadEncryptedFileRaw(
      pfExportCallback,
      pvCallbackContext,
      pvContext,
    );

late final _ReadEncryptedFileRaw = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<NativeFunction<PFE_EXPORT_FUNC>> pfExportCallback,
  Pointer pvCallbackContext,
  Pointer pvContext,
),
    int Function(
  Pointer<NativeFunction<PFE_EXPORT_FUNC>> pfExportCallback,
  Pointer pvCallbackContext,
  Pointer pvContext,
)>('ReadEncryptedFileRaw');

int RemoveUsersFromEncryptedFile(
  Pointer<Utf16> lpFileName,
  Pointer<ENCRYPTION_CERTIFICATE_HASH_LIST> pHashes,
) =>
    _RemoveUsersFromEncryptedFile(
      lpFileName,
      pHashes,
    );

late final _RemoveUsersFromEncryptedFile = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpFileName,
  Pointer<ENCRYPTION_CERTIFICATE_HASH_LIST> pHashes,
),
    int Function(
  Pointer<Utf16> lpFileName,
  Pointer<ENCRYPTION_CERTIFICATE_HASH_LIST> pHashes,
)>('RemoveUsersFromEncryptedFile');

int SetEncryptedFileMetadata(
  Pointer<Utf16> lpFileName,
  Pointer<Uint8> pbOldMetadata,
  Pointer<Uint8> pbNewMetadata,
  Pointer<ENCRYPTION_CERTIFICATE_HASH> pOwnerHash,
  int dwOperation,
  Pointer<ENCRYPTION_CERTIFICATE_HASH_LIST> pCertificatesAdded,
) =>
    _SetEncryptedFileMetadata(
      lpFileName,
      pbOldMetadata,
      pbNewMetadata,
      pOwnerHash,
      dwOperation,
      pCertificatesAdded,
    );

late final _SetEncryptedFileMetadata = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpFileName,
  Pointer<Uint8> pbOldMetadata,
  Pointer<Uint8> pbNewMetadata,
  Pointer<ENCRYPTION_CERTIFICATE_HASH> pOwnerHash,
  Uint32 dwOperation,
  Pointer<ENCRYPTION_CERTIFICATE_HASH_LIST> pCertificatesAdded,
),
    int Function(
  Pointer<Utf16> lpFileName,
  Pointer<Uint8> pbOldMetadata,
  Pointer<Uint8> pbNewMetadata,
  Pointer<ENCRYPTION_CERTIFICATE_HASH> pOwnerHash,
  int dwOperation,
  Pointer<ENCRYPTION_CERTIFICATE_HASH_LIST> pCertificatesAdded,
)>('SetEncryptedFileMetadata');

int SetUserFileEncryptionKey(
  Pointer<ENCRYPTION_CERTIFICATE> pEncryptionCertificate,
) =>
    _SetUserFileEncryptionKey(
      pEncryptionCertificate,
    );

late final _SetUserFileEncryptionKey = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<ENCRYPTION_CERTIFICATE> pEncryptionCertificate,
),
    int Function(
  Pointer<ENCRYPTION_CERTIFICATE> pEncryptionCertificate,
)>('SetUserFileEncryptionKey');

int SetUserFileEncryptionKeyEx(
  Pointer<ENCRYPTION_CERTIFICATE> pEncryptionCertificate,
  int dwCapabilities,
  int dwFlags,
  Pointer pvReserved,
) =>
    _SetUserFileEncryptionKeyEx(
      pEncryptionCertificate,
      dwCapabilities,
      dwFlags,
      pvReserved,
    );

late final _SetUserFileEncryptionKeyEx = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<ENCRYPTION_CERTIFICATE> pEncryptionCertificate,
  Uint32 dwCapabilities,
  Uint32 dwFlags,
  Pointer pvReserved,
),
    int Function(
  Pointer<ENCRYPTION_CERTIFICATE> pEncryptionCertificate,
  int dwCapabilities,
  int dwFlags,
  Pointer pvReserved,
)>('SetUserFileEncryptionKeyEx');

int WriteEncryptedFileRaw(
  Pointer<NativeFunction<PFE_IMPORT_FUNC>> pfImportCallback,
  Pointer pvCallbackContext,
  Pointer pvContext,
) =>
    _WriteEncryptedFileRaw(
      pfImportCallback,
      pvCallbackContext,
      pvContext,
    );

late final _WriteEncryptedFileRaw = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<NativeFunction<PFE_IMPORT_FUNC>> pfImportCallback,
  Pointer pvCallbackContext,
  Pointer pvContext,
),
    int Function(
  Pointer<NativeFunction<PFE_IMPORT_FUNC>> pfImportCallback,
  Pointer pvCallbackContext,
  Pointer pvContext,
)>('WriteEncryptedFileRaw');

// -----------------------------------------------------------------------
// wofutil.dll
// -----------------------------------------------------------------------
final _wofutil = DynamicLibrary.open('wofutil.dll');

int WofEnumEntries(
  Pointer<Utf16> VolumeName,
  int Provider,
  Pointer<NativeFunction<WofEnumEntryProc>> EnumProc,
  Pointer UserData,
) =>
    _WofEnumEntries(
      VolumeName,
      Provider,
      EnumProc,
      UserData,
    );

late final _WofEnumEntries = _wofutil.lookupFunction<
    Int32 Function(
  Pointer<Utf16> VolumeName,
  Uint32 Provider,
  Pointer<NativeFunction<WofEnumEntryProc>> EnumProc,
  Pointer UserData,
),
    int Function(
  Pointer<Utf16> VolumeName,
  int Provider,
  Pointer<NativeFunction<WofEnumEntryProc>> EnumProc,
  Pointer UserData,
)>('WofEnumEntries');

int WofFileEnumFiles(
  Pointer<Utf16> VolumeName,
  int Algorithm,
  Pointer<NativeFunction<WofEnumFilesProc>> EnumProc,
  Pointer UserData,
) =>
    _WofFileEnumFiles(
      VolumeName,
      Algorithm,
      EnumProc,
      UserData,
    );

late final _WofFileEnumFiles = _wofutil.lookupFunction<
    Int32 Function(
  Pointer<Utf16> VolumeName,
  Uint32 Algorithm,
  Pointer<NativeFunction<WofEnumFilesProc>> EnumProc,
  Pointer UserData,
),
    int Function(
  Pointer<Utf16> VolumeName,
  int Algorithm,
  Pointer<NativeFunction<WofEnumFilesProc>> EnumProc,
  Pointer UserData,
)>('WofFileEnumFiles');

int WofGetDriverVersion(
  int FileOrVolumeHandle,
  int Provider,
  Pointer<Uint32> WofVersion,
) =>
    _WofGetDriverVersion(
      FileOrVolumeHandle,
      Provider,
      WofVersion,
    );

late final _WofGetDriverVersion = _wofutil.lookupFunction<
    Int32 Function(
  IntPtr FileOrVolumeHandle,
  Uint32 Provider,
  Pointer<Uint32> WofVersion,
),
    int Function(
  int FileOrVolumeHandle,
  int Provider,
  Pointer<Uint32> WofVersion,
)>('WofGetDriverVersion');

int WofIsExternalFile(
  Pointer<Utf16> FilePath,
  Pointer<Int32> IsExternalFile,
  Pointer<Uint32> Provider,
  Pointer ExternalFileInfo,
  Pointer<Uint32> BufferLength,
) =>
    _WofIsExternalFile(
      FilePath,
      IsExternalFile,
      Provider,
      ExternalFileInfo,
      BufferLength,
    );

late final _WofIsExternalFile = _wofutil.lookupFunction<
    Int32 Function(
  Pointer<Utf16> FilePath,
  Pointer<Int32> IsExternalFile,
  Pointer<Uint32> Provider,
  Pointer ExternalFileInfo,
  Pointer<Uint32> BufferLength,
),
    int Function(
  Pointer<Utf16> FilePath,
  Pointer<Int32> IsExternalFile,
  Pointer<Uint32> Provider,
  Pointer ExternalFileInfo,
  Pointer<Uint32> BufferLength,
)>('WofIsExternalFile');

int WofSetFileDataLocation(
  int FileHandle,
  int Provider,
  Pointer ExternalFileInfo,
  int Length,
) =>
    _WofSetFileDataLocation(
      FileHandle,
      Provider,
      ExternalFileInfo,
      Length,
    );

late final _WofSetFileDataLocation = _wofutil.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Uint32 Provider,
  Pointer ExternalFileInfo,
  Uint32 Length,
),
    int Function(
  int FileHandle,
  int Provider,
  Pointer ExternalFileInfo,
  int Length,
)>('WofSetFileDataLocation');

int WofShouldCompressBinaries(
  Pointer<Utf16> Volume,
  Pointer<Uint32> Algorithm,
) =>
    _WofShouldCompressBinaries(
      Volume,
      Algorithm,
    );

late final _WofShouldCompressBinaries = _wofutil.lookupFunction<
    Int32 Function(
  Pointer<Utf16> Volume,
  Pointer<Uint32> Algorithm,
),
    int Function(
  Pointer<Utf16> Volume,
  Pointer<Uint32> Algorithm,
)>('WofShouldCompressBinaries');

int WofWimAddEntry(
  Pointer<Utf16> VolumeName,
  Pointer<Utf16> WimPath,
  int WimType,
  int WimIndex,
  Pointer<Int64> DataSourceId,
) =>
    _WofWimAddEntry(
      VolumeName,
      WimPath,
      WimType,
      WimIndex,
      DataSourceId,
    );

late final _WofWimAddEntry = _wofutil.lookupFunction<
    Int32 Function(
  Pointer<Utf16> VolumeName,
  Pointer<Utf16> WimPath,
  Uint32 WimType,
  Uint32 WimIndex,
  Pointer<Int64> DataSourceId,
),
    int Function(
  Pointer<Utf16> VolumeName,
  Pointer<Utf16> WimPath,
  int WimType,
  int WimIndex,
  Pointer<Int64> DataSourceId,
)>('WofWimAddEntry');

int WofWimEnumFiles(
  Pointer<Utf16> VolumeName,
  int DataSourceId,
  Pointer<NativeFunction<WofEnumFilesProc>> EnumProc,
  Pointer UserData,
) =>
    _WofWimEnumFiles(
      VolumeName,
      DataSourceId,
      EnumProc,
      UserData,
    );

late final _WofWimEnumFiles = _wofutil.lookupFunction<
    Int32 Function(
  Pointer<Utf16> VolumeName,
  Int64 DataSourceId,
  Pointer<NativeFunction<WofEnumFilesProc>> EnumProc,
  Pointer UserData,
),
    int Function(
  Pointer<Utf16> VolumeName,
  int DataSourceId,
  Pointer<NativeFunction<WofEnumFilesProc>> EnumProc,
  Pointer UserData,
)>('WofWimEnumFiles');

int WofWimRemoveEntry(
  Pointer<Utf16> VolumeName,
  int DataSourceId,
) =>
    _WofWimRemoveEntry(
      VolumeName,
      DataSourceId,
    );

late final _WofWimRemoveEntry = _wofutil.lookupFunction<
    Int32 Function(
  Pointer<Utf16> VolumeName,
  Int64 DataSourceId,
),
    int Function(
  Pointer<Utf16> VolumeName,
  int DataSourceId,
)>('WofWimRemoveEntry');

int WofWimSuspendEntry(
  Pointer<Utf16> VolumeName,
  int DataSourceId,
) =>
    _WofWimSuspendEntry(
      VolumeName,
      DataSourceId,
    );

late final _WofWimSuspendEntry = _wofutil.lookupFunction<
    Int32 Function(
  Pointer<Utf16> VolumeName,
  Int64 DataSourceId,
),
    int Function(
  Pointer<Utf16> VolumeName,
  int DataSourceId,
)>('WofWimSuspendEntry');

int WofWimUpdateEntry(
  Pointer<Utf16> VolumeName,
  int DataSourceId,
  Pointer<Utf16> NewWimPath,
) =>
    _WofWimUpdateEntry(
      VolumeName,
      DataSourceId,
      NewWimPath,
    );

late final _WofWimUpdateEntry = _wofutil.lookupFunction<
    Int32 Function(
  Pointer<Utf16> VolumeName,
  Int64 DataSourceId,
  Pointer<Utf16> NewWimPath,
),
    int Function(
  Pointer<Utf16> VolumeName,
  int DataSourceId,
  Pointer<Utf16> NewWimPath,
)>('WofWimUpdateEntry');

// -----------------------------------------------------------------------
// txfw32.dll
// -----------------------------------------------------------------------
final _txfw32 = DynamicLibrary.open('txfw32.dll');

void TxfGetThreadMiniVersionForCreate(
  Pointer<Uint16> MiniVersion,
) =>
    _TxfGetThreadMiniVersionForCreate(
      MiniVersion,
    );

late final _TxfGetThreadMiniVersionForCreate = _txfw32.lookupFunction<
    Void Function(
  Pointer<Uint16> MiniVersion,
),
    void Function(
  Pointer<Uint16> MiniVersion,
)>('TxfGetThreadMiniVersionForCreate');

int TxfLogCreateFileReadContext(
  Pointer<Utf16> LogPath,
  CLS_LSN BeginningLsn,
  CLS_LSN EndingLsn,
  Pointer<TXF_ID> TxfFileId,
  Pointer<Pointer> TxfLogContext,
) =>
    _TxfLogCreateFileReadContext(
      LogPath,
      BeginningLsn,
      EndingLsn,
      TxfFileId,
      TxfLogContext,
    );

late final _TxfLogCreateFileReadContext = _txfw32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> LogPath,
  CLS_LSN BeginningLsn,
  CLS_LSN EndingLsn,
  Pointer<TXF_ID> TxfFileId,
  Pointer<Pointer> TxfLogContext,
),
    int Function(
  Pointer<Utf16> LogPath,
  CLS_LSN BeginningLsn,
  CLS_LSN EndingLsn,
  Pointer<TXF_ID> TxfFileId,
  Pointer<Pointer> TxfLogContext,
)>('TxfLogCreateFileReadContext');

int TxfLogCreateRangeReadContext(
  Pointer<Utf16> LogPath,
  CLS_LSN BeginningLsn,
  CLS_LSN EndingLsn,
  Pointer<Int64> BeginningVirtualClock,
  Pointer<Int64> EndingVirtualClock,
  int RecordTypeMask,
  Pointer<Pointer> TxfLogContext,
) =>
    _TxfLogCreateRangeReadContext(
      LogPath,
      BeginningLsn,
      EndingLsn,
      BeginningVirtualClock,
      EndingVirtualClock,
      RecordTypeMask,
      TxfLogContext,
    );

late final _TxfLogCreateRangeReadContext = _txfw32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> LogPath,
  CLS_LSN BeginningLsn,
  CLS_LSN EndingLsn,
  Pointer<Int64> BeginningVirtualClock,
  Pointer<Int64> EndingVirtualClock,
  Uint32 RecordTypeMask,
  Pointer<Pointer> TxfLogContext,
),
    int Function(
  Pointer<Utf16> LogPath,
  CLS_LSN BeginningLsn,
  CLS_LSN EndingLsn,
  Pointer<Int64> BeginningVirtualClock,
  Pointer<Int64> EndingVirtualClock,
  int RecordTypeMask,
  Pointer<Pointer> TxfLogContext,
)>('TxfLogCreateRangeReadContext');

int TxfLogDestroyReadContext(
  Pointer TxfLogContext,
) =>
    _TxfLogDestroyReadContext(
      TxfLogContext,
    );

late final _TxfLogDestroyReadContext = _txfw32.lookupFunction<
    Int32 Function(
  Pointer TxfLogContext,
),
    int Function(
  Pointer TxfLogContext,
)>('TxfLogDestroyReadContext');

int TxfLogReadRecords(
  Pointer TxfLogContext,
  int BufferLength,
  Pointer Buffer,
  Pointer<Uint32> BytesUsed,
  Pointer<Uint32> RecordCount,
) =>
    _TxfLogReadRecords(
      TxfLogContext,
      BufferLength,
      Buffer,
      BytesUsed,
      RecordCount,
    );

late final _TxfLogReadRecords = _txfw32.lookupFunction<
    Int32 Function(
  Pointer TxfLogContext,
  Uint32 BufferLength,
  Pointer Buffer,
  Pointer<Uint32> BytesUsed,
  Pointer<Uint32> RecordCount,
),
    int Function(
  Pointer TxfLogContext,
  int BufferLength,
  Pointer Buffer,
  Pointer<Uint32> BytesUsed,
  Pointer<Uint32> RecordCount,
)>('TxfLogReadRecords');

int TxfLogRecordGetFileName(
  Pointer RecordBuffer,
  int RecordBufferLengthInBytes,
  Pointer<Utf16> NameBuffer,
  Pointer<Uint32> NameBufferLengthInBytes,
  Pointer<TXF_ID> TxfId,
) =>
    _TxfLogRecordGetFileName(
      RecordBuffer,
      RecordBufferLengthInBytes,
      NameBuffer,
      NameBufferLengthInBytes,
      TxfId,
    );

late final _TxfLogRecordGetFileName = _txfw32.lookupFunction<
    Int32 Function(
  Pointer RecordBuffer,
  Uint32 RecordBufferLengthInBytes,
  Pointer<Utf16> NameBuffer,
  Pointer<Uint32> NameBufferLengthInBytes,
  Pointer<TXF_ID> TxfId,
),
    int Function(
  Pointer RecordBuffer,
  int RecordBufferLengthInBytes,
  Pointer<Utf16> NameBuffer,
  Pointer<Uint32> NameBufferLengthInBytes,
  Pointer<TXF_ID> TxfId,
)>('TxfLogRecordGetFileName');

int TxfLogRecordGetGenericType(
  Pointer RecordBuffer,
  int RecordBufferLengthInBytes,
  Pointer<Uint32> GenericType,
  Pointer<Int64> VirtualClock,
) =>
    _TxfLogRecordGetGenericType(
      RecordBuffer,
      RecordBufferLengthInBytes,
      GenericType,
      VirtualClock,
    );

late final _TxfLogRecordGetGenericType = _txfw32.lookupFunction<
    Int32 Function(
  Pointer RecordBuffer,
  Uint32 RecordBufferLengthInBytes,
  Pointer<Uint32> GenericType,
  Pointer<Int64> VirtualClock,
),
    int Function(
  Pointer RecordBuffer,
  int RecordBufferLengthInBytes,
  Pointer<Uint32> GenericType,
  Pointer<Int64> VirtualClock,
)>('TxfLogRecordGetGenericType');

int TxfReadMetadataInfo(
  int FileHandle,
  Pointer<TXF_ID> TxfFileId,
  Pointer<CLS_LSN> LastLsn,
  Pointer<Uint32> TransactionState,
  Pointer<GUID> LockingTransaction,
) =>
    _TxfReadMetadataInfo(
      FileHandle,
      TxfFileId,
      LastLsn,
      TransactionState,
      LockingTransaction,
    );

late final _TxfReadMetadataInfo = _txfw32.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Pointer<TXF_ID> TxfFileId,
  Pointer<CLS_LSN> LastLsn,
  Pointer<Uint32> TransactionState,
  Pointer<GUID> LockingTransaction,
),
    int Function(
  int FileHandle,
  Pointer<TXF_ID> TxfFileId,
  Pointer<CLS_LSN> LastLsn,
  Pointer<Uint32> TransactionState,
  Pointer<GUID> LockingTransaction,
)>('TxfReadMetadataInfo');

void TxfSetThreadMiniVersionForCreate(
  int MiniVersion,
) =>
    _TxfSetThreadMiniVersionForCreate(
      MiniVersion,
    );

late final _TxfSetThreadMiniVersionForCreate = _txfw32.lookupFunction<
    Void Function(
  Uint16 MiniVersion,
),
    void Function(
  int MiniVersion,
)>('TxfSetThreadMiniVersionForCreate');

// -----------------------------------------------------------------------
// ktmw32.dll
// -----------------------------------------------------------------------
final _ktmw32 = DynamicLibrary.open('ktmw32.dll');

int CommitComplete(
  int EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
) =>
    _CommitComplete(
      EnlistmentHandle,
      TmVirtualClock,
    );

late final _CommitComplete = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
),
    int Function(
  int EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
)>('CommitComplete');

int CommitEnlistment(
  int EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
) =>
    _CommitEnlistment(
      EnlistmentHandle,
      TmVirtualClock,
    );

late final _CommitEnlistment = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
),
    int Function(
  int EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
)>('CommitEnlistment');

int CommitTransaction(
  int TransactionHandle,
) =>
    _CommitTransaction(
      TransactionHandle,
    );

late final _CommitTransaction = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr TransactionHandle,
),
    int Function(
  int TransactionHandle,
)>('CommitTransaction');

int CommitTransactionAsync(
  int TransactionHandle,
) =>
    _CommitTransactionAsync(
      TransactionHandle,
    );

late final _CommitTransactionAsync = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr TransactionHandle,
),
    int Function(
  int TransactionHandle,
)>('CommitTransactionAsync');

int CreateEnlistment(
  Pointer<SECURITY_ATTRIBUTES> lpEnlistmentAttributes,
  int ResourceManagerHandle,
  int TransactionHandle,
  int NotificationMask,
  int CreateOptions,
  Pointer EnlistmentKey,
) =>
    _CreateEnlistment(
      lpEnlistmentAttributes,
      ResourceManagerHandle,
      TransactionHandle,
      NotificationMask,
      CreateOptions,
      EnlistmentKey,
    );

late final _CreateEnlistment = _ktmw32.lookupFunction<
    IntPtr Function(
  Pointer<SECURITY_ATTRIBUTES> lpEnlistmentAttributes,
  IntPtr ResourceManagerHandle,
  IntPtr TransactionHandle,
  Uint32 NotificationMask,
  Uint32 CreateOptions,
  Pointer EnlistmentKey,
),
    int Function(
  Pointer<SECURITY_ATTRIBUTES> lpEnlistmentAttributes,
  int ResourceManagerHandle,
  int TransactionHandle,
  int NotificationMask,
  int CreateOptions,
  Pointer EnlistmentKey,
)>('CreateEnlistment');

int CreateResourceManager(
  Pointer<SECURITY_ATTRIBUTES> lpResourceManagerAttributes,
  Pointer<GUID> ResourceManagerId,
  int CreateOptions,
  int TmHandle,
  Pointer<Utf16> Description,
) =>
    _CreateResourceManager(
      lpResourceManagerAttributes,
      ResourceManagerId,
      CreateOptions,
      TmHandle,
      Description,
    );

late final _CreateResourceManager = _ktmw32.lookupFunction<
    IntPtr Function(
  Pointer<SECURITY_ATTRIBUTES> lpResourceManagerAttributes,
  Pointer<GUID> ResourceManagerId,
  Uint32 CreateOptions,
  IntPtr TmHandle,
  Pointer<Utf16> Description,
),
    int Function(
  Pointer<SECURITY_ATTRIBUTES> lpResourceManagerAttributes,
  Pointer<GUID> ResourceManagerId,
  int CreateOptions,
  int TmHandle,
  Pointer<Utf16> Description,
)>('CreateResourceManager');

int CreateTransaction(
  Pointer<SECURITY_ATTRIBUTES> lpTransactionAttributes,
  Pointer<GUID> UOW,
  int CreateOptions,
  int IsolationLevel,
  int IsolationFlags,
  int Timeout,
  Pointer<Utf16> Description,
) =>
    _CreateTransaction(
      lpTransactionAttributes,
      UOW,
      CreateOptions,
      IsolationLevel,
      IsolationFlags,
      Timeout,
      Description,
    );

late final _CreateTransaction = _ktmw32.lookupFunction<
    IntPtr Function(
  Pointer<SECURITY_ATTRIBUTES> lpTransactionAttributes,
  Pointer<GUID> UOW,
  Uint32 CreateOptions,
  Uint32 IsolationLevel,
  Uint32 IsolationFlags,
  Uint32 Timeout,
  Pointer<Utf16> Description,
),
    int Function(
  Pointer<SECURITY_ATTRIBUTES> lpTransactionAttributes,
  Pointer<GUID> UOW,
  int CreateOptions,
  int IsolationLevel,
  int IsolationFlags,
  int Timeout,
  Pointer<Utf16> Description,
)>('CreateTransaction');

int CreateTransactionManager(
  Pointer<SECURITY_ATTRIBUTES> lpTransactionAttributes,
  Pointer<Utf16> LogFileName,
  int CreateOptions,
  int CommitStrength,
) =>
    _CreateTransactionManager(
      lpTransactionAttributes,
      LogFileName,
      CreateOptions,
      CommitStrength,
    );

late final _CreateTransactionManager = _ktmw32.lookupFunction<
    IntPtr Function(
  Pointer<SECURITY_ATTRIBUTES> lpTransactionAttributes,
  Pointer<Utf16> LogFileName,
  Uint32 CreateOptions,
  Uint32 CommitStrength,
),
    int Function(
  Pointer<SECURITY_ATTRIBUTES> lpTransactionAttributes,
  Pointer<Utf16> LogFileName,
  int CreateOptions,
  int CommitStrength,
)>('CreateTransactionManager');

int GetCurrentClockTransactionManager(
  int TransactionManagerHandle,
  Pointer<Int64> TmVirtualClock,
) =>
    _GetCurrentClockTransactionManager(
      TransactionManagerHandle,
      TmVirtualClock,
    );

late final _GetCurrentClockTransactionManager = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr TransactionManagerHandle,
  Pointer<Int64> TmVirtualClock,
),
    int Function(
  int TransactionManagerHandle,
  Pointer<Int64> TmVirtualClock,
)>('GetCurrentClockTransactionManager');

int GetEnlistmentId(
  int EnlistmentHandle,
  Pointer<GUID> EnlistmentId,
) =>
    _GetEnlistmentId(
      EnlistmentHandle,
      EnlistmentId,
    );

late final _GetEnlistmentId = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr EnlistmentHandle,
  Pointer<GUID> EnlistmentId,
),
    int Function(
  int EnlistmentHandle,
  Pointer<GUID> EnlistmentId,
)>('GetEnlistmentId');

int GetEnlistmentRecoveryInformation(
  int EnlistmentHandle,
  int BufferSize,
  Pointer Buffer,
  Pointer<Uint32> BufferUsed,
) =>
    _GetEnlistmentRecoveryInformation(
      EnlistmentHandle,
      BufferSize,
      Buffer,
      BufferUsed,
    );

late final _GetEnlistmentRecoveryInformation = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr EnlistmentHandle,
  Uint32 BufferSize,
  Pointer Buffer,
  Pointer<Uint32> BufferUsed,
),
    int Function(
  int EnlistmentHandle,
  int BufferSize,
  Pointer Buffer,
  Pointer<Uint32> BufferUsed,
)>('GetEnlistmentRecoveryInformation');

int GetNotificationResourceManager(
  int ResourceManagerHandle,
  Pointer<TRANSACTION_NOTIFICATION> TransactionNotification,
  int NotificationLength,
  int dwMilliseconds,
  Pointer<Uint32> ReturnLength,
) =>
    _GetNotificationResourceManager(
      ResourceManagerHandle,
      TransactionNotification,
      NotificationLength,
      dwMilliseconds,
      ReturnLength,
    );

late final _GetNotificationResourceManager = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr ResourceManagerHandle,
  Pointer<TRANSACTION_NOTIFICATION> TransactionNotification,
  Uint32 NotificationLength,
  Uint32 dwMilliseconds,
  Pointer<Uint32> ReturnLength,
),
    int Function(
  int ResourceManagerHandle,
  Pointer<TRANSACTION_NOTIFICATION> TransactionNotification,
  int NotificationLength,
  int dwMilliseconds,
  Pointer<Uint32> ReturnLength,
)>('GetNotificationResourceManager');

int GetNotificationResourceManagerAsync(
  int ResourceManagerHandle,
  Pointer<TRANSACTION_NOTIFICATION> TransactionNotification,
  int TransactionNotificationLength,
  Pointer<Uint32> ReturnLength,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _GetNotificationResourceManagerAsync(
      ResourceManagerHandle,
      TransactionNotification,
      TransactionNotificationLength,
      ReturnLength,
      lpOverlapped,
    );

late final _GetNotificationResourceManagerAsync = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr ResourceManagerHandle,
  Pointer<TRANSACTION_NOTIFICATION> TransactionNotification,
  Uint32 TransactionNotificationLength,
  Pointer<Uint32> ReturnLength,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int ResourceManagerHandle,
  Pointer<TRANSACTION_NOTIFICATION> TransactionNotification,
  int TransactionNotificationLength,
  Pointer<Uint32> ReturnLength,
  Pointer<OVERLAPPED> lpOverlapped,
)>('GetNotificationResourceManagerAsync');

int GetTransactionId(
  int TransactionHandle,
  Pointer<GUID> TransactionId,
) =>
    _GetTransactionId(
      TransactionHandle,
      TransactionId,
    );

late final _GetTransactionId = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr TransactionHandle,
  Pointer<GUID> TransactionId,
),
    int Function(
  int TransactionHandle,
  Pointer<GUID> TransactionId,
)>('GetTransactionId');

int GetTransactionInformation(
  int TransactionHandle,
  Pointer<Uint32> Outcome,
  Pointer<Uint32> IsolationLevel,
  Pointer<Uint32> IsolationFlags,
  Pointer<Uint32> Timeout,
  int BufferLength,
  Pointer<Utf16> Description,
) =>
    _GetTransactionInformation(
      TransactionHandle,
      Outcome,
      IsolationLevel,
      IsolationFlags,
      Timeout,
      BufferLength,
      Description,
    );

late final _GetTransactionInformation = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr TransactionHandle,
  Pointer<Uint32> Outcome,
  Pointer<Uint32> IsolationLevel,
  Pointer<Uint32> IsolationFlags,
  Pointer<Uint32> Timeout,
  Uint32 BufferLength,
  Pointer<Utf16> Description,
),
    int Function(
  int TransactionHandle,
  Pointer<Uint32> Outcome,
  Pointer<Uint32> IsolationLevel,
  Pointer<Uint32> IsolationFlags,
  Pointer<Uint32> Timeout,
  int BufferLength,
  Pointer<Utf16> Description,
)>('GetTransactionInformation');

int GetTransactionManagerId(
  int TransactionManagerHandle,
  Pointer<GUID> TransactionManagerId,
) =>
    _GetTransactionManagerId(
      TransactionManagerHandle,
      TransactionManagerId,
    );

late final _GetTransactionManagerId = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr TransactionManagerHandle,
  Pointer<GUID> TransactionManagerId,
),
    int Function(
  int TransactionManagerHandle,
  Pointer<GUID> TransactionManagerId,
)>('GetTransactionManagerId');

int OpenEnlistment(
  int dwDesiredAccess,
  int ResourceManagerHandle,
  Pointer<GUID> EnlistmentId,
) =>
    _OpenEnlistment(
      dwDesiredAccess,
      ResourceManagerHandle,
      EnlistmentId,
    );

late final _OpenEnlistment = _ktmw32.lookupFunction<
    IntPtr Function(
  Uint32 dwDesiredAccess,
  IntPtr ResourceManagerHandle,
  Pointer<GUID> EnlistmentId,
),
    int Function(
  int dwDesiredAccess,
  int ResourceManagerHandle,
  Pointer<GUID> EnlistmentId,
)>('OpenEnlistment');

int OpenResourceManager(
  int dwDesiredAccess,
  int TmHandle,
  Pointer<GUID> ResourceManagerId,
) =>
    _OpenResourceManager(
      dwDesiredAccess,
      TmHandle,
      ResourceManagerId,
    );

late final _OpenResourceManager = _ktmw32.lookupFunction<
    IntPtr Function(
  Uint32 dwDesiredAccess,
  IntPtr TmHandle,
  Pointer<GUID> ResourceManagerId,
),
    int Function(
  int dwDesiredAccess,
  int TmHandle,
  Pointer<GUID> ResourceManagerId,
)>('OpenResourceManager');

int OpenTransaction(
  int dwDesiredAccess,
  Pointer<GUID> TransactionId,
) =>
    _OpenTransaction(
      dwDesiredAccess,
      TransactionId,
    );

late final _OpenTransaction = _ktmw32.lookupFunction<
    IntPtr Function(
  Uint32 dwDesiredAccess,
  Pointer<GUID> TransactionId,
),
    int Function(
  int dwDesiredAccess,
  Pointer<GUID> TransactionId,
)>('OpenTransaction');

int OpenTransactionManager(
  Pointer<Utf16> LogFileName,
  int DesiredAccess,
  int OpenOptions,
) =>
    _OpenTransactionManager(
      LogFileName,
      DesiredAccess,
      OpenOptions,
    );

late final _OpenTransactionManager = _ktmw32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> LogFileName,
  Uint32 DesiredAccess,
  Uint32 OpenOptions,
),
    int Function(
  Pointer<Utf16> LogFileName,
  int DesiredAccess,
  int OpenOptions,
)>('OpenTransactionManager');

int OpenTransactionManagerById(
  Pointer<GUID> TransactionManagerId,
  int DesiredAccess,
  int OpenOptions,
) =>
    _OpenTransactionManagerById(
      TransactionManagerId,
      DesiredAccess,
      OpenOptions,
    );

late final _OpenTransactionManagerById = _ktmw32.lookupFunction<
    IntPtr Function(
  Pointer<GUID> TransactionManagerId,
  Uint32 DesiredAccess,
  Uint32 OpenOptions,
),
    int Function(
  Pointer<GUID> TransactionManagerId,
  int DesiredAccess,
  int OpenOptions,
)>('OpenTransactionManagerById');

int PrePrepareComplete(
  int EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
) =>
    _PrePrepareComplete(
      EnlistmentHandle,
      TmVirtualClock,
    );

late final _PrePrepareComplete = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
),
    int Function(
  int EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
)>('PrePrepareComplete');

int PrePrepareEnlistment(
  int EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
) =>
    _PrePrepareEnlistment(
      EnlistmentHandle,
      TmVirtualClock,
    );

late final _PrePrepareEnlistment = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
),
    int Function(
  int EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
)>('PrePrepareEnlistment');

int PrepareComplete(
  int EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
) =>
    _PrepareComplete(
      EnlistmentHandle,
      TmVirtualClock,
    );

late final _PrepareComplete = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
),
    int Function(
  int EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
)>('PrepareComplete');

int PrepareEnlistment(
  int EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
) =>
    _PrepareEnlistment(
      EnlistmentHandle,
      TmVirtualClock,
    );

late final _PrepareEnlistment = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
),
    int Function(
  int EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
)>('PrepareEnlistment');

int ReadOnlyEnlistment(
  int EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
) =>
    _ReadOnlyEnlistment(
      EnlistmentHandle,
      TmVirtualClock,
    );

late final _ReadOnlyEnlistment = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
),
    int Function(
  int EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
)>('ReadOnlyEnlistment');

int RecoverEnlistment(
  int EnlistmentHandle,
  Pointer EnlistmentKey,
) =>
    _RecoverEnlistment(
      EnlistmentHandle,
      EnlistmentKey,
    );

late final _RecoverEnlistment = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr EnlistmentHandle,
  Pointer EnlistmentKey,
),
    int Function(
  int EnlistmentHandle,
  Pointer EnlistmentKey,
)>('RecoverEnlistment');

int RecoverResourceManager(
  int ResourceManagerHandle,
) =>
    _RecoverResourceManager(
      ResourceManagerHandle,
    );

late final _RecoverResourceManager = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr ResourceManagerHandle,
),
    int Function(
  int ResourceManagerHandle,
)>('RecoverResourceManager');

int RecoverTransactionManager(
  int TransactionManagerHandle,
) =>
    _RecoverTransactionManager(
      TransactionManagerHandle,
    );

late final _RecoverTransactionManager = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr TransactionManagerHandle,
),
    int Function(
  int TransactionManagerHandle,
)>('RecoverTransactionManager');

int RenameTransactionManager(
  Pointer<Utf16> LogFileName,
  Pointer<GUID> ExistingTransactionManagerGuid,
) =>
    _RenameTransactionManager(
      LogFileName,
      ExistingTransactionManagerGuid,
    );

late final _RenameTransactionManager = _ktmw32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> LogFileName,
  Pointer<GUID> ExistingTransactionManagerGuid,
),
    int Function(
  Pointer<Utf16> LogFileName,
  Pointer<GUID> ExistingTransactionManagerGuid,
)>('RenameTransactionManager');

int RollbackComplete(
  int EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
) =>
    _RollbackComplete(
      EnlistmentHandle,
      TmVirtualClock,
    );

late final _RollbackComplete = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
),
    int Function(
  int EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
)>('RollbackComplete');

int RollbackEnlistment(
  int EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
) =>
    _RollbackEnlistment(
      EnlistmentHandle,
      TmVirtualClock,
    );

late final _RollbackEnlistment = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
),
    int Function(
  int EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
)>('RollbackEnlistment');

int RollbackTransaction(
  int TransactionHandle,
) =>
    _RollbackTransaction(
      TransactionHandle,
    );

late final _RollbackTransaction = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr TransactionHandle,
),
    int Function(
  int TransactionHandle,
)>('RollbackTransaction');

int RollbackTransactionAsync(
  int TransactionHandle,
) =>
    _RollbackTransactionAsync(
      TransactionHandle,
    );

late final _RollbackTransactionAsync = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr TransactionHandle,
),
    int Function(
  int TransactionHandle,
)>('RollbackTransactionAsync');

int RollforwardTransactionManager(
  int TransactionManagerHandle,
  Pointer<Int64> TmVirtualClock,
) =>
    _RollforwardTransactionManager(
      TransactionManagerHandle,
      TmVirtualClock,
    );

late final _RollforwardTransactionManager = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr TransactionManagerHandle,
  Pointer<Int64> TmVirtualClock,
),
    int Function(
  int TransactionManagerHandle,
  Pointer<Int64> TmVirtualClock,
)>('RollforwardTransactionManager');

int SetEnlistmentRecoveryInformation(
  int EnlistmentHandle,
  int BufferSize,
  Pointer Buffer,
) =>
    _SetEnlistmentRecoveryInformation(
      EnlistmentHandle,
      BufferSize,
      Buffer,
    );

late final _SetEnlistmentRecoveryInformation = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr EnlistmentHandle,
  Uint32 BufferSize,
  Pointer Buffer,
),
    int Function(
  int EnlistmentHandle,
  int BufferSize,
  Pointer Buffer,
)>('SetEnlistmentRecoveryInformation');

int SetResourceManagerCompletionPort(
  int ResourceManagerHandle,
  int IoCompletionPortHandle,
  int CompletionKey,
) =>
    _SetResourceManagerCompletionPort(
      ResourceManagerHandle,
      IoCompletionPortHandle,
      CompletionKey,
    );

late final _SetResourceManagerCompletionPort = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr ResourceManagerHandle,
  IntPtr IoCompletionPortHandle,
  IntPtr CompletionKey,
),
    int Function(
  int ResourceManagerHandle,
  int IoCompletionPortHandle,
  int CompletionKey,
)>('SetResourceManagerCompletionPort');

int SetTransactionInformation(
  int TransactionHandle,
  int IsolationLevel,
  int IsolationFlags,
  int Timeout,
  Pointer<Utf16> Description,
) =>
    _SetTransactionInformation(
      TransactionHandle,
      IsolationLevel,
      IsolationFlags,
      Timeout,
      Description,
    );

late final _SetTransactionInformation = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr TransactionHandle,
  Uint32 IsolationLevel,
  Uint32 IsolationFlags,
  Uint32 Timeout,
  Pointer<Utf16> Description,
),
    int Function(
  int TransactionHandle,
  int IsolationLevel,
  int IsolationFlags,
  int Timeout,
  Pointer<Utf16> Description,
)>('SetTransactionInformation');

int SinglePhaseReject(
  int EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
) =>
    _SinglePhaseReject(
      EnlistmentHandle,
      TmVirtualClock,
    );

late final _SinglePhaseReject = _ktmw32.lookupFunction<
    Int32 Function(
  IntPtr EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
),
    int Function(
  int EnlistmentHandle,
  Pointer<Int64> TmVirtualClock,
)>('SinglePhaseReject');

// -----------------------------------------------------------------------
// netapi32.dll
// -----------------------------------------------------------------------
final _netapi32 = DynamicLibrary.open('netapi32.dll');

int NetConnectionEnum(
  Pointer<Utf16> servername,
  Pointer<Utf16> qualifier,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
) =>
    _NetConnectionEnum(
      servername,
      qualifier,
      level,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
      resume_handle,
    );

late final _NetConnectionEnum = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> qualifier,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> qualifier,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
)>('NetConnectionEnum');

int NetFileClose(
  Pointer<Utf16> servername,
  int fileid,
) =>
    _NetFileClose(
      servername,
      fileid,
    );

late final _NetFileClose = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 fileid,
),
    int Function(
  Pointer<Utf16> servername,
  int fileid,
)>('NetFileClose');

int NetFileEnum(
  Pointer<Utf16> servername,
  Pointer<Utf16> basepath,
  Pointer<Utf16> username,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<IntPtr> resume_handle,
) =>
    _NetFileEnum(
      servername,
      basepath,
      username,
      level,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
      resume_handle,
    );

late final _NetFileEnum = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> basepath,
  Pointer<Utf16> username,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<IntPtr> resume_handle,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> basepath,
  Pointer<Utf16> username,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<IntPtr> resume_handle,
)>('NetFileEnum');

int NetFileGetInfo(
  Pointer<Utf16> servername,
  int fileid,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
) =>
    _NetFileGetInfo(
      servername,
      fileid,
      level,
      bufptr,
    );

late final _NetFileGetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 fileid,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
),
    int Function(
  Pointer<Utf16> servername,
  int fileid,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
)>('NetFileGetInfo');

int NetServerAliasAdd(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
) =>
    _NetServerAliasAdd(
      servername,
      level,
      buf,
    );

late final _NetServerAliasAdd = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Uint8> buf,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
)>('NetServerAliasAdd');

int NetServerAliasDel(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
) =>
    _NetServerAliasDel(
      servername,
      level,
      buf,
    );

late final _NetServerAliasDel = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Uint8> buf,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
)>('NetServerAliasDel');

int NetServerAliasEnum(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resumehandle,
) =>
    _NetServerAliasEnum(
      servername,
      level,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
      resumehandle,
    );

late final _NetServerAliasEnum = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resumehandle,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resumehandle,
)>('NetServerAliasEnum');

int NetSessionDel(
  Pointer<Utf16> servername,
  Pointer<Utf16> UncClientName,
  Pointer<Utf16> username,
) =>
    _NetSessionDel(
      servername,
      UncClientName,
      username,
    );

late final _NetSessionDel = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> UncClientName,
  Pointer<Utf16> username,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> UncClientName,
  Pointer<Utf16> username,
)>('NetSessionDel');

int NetSessionEnum(
  Pointer<Utf16> servername,
  Pointer<Utf16> UncClientName,
  Pointer<Utf16> username,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
) =>
    _NetSessionEnum(
      servername,
      UncClientName,
      username,
      level,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
      resume_handle,
    );

late final _NetSessionEnum = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> UncClientName,
  Pointer<Utf16> username,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> UncClientName,
  Pointer<Utf16> username,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
)>('NetSessionEnum');

int NetSessionGetInfo(
  Pointer<Utf16> servername,
  Pointer<Utf16> UncClientName,
  Pointer<Utf16> username,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
) =>
    _NetSessionGetInfo(
      servername,
      UncClientName,
      username,
      level,
      bufptr,
    );

late final _NetSessionGetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> UncClientName,
  Pointer<Utf16> username,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> UncClientName,
  Pointer<Utf16> username,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
)>('NetSessionGetInfo');

int NetShareAdd(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
) =>
    _NetShareAdd(
      servername,
      level,
      buf,
      parm_err,
    );

late final _NetShareAdd = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
)>('NetShareAdd');

int NetShareCheck(
  Pointer<Utf16> servername,
  Pointer<Utf16> device,
  Pointer<Uint32> type,
) =>
    _NetShareCheck(
      servername,
      device,
      type,
    );

late final _NetShareCheck = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> device,
  Pointer<Uint32> type,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> device,
  Pointer<Uint32> type,
)>('NetShareCheck');

int NetShareDel(
  Pointer<Utf16> servername,
  Pointer<Utf16> netname,
  int reserved,
) =>
    _NetShareDel(
      servername,
      netname,
      reserved,
    );

late final _NetShareDel = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> netname,
  Uint32 reserved,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> netname,
  int reserved,
)>('NetShareDel');

int NetShareDelEx(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
) =>
    _NetShareDelEx(
      servername,
      level,
      buf,
    );

late final _NetShareDelEx = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Uint8> buf,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Uint8> buf,
)>('NetShareDelEx');

int NetShareDelSticky(
  Pointer<Utf16> servername,
  Pointer<Utf16> netname,
  int reserved,
) =>
    _NetShareDelSticky(
      servername,
      netname,
      reserved,
    );

late final _NetShareDelSticky = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> netname,
  Uint32 reserved,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> netname,
  int reserved,
)>('NetShareDelSticky');

int NetShareEnum(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
) =>
    _NetShareEnum(
      servername,
      level,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
      resume_handle,
    );

late final _NetShareEnum = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
)>('NetShareEnum');

int NetShareEnumSticky(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
) =>
    _NetShareEnumSticky(
      servername,
      level,
      bufptr,
      prefmaxlen,
      entriesread,
      totalentries,
      resume_handle,
    );

late final _NetShareEnumSticky = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
  Uint32 prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
),
    int Function(
  Pointer<Utf16> servername,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
  int prefmaxlen,
  Pointer<Uint32> entriesread,
  Pointer<Uint32> totalentries,
  Pointer<Uint32> resume_handle,
)>('NetShareEnumSticky');

int NetShareGetInfo(
  Pointer<Utf16> servername,
  Pointer<Utf16> netname,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
) =>
    _NetShareGetInfo(
      servername,
      netname,
      level,
      bufptr,
    );

late final _NetShareGetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> netname,
  Uint32 level,
  Pointer<Pointer<Uint8>> bufptr,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> netname,
  int level,
  Pointer<Pointer<Uint8>> bufptr,
)>('NetShareGetInfo');

int NetShareSetInfo(
  Pointer<Utf16> servername,
  Pointer<Utf16> netname,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
) =>
    _NetShareSetInfo(
      servername,
      netname,
      level,
      buf,
      parm_err,
    );

late final _NetShareSetInfo = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> netname,
  Uint32 level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
),
    int Function(
  Pointer<Utf16> servername,
  Pointer<Utf16> netname,
  int level,
  Pointer<Uint8> buf,
  Pointer<Uint32> parm_err,
)>('NetShareSetInfo');

int NetStatisticsGet(
  Pointer<Int8> ServerName,
  Pointer<Int8> Service,
  int Level,
  int Options,
  Pointer<Pointer<Uint8>> Buffer,
) =>
    _NetStatisticsGet(
      ServerName,
      Service,
      Level,
      Options,
      Buffer,
    );

late final _NetStatisticsGet = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Int8> ServerName,
  Pointer<Int8> Service,
  Uint32 Level,
  Uint32 Options,
  Pointer<Pointer<Uint8>> Buffer,
),
    int Function(
  Pointer<Int8> ServerName,
  Pointer<Int8> Service,
  int Level,
  int Options,
  Pointer<Pointer<Uint8>> Buffer,
)>('NetStatisticsGet');

// -----------------------------------------------------------------------
// api-ms-win-core-ioring-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_ioring_l1_1_0 =
    DynamicLibrary.open('api-ms-win-core-ioring-l1-1-0.dll');

int BuildIoRingCancelRequest(
  Pointer<HIORING__> ioRing,
  IORING_HANDLE_REF file,
  int opToCancel,
  int userData,
) =>
    _BuildIoRingCancelRequest(
      ioRing,
      file,
      opToCancel,
      userData,
    );

late final _BuildIoRingCancelRequest =
    _api_ms_win_core_ioring_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<HIORING__> ioRing,
  IORING_HANDLE_REF file,
  IntPtr opToCancel,
  IntPtr userData,
),
        int Function(
  Pointer<HIORING__> ioRing,
  IORING_HANDLE_REF file,
  int opToCancel,
  int userData,
)>('BuildIoRingCancelRequest');

int BuildIoRingReadFile(
  Pointer<HIORING__> ioRing,
  IORING_HANDLE_REF fileRef,
  IORING_BUFFER_REF dataRef,
  int numberOfBytesToRead,
  int fileOffset,
  int userData,
  int flags,
) =>
    _BuildIoRingReadFile(
      ioRing,
      fileRef,
      dataRef,
      numberOfBytesToRead,
      fileOffset,
      userData,
      flags,
    );

late final _BuildIoRingReadFile = _api_ms_win_core_ioring_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<HIORING__> ioRing,
  IORING_HANDLE_REF fileRef,
  IORING_BUFFER_REF dataRef,
  Uint32 numberOfBytesToRead,
  Uint64 fileOffset,
  IntPtr userData,
  Int32 flags,
),
    int Function(
  Pointer<HIORING__> ioRing,
  IORING_HANDLE_REF fileRef,
  IORING_BUFFER_REF dataRef,
  int numberOfBytesToRead,
  int fileOffset,
  int userData,
  int flags,
)>('BuildIoRingReadFile');

int BuildIoRingRegisterBuffers(
  Pointer<HIORING__> ioRing,
  int count,
  Pointer<IORING_BUFFER_INFO> buffers,
  int userData,
) =>
    _BuildIoRingRegisterBuffers(
      ioRing,
      count,
      buffers,
      userData,
    );

late final _BuildIoRingRegisterBuffers =
    _api_ms_win_core_ioring_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<HIORING__> ioRing,
  Uint32 count,
  Pointer<IORING_BUFFER_INFO> buffers,
  IntPtr userData,
),
        int Function(
  Pointer<HIORING__> ioRing,
  int count,
  Pointer<IORING_BUFFER_INFO> buffers,
  int userData,
)>('BuildIoRingRegisterBuffers');

int BuildIoRingRegisterFileHandles(
  Pointer<HIORING__> ioRing,
  int count,
  Pointer<IntPtr> handles,
  int userData,
) =>
    _BuildIoRingRegisterFileHandles(
      ioRing,
      count,
      handles,
      userData,
    );

late final _BuildIoRingRegisterFileHandles =
    _api_ms_win_core_ioring_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<HIORING__> ioRing,
  Uint32 count,
  Pointer<IntPtr> handles,
  IntPtr userData,
),
        int Function(
  Pointer<HIORING__> ioRing,
  int count,
  Pointer<IntPtr> handles,
  int userData,
)>('BuildIoRingRegisterFileHandles');

int CloseIoRing(
  Pointer<HIORING__> ioRing,
) =>
    _CloseIoRing(
      ioRing,
    );

late final _CloseIoRing = _api_ms_win_core_ioring_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<HIORING__> ioRing,
),
    int Function(
  Pointer<HIORING__> ioRing,
)>('CloseIoRing');

int CreateIoRing(
  int ioringVersion,
  IORING_CREATE_FLAGS flags,
  int submissionQueueSize,
  int completionQueueSize,
  Pointer<Pointer<HIORING__>> h,
) =>
    _CreateIoRing(
      ioringVersion,
      flags,
      submissionQueueSize,
      completionQueueSize,
      h,
    );

late final _CreateIoRing = _api_ms_win_core_ioring_l1_1_0.lookupFunction<
    Int32 Function(
  Int32 ioringVersion,
  IORING_CREATE_FLAGS flags,
  Uint32 submissionQueueSize,
  Uint32 completionQueueSize,
  Pointer<Pointer<HIORING__>> h,
),
    int Function(
  int ioringVersion,
  IORING_CREATE_FLAGS flags,
  int submissionQueueSize,
  int completionQueueSize,
  Pointer<Pointer<HIORING__>> h,
)>('CreateIoRing');

int GetIoRingInfo(
  Pointer<HIORING__> ioRing,
  Pointer<IORING_INFO> info,
) =>
    _GetIoRingInfo(
      ioRing,
      info,
    );

late final _GetIoRingInfo = _api_ms_win_core_ioring_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<HIORING__> ioRing,
  Pointer<IORING_INFO> info,
),
    int Function(
  Pointer<HIORING__> ioRing,
  Pointer<IORING_INFO> info,
)>('GetIoRingInfo');

int IsIoRingOpSupported(
  Pointer<HIORING__> ioRing,
  int op,
) =>
    _IsIoRingOpSupported(
      ioRing,
      op,
    );

late final _IsIoRingOpSupported = _api_ms_win_core_ioring_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<HIORING__> ioRing,
  Int32 op,
),
    int Function(
  Pointer<HIORING__> ioRing,
  int op,
)>('IsIoRingOpSupported');

int PopIoRingCompletion(
  Pointer<HIORING__> ioRing,
  Pointer<IORING_CQE> cqe,
) =>
    _PopIoRingCompletion(
      ioRing,
      cqe,
    );

late final _PopIoRingCompletion = _api_ms_win_core_ioring_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<HIORING__> ioRing,
  Pointer<IORING_CQE> cqe,
),
    int Function(
  Pointer<HIORING__> ioRing,
  Pointer<IORING_CQE> cqe,
)>('PopIoRingCompletion');

int QueryIoRingCapabilities(
  Pointer<IORING_CAPABILITIES> capabilities,
) =>
    _QueryIoRingCapabilities(
      capabilities,
    );

late final _QueryIoRingCapabilities =
    _api_ms_win_core_ioring_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<IORING_CAPABILITIES> capabilities,
),
        int Function(
  Pointer<IORING_CAPABILITIES> capabilities,
)>('QueryIoRingCapabilities');

int SetIoRingCompletionEvent(
  Pointer<HIORING__> ioRing,
  int hEvent,
) =>
    _SetIoRingCompletionEvent(
      ioRing,
      hEvent,
    );

late final _SetIoRingCompletionEvent =
    _api_ms_win_core_ioring_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<HIORING__> ioRing,
  IntPtr hEvent,
),
        int Function(
  Pointer<HIORING__> ioRing,
  int hEvent,
)>('SetIoRingCompletionEvent');

int SubmitIoRing(
  Pointer<HIORING__> ioRing,
  int waitOperations,
  int milliseconds,
  Pointer<Uint32> submittedEntries,
) =>
    _SubmitIoRing(
      ioRing,
      waitOperations,
      milliseconds,
      submittedEntries,
    );

late final _SubmitIoRing = _api_ms_win_core_ioring_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<HIORING__> ioRing,
  Uint32 waitOperations,
  Uint32 milliseconds,
  Pointer<Uint32> submittedEntries,
),
    int Function(
  Pointer<HIORING__> ioRing,
  int waitOperations,
  int milliseconds,
  Pointer<Uint32> submittedEntries,
)>('SubmitIoRing');

// -----------------------------------------------------------------------
// ntdll.dll
// -----------------------------------------------------------------------
final _ntdll = DynamicLibrary.open('ntdll.dll');

int NtCreateFile(
  Pointer<IntPtr> FileHandle,
  int DesiredAccess,
  Pointer<OBJECT_ATTRIBUTES> ObjectAttributes,
  Pointer<IO_STATUS_BLOCK> IoStatusBlock,
  Pointer<Int64> AllocationSize,
  int FileAttributes,
  int ShareAccess,
  int CreateDisposition,
  int CreateOptions,
  Pointer EaBuffer,
  int EaLength,
) =>
    _NtCreateFile(
      FileHandle,
      DesiredAccess,
      ObjectAttributes,
      IoStatusBlock,
      AllocationSize,
      FileAttributes,
      ShareAccess,
      CreateDisposition,
      CreateOptions,
      EaBuffer,
      EaLength,
    );

late final _NtCreateFile = _ntdll.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> FileHandle,
  Uint32 DesiredAccess,
  Pointer<OBJECT_ATTRIBUTES> ObjectAttributes,
  Pointer<IO_STATUS_BLOCK> IoStatusBlock,
  Pointer<Int64> AllocationSize,
  Uint32 FileAttributes,
  Uint32 ShareAccess,
  Uint32 CreateDisposition,
  Uint32 CreateOptions,
  Pointer EaBuffer,
  Uint32 EaLength,
),
    int Function(
  Pointer<IntPtr> FileHandle,
  int DesiredAccess,
  Pointer<OBJECT_ATTRIBUTES> ObjectAttributes,
  Pointer<IO_STATUS_BLOCK> IoStatusBlock,
  Pointer<Int64> AllocationSize,
  int FileAttributes,
  int ShareAccess,
  int CreateDisposition,
  int CreateOptions,
  Pointer EaBuffer,
  int EaLength,
)>('NtCreateFile');
