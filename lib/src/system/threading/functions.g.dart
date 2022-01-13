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
import '../../system/threading/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../security/structs.g.dart';
import '../../system/threading/callbacks.g.dart';
import '../../system/kernel/structs.g.dart';
import '../../system/systeminformation/structs.g.dart';
import '../../foundation/callbacks.g.dart'; // -----------------------------------------------------------------------

// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

void AcquireSRWLockExclusive(
  Pointer<RTL_SRWLOCK> SRWLock,
) =>
    _AcquireSRWLockExclusive(
      SRWLock,
    );

late final _AcquireSRWLockExclusive = _kernel32.lookupFunction<
    Void Function(
  Pointer<RTL_SRWLOCK> SRWLock,
),
    void Function(
  Pointer<RTL_SRWLOCK> SRWLock,
)>('AcquireSRWLockExclusive');

void AcquireSRWLockShared(
  Pointer<RTL_SRWLOCK> SRWLock,
) =>
    _AcquireSRWLockShared(
      SRWLock,
    );

late final _AcquireSRWLockShared = _kernel32.lookupFunction<
    Void Function(
  Pointer<RTL_SRWLOCK> SRWLock,
),
    void Function(
  Pointer<RTL_SRWLOCK> SRWLock,
)>('AcquireSRWLockShared');

int AddIntegrityLabelToBoundaryDescriptor(
  Pointer<IntPtr> BoundaryDescriptor,
  int IntegrityLabel,
) =>
    _AddIntegrityLabelToBoundaryDescriptor(
      BoundaryDescriptor,
      IntegrityLabel,
    );

late final _AddIntegrityLabelToBoundaryDescriptor = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> BoundaryDescriptor,
  IntPtr IntegrityLabel,
),
    int Function(
  Pointer<IntPtr> BoundaryDescriptor,
  int IntegrityLabel,
)>('AddIntegrityLabelToBoundaryDescriptor');

int AddSIDToBoundaryDescriptor(
  Pointer<IntPtr> BoundaryDescriptor,
  int RequiredSid,
) =>
    _AddSIDToBoundaryDescriptor(
      BoundaryDescriptor,
      RequiredSid,
    );

late final _AddSIDToBoundaryDescriptor = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> BoundaryDescriptor,
  IntPtr RequiredSid,
),
    int Function(
  Pointer<IntPtr> BoundaryDescriptor,
  int RequiredSid,
)>('AddSIDToBoundaryDescriptor');

int CallbackMayRunLong(
  Pointer<TP_CALLBACK_INSTANCE> pci,
) =>
    _CallbackMayRunLong(
      pci,
    );

late final _CallbackMayRunLong = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<TP_CALLBACK_INSTANCE> pci,
),
    int Function(
  Pointer<TP_CALLBACK_INSTANCE> pci,
)>('CallbackMayRunLong');

void CancelThreadpoolIo(
  Pointer<TP_IO> pio,
) =>
    _CancelThreadpoolIo(
      pio,
    );

late final _CancelThreadpoolIo = _kernel32.lookupFunction<
    Void Function(
  Pointer<TP_IO> pio,
),
    void Function(
  Pointer<TP_IO> pio,
)>('CancelThreadpoolIo');

int CancelWaitableTimer(
  int hTimer,
) =>
    _CancelWaitableTimer(
      hTimer,
    );

late final _CancelWaitableTimer = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hTimer,
),
    int Function(
  int hTimer,
)>('CancelWaitableTimer');

int ChangeTimerQueueTimer(
  int TimerQueue,
  int Timer,
  int DueTime,
  int Period,
) =>
    _ChangeTimerQueueTimer(
      TimerQueue,
      Timer,
      DueTime,
      Period,
    );

late final _ChangeTimerQueueTimer = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr TimerQueue,
  IntPtr Timer,
  Uint32 DueTime,
  Uint32 Period,
),
    int Function(
  int TimerQueue,
  int Timer,
  int DueTime,
  int Period,
)>('ChangeTimerQueueTimer');

int ClosePrivateNamespace(
  int $Handle,
  int Flags,
) =>
    _ClosePrivateNamespace(
      $Handle,
      Flags,
    );

late final _ClosePrivateNamespace = _kernel32.lookupFunction<
    Uint8 Function(
  IntPtr $Handle,
  Uint32 Flags,
),
    int Function(
  int $Handle,
  int Flags,
)>('ClosePrivateNamespace');

void CloseThreadpool(
  int ptpp,
) =>
    _CloseThreadpool(
      ptpp,
    );

late final _CloseThreadpool = _kernel32.lookupFunction<
    Void Function(
  IntPtr ptpp,
),
    void Function(
  int ptpp,
)>('CloseThreadpool');

void CloseThreadpoolCleanupGroup(
  int ptpcg,
) =>
    _CloseThreadpoolCleanupGroup(
      ptpcg,
    );

late final _CloseThreadpoolCleanupGroup = _kernel32.lookupFunction<
    Void Function(
  IntPtr ptpcg,
),
    void Function(
  int ptpcg,
)>('CloseThreadpoolCleanupGroup');

void CloseThreadpoolCleanupGroupMembers(
  int ptpcg,
  int fCancelPendingCallbacks,
  Pointer pvCleanupContext,
) =>
    _CloseThreadpoolCleanupGroupMembers(
      ptpcg,
      fCancelPendingCallbacks,
      pvCleanupContext,
    );

late final _CloseThreadpoolCleanupGroupMembers = _kernel32.lookupFunction<
    Void Function(
  IntPtr ptpcg,
  Int32 fCancelPendingCallbacks,
  Pointer pvCleanupContext,
),
    void Function(
  int ptpcg,
  int fCancelPendingCallbacks,
  Pointer pvCleanupContext,
)>('CloseThreadpoolCleanupGroupMembers');

void CloseThreadpoolIo(
  Pointer<TP_IO> pio,
) =>
    _CloseThreadpoolIo(
      pio,
    );

late final _CloseThreadpoolIo = _kernel32.lookupFunction<
    Void Function(
  Pointer<TP_IO> pio,
),
    void Function(
  Pointer<TP_IO> pio,
)>('CloseThreadpoolIo');

void CloseThreadpoolTimer(
  Pointer<TP_TIMER> pti,
) =>
    _CloseThreadpoolTimer(
      pti,
    );

late final _CloseThreadpoolTimer = _kernel32.lookupFunction<
    Void Function(
  Pointer<TP_TIMER> pti,
),
    void Function(
  Pointer<TP_TIMER> pti,
)>('CloseThreadpoolTimer');

void CloseThreadpoolWait(
  Pointer<TP_WAIT> pwa,
) =>
    _CloseThreadpoolWait(
      pwa,
    );

late final _CloseThreadpoolWait = _kernel32.lookupFunction<
    Void Function(
  Pointer<TP_WAIT> pwa,
),
    void Function(
  Pointer<TP_WAIT> pwa,
)>('CloseThreadpoolWait');

void CloseThreadpoolWork(
  Pointer<TP_WORK> pwk,
) =>
    _CloseThreadpoolWork(
      pwk,
    );

late final _CloseThreadpoolWork = _kernel32.lookupFunction<
    Void Function(
  Pointer<TP_WORK> pwk,
),
    void Function(
  Pointer<TP_WORK> pwk,
)>('CloseThreadpoolWork');

int ConvertFiberToThread() => _ConvertFiberToThread();

late final _ConvertFiberToThread = _kernel32
    .lookupFunction<Int32 Function(), int Function()>('ConvertFiberToThread');

Pointer ConvertThreadToFiber(
  Pointer lpParameter,
) =>
    _ConvertThreadToFiber(
      lpParameter,
    );

late final _ConvertThreadToFiber = _kernel32.lookupFunction<
    Pointer Function(
  Pointer lpParameter,
),
    Pointer Function(
  Pointer lpParameter,
)>('ConvertThreadToFiber');

Pointer ConvertThreadToFiberEx(
  Pointer lpParameter,
  int dwFlags,
) =>
    _ConvertThreadToFiberEx(
      lpParameter,
      dwFlags,
    );

late final _ConvertThreadToFiberEx = _kernel32.lookupFunction<
    Pointer Function(
  Pointer lpParameter,
  Uint32 dwFlags,
),
    Pointer Function(
  Pointer lpParameter,
  int dwFlags,
)>('ConvertThreadToFiberEx');

int CreateBoundaryDescriptor(
  Pointer<Utf16> Name,
  int Flags,
) =>
    _CreateBoundaryDescriptor(
      Name,
      Flags,
    );

late final _CreateBoundaryDescriptor = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> Name,
  Uint32 Flags,
),
    int Function(
  Pointer<Utf16> Name,
  int Flags,
)>('CreateBoundaryDescriptorW');

int CreateEventEx(
  Pointer<SECURITY_ATTRIBUTES> lpEventAttributes,
  Pointer<Utf16> lpName,
  int dwFlags,
  int dwDesiredAccess,
) =>
    _CreateEventEx(
      lpEventAttributes,
      lpName,
      dwFlags,
      dwDesiredAccess,
    );

late final _CreateEventEx = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<SECURITY_ATTRIBUTES> lpEventAttributes,
  Pointer<Utf16> lpName,
  Uint32 dwFlags,
  Uint32 dwDesiredAccess,
),
    int Function(
  Pointer<SECURITY_ATTRIBUTES> lpEventAttributes,
  Pointer<Utf16> lpName,
  int dwFlags,
  int dwDesiredAccess,
)>('CreateEventExW');

int CreateEvent(
  Pointer<SECURITY_ATTRIBUTES> lpEventAttributes,
  int bManualReset,
  int bInitialState,
  Pointer<Utf16> lpName,
) =>
    _CreateEvent(
      lpEventAttributes,
      bManualReset,
      bInitialState,
      lpName,
    );

late final _CreateEvent = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<SECURITY_ATTRIBUTES> lpEventAttributes,
  Int32 bManualReset,
  Int32 bInitialState,
  Pointer<Utf16> lpName,
),
    int Function(
  Pointer<SECURITY_ATTRIBUTES> lpEventAttributes,
  int bManualReset,
  int bInitialState,
  Pointer<Utf16> lpName,
)>('CreateEventW');

Pointer CreateFiber(
  int dwStackSize,
  Pointer<NativeFunction<LPFIBER_START_ROUTINE>> lpStartAddress,
  Pointer lpParameter,
) =>
    _CreateFiber(
      dwStackSize,
      lpStartAddress,
      lpParameter,
    );

late final _CreateFiber = _kernel32.lookupFunction<
    Pointer Function(
  IntPtr dwStackSize,
  Pointer<NativeFunction<LPFIBER_START_ROUTINE>> lpStartAddress,
  Pointer lpParameter,
),
    Pointer Function(
  int dwStackSize,
  Pointer<NativeFunction<LPFIBER_START_ROUTINE>> lpStartAddress,
  Pointer lpParameter,
)>('CreateFiber');

Pointer CreateFiberEx(
  int dwStackCommitSize,
  int dwStackReserveSize,
  int dwFlags,
  Pointer<NativeFunction<LPFIBER_START_ROUTINE>> lpStartAddress,
  Pointer lpParameter,
) =>
    _CreateFiberEx(
      dwStackCommitSize,
      dwStackReserveSize,
      dwFlags,
      lpStartAddress,
      lpParameter,
    );

late final _CreateFiberEx = _kernel32.lookupFunction<
    Pointer Function(
  IntPtr dwStackCommitSize,
  IntPtr dwStackReserveSize,
  Uint32 dwFlags,
  Pointer<NativeFunction<LPFIBER_START_ROUTINE>> lpStartAddress,
  Pointer lpParameter,
),
    Pointer Function(
  int dwStackCommitSize,
  int dwStackReserveSize,
  int dwFlags,
  Pointer<NativeFunction<LPFIBER_START_ROUTINE>> lpStartAddress,
  Pointer lpParameter,
)>('CreateFiberEx');

int CreateMutexEx(
  Pointer<SECURITY_ATTRIBUTES> lpMutexAttributes,
  Pointer<Utf16> lpName,
  int dwFlags,
  int dwDesiredAccess,
) =>
    _CreateMutexEx(
      lpMutexAttributes,
      lpName,
      dwFlags,
      dwDesiredAccess,
    );

late final _CreateMutexEx = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<SECURITY_ATTRIBUTES> lpMutexAttributes,
  Pointer<Utf16> lpName,
  Uint32 dwFlags,
  Uint32 dwDesiredAccess,
),
    int Function(
  Pointer<SECURITY_ATTRIBUTES> lpMutexAttributes,
  Pointer<Utf16> lpName,
  int dwFlags,
  int dwDesiredAccess,
)>('CreateMutexExW');

int CreateMutex(
  Pointer<SECURITY_ATTRIBUTES> lpMutexAttributes,
  int bInitialOwner,
  Pointer<Utf16> lpName,
) =>
    _CreateMutex(
      lpMutexAttributes,
      bInitialOwner,
      lpName,
    );

late final _CreateMutex = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<SECURITY_ATTRIBUTES> lpMutexAttributes,
  Int32 bInitialOwner,
  Pointer<Utf16> lpName,
),
    int Function(
  Pointer<SECURITY_ATTRIBUTES> lpMutexAttributes,
  int bInitialOwner,
  Pointer<Utf16> lpName,
)>('CreateMutexW');

int CreatePrivateNamespace(
  Pointer<SECURITY_ATTRIBUTES> lpPrivateNamespaceAttributes,
  Pointer lpBoundaryDescriptor,
  Pointer<Utf16> lpAliasPrefix,
) =>
    _CreatePrivateNamespace(
      lpPrivateNamespaceAttributes,
      lpBoundaryDescriptor,
      lpAliasPrefix,
    );

late final _CreatePrivateNamespace = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<SECURITY_ATTRIBUTES> lpPrivateNamespaceAttributes,
  Pointer lpBoundaryDescriptor,
  Pointer<Utf16> lpAliasPrefix,
),
    int Function(
  Pointer<SECURITY_ATTRIBUTES> lpPrivateNamespaceAttributes,
  Pointer lpBoundaryDescriptor,
  Pointer<Utf16> lpAliasPrefix,
)>('CreatePrivateNamespaceW');

int CreateProcess(
  Pointer<Utf16> lpApplicationName,
  Pointer<Utf16> lpCommandLine,
  Pointer<SECURITY_ATTRIBUTES> lpProcessAttributes,
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  int bInheritHandles,
  int dwCreationFlags,
  Pointer lpEnvironment,
  Pointer<Utf16> lpCurrentDirectory,
  Pointer<STARTUPINFO> lpStartupInfo,
  Pointer<PROCESS_INFORMATION> lpProcessInformation,
) =>
    _CreateProcess(
      lpApplicationName,
      lpCommandLine,
      lpProcessAttributes,
      lpThreadAttributes,
      bInheritHandles,
      dwCreationFlags,
      lpEnvironment,
      lpCurrentDirectory,
      lpStartupInfo,
      lpProcessInformation,
    );

late final _CreateProcess = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpApplicationName,
  Pointer<Utf16> lpCommandLine,
  Pointer<SECURITY_ATTRIBUTES> lpProcessAttributes,
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  Int32 bInheritHandles,
  Uint32 dwCreationFlags,
  Pointer lpEnvironment,
  Pointer<Utf16> lpCurrentDirectory,
  Pointer<STARTUPINFO> lpStartupInfo,
  Pointer<PROCESS_INFORMATION> lpProcessInformation,
),
    int Function(
  Pointer<Utf16> lpApplicationName,
  Pointer<Utf16> lpCommandLine,
  Pointer<SECURITY_ATTRIBUTES> lpProcessAttributes,
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  int bInheritHandles,
  int dwCreationFlags,
  Pointer lpEnvironment,
  Pointer<Utf16> lpCurrentDirectory,
  Pointer<STARTUPINFO> lpStartupInfo,
  Pointer<PROCESS_INFORMATION> lpProcessInformation,
)>('CreateProcessW');

int CreateRemoteThread(
  int hProcess,
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  int dwStackSize,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
  Pointer lpParameter,
  int dwCreationFlags,
  Pointer<Uint32> lpThreadId,
) =>
    _CreateRemoteThread(
      hProcess,
      lpThreadAttributes,
      dwStackSize,
      lpStartAddress,
      lpParameter,
      dwCreationFlags,
      lpThreadId,
    );

late final _CreateRemoteThread = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr hProcess,
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  IntPtr dwStackSize,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
  Pointer lpParameter,
  Uint32 dwCreationFlags,
  Pointer<Uint32> lpThreadId,
),
    int Function(
  int hProcess,
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  int dwStackSize,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
  Pointer lpParameter,
  int dwCreationFlags,
  Pointer<Uint32> lpThreadId,
)>('CreateRemoteThread');

int CreateRemoteThreadEx(
  int hProcess,
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  int dwStackSize,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
  Pointer lpParameter,
  int dwCreationFlags,
  Pointer lpAttributeList,
  Pointer<Uint32> lpThreadId,
) =>
    _CreateRemoteThreadEx(
      hProcess,
      lpThreadAttributes,
      dwStackSize,
      lpStartAddress,
      lpParameter,
      dwCreationFlags,
      lpAttributeList,
      lpThreadId,
    );

late final _CreateRemoteThreadEx = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr hProcess,
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  IntPtr dwStackSize,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
  Pointer lpParameter,
  Uint32 dwCreationFlags,
  Pointer lpAttributeList,
  Pointer<Uint32> lpThreadId,
),
    int Function(
  int hProcess,
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  int dwStackSize,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
  Pointer lpParameter,
  int dwCreationFlags,
  Pointer lpAttributeList,
  Pointer<Uint32> lpThreadId,
)>('CreateRemoteThreadEx');

