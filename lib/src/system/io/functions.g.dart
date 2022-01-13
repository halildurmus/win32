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
import '../../system/io/callbacks.g.dart';
import '../../specialTypes.dart';
import '../../system/io/structs.g.dart'; // -----------------------------------------------------------------------

// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int BindIoCompletionCallback(
  int FileHandle,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> Function,
  int Flags,
) =>
    _BindIoCompletionCallback(
      FileHandle,
      Function,
      Flags,
    );

late final _BindIoCompletionCallback = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> Function,
  Uint32 Flags,
),
    int Function(
  int FileHandle,
  Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>> Function,
  int Flags,
)>('BindIoCompletionCallback');

int CancelIo(
  int hFile,
) =>
    _CancelIo(
      hFile,
    );

late final _CancelIo = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
),
    int Function(
  int hFile,
)>('CancelIo');

int CancelIoEx(
  int hFile,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _CancelIoEx(
      hFile,
      lpOverlapped,
    );

late final _CancelIoEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hFile,
  Pointer<OVERLAPPED> lpOverlapped,
)>('CancelIoEx');

int CancelSynchronousIo(
  int hThread,
) =>
    _CancelSynchronousIo(
      hThread,
    );

late final _CancelSynchronousIo = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
),
    int Function(
  int hThread,
)>('CancelSynchronousIo');

int CreateIoCompletionPort(
  int FileHandle,
  int ExistingCompletionPort,
  int CompletionKey,
  int NumberOfConcurrentThreads,
) =>
    _CreateIoCompletionPort(
      FileHandle,
      ExistingCompletionPort,
      CompletionKey,
      NumberOfConcurrentThreads,
    );

late final _CreateIoCompletionPort = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr FileHandle,
  IntPtr ExistingCompletionPort,
  IntPtr CompletionKey,
  Uint32 NumberOfConcurrentThreads,
),
    int Function(
  int FileHandle,
  int ExistingCompletionPort,
  int CompletionKey,
  int NumberOfConcurrentThreads,
)>('CreateIoCompletionPort');

int DeviceIoControl(
  int hDevice,
  int dwIoControlCode,
  Pointer lpInBuffer,
  int nInBufferSize,
  Pointer lpOutBuffer,
  int nOutBufferSize,
  Pointer<Uint32> lpBytesReturned,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _DeviceIoControl(
      hDevice,
      dwIoControlCode,
      lpInBuffer,
      nInBufferSize,
      lpOutBuffer,
      nOutBufferSize,
      lpBytesReturned,
      lpOverlapped,
    );

late final _DeviceIoControl = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hDevice,
  Uint32 dwIoControlCode,
  Pointer lpInBuffer,
  Uint32 nInBufferSize,
  Pointer lpOutBuffer,
  Uint32 nOutBufferSize,
  Pointer<Uint32> lpBytesReturned,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hDevice,
  int dwIoControlCode,
  Pointer lpInBuffer,
  int nInBufferSize,
  Pointer lpOutBuffer,
  int nOutBufferSize,
  Pointer<Uint32> lpBytesReturned,
  Pointer<OVERLAPPED> lpOverlapped,
)>('DeviceIoControl');

int GetOverlappedResult(
  int hFile,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  int bWait,
) =>
    _GetOverlappedResult(
      hFile,
      lpOverlapped,
      lpNumberOfBytesTransferred,
      bWait,
    );

late final _GetOverlappedResult = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  Int32 bWait,
),
    int Function(
  int hFile,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  int bWait,
)>('GetOverlappedResult');

int GetOverlappedResultEx(
  int hFile,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  int dwMilliseconds,
  int bAlertable,
) =>
    _GetOverlappedResultEx(
      hFile,
      lpOverlapped,
      lpNumberOfBytesTransferred,
      dwMilliseconds,
      bAlertable,
    );

late final _GetOverlappedResultEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  Uint32 dwMilliseconds,
  Int32 bAlertable,
),
    int Function(
  int hFile,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  int dwMilliseconds,
  int bAlertable,
)>('GetOverlappedResultEx');

int GetQueuedCompletionStatus(
  int CompletionPort,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  Pointer<IntPtr> lpCompletionKey,
  Pointer<Pointer<OVERLAPPED>> lpOverlapped,
  int dwMilliseconds,
) =>
    _GetQueuedCompletionStatus(
      CompletionPort,
      lpNumberOfBytesTransferred,
      lpCompletionKey,
      lpOverlapped,
      dwMilliseconds,
    );

late final _GetQueuedCompletionStatus = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr CompletionPort,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  Pointer<IntPtr> lpCompletionKey,
  Pointer<Pointer<OVERLAPPED>> lpOverlapped,
  Uint32 dwMilliseconds,
),
    int Function(
  int CompletionPort,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  Pointer<IntPtr> lpCompletionKey,
  Pointer<Pointer<OVERLAPPED>> lpOverlapped,
  int dwMilliseconds,
)>('GetQueuedCompletionStatus');

int GetQueuedCompletionStatusEx(
  int CompletionPort,
  Pointer<OVERLAPPED_ENTRY> lpCompletionPortEntries,
  int ulCount,
  Pointer<Uint32> ulNumEntriesRemoved,
  int dwMilliseconds,
  int fAlertable,
) =>
    _GetQueuedCompletionStatusEx(
      CompletionPort,
      lpCompletionPortEntries,
      ulCount,
      ulNumEntriesRemoved,
      dwMilliseconds,
      fAlertable,
    );

late final _GetQueuedCompletionStatusEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr CompletionPort,
  Pointer<OVERLAPPED_ENTRY> lpCompletionPortEntries,
  Uint32 ulCount,
  Pointer<Uint32> ulNumEntriesRemoved,
  Uint32 dwMilliseconds,
  Int32 fAlertable,
),
    int Function(
  int CompletionPort,
  Pointer<OVERLAPPED_ENTRY> lpCompletionPortEntries,
  int ulCount,
  Pointer<Uint32> ulNumEntriesRemoved,
  int dwMilliseconds,
  int fAlertable,
)>('GetQueuedCompletionStatusEx');

int PostQueuedCompletionStatus(
  int CompletionPort,
  int dwNumberOfBytesTransferred,
  int dwCompletionKey,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _PostQueuedCompletionStatus(
      CompletionPort,
      dwNumberOfBytesTransferred,
      dwCompletionKey,
      lpOverlapped,
    );

late final _PostQueuedCompletionStatus = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr CompletionPort,
  Uint32 dwNumberOfBytesTransferred,
  IntPtr dwCompletionKey,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int CompletionPort,
  int dwNumberOfBytesTransferred,
  int dwCompletionKey,
  Pointer<OVERLAPPED> lpOverlapped,
)>('PostQueuedCompletionStatus');
