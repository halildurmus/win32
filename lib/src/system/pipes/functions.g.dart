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
import '../../specialTypes.dart';
import '../../storage/filesystem/structs.g.dart';
import '../../system/pipes/structs.g.dart';
import '../../security/structs.g.dart'; // -----------------------------------------------------------------------

// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int CallNamedPipe(
  Pointer<Utf16> lpNamedPipeName,
  Pointer lpInBuffer,
  int nInBufferSize,
  Pointer lpOutBuffer,
  int nOutBufferSize,
  Pointer<Uint32> lpBytesRead,
  int nTimeOut,
) =>
    _CallNamedPipe(
      lpNamedPipeName,
      lpInBuffer,
      nInBufferSize,
      lpOutBuffer,
      nOutBufferSize,
      lpBytesRead,
      nTimeOut,
    );

late final _CallNamedPipe = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpNamedPipeName,
  Pointer lpInBuffer,
  Uint32 nInBufferSize,
  Pointer lpOutBuffer,
  Uint32 nOutBufferSize,
  Pointer<Uint32> lpBytesRead,
  Uint32 nTimeOut,
),
    int Function(
  Pointer<Utf16> lpNamedPipeName,
  Pointer lpInBuffer,
  int nInBufferSize,
  Pointer lpOutBuffer,
  int nOutBufferSize,
  Pointer<Uint32> lpBytesRead,
  int nTimeOut,
)>('CallNamedPipeW');

int ConnectNamedPipe(
  int hNamedPipe,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _ConnectNamedPipe(
      hNamedPipe,
      lpOverlapped,
    );

late final _ConnectNamedPipe = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hNamedPipe,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hNamedPipe,
  Pointer<OVERLAPPED> lpOverlapped,
)>('ConnectNamedPipe');

int CreateNamedPipe(
  Pointer<Utf16> lpName,
  int dwOpenMode,
  int dwPipeMode,
  int nMaxInstances,
  int nOutBufferSize,
  int nInBufferSize,
  int nDefaultTimeOut,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
) =>
    _CreateNamedPipe(
      lpName,
      dwOpenMode,
      dwPipeMode,
      nMaxInstances,
      nOutBufferSize,
      nInBufferSize,
      nDefaultTimeOut,
      lpSecurityAttributes,
    );

late final _CreateNamedPipe = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpName,
  Uint32 dwOpenMode,
  Uint32 dwPipeMode,
  Uint32 nMaxInstances,
  Uint32 nOutBufferSize,
  Uint32 nInBufferSize,
  Uint32 nDefaultTimeOut,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
),
    int Function(
  Pointer<Utf16> lpName,
  int dwOpenMode,
  int dwPipeMode,
  int nMaxInstances,
  int nOutBufferSize,
  int nInBufferSize,
  int nDefaultTimeOut,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
)>('CreateNamedPipeW');

int CreatePipe(
  Pointer<IntPtr> hReadPipe,
  Pointer<IntPtr> hWritePipe,
  Pointer<SECURITY_ATTRIBUTES> lpPipeAttributes,
  int nSize,
) =>
    _CreatePipe(
      hReadPipe,
      hWritePipe,
      lpPipeAttributes,
      nSize,
    );

late final _CreatePipe = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> hReadPipe,
  Pointer<IntPtr> hWritePipe,
  Pointer<SECURITY_ATTRIBUTES> lpPipeAttributes,
  Uint32 nSize,
),
    int Function(
  Pointer<IntPtr> hReadPipe,
  Pointer<IntPtr> hWritePipe,
  Pointer<SECURITY_ATTRIBUTES> lpPipeAttributes,
  int nSize,
)>('CreatePipe');

int DisconnectNamedPipe(
  int hNamedPipe,
) =>
    _DisconnectNamedPipe(
      hNamedPipe,
    );

late final _DisconnectNamedPipe = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hNamedPipe,
),
    int Function(
  int hNamedPipe,
)>('DisconnectNamedPipe');

int GetNamedPipeClientComputerName(
  int Pipe,
  Pointer<Utf16> ClientComputerName,
  int ClientComputerNameLength,
) =>
    _GetNamedPipeClientComputerName(
      Pipe,
      ClientComputerName,
      ClientComputerNameLength,
    );