int CreateSemaphoreEx(
  Pointer<SECURITY_ATTRIBUTES> lpSemaphoreAttributes,
  int lInitialCount,
  int lMaximumCount,
  Pointer<Utf16> lpName,
  int dwFlags,
  int dwDesiredAccess,
) =>
    _CreateSemaphoreEx(
      lpSemaphoreAttributes,
      lInitialCount,
      lMaximumCount,
      lpName,
      dwFlags,
      dwDesiredAccess,
    );

late final _CreateSemaphoreEx = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<SECURITY_ATTRIBUTES> lpSemaphoreAttributes,
  Int32 lInitialCount,
  Int32 lMaximumCount,
  Pointer<Utf16> lpName,
  Uint32 dwFlags,
  Uint32 dwDesiredAccess,
),
    int Function(
  Pointer<SECURITY_ATTRIBUTES> lpSemaphoreAttributes,
  int lInitialCount,
  int lMaximumCount,
  Pointer<Utf16> lpName,
  int dwFlags,
  int dwDesiredAccess,
)>('CreateSemaphoreExW');

int CreateSemaphore(
  Pointer<SECURITY_ATTRIBUTES> lpSemaphoreAttributes,
  int lInitialCount,
  int lMaximumCount,
  Pointer<Utf16> lpName,
) =>
    _CreateSemaphore(
      lpSemaphoreAttributes,
      lInitialCount,
      lMaximumCount,
      lpName,
    );

late final _CreateSemaphore = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<SECURITY_ATTRIBUTES> lpSemaphoreAttributes,
  Int32 lInitialCount,
  Int32 lMaximumCount,
  Pointer<Utf16> lpName,
),
    int Function(
  Pointer<SECURITY_ATTRIBUTES> lpSemaphoreAttributes,
  int lInitialCount,
  int lMaximumCount,
  Pointer<Utf16> lpName,
)>('CreateSemaphoreW');

int CreateThread(
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  int dwStackSize,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
  Pointer lpParameter,
  int dwCreationFlags,
  Pointer<Uint32> lpThreadId,
) =>
    _CreateThread(
      lpThreadAttributes,
      dwStackSize,
      lpStartAddress,
      lpParameter,
      dwCreationFlags,
      lpThreadId,
    );

late final _CreateThread = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  IntPtr dwStackSize,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
  Pointer lpParameter,
  Uint32 dwCreationFlags,
  Pointer<Uint32> lpThreadId,
),
    int Function(
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  int dwStackSize,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
  Pointer lpParameter,
  int dwCreationFlags,
  Pointer<Uint32> lpThreadId,
)>('CreateThread');

int CreateThreadpool(
  Pointer reserved,
) =>
    _CreateThreadpool(
      reserved,
    );

late final _CreateThreadpool = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer reserved,
),
    int Function(
  Pointer reserved,
)>('CreateThreadpool');

int CreateThreadpoolCleanupGroup() => _CreateThreadpoolCleanupGroup();

late final _CreateThreadpoolCleanupGroup =
    _kernel32.lookupFunction<IntPtr Function(), int Function()>(
        'CreateThreadpoolCleanupGroup');

Pointer<TP_IO> CreateThreadpoolIo(
  int fl,
  Pointer<NativeFunction<PTP_WIN32_IO_CALLBACK>> pfnio,
  Pointer pv,
  Pointer<TP_CALLBACK_ENVIRON_V3> pcbe,
) =>
    _CreateThreadpoolIo(
      fl,
      pfnio,
      pv,
      pcbe,
    );

late final _CreateThreadpoolIo = _kernel32.lookupFunction<
    Pointer<TP_IO> Function(
  IntPtr fl,
  Pointer<NativeFunction<PTP_WIN32_IO_CALLBACK>> pfnio,
  Pointer pv,
  Pointer<TP_CALLBACK_ENVIRON_V3> pcbe,
),
    Pointer<TP_IO> Function(
  int fl,
  Pointer<NativeFunction<PTP_WIN32_IO_CALLBACK>> pfnio,
  Pointer pv,
  Pointer<TP_CALLBACK_ENVIRON_V3> pcbe,
)>('CreateThreadpoolIo');

Pointer<TP_TIMER> CreateThreadpoolTimer(
  Pointer<NativeFunction<PTP_TIMER_CALLBACK>> pfnti,
  Pointer pv,
  Pointer<TP_CALLBACK_ENVIRON_V3> pcbe,
) =>
    _CreateThreadpoolTimer(
      pfnti,
      pv,
      pcbe,
    );

late final _CreateThreadpoolTimer = _kernel32.lookupFunction<
    Pointer<TP_TIMER> Function(
  Pointer<NativeFunction<PTP_TIMER_CALLBACK>> pfnti,
  Pointer pv,
  Pointer<TP_CALLBACK_ENVIRON_V3> pcbe,
),
    Pointer<TP_TIMER> Function(
  Pointer<NativeFunction<PTP_TIMER_CALLBACK>> pfnti,
  Pointer pv,
  Pointer<TP_CALLBACK_ENVIRON_V3> pcbe,
)>('CreateThreadpoolTimer');

Pointer<TP_WAIT> CreateThreadpoolWait(
  Pointer<NativeFunction<PTP_WAIT_CALLBACK>> pfnwa,
  Pointer pv,
  Pointer<TP_CALLBACK_ENVIRON_V3> pcbe,
) =>
    _CreateThreadpoolWait(
      pfnwa,
      pv,
      pcbe,
    );

late final _CreateThreadpoolWait = _kernel32.lookupFunction<
    Pointer<TP_WAIT> Function(
  Pointer<NativeFunction<PTP_WAIT_CALLBACK>> pfnwa,
  Pointer pv,
  Pointer<TP_CALLBACK_ENVIRON_V3> pcbe,
),
    Pointer<TP_WAIT> Function(
  Pointer<NativeFunction<PTP_WAIT_CALLBACK>> pfnwa,
  Pointer pv,
  Pointer<TP_CALLBACK_ENVIRON_V3> pcbe,
)>('CreateThreadpoolWait');

Pointer<TP_WORK> CreateThreadpoolWork(
  Pointer<NativeFunction<PTP_WORK_CALLBACK>> pfnwk,
  Pointer pv,
  Pointer<TP_CALLBACK_ENVIRON_V3> pcbe,
) =>
    _CreateThreadpoolWork(
      pfnwk,
      pv,
      pcbe,
    );

late final _CreateThreadpoolWork = _kernel32.lookupFunction<
    Pointer<TP_WORK> Function(
  Pointer<NativeFunction<PTP_WORK_CALLBACK>> pfnwk,
  Pointer pv,
  Pointer<TP_CALLBACK_ENVIRON_V3> pcbe,
),
    Pointer<TP_WORK> Function(
  Pointer<NativeFunction<PTP_WORK_CALLBACK>> pfnwk,
  Pointer pv,
  Pointer<TP_CALLBACK_ENVIRON_V3> pcbe,
)>('CreateThreadpoolWork');

int CreateTimerQueue() => _CreateTimerQueue();

late final _CreateTimerQueue = _kernel32
    .lookupFunction<IntPtr Function(), int Function()>('CreateTimerQueue');

int CreateTimerQueueTimer(
  Pointer<IntPtr> phNewTimer,
  int TimerQueue,
  Pointer<NativeFunction<WAITORTIMERCALLBACK>> Callback,
  Pointer Parameter,
  int DueTime,
  int Period,
  int Flags,
) =>
    _CreateTimerQueueTimer(
      phNewTimer,
      TimerQueue,
      Callback,
      Parameter,
      DueTime,
      Period,
      Flags,
    );

late final _CreateTimerQueueTimer = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> phNewTimer,
  IntPtr TimerQueue,
  Pointer<NativeFunction<WAITORTIMERCALLBACK>> Callback,
  Pointer Parameter,
  Uint32 DueTime,
  Uint32 Period,
  Uint32 Flags,
),
    int Function(
  Pointer<IntPtr> phNewTimer,
  int TimerQueue,
  Pointer<NativeFunction<WAITORTIMERCALLBACK>> Callback,
  Pointer Parameter,
  int DueTime,
  int Period,
  int Flags,
)>('CreateTimerQueueTimer');

int CreateUmsCompletionList(
  Pointer<Pointer> UmsCompletionList,
) =>
    _CreateUmsCompletionList(
      UmsCompletionList,
    );

late final _CreateUmsCompletionList = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Pointer> UmsCompletionList,
),
    int Function(
  Pointer<Pointer> UmsCompletionList,
)>('CreateUmsCompletionList');

int CreateUmsThreadContext(
  Pointer<Pointer> lpUmsThread,
) =>
    _CreateUmsThreadContext(
      lpUmsThread,
    );

late final _CreateUmsThreadContext = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Pointer> lpUmsThread,
),
    int Function(
  Pointer<Pointer> lpUmsThread,
)>('CreateUmsThreadContext');

int CreateWaitableTimerEx(
  Pointer<SECURITY_ATTRIBUTES> lpTimerAttributes,
  Pointer<Utf16> lpTimerName,
  int dwFlags,
  int dwDesiredAccess,
) =>
    _CreateWaitableTimerEx(
      lpTimerAttributes,
      lpTimerName,
      dwFlags,
      dwDesiredAccess,
    );

late final _CreateWaitableTimerEx = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<SECURITY_ATTRIBUTES> lpTimerAttributes,
  Pointer<Utf16> lpTimerName,
  Uint32 dwFlags,
  Uint32 dwDesiredAccess,
),
    int Function(
  Pointer<SECURITY_ATTRIBUTES> lpTimerAttributes,
  Pointer<Utf16> lpTimerName,
  int dwFlags,
  int dwDesiredAccess,
)>('CreateWaitableTimerExW');

int CreateWaitableTimer(
  Pointer<SECURITY_ATTRIBUTES> lpTimerAttributes,
  int bManualReset,
  Pointer<Utf16> lpTimerName,
) =>
    _CreateWaitableTimer(
      lpTimerAttributes,
      bManualReset,
      lpTimerName,
    );

late final _CreateWaitableTimer = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<SECURITY_ATTRIBUTES> lpTimerAttributes,
  Int32 bManualReset,
  Pointer<Utf16> lpTimerName,
),
    int Function(
  Pointer<SECURITY_ATTRIBUTES> lpTimerAttributes,
  int bManualReset,
  Pointer<Utf16> lpTimerName,
)>('CreateWaitableTimerW');

void DeleteBoundaryDescriptor(
  int BoundaryDescriptor,
) =>
    _DeleteBoundaryDescriptor(
      BoundaryDescriptor,
    );

late final _DeleteBoundaryDescriptor = _kernel32.lookupFunction<
    Void Function(
  IntPtr BoundaryDescriptor,
),
    void Function(
  int BoundaryDescriptor,
)>('DeleteBoundaryDescriptor');

void DeleteCriticalSection(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
) =>
    _DeleteCriticalSection(
      lpCriticalSection,
    );

late final _DeleteCriticalSection = _kernel32.lookupFunction<
    Void Function(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
),
    void Function(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
)>('DeleteCriticalSection');

void DeleteFiber(
  Pointer lpFiber,
) =>
    _DeleteFiber(
      lpFiber,
    );

late final _DeleteFiber = _kernel32.lookupFunction<
    Void Function(
  Pointer lpFiber,
),
    void Function(
  Pointer lpFiber,
)>('DeleteFiber');

void DeleteProcThreadAttributeList(
  Pointer lpAttributeList,
) =>
    _DeleteProcThreadAttributeList(
      lpAttributeList,
    );

late final _DeleteProcThreadAttributeList = _kernel32.lookupFunction<
    Void Function(
  Pointer lpAttributeList,
),
    void Function(
  Pointer lpAttributeList,
)>('DeleteProcThreadAttributeList');

int DeleteSynchronizationBarrier(
  Pointer<RTL_BARRIER> lpBarrier,
) =>
    _DeleteSynchronizationBarrier(
      lpBarrier,
    );

late final _DeleteSynchronizationBarrier = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<RTL_BARRIER> lpBarrier,
),
    int Function(
  Pointer<RTL_BARRIER> lpBarrier,
)>('DeleteSynchronizationBarrier');

int DeleteTimerQueue(
  int TimerQueue,
) =>
    _DeleteTimerQueue(
      TimerQueue,
    );

late final _DeleteTimerQueue = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr TimerQueue,
),
    int Function(
  int TimerQueue,
)>('DeleteTimerQueue');

int DeleteTimerQueueEx(
  int TimerQueue,
  int CompletionEvent,
) =>
    _DeleteTimerQueueEx(
      TimerQueue,
      CompletionEvent,
    );

late final _DeleteTimerQueueEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr TimerQueue,
  IntPtr CompletionEvent,
),
    int Function(
  int TimerQueue,
  int CompletionEvent,
)>('DeleteTimerQueueEx');

int DeleteTimerQueueTimer(
  int TimerQueue,
  int Timer,
  int CompletionEvent,
) =>
    _DeleteTimerQueueTimer(
      TimerQueue,
      Timer,
      CompletionEvent,
    );

late final _DeleteTimerQueueTimer = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr TimerQueue,
  IntPtr Timer,
  IntPtr CompletionEvent,
),
    int Function(
  int TimerQueue,
  int Timer,
  int CompletionEvent,
)>('DeleteTimerQueueTimer');

int DeleteUmsCompletionList(
  Pointer UmsCompletionList,
) =>
    _DeleteUmsCompletionList(
      UmsCompletionList,
    );

late final _DeleteUmsCompletionList = _kernel32.lookupFunction<
    Int32 Function(
  Pointer UmsCompletionList,
),
    int Function(
  Pointer UmsCompletionList,
)>('DeleteUmsCompletionList');

int DeleteUmsThreadContext(
  Pointer UmsThread,
) =>
    _DeleteUmsThreadContext(
      UmsThread,
    );

late final _DeleteUmsThreadContext = _kernel32.lookupFunction<
    Int32 Function(
  Pointer UmsThread,
),
    int Function(
  Pointer UmsThread,
)>('DeleteUmsThreadContext');

int DequeueUmsCompletionListItems(
  Pointer UmsCompletionList,
  int WaitTimeOut,
  Pointer<Pointer> UmsThreadList,
) =>
    _DequeueUmsCompletionListItems(
      UmsCompletionList,
      WaitTimeOut,
      UmsThreadList,
    );

late final _DequeueUmsCompletionListItems = _kernel32.lookupFunction<
    Int32 Function(
  Pointer UmsCompletionList,
  Uint32 WaitTimeOut,
  Pointer<Pointer> UmsThreadList,
),
    int Function(
  Pointer UmsCompletionList,
  int WaitTimeOut,
  Pointer<Pointer> UmsThreadList,
)>('DequeueUmsCompletionListItems');

void DisassociateCurrentThreadFromCallback(
  Pointer<TP_CALLBACK_INSTANCE> pci,
) =>
    _DisassociateCurrentThreadFromCallback(
      pci,
    );

late final _DisassociateCurrentThreadFromCallback = _kernel32.lookupFunction<
    Void Function(
  Pointer<TP_CALLBACK_INSTANCE> pci,
),
    void Function(
  Pointer<TP_CALLBACK_INSTANCE> pci,
)>('DisassociateCurrentThreadFromCallback');

void EnterCriticalSection(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
) =>
    _EnterCriticalSection(
      lpCriticalSection,
    );

late final _EnterCriticalSection = _kernel32.lookupFunction<
    Void Function(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
),
    void Function(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
)>('EnterCriticalSection');

int EnterSynchronizationBarrier(
  Pointer<RTL_BARRIER> lpBarrier,
  int dwFlags,
) =>
    _EnterSynchronizationBarrier(
      lpBarrier,
      dwFlags,
    );

late final _EnterSynchronizationBarrier = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<RTL_BARRIER> lpBarrier,
  Uint32 dwFlags,
),
    int Function(
  Pointer<RTL_BARRIER> lpBarrier,
  int dwFlags,
)>('EnterSynchronizationBarrier');

int EnterUmsSchedulingMode(
  Pointer<UMS_SCHEDULER_STARTUP_INFO> SchedulerStartupInfo,
) =>
    _EnterUmsSchedulingMode(
      SchedulerStartupInfo,
    );

late final _EnterUmsSchedulingMode = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<UMS_SCHEDULER_STARTUP_INFO> SchedulerStartupInfo,
),
    int Function(
  Pointer<UMS_SCHEDULER_STARTUP_INFO> SchedulerStartupInfo,
)>('EnterUmsSchedulingMode');

int ExecuteUmsThread(
  Pointer UmsThread,
) =>
    _ExecuteUmsThread(
      UmsThread,
    );

late final _ExecuteUmsThread = _kernel32.lookupFunction<
    Int32 Function(
  Pointer UmsThread,
),
    int Function(
  Pointer UmsThread,
)>('ExecuteUmsThread');

void ExitProcess(
  int uExitCode,
) =>
    _ExitProcess(
      uExitCode,
    );

late final _ExitProcess = _kernel32.lookupFunction<
    Void Function(
  Uint32 uExitCode,
),
    void Function(
  int uExitCode,
)>('ExitProcess');

void ExitThread(
  int dwExitCode,
) =>
    _ExitThread(
      dwExitCode,
    );

late final _ExitThread = _kernel32.lookupFunction<
    Void Function(
  Uint32 dwExitCode,
),
    void Function(
  int dwExitCode,
)>('ExitThread');

int FlsAlloc(
  Pointer<NativeFunction<PFLS_CALLBACK_FUNCTION>> lpCallback,
) =>
    _FlsAlloc(
      lpCallback,
    );

late final _FlsAlloc = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<NativeFunction<PFLS_CALLBACK_FUNCTION>> lpCallback,
),
    int Function(
  Pointer<NativeFunction<PFLS_CALLBACK_FUNCTION>> lpCallback,
)>('FlsAlloc');

int FlsFree(
  int dwFlsIndex,
) =>
    _FlsFree(
      dwFlsIndex,
    );

