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
import '../../security/structs.g.dart';
import '../../system/jobobjects/structs.g.dart'; // -----------------------------------------------------------------------

// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int AssignProcessToJobObject(
  int hJob,
  int hProcess,
) =>
    _AssignProcessToJobObject(
      hJob,
      hProcess,
    );

late final _AssignProcessToJobObject = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hJob,
  IntPtr hProcess,
),
    int Function(
  int hJob,
  int hProcess,
)>('AssignProcessToJobObject');

int CreateJobObject(
  Pointer<SECURITY_ATTRIBUTES> lpJobAttributes,
  Pointer<Utf16> lpName,
) =>
    _CreateJobObject(
      lpJobAttributes,
      lpName,
    );

late final _CreateJobObject = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<SECURITY_ATTRIBUTES> lpJobAttributes,
  Pointer<Utf16> lpName,
),
    int Function(
  Pointer<SECURITY_ATTRIBUTES> lpJobAttributes,
  Pointer<Utf16> lpName,
)>('CreateJobObjectW');

int CreateJobSet(
  int NumJob,
  Pointer<JOB_SET_ARRAY> UserJobSet,
  int Flags,
) =>
    _CreateJobSet(
      NumJob,
      UserJobSet,
      Flags,
    );

late final _CreateJobSet = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 NumJob,
  Pointer<JOB_SET_ARRAY> UserJobSet,
  Uint32 Flags,
),
    int Function(
  int NumJob,
  Pointer<JOB_SET_ARRAY> UserJobSet,
  int Flags,
)>('CreateJobSet');

void FreeMemoryJobObject(
  Pointer Buffer,
) =>
    _FreeMemoryJobObject(
      Buffer,
    );

late final _FreeMemoryJobObject = _kernel32.lookupFunction<
    Void Function(
  Pointer Buffer,
),
    void Function(
  Pointer Buffer,
)>('FreeMemoryJobObject');

int IsProcessInJob(
  int ProcessHandle,
  int JobHandle,
  Pointer<Int32> Result,
) =>
    _IsProcessInJob(
      ProcessHandle,
      JobHandle,
      Result,
    );

late final _IsProcessInJob = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr ProcessHandle,
  IntPtr JobHandle,
  Pointer<Int32> Result,
),
    int Function(
  int ProcessHandle,
  int JobHandle,
  Pointer<Int32> Result,
)>('IsProcessInJob');

int OpenJobObject(
  int dwDesiredAccess,
  int bInheritHandle,
  Pointer<Utf16> lpName,
) =>
    _OpenJobObject(
      dwDesiredAccess,
      bInheritHandle,
      lpName,
    );

late final _OpenJobObject = _kernel32.lookupFunction<
    IntPtr Function(
  Uint32 dwDesiredAccess,
  Int32 bInheritHandle,
  Pointer<Utf16> lpName,
),
    int Function(
  int dwDesiredAccess,
  int bInheritHandle,
  Pointer<Utf16> lpName,
)>('OpenJobObjectW');

int QueryInformationJobObject(
  int hJob,
  int JobObjectInformationClass,
  Pointer lpJobObjectInformation,
  int cbJobObjectInformationLength,
  Pointer<Uint32> lpReturnLength,
) =>
    _QueryInformationJobObject(
      hJob,
      JobObjectInformationClass,
      lpJobObjectInformation,
      cbJobObjectInformationLength,
      lpReturnLength,
    );

late final _QueryInformationJobObject = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hJob,
  Int32 JobObjectInformationClass,
  Pointer lpJobObjectInformation,
  Uint32 cbJobObjectInformationLength,
  Pointer<Uint32> lpReturnLength,
),
    int Function(
  int hJob,
  int JobObjectInformationClass,
  Pointer lpJobObjectInformation,
  int cbJobObjectInformationLength,
  Pointer<Uint32> lpReturnLength,
)>('QueryInformationJobObject');

int QueryIoRateControlInformationJobObject(
  int hJob,
  Pointer<Utf16> VolumeName,
  Pointer<Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>> InfoBlocks,
  Pointer<Uint32> InfoBlockCount,
) =>
    _QueryIoRateControlInformationJobObject(
      hJob,
      VolumeName,
      InfoBlocks,
      InfoBlockCount,
    );

late final _QueryIoRateControlInformationJobObject = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hJob,
  Pointer<Utf16> VolumeName,
  Pointer<Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>> InfoBlocks,
  Pointer<Uint32> InfoBlockCount,
),
    int Function(
  int hJob,
  Pointer<Utf16> VolumeName,
  Pointer<Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>> InfoBlocks,
  Pointer<Uint32> InfoBlockCount,
)>('QueryIoRateControlInformationJobObject');

int SetInformationJobObject(
  int hJob,
  int JobObjectInformationClass,
  Pointer lpJobObjectInformation,
  int cbJobObjectInformationLength,
) =>
    _SetInformationJobObject(
      hJob,
      JobObjectInformationClass,
      lpJobObjectInformation,
      cbJobObjectInformationLength,
    );

late final _SetInformationJobObject = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hJob,
  Int32 JobObjectInformationClass,
  Pointer lpJobObjectInformation,
  Uint32 cbJobObjectInformationLength,
),
    int Function(
  int hJob,
  int JobObjectInformationClass,
  Pointer lpJobObjectInformation,
  int cbJobObjectInformationLength,
)>('SetInformationJobObject');

int SetIoRateControlInformationJobObject(
  int hJob,
  Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION> IoRateControlInfo,
) =>
    _SetIoRateControlInformationJobObject(
      hJob,
      IoRateControlInfo,
    );

late final _SetIoRateControlInformationJobObject = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hJob,
  Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION> IoRateControlInfo,
),
    int Function(
  int hJob,
  Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION> IoRateControlInfo,
)>('SetIoRateControlInformationJobObject');

int TerminateJobObject(
  int hJob,
  int uExitCode,
) =>
    _TerminateJobObject(
      hJob,
      uExitCode,
    );

late final _TerminateJobObject = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hJob,
  Uint32 uExitCode,
),
    int Function(
  int hJob,
  int uExitCode,
)>('TerminateJobObject');

// -----------------------------------------------------------------------
// user32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('user32.dll');

int UserHandleGrantAccess(
  int hUserHandle,
  int hJob,
  int bGrant,
) =>
    _UserHandleGrantAccess(
      hUserHandle,
      hJob,
      bGrant,
    );

late final _UserHandleGrantAccess = _user32.lookupFunction<
    Int32 Function(
  IntPtr hUserHandle,
  IntPtr hJob,
  Int32 bGrant,
),
    int Function(
  int hUserHandle,
  int hJob,
  int bGrant,
)>('UserHandleGrantAccess');