late final _GetNamedPipeClientComputerName = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr Pipe,
  Pointer<Utf16> ClientComputerName,
  Uint32 ClientComputerNameLength,
),
    int Function(
  int Pipe,
  Pointer<Utf16> ClientComputerName,
  int ClientComputerNameLength,
)>('GetNamedPipeClientComputerNameW');

int GetNamedPipeClientProcessId(
  int Pipe,
  Pointer<Uint32> ClientProcessId,
) =>
    _GetNamedPipeClientProcessId(
      Pipe,
      ClientProcessId,
    );

late final _GetNamedPipeClientProcessId = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr Pipe,
  Pointer<Uint32> ClientProcessId,
),
    int Function(
  int Pipe,
  Pointer<Uint32> ClientProcessId,
)>('GetNamedPipeClientProcessId');

int GetNamedPipeClientSessionId(
  int Pipe,
  Pointer<Uint32> ClientSessionId,
) =>
    _GetNamedPipeClientSessionId(
      Pipe,
      ClientSessionId,
    );

late final _GetNamedPipeClientSessionId = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr Pipe,
  Pointer<Uint32> ClientSessionId,
),
    int Function(
  int Pipe,
  Pointer<Uint32> ClientSessionId,
)>('GetNamedPipeClientSessionId');

int GetNamedPipeHandleState(
  int hNamedPipe,
  Pointer<Uint32> lpState,
  Pointer<Uint32> lpCurInstances,
  Pointer<Uint32> lpMaxCollectionCount,
  Pointer<Uint32> lpCollectDataTimeout,
  Pointer<Utf16> lpUserName,
  int nMaxUserNameSize,
) =>
    _GetNamedPipeHandleState(
      hNamedPipe,
      lpState,
      lpCurInstances,
      lpMaxCollectionCount,
      lpCollectDataTimeout,
      lpUserName,
      nMaxUserNameSize,
    );

late final _GetNamedPipeHandleState = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hNamedPipe,
  Pointer<Uint32> lpState,
  Pointer<Uint32> lpCurInstances,
  Pointer<Uint32> lpMaxCollectionCount,
  Pointer<Uint32> lpCollectDataTimeout,
  Pointer<Utf16> lpUserName,
  Uint32 nMaxUserNameSize,
),
    int Function(
  int hNamedPipe,
  Pointer<Uint32> lpState,
  Pointer<Uint32> lpCurInstances,
  Pointer<Uint32> lpMaxCollectionCount,
  Pointer<Uint32> lpCollectDataTimeout,
  Pointer<Utf16> lpUserName,
  int nMaxUserNameSize,
)>('GetNamedPipeHandleStateW');

int GetNamedPipeInfo(
  int hNamedPipe,
  Pointer<Uint32> lpFlags,
  Pointer<Uint32> lpOutBufferSize,
  Pointer<Uint32> lpInBufferSize,
  Pointer<Uint32> lpMaxInstances,
) =>
    _GetNamedPipeInfo(
      hNamedPipe,
      lpFlags,
      lpOutBufferSize,
      lpInBufferSize,
      lpMaxInstances,
    );

late final _GetNamedPipeInfo = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hNamedPipe,
  Pointer<Uint32> lpFlags,
  Pointer<Uint32> lpOutBufferSize,
  Pointer<Uint32> lpInBufferSize,
  Pointer<Uint32> lpMaxInstances,
),
    int Function(
  int hNamedPipe,
  Pointer<Uint32> lpFlags,
  Pointer<Uint32> lpOutBufferSize,
  Pointer<Uint32> lpInBufferSize,
  Pointer<Uint32> lpMaxInstances,
)>('GetNamedPipeInfo');

int GetNamedPipeServerProcessId(
  int Pipe,
  Pointer<Uint32> ServerProcessId,
) =>
    _GetNamedPipeServerProcessId(
      Pipe,
      ServerProcessId,
    );

late final _GetNamedPipeServerProcessId = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr Pipe,
  Pointer<Uint32> ServerProcessId,
),
    int Function(
  int Pipe,
  Pointer<Uint32> ServerProcessId,
)>('GetNamedPipeServerProcessId');

int GetNamedPipeServerSessionId(
  int Pipe,
  Pointer<Uint32> ServerSessionId,
) =>
    _GetNamedPipeServerSessionId(
      Pipe,
      ServerSessionId,
    );