late final _FlsFree = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlsIndex,
),
    int Function(
  int dwFlsIndex,
)>('FlsFree');

Pointer FlsGetValue(
  int dwFlsIndex,
) =>
    _FlsGetValue(
      dwFlsIndex,
    );

late final _FlsGetValue = _kernel32.lookupFunction<
    Pointer Function(
  Uint32 dwFlsIndex,
),
    Pointer Function(
  int dwFlsIndex,
)>('FlsGetValue');

int FlsSetValue(
  int dwFlsIndex,
  Pointer lpFlsData,
) =>
    _FlsSetValue(
      dwFlsIndex,
      lpFlsData,
    );

late final _FlsSetValue = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlsIndex,
  Pointer lpFlsData,
),
    int Function(
  int dwFlsIndex,
  Pointer lpFlsData,
)>('FlsSetValue');

void FlushProcessWriteBuffers() => _FlushProcessWriteBuffers();

late final _FlushProcessWriteBuffers =
    _kernel32.lookupFunction<Void Function(), void Function()>(
        'FlushProcessWriteBuffers');

void FreeLibraryWhenCallbackReturns(
  Pointer<TP_CALLBACK_INSTANCE> pci,
  int mod,
) =>
    _FreeLibraryWhenCallbackReturns(
      pci,
      mod,
    );

late final _FreeLibraryWhenCallbackReturns = _kernel32.lookupFunction<
    Void Function(
  Pointer<TP_CALLBACK_INSTANCE> pci,
  IntPtr mod,
),
    void Function(
  Pointer<TP_CALLBACK_INSTANCE> pci,
  int mod,
)>('FreeLibraryWhenCallbackReturns');

int GetActiveProcessorCount(
  int GroupNumber,
) =>
    _GetActiveProcessorCount(
      GroupNumber,
    );

late final _GetActiveProcessorCount = _kernel32.lookupFunction<
    Uint32 Function(
  Uint16 GroupNumber,
),
    int Function(
  int GroupNumber,
)>('GetActiveProcessorCount');

int GetActiveProcessorGroupCount() => _GetActiveProcessorGroupCount();

late final _GetActiveProcessorGroupCount =
    _kernel32.lookupFunction<Uint16 Function(), int Function()>(
        'GetActiveProcessorGroupCount');

int GetCurrentProcess() => _GetCurrentProcess();

late final _GetCurrentProcess = _kernel32
    .lookupFunction<IntPtr Function(), int Function()>('GetCurrentProcess');

int GetCurrentProcessId() => _GetCurrentProcessId();

late final _GetCurrentProcessId = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetCurrentProcessId');

int GetCurrentProcessorNumber() => _GetCurrentProcessorNumber();

late final _GetCurrentProcessorNumber =
    _kernel32.lookupFunction<Uint32 Function(), int Function()>(
        'GetCurrentProcessorNumber');

void GetCurrentProcessorNumberEx(
  Pointer<PROCESSOR_NUMBER> ProcNumber,
) =>
    _GetCurrentProcessorNumberEx(
      ProcNumber,
    );

late final _GetCurrentProcessorNumberEx = _kernel32.lookupFunction<
    Void Function(
  Pointer<PROCESSOR_NUMBER> ProcNumber,
),
    void Function(
  Pointer<PROCESSOR_NUMBER> ProcNumber,
)>('GetCurrentProcessorNumberEx');

int GetCurrentThread() => _GetCurrentThread();

late final _GetCurrentThread = _kernel32
    .lookupFunction<IntPtr Function(), int Function()>('GetCurrentThread');

int GetCurrentThreadId() => _GetCurrentThreadId();

late final _GetCurrentThreadId = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetCurrentThreadId');

void GetCurrentThreadStackLimits(
  Pointer<IntPtr> LowLimit,
  Pointer<IntPtr> HighLimit,
) =>
    _GetCurrentThreadStackLimits(
      LowLimit,
      HighLimit,
    );

late final _GetCurrentThreadStackLimits = _kernel32.lookupFunction<
    Void Function(
  Pointer<IntPtr> LowLimit,
  Pointer<IntPtr> HighLimit,
),
    void Function(
  Pointer<IntPtr> LowLimit,
  Pointer<IntPtr> HighLimit,
)>('GetCurrentThreadStackLimits');

Pointer GetCurrentUmsThread() => _GetCurrentUmsThread();

late final _GetCurrentUmsThread =
    _kernel32.lookupFunction<Pointer Function(), Pointer Function()>(
        'GetCurrentUmsThread');

int GetExitCodeProcess(
  int hProcess,
  Pointer<Uint32> lpExitCode,
) =>
    _GetExitCodeProcess(
      hProcess,
      lpExitCode,
    );

late final _GetExitCodeProcess = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Uint32> lpExitCode,
),
    int Function(
  int hProcess,
  Pointer<Uint32> lpExitCode,
)>('GetExitCodeProcess');

int GetExitCodeThread(
  int hThread,
  Pointer<Uint32> lpExitCode,
) =>
    _GetExitCodeThread(
      hThread,
      lpExitCode,
    );

late final _GetExitCodeThread = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
  Pointer<Uint32> lpExitCode,
),
    int Function(
  int hThread,
  Pointer<Uint32> lpExitCode,
)>('GetExitCodeThread');

int GetMachineTypeAttributes(
  int Machine,
  Pointer<Uint32> MachineTypeAttributes,
) =>
    _GetMachineTypeAttributes(
      Machine,
      MachineTypeAttributes,
    );

late final _GetMachineTypeAttributes = _kernel32.lookupFunction<
    Int32 Function(
  Uint16 Machine,
  Pointer<Uint32> MachineTypeAttributes,
),
    int Function(
  int Machine,
  Pointer<Uint32> MachineTypeAttributes,
)>('GetMachineTypeAttributes');

int GetMaximumProcessorCount(
  int GroupNumber,
) =>
    _GetMaximumProcessorCount(
      GroupNumber,
    );

late final _GetMaximumProcessorCount = _kernel32.lookupFunction<
    Uint32 Function(
  Uint16 GroupNumber,
),
    int Function(
  int GroupNumber,
)>('GetMaximumProcessorCount');

int GetMaximumProcessorGroupCount() => _GetMaximumProcessorGroupCount();

late final _GetMaximumProcessorGroupCount =
    _kernel32.lookupFunction<Uint16 Function(), int Function()>(
        'GetMaximumProcessorGroupCount');

Pointer GetNextUmsListItem(
  Pointer UmsContext,
) =>
    _GetNextUmsListItem(
      UmsContext,
    );

late final _GetNextUmsListItem = _kernel32.lookupFunction<
    Pointer Function(
  Pointer UmsContext,
),
    Pointer Function(
  Pointer UmsContext,
)>('GetNextUmsListItem');

int GetNumaAvailableMemoryNode(
  int Node,
  Pointer<Uint64> AvailableBytes,
) =>
    _GetNumaAvailableMemoryNode(
      Node,
      AvailableBytes,
    );

late final _GetNumaAvailableMemoryNode = _kernel32.lookupFunction<
    Int32 Function(
  Uint8 Node,
  Pointer<Uint64> AvailableBytes,
),
    int Function(
  int Node,
  Pointer<Uint64> AvailableBytes,
)>('GetNumaAvailableMemoryNode');

int GetNumaAvailableMemoryNodeEx(
  int Node,
  Pointer<Uint64> AvailableBytes,
) =>
    _GetNumaAvailableMemoryNodeEx(
      Node,
      AvailableBytes,
    );

late final _GetNumaAvailableMemoryNodeEx = _kernel32.lookupFunction<
    Int32 Function(
  Uint16 Node,
  Pointer<Uint64> AvailableBytes,
),
    int Function(
  int Node,
  Pointer<Uint64> AvailableBytes,
)>('GetNumaAvailableMemoryNodeEx');

int GetNumaHighestNodeNumber(
  Pointer<Uint32> HighestNodeNumber,
) =>
    _GetNumaHighestNodeNumber(
      HighestNodeNumber,
    );

late final _GetNumaHighestNodeNumber = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> HighestNodeNumber,
),
    int Function(
  Pointer<Uint32> HighestNodeNumber,
)>('GetNumaHighestNodeNumber');

int GetNumaNodeNumberFromHandle(
  int hFile,
  Pointer<Uint16> NodeNumber,
) =>
    _GetNumaNodeNumberFromHandle(
      hFile,
      NodeNumber,
    );

late final _GetNumaNodeNumberFromHandle = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<Uint16> NodeNumber,
),
    int Function(
  int hFile,
  Pointer<Uint16> NodeNumber,
)>('GetNumaNodeNumberFromHandle');

int GetNumaNodeProcessorMask(
  int Node,
  Pointer<Uint64> ProcessorMask,
) =>
    _GetNumaNodeProcessorMask(
      Node,
      ProcessorMask,
    );

late final _GetNumaNodeProcessorMask = _kernel32.lookupFunction<
    Int32 Function(
  Uint8 Node,
  Pointer<Uint64> ProcessorMask,
),
    int Function(
  int Node,
  Pointer<Uint64> ProcessorMask,
)>('GetNumaNodeProcessorMask');

int GetNumaNodeProcessorMask2(
  int NodeNumber,
  Pointer<GROUP_AFFINITY> ProcessorMasks,
  int ProcessorMaskCount,
  Pointer<Uint16> RequiredMaskCount,
) =>
    _GetNumaNodeProcessorMask2(
      NodeNumber,
      ProcessorMasks,
      ProcessorMaskCount,
      RequiredMaskCount,
    );

late final _GetNumaNodeProcessorMask2 = _kernel32.lookupFunction<
    Int32 Function(
  Uint16 NodeNumber,
  Pointer<GROUP_AFFINITY> ProcessorMasks,
  Uint16 ProcessorMaskCount,
  Pointer<Uint16> RequiredMaskCount,
),
    int Function(
  int NodeNumber,
  Pointer<GROUP_AFFINITY> ProcessorMasks,
  int ProcessorMaskCount,
  Pointer<Uint16> RequiredMaskCount,
)>('GetNumaNodeProcessorMask2');

int GetNumaNodeProcessorMaskEx(
  int Node,
  Pointer<GROUP_AFFINITY> ProcessorMask,
) =>
    _GetNumaNodeProcessorMaskEx(
      Node,
      ProcessorMask,
    );

late final _GetNumaNodeProcessorMaskEx = _kernel32.lookupFunction<
    Int32 Function(
  Uint16 Node,
  Pointer<GROUP_AFFINITY> ProcessorMask,
),
    int Function(
  int Node,
  Pointer<GROUP_AFFINITY> ProcessorMask,
)>('GetNumaNodeProcessorMaskEx');

int GetNumaProcessorNode(
  int Processor,
  Pointer<Uint8> NodeNumber,
) =>
    _GetNumaProcessorNode(
      Processor,
      NodeNumber,
    );

late final _GetNumaProcessorNode = _kernel32.lookupFunction<
    Int32 Function(
  Uint8 Processor,
  Pointer<Uint8> NodeNumber,
),
    int Function(
  int Processor,
  Pointer<Uint8> NodeNumber,
)>('GetNumaProcessorNode');

int GetNumaProcessorNodeEx(
  Pointer<PROCESSOR_NUMBER> Processor,
  Pointer<Uint16> NodeNumber,
) =>
    _GetNumaProcessorNodeEx(
      Processor,
      NodeNumber,
    );

late final _GetNumaProcessorNodeEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<PROCESSOR_NUMBER> Processor,
  Pointer<Uint16> NodeNumber,
),
    int Function(
  Pointer<PROCESSOR_NUMBER> Processor,
  Pointer<Uint16> NodeNumber,
)>('GetNumaProcessorNodeEx');

int GetNumaProximityNode(
  int ProximityId,
  Pointer<Uint8> NodeNumber,
) =>
    _GetNumaProximityNode(
      ProximityId,
      NodeNumber,
    );

late final _GetNumaProximityNode = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 ProximityId,
  Pointer<Uint8> NodeNumber,
),
    int Function(
  int ProximityId,
  Pointer<Uint8> NodeNumber,
)>('GetNumaProximityNode');

int GetNumaProximityNodeEx(
  int ProximityId,
  Pointer<Uint16> NodeNumber,
) =>
    _GetNumaProximityNodeEx(
      ProximityId,
      NodeNumber,
    );

late final _GetNumaProximityNodeEx = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 ProximityId,
  Pointer<Uint16> NodeNumber,
),
    int Function(
  int ProximityId,
  Pointer<Uint16> NodeNumber,
)>('GetNumaProximityNodeEx');

int GetPriorityClass(
  int hProcess,
) =>
    _GetPriorityClass(
      hProcess,
    );

late final _GetPriorityClass = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hProcess,
),
    int Function(
  int hProcess,
)>('GetPriorityClass');

int GetProcessAffinityMask(
  int hProcess,
  Pointer<IntPtr> lpProcessAffinityMask,
  Pointer<IntPtr> lpSystemAffinityMask,
) =>
    _GetProcessAffinityMask(
      hProcess,
      lpProcessAffinityMask,
      lpSystemAffinityMask,
    );

late final _GetProcessAffinityMask = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<IntPtr> lpProcessAffinityMask,
  Pointer<IntPtr> lpSystemAffinityMask,
),
    int Function(
  int hProcess,
  Pointer<IntPtr> lpProcessAffinityMask,
  Pointer<IntPtr> lpSystemAffinityMask,
)>('GetProcessAffinityMask');

int GetProcessDEPPolicy(
  int hProcess,
  Pointer<Uint32> lpFlags,
  Pointer<Int32> lpPermanent,
) =>
    _GetProcessDEPPolicy(
      hProcess,
      lpFlags,
      lpPermanent,
    );

late final _GetProcessDEPPolicy = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Uint32> lpFlags,
  Pointer<Int32> lpPermanent,
),
    int Function(
  int hProcess,
  Pointer<Uint32> lpFlags,
  Pointer<Int32> lpPermanent,
)>('GetProcessDEPPolicy');

int GetProcessDefaultCpuSetMasks(
  int Process,
  Pointer<GROUP_AFFINITY> CpuSetMasks,
  int CpuSetMaskCount,
  Pointer<Uint16> RequiredMaskCount,
) =>
    _GetProcessDefaultCpuSetMasks(
      Process,
      CpuSetMasks,
      CpuSetMaskCount,
      RequiredMaskCount,
    );

late final _GetProcessDefaultCpuSetMasks = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr Process,
  Pointer<GROUP_AFFINITY> CpuSetMasks,
  Uint16 CpuSetMaskCount,
  Pointer<Uint16> RequiredMaskCount,
),
    int Function(
  int Process,
  Pointer<GROUP_AFFINITY> CpuSetMasks,
  int CpuSetMaskCount,
  Pointer<Uint16> RequiredMaskCount,
)>('GetProcessDefaultCpuSetMasks');

int GetProcessDefaultCpuSets(
  int Process,
  Pointer<Uint32> CpuSetIds,
  int CpuSetIdCount,
  Pointer<Uint32> RequiredIdCount,
) =>
    _GetProcessDefaultCpuSets(
      Process,
      CpuSetIds,
      CpuSetIdCount,
      RequiredIdCount,
    );

late final _GetProcessDefaultCpuSets = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr Process,
  Pointer<Uint32> CpuSetIds,
  Uint32 CpuSetIdCount,
  Pointer<Uint32> RequiredIdCount,
),
    int Function(
  int Process,
  Pointer<Uint32> CpuSetIds,
  int CpuSetIdCount,
  Pointer<Uint32> RequiredIdCount,
)>('GetProcessDefaultCpuSets');

int GetProcessGroupAffinity(
  int hProcess,
  Pointer<Uint16> GroupCount,
  Pointer<Uint16> GroupArray,
) =>
    _GetProcessGroupAffinity(
      hProcess,
      GroupCount,
      GroupArray,
    );

late final _GetProcessGroupAffinity = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Uint16> GroupCount,
  Pointer<Uint16> GroupArray,
),
    int Function(
  int hProcess,
  Pointer<Uint16> GroupCount,
  Pointer<Uint16> GroupArray,
)>('GetProcessGroupAffinity');

int GetProcessHandleCount(
  int hProcess,
  Pointer<Uint32> pdwHandleCount,
) =>
    _GetProcessHandleCount(
      hProcess,
      pdwHandleCount,
    );

late final _GetProcessHandleCount = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Uint32> pdwHandleCount,
),
    int Function(
  int hProcess,
  Pointer<Uint32> pdwHandleCount,
)>('GetProcessHandleCount');

int GetProcessId(
  int Process,
) =>
    _GetProcessId(
      Process,
    );

late final _GetProcessId = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr Process,
),
    int Function(
  int Process,
)>('GetProcessId');

int GetProcessIdOfThread(
  int Thread,
) =>
    _GetProcessIdOfThread(
      Thread,
    );

late final _GetProcessIdOfThread = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr Thread,
),
    int Function(
  int Thread,
)>('GetProcessIdOfThread');

int GetProcessInformation(
  int hProcess,
  int ProcessInformationClass,
  Pointer ProcessInformation,
  int ProcessInformationSize,
) =>
    _GetProcessInformation(
      hProcess,
      ProcessInformationClass,
      ProcessInformation,
      ProcessInformationSize,
    );

late final _GetProcessInformation = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Int32 ProcessInformationClass,
  Pointer ProcessInformation,
  Uint32 ProcessInformationSize,
),
    int Function(
  int hProcess,
  int ProcessInformationClass,
  Pointer ProcessInformation,
  int ProcessInformationSize,
)>('GetProcessInformation');

int GetProcessIoCounters(
  int hProcess,
  Pointer<IO_COUNTERS> lpIoCounters,
) =>
    _GetProcessIoCounters(
      hProcess,
      lpIoCounters,
    );

