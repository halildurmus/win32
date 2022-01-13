// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../system/diagnostics/toolhelp/structs.g.dart';
import '../../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int CreateToolhelp32Snapshot(
  int dwFlags,
  int th32ProcessID,
) =>
    _CreateToolhelp32Snapshot(
      dwFlags,
      th32ProcessID,
    );

late final _CreateToolhelp32Snapshot = _kernel32.lookupFunction<
    IntPtr Function(
  Uint32 dwFlags,
  Uint32 th32ProcessID,
),
    int Function(
  int dwFlags,
  int th32ProcessID,
)>('CreateToolhelp32Snapshot');

int Heap32First(
  Pointer<HEAPENTRY32> lphe,
  int th32ProcessID,
  int th32HeapID,
) =>
    _Heap32First(
      lphe,
      th32ProcessID,
      th32HeapID,
    );

late final _Heap32First = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<HEAPENTRY32> lphe,
  Uint32 th32ProcessID,
  IntPtr th32HeapID,
),
    int Function(
  Pointer<HEAPENTRY32> lphe,
  int th32ProcessID,
  int th32HeapID,
)>('Heap32First');

int Heap32ListFirst(
  int hSnapshot,
  Pointer<HEAPLIST32> lphl,
) =>
    _Heap32ListFirst(
      hSnapshot,
      lphl,
    );

late final _Heap32ListFirst = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hSnapshot,
  Pointer<HEAPLIST32> lphl,
),
    int Function(
  int hSnapshot,
  Pointer<HEAPLIST32> lphl,
)>('Heap32ListFirst');

int Heap32ListNext(
  int hSnapshot,
  Pointer<HEAPLIST32> lphl,
) =>
    _Heap32ListNext(
      hSnapshot,
      lphl,
    );

late final _Heap32ListNext = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hSnapshot,
  Pointer<HEAPLIST32> lphl,
),
    int Function(
  int hSnapshot,
  Pointer<HEAPLIST32> lphl,
)>('Heap32ListNext');

int Heap32Next(
  Pointer<HEAPENTRY32> lphe,
) =>
    _Heap32Next(
      lphe,
    );

late final _Heap32Next = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<HEAPENTRY32> lphe,
),
    int Function(
  Pointer<HEAPENTRY32> lphe,
)>('Heap32Next');

int Module32First(
  int hSnapshot,
  Pointer<MODULEENTRY32> lpme,
) =>
    _Module32First(
      hSnapshot,
      lpme,
    );

late final _Module32First = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hSnapshot,
  Pointer<MODULEENTRY32> lpme,
),
    int Function(
  int hSnapshot,
  Pointer<MODULEENTRY32> lpme,
)>('Module32FirstW');

int Module32Next(
  int hSnapshot,
  Pointer<MODULEENTRY32> lpme,
) =>
    _Module32Next(
      hSnapshot,
      lpme,
    );

late final _Module32Next = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hSnapshot,
  Pointer<MODULEENTRY32> lpme,
),
    int Function(
  int hSnapshot,
  Pointer<MODULEENTRY32> lpme,
)>('Module32NextW');

int Process32First(
  int hSnapshot,
  Pointer<PROCESSENTRY32> lppe,
) =>
    _Process32First(
      hSnapshot,
      lppe,
    );

late final _Process32First = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hSnapshot,
  Pointer<PROCESSENTRY32> lppe,
),
    int Function(
  int hSnapshot,
  Pointer<PROCESSENTRY32> lppe,
)>('Process32FirstW');

int Process32Next(
  int hSnapshot,
  Pointer<PROCESSENTRY32> lppe,
) =>
    _Process32Next(
      hSnapshot,
      lppe,
    );

late final _Process32Next = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hSnapshot,
  Pointer<PROCESSENTRY32> lppe,
),
    int Function(
  int hSnapshot,
  Pointer<PROCESSENTRY32> lppe,
)>('Process32NextW');

int Thread32First(
  int hSnapshot,
  Pointer<THREADENTRY32> lpte,
) =>
    _Thread32First(
      hSnapshot,
      lpte,
    );

late final _Thread32First = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hSnapshot,
  Pointer<THREADENTRY32> lpte,
),
    int Function(
  int hSnapshot,
  Pointer<THREADENTRY32> lpte,
)>('Thread32First');

int Thread32Next(
  int hSnapshot,
  Pointer<THREADENTRY32> lpte,
) =>
    _Thread32Next(
      hSnapshot,
      lpte,
    );

late final _Thread32Next = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hSnapshot,
  Pointer<THREADENTRY32> lpte,
),
    int Function(
  int hSnapshot,
  Pointer<THREADENTRY32> lpte,
)>('Thread32Next');

int Toolhelp32ReadProcessMemory(
  int th32ProcessID,
  Pointer lpBaseAddress,
  Pointer lpBuffer,
  int cbRead,
  Pointer<IntPtr> lpNumberOfBytesRead,
) =>
    _Toolhelp32ReadProcessMemory(
      th32ProcessID,
      lpBaseAddress,
      lpBuffer,
      cbRead,
      lpNumberOfBytesRead,
    );

late final _Toolhelp32ReadProcessMemory = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 th32ProcessID,
  Pointer lpBaseAddress,
  Pointer lpBuffer,
  IntPtr cbRead,
  Pointer<IntPtr> lpNumberOfBytesRead,
),
    int Function(
  int th32ProcessID,
  Pointer lpBaseAddress,
  Pointer lpBuffer,
  int cbRead,
  Pointer<IntPtr> lpNumberOfBytesRead,
)>('Toolhelp32ReadProcessMemory');