late final _GetNamedPipeServerSessionId = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr Pipe,
  Pointer<Uint32> ServerSessionId,
),
    int Function(
  int Pipe,
  Pointer<Uint32> ServerSessionId,
)>('GetNamedPipeServerSessionId');

int PeekNamedPipe(
  int hNamedPipe,
  Pointer lpBuffer,
  int nBufferSize,
  Pointer<Uint32> lpBytesRead,
  Pointer<Uint32> lpTotalBytesAvail,
  Pointer<Uint32> lpBytesLeftThisMessage,
) =>
    _PeekNamedPipe(
      hNamedPipe,
      lpBuffer,
      nBufferSize,
      lpBytesRead,
      lpTotalBytesAvail,
      lpBytesLeftThisMessage,
    );

late final _PeekNamedPipe = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hNamedPipe,
  Pointer lpBuffer,
  Uint32 nBufferSize,
  Pointer<Uint32> lpBytesRead,
  Pointer<Uint32> lpTotalBytesAvail,
  Pointer<Uint32> lpBytesLeftThisMessage,
),
    int Function(
  int hNamedPipe,
  Pointer lpBuffer,
  int nBufferSize,
  Pointer<Uint32> lpBytesRead,
  Pointer<Uint32> lpTotalBytesAvail,
  Pointer<Uint32> lpBytesLeftThisMessage,
)>('PeekNamedPipe');

int SetNamedPipeHandleState(
  int hNamedPipe,
  Pointer<Uint32> lpMode,
  Pointer<Uint32> lpMaxCollectionCount,
  Pointer<Uint32> lpCollectDataTimeout,
) =>
    _SetNamedPipeHandleState(
      hNamedPipe,
      lpMode,
      lpMaxCollectionCount,
      lpCollectDataTimeout,
    );

late final _SetNamedPipeHandleState = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hNamedPipe,
  Pointer<Uint32> lpMode,
  Pointer<Uint32> lpMaxCollectionCount,
  Pointer<Uint32> lpCollectDataTimeout,
),
    int Function(
  int hNamedPipe,
  Pointer<Uint32> lpMode,
  Pointer<Uint32> lpMaxCollectionCount,
  Pointer<Uint32> lpCollectDataTimeout,
)>('SetNamedPipeHandleState');

int TransactNamedPipe(
  int hNamedPipe,
  Pointer lpInBuffer,
  int nInBufferSize,
  Pointer lpOutBuffer,
  int nOutBufferSize,
  Pointer<Uint32> lpBytesRead,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _TransactNamedPipe(
      hNamedPipe,
      lpInBuffer,
      nInBufferSize,
      lpOutBuffer,
      nOutBufferSize,
      lpBytesRead,
      lpOverlapped,
    );

late final _TransactNamedPipe = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hNamedPipe,
  Pointer lpInBuffer,
  Uint32 nInBufferSize,
  Pointer lpOutBuffer,
  Uint32 nOutBufferSize,
  Pointer<Uint32> lpBytesRead,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hNamedPipe,
  Pointer lpInBuffer,
  int nInBufferSize,
  Pointer lpOutBuffer,
  int nOutBufferSize,
  Pointer<Uint32> lpBytesRead,
  Pointer<OVERLAPPED> lpOverlapped,
)>('TransactNamedPipe');

int WaitNamedPipe(
  Pointer<Utf16> lpNamedPipeName,
  int nTimeOut,
) =>
    _WaitNamedPipe(
      lpNamedPipeName,
      nTimeOut,
    );

late final _WaitNamedPipe = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpNamedPipeName,
  Uint32 nTimeOut,
),
    int Function(
  Pointer<Utf16> lpNamedPipeName,
  int nTimeOut,
)>('WaitNamedPipeW');

// -----------------------------------------------------------------------
// advapi32.dll
// -----------------------------------------------------------------------
final _advapi32 = DynamicLibrary.open('advapi32.dll');

int ImpersonateNamedPipeClient(
  int hNamedPipe,
) =>
    _ImpersonateNamedPipeClient(
      hNamedPipe,
    );

late final _ImpersonateNamedPipeClient = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hNamedPipe,
),
    int Function(
  int hNamedPipe,
)>('ImpersonateNamedPipeClient');