late final _GetProcessIoCounters = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<IO_COUNTERS> lpIoCounters,
),
    int Function(
  int hProcess,
  Pointer<IO_COUNTERS> lpIoCounters,
)>('GetProcessIoCounters');

int GetProcessMitigationPolicy(
  int hProcess,
  int MitigationPolicy,
  Pointer lpBuffer,
  int dwLength,
) =>
    _GetProcessMitigationPolicy(
      hProcess,
      MitigationPolicy,
      lpBuffer,
      dwLength,
    );

late final _GetProcessMitigationPolicy = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Int32 MitigationPolicy,
  Pointer lpBuffer,
  IntPtr dwLength,
),
    int Function(
  int hProcess,
  int MitigationPolicy,
  Pointer lpBuffer,
  int dwLength,
)>('GetProcessMitigationPolicy');

int GetProcessPriorityBoost(
  int hProcess,
  Pointer<Int32> pDisablePriorityBoost,
) =>
    _GetProcessPriorityBoost(
      hProcess,
      pDisablePriorityBoost,
    );

late final _GetProcessPriorityBoost = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Int32> pDisablePriorityBoost,
),
    int Function(
  int hProcess,
  Pointer<Int32> pDisablePriorityBoost,
)>('GetProcessPriorityBoost');

int GetProcessShutdownParameters(
  Pointer<Uint32> lpdwLevel,
  Pointer<Uint32> lpdwFlags,
) =>
    _GetProcessShutdownParameters(
      lpdwLevel,
      lpdwFlags,
    );

late final _GetProcessShutdownParameters = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> lpdwLevel,
  Pointer<Uint32> lpdwFlags,
),
    int Function(
  Pointer<Uint32> lpdwLevel,
  Pointer<Uint32> lpdwFlags,
)>('GetProcessShutdownParameters');

int GetProcessTimes(
  int hProcess,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpExitTime,
  Pointer<FILETIME> lpKernelTime,
  Pointer<FILETIME> lpUserTime,
) =>
    _GetProcessTimes(
      hProcess,
      lpCreationTime,
      lpExitTime,
      lpKernelTime,
      lpUserTime,
    );

late final _GetProcessTimes = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpExitTime,
  Pointer<FILETIME> lpKernelTime,
  Pointer<FILETIME> lpUserTime,
),
    int Function(
  int hProcess,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpExitTime,
  Pointer<FILETIME> lpKernelTime,
  Pointer<FILETIME> lpUserTime,
)>('GetProcessTimes');

int GetProcessVersion(
  int ProcessId,
) =>
    _GetProcessVersion(
      ProcessId,
    );

late final _GetProcessVersion = _kernel32.lookupFunction<
    Uint32 Function(
  Uint32 ProcessId,
),
    int Function(
  int ProcessId,
)>('GetProcessVersion');

int GetProcessWorkingSetSize(
  int hProcess,
  Pointer<IntPtr> lpMinimumWorkingSetSize,
  Pointer<IntPtr> lpMaximumWorkingSetSize,
) =>
    _GetProcessWorkingSetSize(
      hProcess,
      lpMinimumWorkingSetSize,
      lpMaximumWorkingSetSize,
    );

late final _GetProcessWorkingSetSize = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<IntPtr> lpMinimumWorkingSetSize,
  Pointer<IntPtr> lpMaximumWorkingSetSize,
),
    int Function(
  int hProcess,
  Pointer<IntPtr> lpMinimumWorkingSetSize,
  Pointer<IntPtr> lpMaximumWorkingSetSize,
)>('GetProcessWorkingSetSize');

void GetStartupInfo(
  Pointer<STARTUPINFO> lpStartupInfo,
) =>
    _GetStartupInfo(
      lpStartupInfo,
    );

late final _GetStartupInfo = _kernel32.lookupFunction<
    Void Function(
  Pointer<STARTUPINFO> lpStartupInfo,
),
    void Function(
  Pointer<STARTUPINFO> lpStartupInfo,
)>('GetStartupInfoW');

int GetSystemTimes(
  Pointer<FILETIME> lpIdleTime,
  Pointer<FILETIME> lpKernelTime,
  Pointer<FILETIME> lpUserTime,
) =>
    _GetSystemTimes(
      lpIdleTime,
      lpKernelTime,
      lpUserTime,
    );

late final _GetSystemTimes = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<FILETIME> lpIdleTime,
  Pointer<FILETIME> lpKernelTime,
  Pointer<FILETIME> lpUserTime,
),
    int Function(
  Pointer<FILETIME> lpIdleTime,
  Pointer<FILETIME> lpKernelTime,
  Pointer<FILETIME> lpUserTime,
)>('GetSystemTimes');

int GetThreadDescription(
  int hThread,
  Pointer<Pointer<Utf16>> ppszThreadDescription,
) =>
    _GetThreadDescription(
      hThread,
      ppszThreadDescription,
    );

late final _GetThreadDescription = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
  Pointer<Pointer<Utf16>> ppszThreadDescription,
),
    int Function(
  int hThread,
  Pointer<Pointer<Utf16>> ppszThreadDescription,
)>('GetThreadDescription');

int GetThreadGroupAffinity(
  int hThread,
  Pointer<GROUP_AFFINITY> GroupAffinity,
) =>
    _GetThreadGroupAffinity(
      hThread,
      GroupAffinity,
    );

late final _GetThreadGroupAffinity = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
  Pointer<GROUP_AFFINITY> GroupAffinity,
),
    int Function(
  int hThread,
  Pointer<GROUP_AFFINITY> GroupAffinity,
)>('GetThreadGroupAffinity');

int GetThreadIOPendingFlag(
  int hThread,
  Pointer<Int32> lpIOIsPending,
) =>
    _GetThreadIOPendingFlag(
      hThread,
      lpIOIsPending,
    );

late final _GetThreadIOPendingFlag = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
  Pointer<Int32> lpIOIsPending,
),
    int Function(
  int hThread,
  Pointer<Int32> lpIOIsPending,
)>('GetThreadIOPendingFlag');

int GetThreadId(
  int Thread,
) =>
    _GetThreadId(
      Thread,
    );

late final _GetThreadId = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr Thread,
),
    int Function(
  int Thread,
)>('GetThreadId');

int GetThreadIdealProcessorEx(
  int hThread,
  Pointer<PROCESSOR_NUMBER> lpIdealProcessor,
) =>
    _GetThreadIdealProcessorEx(
      hThread,
      lpIdealProcessor,
    );

late final _GetThreadIdealProcessorEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
  Pointer<PROCESSOR_NUMBER> lpIdealProcessor,
),
    int Function(
  int hThread,
  Pointer<PROCESSOR_NUMBER> lpIdealProcessor,
)>('GetThreadIdealProcessorEx');

int GetThreadInformation(
  int hThread,
  int ThreadInformationClass,
  Pointer ThreadInformation,
  int ThreadInformationSize,
) =>
    _GetThreadInformation(
      hThread,
      ThreadInformationClass,
      ThreadInformation,
      ThreadInformationSize,
    );

late final _GetThreadInformation = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
  Int32 ThreadInformationClass,
  Pointer ThreadInformation,
  Uint32 ThreadInformationSize,
),
    int Function(
  int hThread,
  int ThreadInformationClass,
  Pointer ThreadInformation,
  int ThreadInformationSize,
)>('GetThreadInformation');

int GetThreadPriority(
  int hThread,
) =>
    _GetThreadPriority(
      hThread,
    );

late final _GetThreadPriority = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
),
    int Function(
  int hThread,
)>('GetThreadPriority');

int GetThreadPriorityBoost(
  int hThread,
  Pointer<Int32> pDisablePriorityBoost,
) =>
    _GetThreadPriorityBoost(
      hThread,
      pDisablePriorityBoost,
    );

late final _GetThreadPriorityBoost = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
  Pointer<Int32> pDisablePriorityBoost,
),
    int Function(
  int hThread,
  Pointer<Int32> pDisablePriorityBoost,
)>('GetThreadPriorityBoost');

int GetThreadSelectedCpuSetMasks(
  int Thread,
  Pointer<GROUP_AFFINITY> CpuSetMasks,
  int CpuSetMaskCount,
  Pointer<Uint16> RequiredMaskCount,
) =>
    _GetThreadSelectedCpuSetMasks(
      Thread,
      CpuSetMasks,
      CpuSetMaskCount,
      RequiredMaskCount,
    );

late final _GetThreadSelectedCpuSetMasks = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr Thread,
  Pointer<GROUP_AFFINITY> CpuSetMasks,
  Uint16 CpuSetMaskCount,
  Pointer<Uint16> RequiredMaskCount,
),
    int Function(
  int Thread,
  Pointer<GROUP_AFFINITY> CpuSetMasks,
  int CpuSetMaskCount,
  Pointer<Uint16> RequiredMaskCount,
)>('GetThreadSelectedCpuSetMasks');

int GetThreadSelectedCpuSets(
  int Thread,
  Pointer<Uint32> CpuSetIds,
  int CpuSetIdCount,
  Pointer<Uint32> RequiredIdCount,
) =>
    _GetThreadSelectedCpuSets(
      Thread,
      CpuSetIds,
      CpuSetIdCount,
      RequiredIdCount,
    );

late final _GetThreadSelectedCpuSets = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr Thread,
  Pointer<Uint32> CpuSetIds,
  Uint32 CpuSetIdCount,
  Pointer<Uint32> RequiredIdCount,
),
    int Function(
  int Thread,
  Pointer<Uint32> CpuSetIds,
  int CpuSetIdCount,
  Pointer<Uint32> RequiredIdCount,
)>('GetThreadSelectedCpuSets');

int GetThreadTimes(
  int hThread,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpExitTime,
  Pointer<FILETIME> lpKernelTime,
  Pointer<FILETIME> lpUserTime,
) =>
    _GetThreadTimes(
      hThread,
      lpCreationTime,
      lpExitTime,
      lpKernelTime,
      lpUserTime,
    );

late final _GetThreadTimes = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpExitTime,
  Pointer<FILETIME> lpKernelTime,
  Pointer<FILETIME> lpUserTime,
),
    int Function(
  int hThread,
  Pointer<FILETIME> lpCreationTime,
  Pointer<FILETIME> lpExitTime,
  Pointer<FILETIME> lpKernelTime,
  Pointer<FILETIME> lpUserTime,
)>('GetThreadTimes');

int GetUmsCompletionListEvent(
  Pointer UmsCompletionList,
  Pointer<IntPtr> UmsCompletionEvent,
) =>
    _GetUmsCompletionListEvent(
      UmsCompletionList,
      UmsCompletionEvent,
    );

late final _GetUmsCompletionListEvent = _kernel32.lookupFunction<
    Int32 Function(
  Pointer UmsCompletionList,
  Pointer<IntPtr> UmsCompletionEvent,
),
    int Function(
  Pointer UmsCompletionList,
  Pointer<IntPtr> UmsCompletionEvent,
)>('GetUmsCompletionListEvent');

int GetUmsSystemThreadInformation(
  int ThreadHandle,
  Pointer<UMS_SYSTEM_THREAD_INFORMATION> SystemThreadInfo,
) =>
    _GetUmsSystemThreadInformation(
      ThreadHandle,
      SystemThreadInfo,
    );

late final _GetUmsSystemThreadInformation = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr ThreadHandle,
  Pointer<UMS_SYSTEM_THREAD_INFORMATION> SystemThreadInfo,
),
    int Function(
  int ThreadHandle,
  Pointer<UMS_SYSTEM_THREAD_INFORMATION> SystemThreadInfo,
)>('GetUmsSystemThreadInformation');

int InitOnceBeginInitialize(
  Pointer<RTL_RUN_ONCE> lpInitOnce,
  int dwFlags,
  Pointer<Int32> fPending,
  Pointer<Pointer> lpContext,
) =>
    _InitOnceBeginInitialize(
      lpInitOnce,
      dwFlags,
      fPending,
      lpContext,
    );

late final _InitOnceBeginInitialize = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<RTL_RUN_ONCE> lpInitOnce,
  Uint32 dwFlags,
  Pointer<Int32> fPending,
  Pointer<Pointer> lpContext,
),
    int Function(
  Pointer<RTL_RUN_ONCE> lpInitOnce,
  int dwFlags,
  Pointer<Int32> fPending,
  Pointer<Pointer> lpContext,
)>('InitOnceBeginInitialize');

int InitOnceComplete(
  Pointer<RTL_RUN_ONCE> lpInitOnce,
  int dwFlags,
  Pointer lpContext,
) =>
    _InitOnceComplete(
      lpInitOnce,
      dwFlags,
      lpContext,
    );

late final _InitOnceComplete = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<RTL_RUN_ONCE> lpInitOnce,
  Uint32 dwFlags,
  Pointer lpContext,
),
    int Function(
  Pointer<RTL_RUN_ONCE> lpInitOnce,
  int dwFlags,
  Pointer lpContext,
)>('InitOnceComplete');

int InitOnceExecuteOnce(
  Pointer<RTL_RUN_ONCE> InitOnce,
  Pointer<NativeFunction<PINIT_ONCE_FN>> InitFn,
  Pointer Parameter,
  Pointer<Pointer> Context,
) =>
    _InitOnceExecuteOnce(
      InitOnce,
      InitFn,
      Parameter,
      Context,
    );

late final _InitOnceExecuteOnce = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<RTL_RUN_ONCE> InitOnce,
  Pointer<NativeFunction<PINIT_ONCE_FN>> InitFn,
  Pointer Parameter,
  Pointer<Pointer> Context,
),
    int Function(
  Pointer<RTL_RUN_ONCE> InitOnce,
  Pointer<NativeFunction<PINIT_ONCE_FN>> InitFn,
  Pointer Parameter,
  Pointer<Pointer> Context,
)>('InitOnceExecuteOnce');

void InitOnceInitialize(
  Pointer<RTL_RUN_ONCE> InitOnce,
) =>
    _InitOnceInitialize(
      InitOnce,
    );

late final _InitOnceInitialize = _kernel32.lookupFunction<
    Void Function(
  Pointer<RTL_RUN_ONCE> InitOnce,
),
    void Function(
  Pointer<RTL_RUN_ONCE> InitOnce,
)>('InitOnceInitialize');

void InitializeConditionVariable(
  Pointer<RTL_CONDITION_VARIABLE> ConditionVariable,
) =>
    _InitializeConditionVariable(
      ConditionVariable,
    );

late final _InitializeConditionVariable = _kernel32.lookupFunction<
    Void Function(
  Pointer<RTL_CONDITION_VARIABLE> ConditionVariable,
),
    void Function(
  Pointer<RTL_CONDITION_VARIABLE> ConditionVariable,
)>('InitializeConditionVariable');

void InitializeCriticalSection(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
) =>
    _InitializeCriticalSection(
      lpCriticalSection,
    );

late final _InitializeCriticalSection = _kernel32.lookupFunction<
    Void Function(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
),
    void Function(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
)>('InitializeCriticalSection');

int InitializeCriticalSectionAndSpinCount(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
  int dwSpinCount,
) =>
    _InitializeCriticalSectionAndSpinCount(
      lpCriticalSection,
      dwSpinCount,
    );

late final _InitializeCriticalSectionAndSpinCount = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
  Uint32 dwSpinCount,
),
    int Function(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
  int dwSpinCount,
)>('InitializeCriticalSectionAndSpinCount');

int InitializeCriticalSectionEx(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
  int dwSpinCount,
  int Flags,
) =>
    _InitializeCriticalSectionEx(
      lpCriticalSection,
      dwSpinCount,
      Flags,
    );

late final _InitializeCriticalSectionEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
  Uint32 dwSpinCount,
  Uint32 Flags,
),
    int Function(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
  int dwSpinCount,
  int Flags,
)>('InitializeCriticalSectionEx');

int InitializeProcThreadAttributeList(
  Pointer lpAttributeList,
  int dwAttributeCount,
  int dwFlags,
  Pointer<IntPtr> lpSize,
) =>
    _InitializeProcThreadAttributeList(
      lpAttributeList,
      dwAttributeCount,
      dwFlags,
      lpSize,
    );

late final _InitializeProcThreadAttributeList = _kernel32.lookupFunction<
    Int32 Function(
  Pointer lpAttributeList,
  Uint32 dwAttributeCount,
  Uint32 dwFlags,
  Pointer<IntPtr> lpSize,
),
    int Function(
  Pointer lpAttributeList,
  int dwAttributeCount,
  int dwFlags,
  Pointer<IntPtr> lpSize,
)>('InitializeProcThreadAttributeList');

void InitializeSListHead(
  Pointer<SLIST_HEADER> ListHead,
) =>
    _InitializeSListHead(
      ListHead,
    );

late final _InitializeSListHead = _kernel32.lookupFunction<
    Void Function(
  Pointer<SLIST_HEADER> ListHead,
),
    void Function(
  Pointer<SLIST_HEADER> ListHead,
)>('InitializeSListHead');

void InitializeSRWLock(
  Pointer<RTL_SRWLOCK> SRWLock,
) =>
    _InitializeSRWLock(
      SRWLock,
    );

late final _InitializeSRWLock = _kernel32.lookupFunction<
    Void Function(
  Pointer<RTL_SRWLOCK> SRWLock,
),
    void Function(
  Pointer<RTL_SRWLOCK> SRWLock,
)>('InitializeSRWLock');

int InitializeSynchronizationBarrier(
  Pointer<RTL_BARRIER> lpBarrier,
  int lTotalThreads,
  int lSpinCount,
) =>
    _InitializeSynchronizationBarrier(
      lpBarrier,
      lTotalThreads,
      lSpinCount,
    );

late final _InitializeSynchronizationBarrier = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<RTL_BARRIER> lpBarrier,
  Int32 lTotalThreads,
  Int32 lSpinCount,
),
    int Function(
  Pointer<RTL_BARRIER> lpBarrier,
  int lTotalThreads,
  int lSpinCount,
)>('InitializeSynchronizationBarrier');

Pointer<SLIST_ENTRY> InterlockedFlushSList(
  Pointer<SLIST_HEADER> ListHead,
) =>
    _InterlockedFlushSList(
      ListHead,
    );

late final _InterlockedFlushSList = _kernel32.lookupFunction<
    Pointer<SLIST_ENTRY> Function(
  Pointer<SLIST_HEADER> ListHead,
),
    Pointer<SLIST_ENTRY> Function(
  Pointer<SLIST_HEADER> ListHead,
)>('InterlockedFlushSList');

Pointer<SLIST_ENTRY> InterlockedPopEntrySList(
  Pointer<SLIST_HEADER> ListHead,
) =>
    _InterlockedPopEntrySList(
      ListHead,
    );

late final _InterlockedPopEntrySList = _kernel32.lookupFunction<
    Pointer<SLIST_ENTRY> Function(
  Pointer<SLIST_HEADER> ListHead,
),
    Pointer<SLIST_ENTRY> Function(
  Pointer<SLIST_HEADER> ListHead,
)>('InterlockedPopEntrySList');

Pointer<SLIST_ENTRY> InterlockedPushEntrySList(
  Pointer<SLIST_HEADER> ListHead,
  Pointer<SLIST_ENTRY> ListEntry,
) =>
    _InterlockedPushEntrySList(
      ListHead,
      ListEntry,
    );

late final _InterlockedPushEntrySList = _kernel32.lookupFunction<
    Pointer<SLIST_ENTRY> Function(
  Pointer<SLIST_HEADER> ListHead,
  Pointer<SLIST_ENTRY> ListEntry,
),
    Pointer<SLIST_ENTRY> Function(
  Pointer<SLIST_HEADER> ListHead,
  Pointer<SLIST_ENTRY> ListEntry,
)>('InterlockedPushEntrySList');

Pointer<SLIST_ENTRY> InterlockedPushListSListEx(
  Pointer<SLIST_HEADER> ListHead,
  Pointer<SLIST_ENTRY> $List,
  Pointer<SLIST_ENTRY> ListEnd,
  int Count,
) =>
    _InterlockedPushListSListEx(
      ListHead,
      $List,
      ListEnd,
      Count,
    );

late final _InterlockedPushListSListEx = _kernel32.lookupFunction<
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
)>('InterlockedPushListSListEx');

int IsProcessCritical(
  int hProcess,
  Pointer<Int32> Critical,
) =>
    _IsProcessCritical(
      hProcess,
      Critical,
    );

late final _IsProcessCritical = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Int32> Critical,
),
    int Function(
  int hProcess,
  Pointer<Int32> Critical,
)>('IsProcessCritical');

int IsProcessorFeaturePresent(
  int ProcessorFeature,
) =>
    _IsProcessorFeaturePresent(
      ProcessorFeature,
    );

late final _IsProcessorFeaturePresent = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 ProcessorFeature,
),
    int Function(
  int ProcessorFeature,
)>('IsProcessorFeaturePresent');

int IsThreadAFiber() => _IsThreadAFiber();

late final _IsThreadAFiber = _kernel32
    .lookupFunction<Int32 Function(), int Function()>('IsThreadAFiber');

int IsThreadpoolTimerSet(
  Pointer<TP_TIMER> pti,
) =>
    _IsThreadpoolTimerSet(
      pti,
    );

late final _IsThreadpoolTimerSet = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<TP_TIMER> pti,
),
    int Function(
  Pointer<TP_TIMER> pti,
)>('IsThreadpoolTimerSet');

int IsWow64Process(
  int hProcess,
  Pointer<Int32> Wow64Process,
) =>
    _IsWow64Process(
      hProcess,
      Wow64Process,
    );

late final _IsWow64Process = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Int32> Wow64Process,
),
    int Function(
  int hProcess,
  Pointer<Int32> Wow64Process,
)>('IsWow64Process');

int IsWow64Process2(
  int hProcess,
  Pointer<Uint16> pProcessMachine,
  Pointer<Uint16> pNativeMachine,
) =>
    _IsWow64Process2(
      hProcess,
      pProcessMachine,
      pNativeMachine,
    );

late final _IsWow64Process2 = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Uint16> pProcessMachine,
  Pointer<Uint16> pNativeMachine,
),
    int Function(
  int hProcess,
  Pointer<Uint16> pProcessMachine,
  Pointer<Uint16> pNativeMachine,
)>('IsWow64Process2');

void LeaveCriticalSection(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
) =>
    _LeaveCriticalSection(
      lpCriticalSection,
    );

late final _LeaveCriticalSection = _kernel32.lookupFunction<
    Void Function(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
),
    void Function(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
)>('LeaveCriticalSection');

void LeaveCriticalSectionWhenCallbackReturns(
  Pointer<TP_CALLBACK_INSTANCE> pci,
  Pointer<RTL_CRITICAL_SECTION> pcs,
) =>
    _LeaveCriticalSectionWhenCallbackReturns(
      pci,
      pcs,
    );

late final _LeaveCriticalSectionWhenCallbackReturns = _kernel32.lookupFunction<
    Void Function(
  Pointer<TP_CALLBACK_INSTANCE> pci,
  Pointer<RTL_CRITICAL_SECTION> pcs,
),
    void Function(
  Pointer<TP_CALLBACK_INSTANCE> pci,
  Pointer<RTL_CRITICAL_SECTION> pcs,
)>('LeaveCriticalSectionWhenCallbackReturns');

int OpenEvent(
  int dwDesiredAccess,
  int bInheritHandle,
  Pointer<Utf16> lpName,
) =>
    _OpenEvent(
      dwDesiredAccess,
      bInheritHandle,
      lpName,
    );

late final _OpenEvent = _kernel32.lookupFunction<
    IntPtr Function(
  Uint32 dwDesiredAccess,
  Int32 bInheritHandle,
  Pointer<Utf16> lpName,
),
    int Function(
  int dwDesiredAccess,
  int bInheritHandle,
  Pointer<Utf16> lpName,
)>('OpenEventW');

int OpenMutex(
  int dwDesiredAccess,
  int bInheritHandle,
  Pointer<Utf16> lpName,
) =>
    _OpenMutex(
      dwDesiredAccess,
      bInheritHandle,
      lpName,
    );

late final _OpenMutex = _kernel32.lookupFunction<
    IntPtr Function(
  Uint32 dwDesiredAccess,
  Int32 bInheritHandle,
  Pointer<Utf16> lpName,
),
    int Function(
  int dwDesiredAccess,
  int bInheritHandle,
  Pointer<Utf16> lpName,
)>('OpenMutexW');

int OpenPrivateNamespace(
  Pointer lpBoundaryDescriptor,
  Pointer<Utf16> lpAliasPrefix,
) =>
    _OpenPrivateNamespace(
      lpBoundaryDescriptor,
      lpAliasPrefix,
    );

late final _OpenPrivateNamespace = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer lpBoundaryDescriptor,
  Pointer<Utf16> lpAliasPrefix,
),
    int Function(
  Pointer lpBoundaryDescriptor,
  Pointer<Utf16> lpAliasPrefix,
)>('OpenPrivateNamespaceW');

int OpenProcess(
  int dwDesiredAccess,
  int bInheritHandle,
  int dwProcessId,
) =>
    _OpenProcess(
      dwDesiredAccess,
      bInheritHandle,
      dwProcessId,
    );

late final _OpenProcess = _kernel32.lookupFunction<
    IntPtr Function(
  Uint32 dwDesiredAccess,
  Int32 bInheritHandle,
  Uint32 dwProcessId,
),
    int Function(
  int dwDesiredAccess,
  int bInheritHandle,
  int dwProcessId,
)>('OpenProcess');

int OpenSemaphore(
  int dwDesiredAccess,
  int bInheritHandle,
  Pointer<Utf16> lpName,
) =>
    _OpenSemaphore(
      dwDesiredAccess,
      bInheritHandle,
      lpName,
    );

late final _OpenSemaphore = _kernel32.lookupFunction<
    IntPtr Function(
  Uint32 dwDesiredAccess,
  Int32 bInheritHandle,
  Pointer<Utf16> lpName,
),
    int Function(
  int dwDesiredAccess,
  int bInheritHandle,
  Pointer<Utf16> lpName,
)>('OpenSemaphoreW');

int OpenThread(
  int dwDesiredAccess,
  int bInheritHandle,
  int dwThreadId,
) =>
    _OpenThread(
      dwDesiredAccess,
      bInheritHandle,
      dwThreadId,
    );

late final _OpenThread = _kernel32.lookupFunction<
    IntPtr Function(
  Uint32 dwDesiredAccess,
  Int32 bInheritHandle,
  Uint32 dwThreadId,
),
    int Function(
  int dwDesiredAccess,
  int bInheritHandle,
  int dwThreadId,
)>('OpenThread');

int OpenWaitableTimer(
  int dwDesiredAccess,
  int bInheritHandle,
  Pointer<Utf16> lpTimerName,
) =>
    _OpenWaitableTimer(
      dwDesiredAccess,
      bInheritHandle,
      lpTimerName,
    );

late final _OpenWaitableTimer = _kernel32.lookupFunction<
    IntPtr Function(
  Uint32 dwDesiredAccess,
  Int32 bInheritHandle,
  Pointer<Utf16> lpTimerName,
),
    int Function(
  int dwDesiredAccess,
  int bInheritHandle,
  Pointer<Utf16> lpTimerName,
)>('OpenWaitableTimerW');

int PulseEvent(
  int hEvent,
) =>
    _PulseEvent(
      hEvent,
    );

late final _PulseEvent = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hEvent,
),
    int Function(
  int hEvent,
)>('PulseEvent');

int QueryDepthSList(
  Pointer<SLIST_HEADER> ListHead,
) =>
    _QueryDepthSList(
      ListHead,
    );

late final _QueryDepthSList = _kernel32.lookupFunction<
    Uint16 Function(
  Pointer<SLIST_HEADER> ListHead,
),
    int Function(
  Pointer<SLIST_HEADER> ListHead,
)>('QueryDepthSList');

int QueryFullProcessImageName(
  int hProcess,
  int dwFlags,
  Pointer<Utf16> lpExeName,
  Pointer<Uint32> lpdwSize,
) =>
    _QueryFullProcessImageName(
      hProcess,
      dwFlags,
      lpExeName,
      lpdwSize,
    );

late final _QueryFullProcessImageName = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint32 dwFlags,
  Pointer<Utf16> lpExeName,
  Pointer<Uint32> lpdwSize,
),
    int Function(
  int hProcess,
  int dwFlags,
  Pointer<Utf16> lpExeName,
  Pointer<Uint32> lpdwSize,
)>('QueryFullProcessImageNameW');

int QueryProcessAffinityUpdateMode(
  int hProcess,
  Pointer<Uint32> lpdwFlags,
) =>
    _QueryProcessAffinityUpdateMode(
      hProcess,
      lpdwFlags,
    );

late final _QueryProcessAffinityUpdateMode = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Uint32> lpdwFlags,
),
    int Function(
  int hProcess,
  Pointer<Uint32> lpdwFlags,
)>('QueryProcessAffinityUpdateMode');

int QueryProtectedPolicy(
  Pointer<GUID> PolicyGuid,
  Pointer<IntPtr> PolicyValue,
) =>
    _QueryProtectedPolicy(
      PolicyGuid,
      PolicyValue,
    );

late final _QueryProtectedPolicy = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<GUID> PolicyGuid,
  Pointer<IntPtr> PolicyValue,
),
    int Function(
  Pointer<GUID> PolicyGuid,
  Pointer<IntPtr> PolicyValue,
)>('QueryProtectedPolicy');

int QueryThreadpoolStackInformation(
  int ptpp,
  Pointer<TP_POOL_STACK_INFORMATION> ptpsi,
) =>
    _QueryThreadpoolStackInformation(
      ptpp,
      ptpsi,
    );

late final _QueryThreadpoolStackInformation = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr ptpp,
  Pointer<TP_POOL_STACK_INFORMATION> ptpsi,
),
    int Function(
  int ptpp,
  Pointer<TP_POOL_STACK_INFORMATION> ptpsi,
)>('QueryThreadpoolStackInformation');

int QueryUmsThreadInformation(
  Pointer UmsThread,
  int UmsThreadInfoClass,
  Pointer UmsThreadInformation,
  int UmsThreadInformationLength,
  Pointer<Uint32> ReturnLength,
) =>
    _QueryUmsThreadInformation(
      UmsThread,
      UmsThreadInfoClass,
      UmsThreadInformation,
      UmsThreadInformationLength,
      ReturnLength,
    );

late final _QueryUmsThreadInformation = _kernel32.lookupFunction<
    Int32 Function(
  Pointer UmsThread,
  Int32 UmsThreadInfoClass,
  Pointer UmsThreadInformation,
  Uint32 UmsThreadInformationLength,
  Pointer<Uint32> ReturnLength,
),
    int Function(
  Pointer UmsThread,
  int UmsThreadInfoClass,
  Pointer UmsThreadInformation,
  int UmsThreadInformationLength,
  Pointer<Uint32> ReturnLength,
)>('QueryUmsThreadInformation');

int QueueUserAPC(
  Pointer<NativeFunction<PAPCFUNC>> pfnAPC,
  int hThread,
  int dwData,
) =>
    _QueueUserAPC(
      pfnAPC,
      hThread,
      dwData,
    );

late final _QueueUserAPC = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<NativeFunction<PAPCFUNC>> pfnAPC,
  IntPtr hThread,
  IntPtr dwData,
),
    int Function(
  Pointer<NativeFunction<PAPCFUNC>> pfnAPC,
  int hThread,
  int dwData,
)>('QueueUserAPC');

int QueueUserAPC2(
  Pointer<NativeFunction<PAPCFUNC>> ApcRoutine,
  int Thread,
  int Data,
  int Flags,
) =>
    _QueueUserAPC2(
      ApcRoutine,
      Thread,
      Data,
      Flags,
    );

late final _QueueUserAPC2 = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<PAPCFUNC>> ApcRoutine,
  IntPtr Thread,
  IntPtr Data,
  Int32 Flags,
),
    int Function(
  Pointer<NativeFunction<PAPCFUNC>> ApcRoutine,
  int Thread,
  int Data,
  int Flags,
)>('QueueUserAPC2');

int QueueUserWorkItem(
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> Function,
  Pointer Context,
  int Flags,
) =>
    _QueueUserWorkItem(
      Function,
      Context,
      Flags,
    );

late final _QueueUserWorkItem = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> Function,
  Pointer Context,
  Uint32 Flags,
),
    int Function(
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> Function,
  Pointer Context,
  int Flags,
)>('QueueUserWorkItem');

int RegisterWaitForSingleObject(
  Pointer<IntPtr> phNewWaitObject,
  int hObject,
  Pointer<NativeFunction<WAITORTIMERCALLBACK>> Callback,
  Pointer Context,
  int dwMilliseconds,
  int dwFlags,
) =>
    _RegisterWaitForSingleObject(
      phNewWaitObject,
      hObject,
      Callback,
      Context,
      dwMilliseconds,
      dwFlags,
    );

late final _RegisterWaitForSingleObject = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> phNewWaitObject,
  IntPtr hObject,
  Pointer<NativeFunction<WAITORTIMERCALLBACK>> Callback,
  Pointer Context,
  Uint32 dwMilliseconds,
  Uint32 dwFlags,
),
    int Function(
  Pointer<IntPtr> phNewWaitObject,
  int hObject,
  Pointer<NativeFunction<WAITORTIMERCALLBACK>> Callback,
  Pointer Context,
  int dwMilliseconds,
  int dwFlags,
)>('RegisterWaitForSingleObject');

int ReleaseMutex(
  int hMutex,
) =>
    _ReleaseMutex(
      hMutex,
    );

late final _ReleaseMutex = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hMutex,
),
    int Function(
  int hMutex,
)>('ReleaseMutex');

void ReleaseMutexWhenCallbackReturns(
  Pointer<TP_CALLBACK_INSTANCE> pci,
  int mut,
) =>
    _ReleaseMutexWhenCallbackReturns(
      pci,
      mut,
    );

late final _ReleaseMutexWhenCallbackReturns = _kernel32.lookupFunction<
    Void Function(
  Pointer<TP_CALLBACK_INSTANCE> pci,
  IntPtr mut,
),
    void Function(
  Pointer<TP_CALLBACK_INSTANCE> pci,
  int mut,
)>('ReleaseMutexWhenCallbackReturns');

void ReleaseSRWLockExclusive(
  Pointer<RTL_SRWLOCK> SRWLock,
) =>
    _ReleaseSRWLockExclusive(
      SRWLock,
    );

late final _ReleaseSRWLockExclusive = _kernel32.lookupFunction<
    Void Function(
  Pointer<RTL_SRWLOCK> SRWLock,
),
    void Function(
  Pointer<RTL_SRWLOCK> SRWLock,
)>('ReleaseSRWLockExclusive');

void ReleaseSRWLockShared(
  Pointer<RTL_SRWLOCK> SRWLock,
) =>
    _ReleaseSRWLockShared(
      SRWLock,
    );

late final _ReleaseSRWLockShared = _kernel32.lookupFunction<
    Void Function(
  Pointer<RTL_SRWLOCK> SRWLock,
),
    void Function(
  Pointer<RTL_SRWLOCK> SRWLock,
)>('ReleaseSRWLockShared');

int ReleaseSemaphore(
  int hSemaphore,
  int lReleaseCount,
  Pointer<Int32> lpPreviousCount,
) =>
    _ReleaseSemaphore(
      hSemaphore,
      lReleaseCount,
      lpPreviousCount,
    );

late final _ReleaseSemaphore = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hSemaphore,
  Int32 lReleaseCount,
  Pointer<Int32> lpPreviousCount,
),
    int Function(
  int hSemaphore,
  int lReleaseCount,
  Pointer<Int32> lpPreviousCount,
)>('ReleaseSemaphore');

void ReleaseSemaphoreWhenCallbackReturns(
  Pointer<TP_CALLBACK_INSTANCE> pci,
  int sem,
  int crel,
) =>
    _ReleaseSemaphoreWhenCallbackReturns(
      pci,
      sem,
      crel,
    );

late final _ReleaseSemaphoreWhenCallbackReturns = _kernel32.lookupFunction<
    Void Function(
  Pointer<TP_CALLBACK_INSTANCE> pci,
  IntPtr sem,
  Uint32 crel,
),
    void Function(
  Pointer<TP_CALLBACK_INSTANCE> pci,
  int sem,
  int crel,
)>('ReleaseSemaphoreWhenCallbackReturns');

int ResetEvent(
  int hEvent,
) =>
    _ResetEvent(
      hEvent,
    );

late final _ResetEvent = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hEvent,
),
    int Function(
  int hEvent,
)>('ResetEvent');

int ResumeThread(
  int hThread,
) =>
    _ResumeThread(
      hThread,
    );

late final _ResumeThread = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hThread,
),
    int Function(
  int hThread,
)>('ResumeThread');

int SetCriticalSectionSpinCount(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
  int dwSpinCount,
) =>
    _SetCriticalSectionSpinCount(
      lpCriticalSection,
      dwSpinCount,
    );

late final _SetCriticalSectionSpinCount = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
  Uint32 dwSpinCount,
),
    int Function(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
  int dwSpinCount,
)>('SetCriticalSectionSpinCount');

int SetEvent(
  int hEvent,
) =>
    _SetEvent(
      hEvent,
    );

late final _SetEvent = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hEvent,
),
    int Function(
  int hEvent,
)>('SetEvent');

void SetEventWhenCallbackReturns(
  Pointer<TP_CALLBACK_INSTANCE> pci,
  int evt,
) =>
    _SetEventWhenCallbackReturns(
      pci,
      evt,
    );

late final _SetEventWhenCallbackReturns = _kernel32.lookupFunction<
    Void Function(
  Pointer<TP_CALLBACK_INSTANCE> pci,
  IntPtr evt,
),
    void Function(
  Pointer<TP_CALLBACK_INSTANCE> pci,
  int evt,
)>('SetEventWhenCallbackReturns');

int SetPriorityClass(
  int hProcess,
  int dwPriorityClass,
) =>
    _SetPriorityClass(
      hProcess,
      dwPriorityClass,
    );

late final _SetPriorityClass = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint32 dwPriorityClass,
),
    int Function(
  int hProcess,
  int dwPriorityClass,
)>('SetPriorityClass');

int SetProcessAffinityMask(
  int hProcess,
  int dwProcessAffinityMask,
) =>
    _SetProcessAffinityMask(
      hProcess,
      dwProcessAffinityMask,
    );

late final _SetProcessAffinityMask = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  IntPtr dwProcessAffinityMask,
),
    int Function(
  int hProcess,
  int dwProcessAffinityMask,
)>('SetProcessAffinityMask');

int SetProcessAffinityUpdateMode(
  int hProcess,
  int dwFlags,
) =>
    _SetProcessAffinityUpdateMode(
      hProcess,
      dwFlags,
    );

late final _SetProcessAffinityUpdateMode = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint32 dwFlags,
),
    int Function(
  int hProcess,
  int dwFlags,
)>('SetProcessAffinityUpdateMode');

int SetProcessDEPPolicy(
  int dwFlags,
) =>
    _SetProcessDEPPolicy(
      dwFlags,
    );

late final _SetProcessDEPPolicy = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
),
    int Function(
  int dwFlags,
)>('SetProcessDEPPolicy');

int SetProcessDefaultCpuSetMasks(
  int Process,
  Pointer<GROUP_AFFINITY> CpuSetMasks,
  int CpuSetMaskCount,
) =>
    _SetProcessDefaultCpuSetMasks(
      Process,
      CpuSetMasks,
      CpuSetMaskCount,
    );

late final _SetProcessDefaultCpuSetMasks = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr Process,
  Pointer<GROUP_AFFINITY> CpuSetMasks,
  Uint16 CpuSetMaskCount,
),
    int Function(
  int Process,
  Pointer<GROUP_AFFINITY> CpuSetMasks,
  int CpuSetMaskCount,
)>('SetProcessDefaultCpuSetMasks');

int SetProcessDefaultCpuSets(
  int Process,
  Pointer<Uint32> CpuSetIds,
  int CpuSetIdCount,
) =>
    _SetProcessDefaultCpuSets(
      Process,
      CpuSetIds,
      CpuSetIdCount,
    );

late final _SetProcessDefaultCpuSets = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr Process,
  Pointer<Uint32> CpuSetIds,
  Uint32 CpuSetIdCount,
),
    int Function(
  int Process,
  Pointer<Uint32> CpuSetIds,
  int CpuSetIdCount,
)>('SetProcessDefaultCpuSets');

int SetProcessDynamicEHContinuationTargets(
  int Process,
  int NumberOfTargets,
  Pointer<PROCESS_DYNAMIC_EH_CONTINUATION_TARGET> Targets,
) =>
    _SetProcessDynamicEHContinuationTargets(
      Process,
      NumberOfTargets,
      Targets,
    );

late final _SetProcessDynamicEHContinuationTargets = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr Process,
  Uint16 NumberOfTargets,
  Pointer<PROCESS_DYNAMIC_EH_CONTINUATION_TARGET> Targets,
),
    int Function(
  int Process,
  int NumberOfTargets,
  Pointer<PROCESS_DYNAMIC_EH_CONTINUATION_TARGET> Targets,
)>('SetProcessDynamicEHContinuationTargets');

int SetProcessDynamicEnforcedCetCompatibleRanges(
  int Process,
  int NumberOfRanges,
  Pointer<PROCESS_DYNAMIC_ENFORCED_ADDRESS_RANGE> Ranges,
) =>
    _SetProcessDynamicEnforcedCetCompatibleRanges(
      Process,
      NumberOfRanges,
      Ranges,
    );

late final _SetProcessDynamicEnforcedCetCompatibleRanges =
    _kernel32.lookupFunction<
        Int32 Function(
  IntPtr Process,
  Uint16 NumberOfRanges,
  Pointer<PROCESS_DYNAMIC_ENFORCED_ADDRESS_RANGE> Ranges,
),
        int Function(
  int Process,
  int NumberOfRanges,
  Pointer<PROCESS_DYNAMIC_ENFORCED_ADDRESS_RANGE> Ranges,
)>('SetProcessDynamicEnforcedCetCompatibleRanges');

int SetProcessInformation(
  int hProcess,
  int ProcessInformationClass,
  Pointer ProcessInformation,
  int ProcessInformationSize,
) =>
    _SetProcessInformation(
      hProcess,
      ProcessInformationClass,
      ProcessInformation,
      ProcessInformationSize,
    );

late final _SetProcessInformation = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Int32 ProcessInformationClass,
  Pointer ProcessInformation,
  Uint32 ProcessInformationSize,
),
    int Function(
  int hProcess,
  int ProcessInformationClass,
  Pointer ProcessInformation,
  int ProcessInformationSize,
)>('SetProcessInformation');

int SetProcessMitigationPolicy(
  int MitigationPolicy,
  Pointer lpBuffer,
  int dwLength,
) =>
    _SetProcessMitigationPolicy(
      MitigationPolicy,
      lpBuffer,
      dwLength,
    );

late final _SetProcessMitigationPolicy = _kernel32.lookupFunction<
    Int32 Function(
  Int32 MitigationPolicy,
  Pointer lpBuffer,
  IntPtr dwLength,
),
    int Function(
  int MitigationPolicy,
  Pointer lpBuffer,
  int dwLength,
)>('SetProcessMitigationPolicy');

int SetProcessPriorityBoost(
  int hProcess,
  int bDisablePriorityBoost,
) =>
    _SetProcessPriorityBoost(
      hProcess,
      bDisablePriorityBoost,
    );

late final _SetProcessPriorityBoost = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Int32 bDisablePriorityBoost,
),
    int Function(
  int hProcess,
  int bDisablePriorityBoost,
)>('SetProcessPriorityBoost');

int SetProcessShutdownParameters(
  int dwLevel,
  int dwFlags,
) =>
    _SetProcessShutdownParameters(
      dwLevel,
      dwFlags,
    );

late final _SetProcessShutdownParameters = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwLevel,
  Uint32 dwFlags,
),
    int Function(
  int dwLevel,
  int dwFlags,
)>('SetProcessShutdownParameters');

int SetProcessWorkingSetSize(
  int hProcess,
  int dwMinimumWorkingSetSize,
  int dwMaximumWorkingSetSize,
) =>
    _SetProcessWorkingSetSize(
      hProcess,
      dwMinimumWorkingSetSize,
      dwMaximumWorkingSetSize,
    );

late final _SetProcessWorkingSetSize = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  IntPtr dwMinimumWorkingSetSize,
  IntPtr dwMaximumWorkingSetSize,
),
    int Function(
  int hProcess,
  int dwMinimumWorkingSetSize,
  int dwMaximumWorkingSetSize,
)>('SetProcessWorkingSetSize');

int SetProtectedPolicy(
  Pointer<GUID> PolicyGuid,
  int PolicyValue,
  Pointer<IntPtr> OldPolicyValue,
) =>
    _SetProtectedPolicy(
      PolicyGuid,
      PolicyValue,
      OldPolicyValue,
    );

late final _SetProtectedPolicy = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<GUID> PolicyGuid,
  IntPtr PolicyValue,
  Pointer<IntPtr> OldPolicyValue,
),
    int Function(
  Pointer<GUID> PolicyGuid,
  int PolicyValue,
  Pointer<IntPtr> OldPolicyValue,
)>('SetProtectedPolicy');

int SetThreadAffinityMask(
  int hThread,
  int dwThreadAffinityMask,
) =>
    _SetThreadAffinityMask(
      hThread,
      dwThreadAffinityMask,
    );

late final _SetThreadAffinityMask = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr hThread,
  IntPtr dwThreadAffinityMask,
),
    int Function(
  int hThread,
  int dwThreadAffinityMask,
)>('SetThreadAffinityMask');

int SetThreadDescription(
  int hThread,
  Pointer<Utf16> lpThreadDescription,
) =>
    _SetThreadDescription(
      hThread,
      lpThreadDescription,
    );

late final _SetThreadDescription = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
  Pointer<Utf16> lpThreadDescription,
),
    int Function(
  int hThread,
  Pointer<Utf16> lpThreadDescription,
)>('SetThreadDescription');

int SetThreadGroupAffinity(
  int hThread,
  Pointer<GROUP_AFFINITY> GroupAffinity,
  Pointer<GROUP_AFFINITY> PreviousGroupAffinity,
) =>
    _SetThreadGroupAffinity(
      hThread,
      GroupAffinity,
      PreviousGroupAffinity,
    );

late final _SetThreadGroupAffinity = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
  Pointer<GROUP_AFFINITY> GroupAffinity,
  Pointer<GROUP_AFFINITY> PreviousGroupAffinity,
),
    int Function(
  int hThread,
  Pointer<GROUP_AFFINITY> GroupAffinity,
  Pointer<GROUP_AFFINITY> PreviousGroupAffinity,
)>('SetThreadGroupAffinity');

int SetThreadIdealProcessor(
  int hThread,
  int dwIdealProcessor,
) =>
    _SetThreadIdealProcessor(
      hThread,
      dwIdealProcessor,
    );

late final _SetThreadIdealProcessor = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hThread,
  Uint32 dwIdealProcessor,
),
    int Function(
  int hThread,
  int dwIdealProcessor,
)>('SetThreadIdealProcessor');

int SetThreadIdealProcessorEx(
  int hThread,
  Pointer<PROCESSOR_NUMBER> lpIdealProcessor,
  Pointer<PROCESSOR_NUMBER> lpPreviousIdealProcessor,
) =>
    _SetThreadIdealProcessorEx(
      hThread,
      lpIdealProcessor,
      lpPreviousIdealProcessor,
    );

late final _SetThreadIdealProcessorEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
  Pointer<PROCESSOR_NUMBER> lpIdealProcessor,
  Pointer<PROCESSOR_NUMBER> lpPreviousIdealProcessor,
),
    int Function(
  int hThread,
  Pointer<PROCESSOR_NUMBER> lpIdealProcessor,
  Pointer<PROCESSOR_NUMBER> lpPreviousIdealProcessor,
)>('SetThreadIdealProcessorEx');

int SetThreadInformation(
  int hThread,
  int ThreadInformationClass,
  Pointer ThreadInformation,
  int ThreadInformationSize,
) =>
    _SetThreadInformation(
      hThread,
      ThreadInformationClass,
      ThreadInformation,
      ThreadInformationSize,
    );

late final _SetThreadInformation = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
  Int32 ThreadInformationClass,
  Pointer ThreadInformation,
  Uint32 ThreadInformationSize,
),
    int Function(
  int hThread,
  int ThreadInformationClass,
  Pointer ThreadInformation,
  int ThreadInformationSize,
)>('SetThreadInformation');

int SetThreadPriority(
  int hThread,
  int nPriority,
) =>
    _SetThreadPriority(
      hThread,
      nPriority,
    );

late final _SetThreadPriority = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
  Int32 nPriority,
),
    int Function(
  int hThread,
  int nPriority,
)>('SetThreadPriority');

int SetThreadPriorityBoost(
  int hThread,
  int bDisablePriorityBoost,
) =>
    _SetThreadPriorityBoost(
      hThread,
      bDisablePriorityBoost,
    );

late final _SetThreadPriorityBoost = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
  Int32 bDisablePriorityBoost,
),
    int Function(
  int hThread,
  int bDisablePriorityBoost,
)>('SetThreadPriorityBoost');

int SetThreadSelectedCpuSetMasks(
  int Thread,
  Pointer<GROUP_AFFINITY> CpuSetMasks,
  int CpuSetMaskCount,
) =>
    _SetThreadSelectedCpuSetMasks(
      Thread,
      CpuSetMasks,
      CpuSetMaskCount,
    );

late final _SetThreadSelectedCpuSetMasks = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr Thread,
  Pointer<GROUP_AFFINITY> CpuSetMasks,
  Uint16 CpuSetMaskCount,
),
    int Function(
  int Thread,
  Pointer<GROUP_AFFINITY> CpuSetMasks,
  int CpuSetMaskCount,
)>('SetThreadSelectedCpuSetMasks');

int SetThreadSelectedCpuSets(
  int Thread,
  Pointer<Uint32> CpuSetIds,
  int CpuSetIdCount,
) =>
    _SetThreadSelectedCpuSets(
      Thread,
      CpuSetIds,
      CpuSetIdCount,
    );

late final _SetThreadSelectedCpuSets = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr Thread,
  Pointer<Uint32> CpuSetIds,
  Uint32 CpuSetIdCount,
),
    int Function(
  int Thread,
  Pointer<Uint32> CpuSetIds,
  int CpuSetIdCount,
)>('SetThreadSelectedCpuSets');

int SetThreadStackGuarantee(
  Pointer<Uint32> StackSizeInBytes,
) =>
    _SetThreadStackGuarantee(
      StackSizeInBytes,
    );

late final _SetThreadStackGuarantee = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> StackSizeInBytes,
),
    int Function(
  Pointer<Uint32> StackSizeInBytes,
)>('SetThreadStackGuarantee');

int SetThreadpoolStackInformation(
  int ptpp,
  Pointer<TP_POOL_STACK_INFORMATION> ptpsi,
) =>
    _SetThreadpoolStackInformation(
      ptpp,
      ptpsi,
    );

late final _SetThreadpoolStackInformation = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr ptpp,
  Pointer<TP_POOL_STACK_INFORMATION> ptpsi,
),
    int Function(
  int ptpp,
  Pointer<TP_POOL_STACK_INFORMATION> ptpsi,
)>('SetThreadpoolStackInformation');

void SetThreadpoolThreadMaximum(
  int ptpp,
  int cthrdMost,
) =>
    _SetThreadpoolThreadMaximum(
      ptpp,
      cthrdMost,
    );

late final _SetThreadpoolThreadMaximum = _kernel32.lookupFunction<
    Void Function(
  IntPtr ptpp,
  Uint32 cthrdMost,
),
    void Function(
  int ptpp,
  int cthrdMost,
)>('SetThreadpoolThreadMaximum');

int SetThreadpoolThreadMinimum(
  int ptpp,
  int cthrdMic,
) =>
    _SetThreadpoolThreadMinimum(
      ptpp,
      cthrdMic,
    );

late final _SetThreadpoolThreadMinimum = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr ptpp,
  Uint32 cthrdMic,
),
    int Function(
  int ptpp,
  int cthrdMic,
)>('SetThreadpoolThreadMinimum');

void SetThreadpoolTimer(
  Pointer<TP_TIMER> pti,
  Pointer<FILETIME> pftDueTime,
  int msPeriod,
  int msWindowLength,
) =>
    _SetThreadpoolTimer(
      pti,
      pftDueTime,
      msPeriod,
      msWindowLength,
    );

late final _SetThreadpoolTimer = _kernel32.lookupFunction<
    Void Function(
  Pointer<TP_TIMER> pti,
  Pointer<FILETIME> pftDueTime,
  Uint32 msPeriod,
  Uint32 msWindowLength,
),
    void Function(
  Pointer<TP_TIMER> pti,
  Pointer<FILETIME> pftDueTime,
  int msPeriod,
  int msWindowLength,
)>('SetThreadpoolTimer');

int SetThreadpoolTimerEx(
  Pointer<TP_TIMER> pti,
  Pointer<FILETIME> pftDueTime,
  int msPeriod,
  int msWindowLength,
) =>
    _SetThreadpoolTimerEx(
      pti,
      pftDueTime,
      msPeriod,
      msWindowLength,
    );

late final _SetThreadpoolTimerEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<TP_TIMER> pti,
  Pointer<FILETIME> pftDueTime,
  Uint32 msPeriod,
  Uint32 msWindowLength,
),
    int Function(
  Pointer<TP_TIMER> pti,
  Pointer<FILETIME> pftDueTime,
  int msPeriod,
  int msWindowLength,
)>('SetThreadpoolTimerEx');

void SetThreadpoolWait(
  Pointer<TP_WAIT> pwa,
  int h,
  Pointer<FILETIME> pftTimeout,
) =>
    _SetThreadpoolWait(
      pwa,
      h,
      pftTimeout,
    );

late final _SetThreadpoolWait = _kernel32.lookupFunction<
    Void Function(
  Pointer<TP_WAIT> pwa,
  IntPtr h,
  Pointer<FILETIME> pftTimeout,
),
    void Function(
  Pointer<TP_WAIT> pwa,
  int h,
  Pointer<FILETIME> pftTimeout,
)>('SetThreadpoolWait');

int SetThreadpoolWaitEx(
  Pointer<TP_WAIT> pwa,
  int h,
  Pointer<FILETIME> pftTimeout,
  Pointer Reserved,
) =>
    _SetThreadpoolWaitEx(
      pwa,
      h,
      pftTimeout,
      Reserved,
    );

late final _SetThreadpoolWaitEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<TP_WAIT> pwa,
  IntPtr h,
  Pointer<FILETIME> pftTimeout,
  Pointer Reserved,
),
    int Function(
  Pointer<TP_WAIT> pwa,
  int h,
  Pointer<FILETIME> pftTimeout,
  Pointer Reserved,
)>('SetThreadpoolWaitEx');

int SetTimerQueueTimer(
  int TimerQueue,
  Pointer<NativeFunction<WAITORTIMERCALLBACK>> Callback,
  Pointer Parameter,
  int DueTime,
  int Period,
  int PreferIo,
) =>
    _SetTimerQueueTimer(
      TimerQueue,
      Callback,
      Parameter,
      DueTime,
      Period,
      PreferIo,
    );

late final _SetTimerQueueTimer = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr TimerQueue,
  Pointer<NativeFunction<WAITORTIMERCALLBACK>> Callback,
  Pointer Parameter,
  Uint32 DueTime,
  Uint32 Period,
  Int32 PreferIo,
),
    int Function(
  int TimerQueue,
  Pointer<NativeFunction<WAITORTIMERCALLBACK>> Callback,
  Pointer Parameter,
  int DueTime,
  int Period,
  int PreferIo,
)>('SetTimerQueueTimer');

int SetUmsThreadInformation(
  Pointer UmsThread,
  int UmsThreadInfoClass,
  Pointer UmsThreadInformation,
  int UmsThreadInformationLength,
) =>
    _SetUmsThreadInformation(
      UmsThread,
      UmsThreadInfoClass,
      UmsThreadInformation,
      UmsThreadInformationLength,
    );

late final _SetUmsThreadInformation = _kernel32.lookupFunction<
    Int32 Function(
  Pointer UmsThread,
  Int32 UmsThreadInfoClass,
  Pointer UmsThreadInformation,
  Uint32 UmsThreadInformationLength,
),
    int Function(
  Pointer UmsThread,
  int UmsThreadInfoClass,
  Pointer UmsThreadInformation,
  int UmsThreadInformationLength,
)>('SetUmsThreadInformation');

int SetWaitableTimer(
  int hTimer,
  Pointer<Int64> lpDueTime,
  int lPeriod,
  Pointer<NativeFunction<PTIMERAPCROUTINE>> pfnCompletionRoutine,
  Pointer lpArgToCompletionRoutine,
  int fResume,
) =>
    _SetWaitableTimer(
      hTimer,
      lpDueTime,
      lPeriod,
      pfnCompletionRoutine,
      lpArgToCompletionRoutine,
      fResume,
    );

late final _SetWaitableTimer = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hTimer,
  Pointer<Int64> lpDueTime,
  Int32 lPeriod,
  Pointer<NativeFunction<PTIMERAPCROUTINE>> pfnCompletionRoutine,
  Pointer lpArgToCompletionRoutine,
  Int32 fResume,
),
    int Function(
  int hTimer,
  Pointer<Int64> lpDueTime,
  int lPeriod,
  Pointer<NativeFunction<PTIMERAPCROUTINE>> pfnCompletionRoutine,
  Pointer lpArgToCompletionRoutine,
  int fResume,
)>('SetWaitableTimer');

int SetWaitableTimerEx(
  int hTimer,
  Pointer<Int64> lpDueTime,
  int lPeriod,
  Pointer<NativeFunction<PTIMERAPCROUTINE>> pfnCompletionRoutine,
  Pointer lpArgToCompletionRoutine,
  Pointer<REASON_CONTEXT> WakeContext,
  int TolerableDelay,
) =>
    _SetWaitableTimerEx(
      hTimer,
      lpDueTime,
      lPeriod,
      pfnCompletionRoutine,
      lpArgToCompletionRoutine,
      WakeContext,
      TolerableDelay,
    );

late final _SetWaitableTimerEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hTimer,
  Pointer<Int64> lpDueTime,
  Int32 lPeriod,
  Pointer<NativeFunction<PTIMERAPCROUTINE>> pfnCompletionRoutine,
  Pointer lpArgToCompletionRoutine,
  Pointer<REASON_CONTEXT> WakeContext,
  Uint32 TolerableDelay,
),
    int Function(
  int hTimer,
  Pointer<Int64> lpDueTime,
  int lPeriod,
  Pointer<NativeFunction<PTIMERAPCROUTINE>> pfnCompletionRoutine,
  Pointer lpArgToCompletionRoutine,
  Pointer<REASON_CONTEXT> WakeContext,
  int TolerableDelay,
)>('SetWaitableTimerEx');

void Sleep(
  int dwMilliseconds,
) =>
    _Sleep(
      dwMilliseconds,
    );

late final _Sleep = _kernel32.lookupFunction<
    Void Function(
  Uint32 dwMilliseconds,
),
    void Function(
  int dwMilliseconds,
)>('Sleep');

int SleepConditionVariableCS(
  Pointer<RTL_CONDITION_VARIABLE> ConditionVariable,
  Pointer<RTL_CRITICAL_SECTION> CriticalSection,
  int dwMilliseconds,
) =>
    _SleepConditionVariableCS(
      ConditionVariable,
      CriticalSection,
      dwMilliseconds,
    );

late final _SleepConditionVariableCS = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<RTL_CONDITION_VARIABLE> ConditionVariable,
  Pointer<RTL_CRITICAL_SECTION> CriticalSection,
  Uint32 dwMilliseconds,
),
    int Function(
  Pointer<RTL_CONDITION_VARIABLE> ConditionVariable,
  Pointer<RTL_CRITICAL_SECTION> CriticalSection,
  int dwMilliseconds,
)>('SleepConditionVariableCS');

int SleepConditionVariableSR(
  Pointer<RTL_CONDITION_VARIABLE> ConditionVariable,
  Pointer<RTL_SRWLOCK> SRWLock,
  int dwMilliseconds,
  int Flags,
) =>
    _SleepConditionVariableSR(
      ConditionVariable,
      SRWLock,
      dwMilliseconds,
      Flags,
    );

late final _SleepConditionVariableSR = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<RTL_CONDITION_VARIABLE> ConditionVariable,
  Pointer<RTL_SRWLOCK> SRWLock,
  Uint32 dwMilliseconds,
  Uint32 Flags,
),
    int Function(
  Pointer<RTL_CONDITION_VARIABLE> ConditionVariable,
  Pointer<RTL_SRWLOCK> SRWLock,
  int dwMilliseconds,
  int Flags,
)>('SleepConditionVariableSRW');

int SleepEx(
  int dwMilliseconds,
  int bAlertable,
) =>
    _SleepEx(
      dwMilliseconds,
      bAlertable,
    );

late final _SleepEx = _kernel32.lookupFunction<
    Uint32 Function(
  Uint32 dwMilliseconds,
  Int32 bAlertable,
),
    int Function(
  int dwMilliseconds,
  int bAlertable,
)>('SleepEx');

void StartThreadpoolIo(
  Pointer<TP_IO> pio,
) =>
    _StartThreadpoolIo(
      pio,
    );

late final _StartThreadpoolIo = _kernel32.lookupFunction<
    Void Function(
  Pointer<TP_IO> pio,
),
    void Function(
  Pointer<TP_IO> pio,
)>('StartThreadpoolIo');

void SubmitThreadpoolWork(
  Pointer<TP_WORK> pwk,
) =>
    _SubmitThreadpoolWork(
      pwk,
    );

late final _SubmitThreadpoolWork = _kernel32.lookupFunction<
    Void Function(
  Pointer<TP_WORK> pwk,
),
    void Function(
  Pointer<TP_WORK> pwk,
)>('SubmitThreadpoolWork');

int SuspendThread(
  int hThread,
) =>
    _SuspendThread(
      hThread,
    );

late final _SuspendThread = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hThread,
),
    int Function(
  int hThread,
)>('SuspendThread');

void SwitchToFiber(
  Pointer lpFiber,
) =>
    _SwitchToFiber(
      lpFiber,
    );

late final _SwitchToFiber = _kernel32.lookupFunction<
    Void Function(
  Pointer lpFiber,
),
    void Function(
  Pointer lpFiber,
)>('SwitchToFiber');

int SwitchToThread() => _SwitchToThread();

late final _SwitchToThread = _kernel32
    .lookupFunction<Int32 Function(), int Function()>('SwitchToThread');

int TerminateProcess(
  int hProcess,
  int uExitCode,
) =>
    _TerminateProcess(
      hProcess,
      uExitCode,
    );

late final _TerminateProcess = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint32 uExitCode,
),
    int Function(
  int hProcess,
  int uExitCode,
)>('TerminateProcess');

int TerminateThread(
  int hThread,
  int dwExitCode,
) =>
    _TerminateThread(
      hThread,
      dwExitCode,
    );

late final _TerminateThread = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
  Uint32 dwExitCode,
),
    int Function(
  int hThread,
  int dwExitCode,
)>('TerminateThread');

int TlsAlloc() => _TlsAlloc();

late final _TlsAlloc =
    _kernel32.lookupFunction<Uint32 Function(), int Function()>('TlsAlloc');

int TlsFree(
  int dwTlsIndex,
) =>
    _TlsFree(
      dwTlsIndex,
    );

late final _TlsFree = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwTlsIndex,
),
    int Function(
  int dwTlsIndex,
)>('TlsFree');

Pointer TlsGetValue(
  int dwTlsIndex,
) =>
    _TlsGetValue(
      dwTlsIndex,
    );

late final _TlsGetValue = _kernel32.lookupFunction<
    Pointer Function(
  Uint32 dwTlsIndex,
),
    Pointer Function(
  int dwTlsIndex,
)>('TlsGetValue');

int TlsSetValue(
  int dwTlsIndex,
  Pointer lpTlsValue,
) =>
    _TlsSetValue(
      dwTlsIndex,
      lpTlsValue,
    );

late final _TlsSetValue = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwTlsIndex,
  Pointer lpTlsValue,
),
    int Function(
  int dwTlsIndex,
  Pointer lpTlsValue,
)>('TlsSetValue');

int TryAcquireSRWLockExclusive(
  Pointer<RTL_SRWLOCK> SRWLock,
) =>
    _TryAcquireSRWLockExclusive(
      SRWLock,
    );

late final _TryAcquireSRWLockExclusive = _kernel32.lookupFunction<
    Uint8 Function(
  Pointer<RTL_SRWLOCK> SRWLock,
),
    int Function(
  Pointer<RTL_SRWLOCK> SRWLock,
)>('TryAcquireSRWLockExclusive');

int TryAcquireSRWLockShared(
  Pointer<RTL_SRWLOCK> SRWLock,
) =>
    _TryAcquireSRWLockShared(
      SRWLock,
    );

late final _TryAcquireSRWLockShared = _kernel32.lookupFunction<
    Uint8 Function(
  Pointer<RTL_SRWLOCK> SRWLock,
),
    int Function(
  Pointer<RTL_SRWLOCK> SRWLock,
)>('TryAcquireSRWLockShared');

int TryEnterCriticalSection(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
) =>
    _TryEnterCriticalSection(
      lpCriticalSection,
    );

late final _TryEnterCriticalSection = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
),
    int Function(
  Pointer<RTL_CRITICAL_SECTION> lpCriticalSection,
)>('TryEnterCriticalSection');

int TrySubmitThreadpoolCallback(
  Pointer<NativeFunction<PTP_SIMPLE_CALLBACK>> pfns,
  Pointer pv,
  Pointer<TP_CALLBACK_ENVIRON_V3> pcbe,
) =>
    _TrySubmitThreadpoolCallback(
      pfns,
      pv,
      pcbe,
    );

late final _TrySubmitThreadpoolCallback = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<PTP_SIMPLE_CALLBACK>> pfns,
  Pointer pv,
  Pointer<TP_CALLBACK_ENVIRON_V3> pcbe,
),
    int Function(
  Pointer<NativeFunction<PTP_SIMPLE_CALLBACK>> pfns,
  Pointer pv,
  Pointer<TP_CALLBACK_ENVIRON_V3> pcbe,
)>('TrySubmitThreadpoolCallback');

int UmsThreadYield(
  Pointer SchedulerParam,
) =>
    _UmsThreadYield(
      SchedulerParam,
    );

late final _UmsThreadYield = _kernel32.lookupFunction<
    Int32 Function(
  Pointer SchedulerParam,
),
    int Function(
  Pointer SchedulerParam,
)>('UmsThreadYield');

int UnregisterWait(
  int WaitHandle,
) =>
    _UnregisterWait(
      WaitHandle,
    );

late final _UnregisterWait = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr WaitHandle,
),
    int Function(
  int WaitHandle,
)>('UnregisterWait');

int UnregisterWaitEx(
  int WaitHandle,
  int CompletionEvent,
) =>
    _UnregisterWaitEx(
      WaitHandle,
      CompletionEvent,
    );

late final _UnregisterWaitEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr WaitHandle,
  IntPtr CompletionEvent,
),
    int Function(
  int WaitHandle,
  int CompletionEvent,
)>('UnregisterWaitEx');

int UpdateProcThreadAttribute(
  Pointer lpAttributeList,
  int dwFlags,
  int Attribute,
  Pointer lpValue,
  int cbSize,
  Pointer lpPreviousValue,
  Pointer<IntPtr> lpReturnSize,
) =>
    _UpdateProcThreadAttribute(
      lpAttributeList,
      dwFlags,
      Attribute,
      lpValue,
      cbSize,
      lpPreviousValue,
      lpReturnSize,
    );

late final _UpdateProcThreadAttribute = _kernel32.lookupFunction<
    Int32 Function(
  Pointer lpAttributeList,
  Uint32 dwFlags,
  IntPtr Attribute,
  Pointer lpValue,
  IntPtr cbSize,
  Pointer lpPreviousValue,
  Pointer<IntPtr> lpReturnSize,
),
    int Function(
  Pointer lpAttributeList,
  int dwFlags,
  int Attribute,
  Pointer lpValue,
  int cbSize,
  Pointer lpPreviousValue,
  Pointer<IntPtr> lpReturnSize,
)>('UpdateProcThreadAttribute');

int WaitForMultipleObjects(
  int nCount,
  Pointer<IntPtr> lpHandles,
  int bWaitAll,
  int dwMilliseconds,
) =>
    _WaitForMultipleObjects(
      nCount,
      lpHandles,
      bWaitAll,
      dwMilliseconds,
    );

late final _WaitForMultipleObjects = _kernel32.lookupFunction<
    Uint32 Function(
  Uint32 nCount,
  Pointer<IntPtr> lpHandles,
  Int32 bWaitAll,
  Uint32 dwMilliseconds,
),
    int Function(
  int nCount,
  Pointer<IntPtr> lpHandles,
  int bWaitAll,
  int dwMilliseconds,
)>('WaitForMultipleObjects');

int WaitForMultipleObjectsEx(
  int nCount,
  Pointer<IntPtr> lpHandles,
  int bWaitAll,
  int dwMilliseconds,
  int bAlertable,
) =>
    _WaitForMultipleObjectsEx(
      nCount,
      lpHandles,
      bWaitAll,
      dwMilliseconds,
      bAlertable,
    );

late final _WaitForMultipleObjectsEx = _kernel32.lookupFunction<
    Uint32 Function(
  Uint32 nCount,
  Pointer<IntPtr> lpHandles,
  Int32 bWaitAll,
  Uint32 dwMilliseconds,
  Int32 bAlertable,
),
    int Function(
  int nCount,
  Pointer<IntPtr> lpHandles,
  int bWaitAll,
  int dwMilliseconds,
  int bAlertable,
)>('WaitForMultipleObjectsEx');

int WaitForSingleObject(
  int hHandle,
  int dwMilliseconds,
) =>
    _WaitForSingleObject(
      hHandle,
      dwMilliseconds,
    );

late final _WaitForSingleObject = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hHandle,
  Uint32 dwMilliseconds,
),
    int Function(
  int hHandle,
  int dwMilliseconds,
)>('WaitForSingleObject');

int WaitForSingleObjectEx(
  int hHandle,
  int dwMilliseconds,
  int bAlertable,
) =>
    _WaitForSingleObjectEx(
      hHandle,
      dwMilliseconds,
      bAlertable,
    );

late final _WaitForSingleObjectEx = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hHandle,
  Uint32 dwMilliseconds,
  Int32 bAlertable,
),
    int Function(
  int hHandle,
  int dwMilliseconds,
  int bAlertable,
)>('WaitForSingleObjectEx');

void WaitForThreadpoolIoCallbacks(
  Pointer<TP_IO> pio,
  int fCancelPendingCallbacks,
) =>
    _WaitForThreadpoolIoCallbacks(
      pio,
      fCancelPendingCallbacks,
    );

late final _WaitForThreadpoolIoCallbacks = _kernel32.lookupFunction<
    Void Function(
  Pointer<TP_IO> pio,
  Int32 fCancelPendingCallbacks,
),
    void Function(
  Pointer<TP_IO> pio,
  int fCancelPendingCallbacks,
)>('WaitForThreadpoolIoCallbacks');

void WaitForThreadpoolTimerCallbacks(
  Pointer<TP_TIMER> pti,
  int fCancelPendingCallbacks,
) =>
    _WaitForThreadpoolTimerCallbacks(
      pti,
      fCancelPendingCallbacks,
    );

late final _WaitForThreadpoolTimerCallbacks = _kernel32.lookupFunction<
    Void Function(
  Pointer<TP_TIMER> pti,
  Int32 fCancelPendingCallbacks,
),
    void Function(
  Pointer<TP_TIMER> pti,
  int fCancelPendingCallbacks,
)>('WaitForThreadpoolTimerCallbacks');

void WaitForThreadpoolWaitCallbacks(
  Pointer<TP_WAIT> pwa,
  int fCancelPendingCallbacks,
) =>
    _WaitForThreadpoolWaitCallbacks(
      pwa,
      fCancelPendingCallbacks,
    );

late final _WaitForThreadpoolWaitCallbacks = _kernel32.lookupFunction<
    Void Function(
  Pointer<TP_WAIT> pwa,
  Int32 fCancelPendingCallbacks,
),
    void Function(
  Pointer<TP_WAIT> pwa,
  int fCancelPendingCallbacks,
)>('WaitForThreadpoolWaitCallbacks');

void WaitForThreadpoolWorkCallbacks(
  Pointer<TP_WORK> pwk,
  int fCancelPendingCallbacks,
) =>
    _WaitForThreadpoolWorkCallbacks(
      pwk,
      fCancelPendingCallbacks,
    );

late final _WaitForThreadpoolWorkCallbacks = _kernel32.lookupFunction<
    Void Function(
  Pointer<TP_WORK> pwk,
  Int32 fCancelPendingCallbacks,
),
    void Function(
  Pointer<TP_WORK> pwk,
  int fCancelPendingCallbacks,
)>('WaitForThreadpoolWorkCallbacks');

void WakeAllConditionVariable(
  Pointer<RTL_CONDITION_VARIABLE> ConditionVariable,
) =>
    _WakeAllConditionVariable(
      ConditionVariable,
    );

late final _WakeAllConditionVariable = _kernel32.lookupFunction<
    Void Function(
  Pointer<RTL_CONDITION_VARIABLE> ConditionVariable,
),
    void Function(
  Pointer<RTL_CONDITION_VARIABLE> ConditionVariable,
)>('WakeAllConditionVariable');

void WakeConditionVariable(
  Pointer<RTL_CONDITION_VARIABLE> ConditionVariable,
) =>
    _WakeConditionVariable(
      ConditionVariable,
    );

late final _WakeConditionVariable = _kernel32.lookupFunction<
    Void Function(
  Pointer<RTL_CONDITION_VARIABLE> ConditionVariable,
),
    void Function(
  Pointer<RTL_CONDITION_VARIABLE> ConditionVariable,
)>('WakeConditionVariable');

int WinExec(
  Pointer<Utf8> lpCmdLine,
  int uCmdShow,
) =>
    _WinExec(
      lpCmdLine,
      uCmdShow,
    );

late final _WinExec = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf8> lpCmdLine,
  Uint32 uCmdShow,
),
    int Function(
  Pointer<Utf8> lpCmdLine,
  int uCmdShow,
)>('WinExec');

int Wow64SuspendThread(
  int hThread,
) =>
    _Wow64SuspendThread(
      hThread,
    );

late final _Wow64SuspendThread = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hThread,
),
    int Function(
  int hThread,
)>('Wow64SuspendThread');

// -----------------------------------------------------------------------
// vertdll.dll
// -----------------------------------------------------------------------
final _vertdll = DynamicLibrary.open('vertdll.dll');

int WaitOnAddress(
  Pointer Address,
  Pointer CompareAddress,
  int AddressSize,
  int dwMilliseconds,
) =>
    _WaitOnAddress(
      Address,
      CompareAddress,
      AddressSize,
      dwMilliseconds,
    );

late final _WaitOnAddress = _vertdll.lookupFunction<
    Int32 Function(
  Pointer Address,
  Pointer CompareAddress,
  IntPtr AddressSize,
  Uint32 dwMilliseconds,
),
    int Function(
  Pointer Address,
  Pointer CompareAddress,
  int AddressSize,
  int dwMilliseconds,
)>('WaitOnAddress');

void WakeByAddressAll(
  Pointer Address,
) =>
    _WakeByAddressAll(
      Address,
    );

late final _WakeByAddressAll = _vertdll.lookupFunction<
    Void Function(
  Pointer Address,
),
    void Function(
  Pointer Address,
)>('WakeByAddressAll');

void WakeByAddressSingle(
  Pointer Address,
) =>
    _WakeByAddressSingle(
      Address,
    );

late final _WakeByAddressSingle = _vertdll.lookupFunction<
    Void Function(
  Pointer Address,
),
    void Function(
  Pointer Address,
)>('WakeByAddressSingle');

// -----------------------------------------------------------------------
// advapi32.dll
// -----------------------------------------------------------------------
final _advapi32 = DynamicLibrary.open('advapi32.dll');

int CreateProcessAsUser(
  int hToken,
  Pointer<Utf16> lpApplicationName,
  Pointer<Utf16> lpCommandLine,
  Pointer<SECURITY_ATTRIBUTES> lpProcessAttributes,
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  int bInheritHandles,
  int dwCreationFlags,
  Pointer lpEnvironment,
  Pointer<Utf16> lpCurrentDirectory,
  Pointer<STARTUPINFO> lpStartupInfo,
  Pointer<PROCESS_INFORMATION> lpProcessInformation,
) =>
    _CreateProcessAsUser(
      hToken,
      lpApplicationName,
      lpCommandLine,
      lpProcessAttributes,
      lpThreadAttributes,
      bInheritHandles,
      dwCreationFlags,
      lpEnvironment,
      lpCurrentDirectory,
      lpStartupInfo,
      lpProcessInformation,
    );

late final _CreateProcessAsUser = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hToken,
  Pointer<Utf16> lpApplicationName,
  Pointer<Utf16> lpCommandLine,
  Pointer<SECURITY_ATTRIBUTES> lpProcessAttributes,
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  Int32 bInheritHandles,
  Uint32 dwCreationFlags,
  Pointer lpEnvironment,
  Pointer<Utf16> lpCurrentDirectory,
  Pointer<STARTUPINFO> lpStartupInfo,
  Pointer<PROCESS_INFORMATION> lpProcessInformation,
),
    int Function(
  int hToken,
  Pointer<Utf16> lpApplicationName,
  Pointer<Utf16> lpCommandLine,
  Pointer<SECURITY_ATTRIBUTES> lpProcessAttributes,
  Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
  int bInheritHandles,
  int dwCreationFlags,
  Pointer lpEnvironment,
  Pointer<Utf16> lpCurrentDirectory,
  Pointer<STARTUPINFO> lpStartupInfo,
  Pointer<PROCESS_INFORMATION> lpProcessInformation,
)>('CreateProcessAsUserW');

int CreateProcessWithLogon(
  Pointer<Utf16> lpUsername,
  Pointer<Utf16> lpDomain,
  Pointer<Utf16> lpPassword,
  int dwLogonFlags,
  Pointer<Utf16> lpApplicationName,
  Pointer<Utf16> lpCommandLine,
  int dwCreationFlags,
  Pointer lpEnvironment,
  Pointer<Utf16> lpCurrentDirectory,
  Pointer<STARTUPINFO> lpStartupInfo,
  Pointer<PROCESS_INFORMATION> lpProcessInformation,
) =>
    _CreateProcessWithLogon(
      lpUsername,
      lpDomain,
      lpPassword,
      dwLogonFlags,
      lpApplicationName,
      lpCommandLine,
      dwCreationFlags,
      lpEnvironment,
      lpCurrentDirectory,
      lpStartupInfo,
      lpProcessInformation,
    );

late final _CreateProcessWithLogon = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpUsername,
  Pointer<Utf16> lpDomain,
  Pointer<Utf16> lpPassword,
  Uint32 dwLogonFlags,
  Pointer<Utf16> lpApplicationName,
  Pointer<Utf16> lpCommandLine,
  Uint32 dwCreationFlags,
  Pointer lpEnvironment,
  Pointer<Utf16> lpCurrentDirectory,
  Pointer<STARTUPINFO> lpStartupInfo,
  Pointer<PROCESS_INFORMATION> lpProcessInformation,
),
    int Function(
  Pointer<Utf16> lpUsername,
  Pointer<Utf16> lpDomain,
  Pointer<Utf16> lpPassword,
  int dwLogonFlags,
  Pointer<Utf16> lpApplicationName,
  Pointer<Utf16> lpCommandLine,
  int dwCreationFlags,
  Pointer lpEnvironment,
  Pointer<Utf16> lpCurrentDirectory,
  Pointer<STARTUPINFO> lpStartupInfo,
  Pointer<PROCESS_INFORMATION> lpProcessInformation,
)>('CreateProcessWithLogonW');

int CreateProcessWithToken(
  int hToken,
  int dwLogonFlags,
  Pointer<Utf16> lpApplicationName,
  Pointer<Utf16> lpCommandLine,
  int dwCreationFlags,
  Pointer lpEnvironment,
  Pointer<Utf16> lpCurrentDirectory,
  Pointer<STARTUPINFO> lpStartupInfo,
  Pointer<PROCESS_INFORMATION> lpProcessInformation,
) =>
    _CreateProcessWithToken(
      hToken,
      dwLogonFlags,
      lpApplicationName,
      lpCommandLine,
      dwCreationFlags,
      lpEnvironment,
      lpCurrentDirectory,
      lpStartupInfo,
      lpProcessInformation,
    );

late final _CreateProcessWithToken = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hToken,
  Uint32 dwLogonFlags,
  Pointer<Utf16> lpApplicationName,
  Pointer<Utf16> lpCommandLine,
  Uint32 dwCreationFlags,
  Pointer lpEnvironment,
  Pointer<Utf16> lpCurrentDirectory,
  Pointer<STARTUPINFO> lpStartupInfo,
  Pointer<PROCESS_INFORMATION> lpProcessInformation,
),
    int Function(
  int hToken,
  int dwLogonFlags,
  Pointer<Utf16> lpApplicationName,
  Pointer<Utf16> lpCommandLine,
  int dwCreationFlags,
  Pointer lpEnvironment,
  Pointer<Utf16> lpCurrentDirectory,
  Pointer<STARTUPINFO> lpStartupInfo,
  Pointer<PROCESS_INFORMATION> lpProcessInformation,
)>('CreateProcessWithTokenW');

int OpenProcessToken(
  int ProcessHandle,
  int DesiredAccess,
  Pointer<IntPtr> TokenHandle,
) =>
    _OpenProcessToken(
      ProcessHandle,
      DesiredAccess,
      TokenHandle,
    );

late final _OpenProcessToken = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr ProcessHandle,
  Uint32 DesiredAccess,
  Pointer<IntPtr> TokenHandle,
),
    int Function(
  int ProcessHandle,
  int DesiredAccess,
  Pointer<IntPtr> TokenHandle,
)>('OpenProcessToken');

int OpenThreadToken(
  int ThreadHandle,
  int DesiredAccess,
  int OpenAsSelf,
  Pointer<IntPtr> TokenHandle,
) =>
    _OpenThreadToken(
      ThreadHandle,
      DesiredAccess,
      OpenAsSelf,
      TokenHandle,
    );

late final _OpenThreadToken = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr ThreadHandle,
  Uint32 DesiredAccess,
  Int32 OpenAsSelf,
  Pointer<IntPtr> TokenHandle,
),
    int Function(
  int ThreadHandle,
  int DesiredAccess,
  int OpenAsSelf,
  Pointer<IntPtr> TokenHandle,
)>('OpenThreadToken');

int SetThreadToken(
  Pointer<IntPtr> Thread,
  int Token,
) =>
    _SetThreadToken(
      Thread,
      Token,
    );

late final _SetThreadToken = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> Thread,
  IntPtr Token,
),
    int Function(
  Pointer<IntPtr> Thread,
  int Token,
)>('SetThreadToken');

// -----------------------------------------------------------------------
// api-ms-win-core-wow64-l1-1-1.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_wow64_l1_1_1 =
    DynamicLibrary.open('api-ms-win-core-wow64-l1-1-1.dll');

int Wow64SetThreadDefaultGuestMachine(
  int Machine,
) =>
    _Wow64SetThreadDefaultGuestMachine(
      Machine,
    );

late final _Wow64SetThreadDefaultGuestMachine =
    _api_ms_win_core_wow64_l1_1_1.lookupFunction<
        Uint16 Function(
  Uint16 Machine,
),
        int Function(
  int Machine,
)>('Wow64SetThreadDefaultGuestMachine');

// -----------------------------------------------------------------------
// user32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('user32.dll');

int AttachThreadInput(
  int idAttach,
  int idAttachTo,
  int fAttach,
) =>
    _AttachThreadInput(
      idAttach,
      idAttachTo,
      fAttach,
    );

late final _AttachThreadInput = _user32.lookupFunction<
    Int32 Function(
  Uint32 idAttach,
  Uint32 idAttachTo,
  Int32 fAttach,
),
    int Function(
  int idAttach,
  int idAttachTo,
  int fAttach,
)>('AttachThreadInput');

int GetGuiResources(
  int hProcess,
  int uiFlags,
) =>
    _GetGuiResources(
      hProcess,
      uiFlags,
    );

late final _GetGuiResources = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hProcess,
  Uint32 uiFlags,
),
    int Function(
  int hProcess,
  int uiFlags,
)>('GetGuiResources');

int IsImmersiveProcess(
  int hProcess,
) =>
    _IsImmersiveProcess(
      hProcess,
    );

late final _IsImmersiveProcess = _user32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
),
    int Function(
  int hProcess,
)>('IsImmersiveProcess');

int SetProcessRestrictionExemption(
  int fEnableExemption,
) =>
    _SetProcessRestrictionExemption(
      fEnableExemption,
    );

late final _SetProcessRestrictionExemption = _user32.lookupFunction<
    Int32 Function(
  Int32 fEnableExemption,
),
    int Function(
  int fEnableExemption,
)>('SetProcessRestrictionExemption');

int WaitForInputIdle(
  int hProcess,
  int dwMilliseconds,
) =>
    _WaitForInputIdle(
      hProcess,
      dwMilliseconds,
    );

late final _WaitForInputIdle = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hProcess,
  Uint32 dwMilliseconds,
),
    int Function(
  int hProcess,
  int dwMilliseconds,
)>('WaitForInputIdle');

// -----------------------------------------------------------------------
// ntdll.dll
// -----------------------------------------------------------------------
final _ntdll = DynamicLibrary.open('ntdll.dll');

int NtQueryInformationProcess(
  int ProcessHandle,
  int ProcessInformationClass,
  Pointer ProcessInformation,
  int ProcessInformationLength,
  Pointer<Uint32> ReturnLength,
) =>
    _NtQueryInformationProcess(
      ProcessHandle,
      ProcessInformationClass,
      ProcessInformation,
      ProcessInformationLength,
      ReturnLength,
    );

late final _NtQueryInformationProcess = _ntdll.lookupFunction<
    Int32 Function(
  IntPtr ProcessHandle,
  Int32 ProcessInformationClass,
  Pointer ProcessInformation,
  Uint32 ProcessInformationLength,
  Pointer<Uint32> ReturnLength,
),
    int Function(
  int ProcessHandle,
  int ProcessInformationClass,
  Pointer ProcessInformation,
  int ProcessInformationLength,
  Pointer<Uint32> ReturnLength,
)>('NtQueryInformationProcess');

int NtQueryInformationThread(
  int ThreadHandle,
  int ThreadInformationClass,
  Pointer ThreadInformation,
  int ThreadInformationLength,
  Pointer<Uint32> ReturnLength,
) =>
    _NtQueryInformationThread(
      ThreadHandle,
      ThreadInformationClass,
      ThreadInformation,
      ThreadInformationLength,
      ReturnLength,
    );

late final _NtQueryInformationThread = _ntdll.lookupFunction<
    Int32 Function(
  IntPtr ThreadHandle,
  Int32 ThreadInformationClass,
  Pointer ThreadInformation,
  Uint32 ThreadInformationLength,
  Pointer<Uint32> ReturnLength,
),
    int Function(
  int ThreadHandle,
  int ThreadInformationClass,
  Pointer ThreadInformation,
  int ThreadInformationLength,
  Pointer<Uint32> ReturnLength,
)>('NtQueryInformationThread');

int NtSetInformationThread(
  int ThreadHandle,
  int ThreadInformationClass,
  Pointer ThreadInformation,
  int ThreadInformationLength,
) =>
    _NtSetInformationThread(
      ThreadHandle,
      ThreadInformationClass,
      ThreadInformation,
      ThreadInformationLength,
    );

late final _NtSetInformationThread = _ntdll.lookupFunction<
    Int32 Function(
  IntPtr ThreadHandle,
  Int32 ThreadInformationClass,
  Pointer ThreadInformation,
  Uint32 ThreadInformationLength,
),
    int Function(
  int ThreadHandle,
  int ThreadInformationClass,
  Pointer ThreadInformation,
  int ThreadInformationLength,
)>('NtSetInformationThread');
