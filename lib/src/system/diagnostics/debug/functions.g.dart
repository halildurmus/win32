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
import '../../../system/diagnostics/debug/callbacks.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugHost.dart';
import '../../../system/diagnostics/debug/IDataModelManager.dart';
import '../../../security/wintrust/structs.g.dart'; // -----------------------------------------------------------------------

// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

Pointer AddVectoredContinueHandler(
  int First,
  Pointer<NativeFunction<PVECTORED_EXCEPTION_HANDLER>> Handler,
) =>
    _AddVectoredContinueHandler(
      First,
      Handler,
    );

late final _AddVectoredContinueHandler = _kernel32.lookupFunction<
    Pointer Function(
  Uint32 First,
  Pointer<NativeFunction<PVECTORED_EXCEPTION_HANDLER>> Handler,
),
    Pointer Function(
  int First,
  Pointer<NativeFunction<PVECTORED_EXCEPTION_HANDLER>> Handler,
)>('AddVectoredContinueHandler');

Pointer AddVectoredExceptionHandler(
  int First,
  Pointer<NativeFunction<PVECTORED_EXCEPTION_HANDLER>> Handler,
) =>
    _AddVectoredExceptionHandler(
      First,
      Handler,
    );

late final _AddVectoredExceptionHandler = _kernel32.lookupFunction<
    Pointer Function(
  Uint32 First,
  Pointer<NativeFunction<PVECTORED_EXCEPTION_HANDLER>> Handler,
),
    Pointer Function(
  int First,
  Pointer<NativeFunction<PVECTORED_EXCEPTION_HANDLER>> Handler,
)>('AddVectoredExceptionHandler');

int Beep(
  int dwFreq,
  int dwDuration,
) =>
    _Beep(
      dwFreq,
      dwDuration,
    );

late final _Beep = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFreq,
  Uint32 dwDuration,
),
    int Function(
  int dwFreq,
  int dwDuration,
)>('Beep');

int CheckRemoteDebuggerPresent(
  int hProcess,
  Pointer<Int32> pbDebuggerPresent,
) =>
    _CheckRemoteDebuggerPresent(
      hProcess,
      pbDebuggerPresent,
    );

late final _CheckRemoteDebuggerPresent = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Int32> pbDebuggerPresent,
),
    int Function(
  int hProcess,
  Pointer<Int32> pbDebuggerPresent,
)>('CheckRemoteDebuggerPresent');

int ContinueDebugEvent(
  int dwProcessId,
  int dwThreadId,
  int dwContinueStatus,
) =>
    _ContinueDebugEvent(
      dwProcessId,
      dwThreadId,
      dwContinueStatus,
    );

late final _ContinueDebugEvent = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwProcessId,
  Uint32 dwThreadId,
  Uint32 dwContinueStatus,
),
    int Function(
  int dwProcessId,
  int dwThreadId,
  int dwContinueStatus,
)>('ContinueDebugEvent');

int CopyContext(
  Pointer<CONTEXT> Destination,
  int ContextFlags,
  Pointer<CONTEXT> Source,
) =>
    _CopyContext(
      Destination,
      ContextFlags,
      Source,
    );

late final _CopyContext = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<CONTEXT> Destination,
  Uint32 ContextFlags,
  Pointer<CONTEXT> Source,
),
    int Function(
  Pointer<CONTEXT> Destination,
  int ContextFlags,
  Pointer<CONTEXT> Source,
)>('CopyContext');

int DebugActiveProcess(
  int dwProcessId,
) =>
    _DebugActiveProcess(
      dwProcessId,
    );

late final _DebugActiveProcess = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwProcessId,
),
    int Function(
  int dwProcessId,
)>('DebugActiveProcess');

int DebugActiveProcessStop(
  int dwProcessId,
) =>
    _DebugActiveProcessStop(
      dwProcessId,
    );

late final _DebugActiveProcessStop = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwProcessId,
),
    int Function(
  int dwProcessId,
)>('DebugActiveProcessStop');

void DebugBreak() => _DebugBreak();

late final _DebugBreak =
    _kernel32.lookupFunction<Void Function(), void Function()>('DebugBreak');

int DebugBreakProcess(
  int Process,
) =>
    _DebugBreakProcess(
      Process,
    );

late final _DebugBreakProcess = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr Process,
),
    int Function(
  int Process,
)>('DebugBreakProcess');

int DebugSetProcessKillOnExit(
  int KillOnExit,
) =>
    _DebugSetProcessKillOnExit(
      KillOnExit,
    );

late final _DebugSetProcessKillOnExit = _kernel32.lookupFunction<
    Int32 Function(
  Int32 KillOnExit,
),
    int Function(
  int KillOnExit,
)>('DebugSetProcessKillOnExit');

Pointer DecodePointer(
  Pointer Ptr,
) =>
    _DecodePointer(
      Ptr,
    );

late final _DecodePointer = _kernel32.lookupFunction<
    Pointer Function(
  Pointer Ptr,
),
    Pointer Function(
  Pointer Ptr,
)>('DecodePointer');

Pointer DecodeSystemPointer(
  Pointer Ptr,
) =>
    _DecodeSystemPointer(
      Ptr,
    );

late final _DecodeSystemPointer = _kernel32.lookupFunction<
    Pointer Function(
  Pointer Ptr,
),
    Pointer Function(
  Pointer Ptr,
)>('DecodeSystemPointer');

Pointer EncodePointer(
  Pointer Ptr,
) =>
    _EncodePointer(
      Ptr,
    );

late final _EncodePointer = _kernel32.lookupFunction<
    Pointer Function(
  Pointer Ptr,
),
    Pointer Function(
  Pointer Ptr,
)>('EncodePointer');

Pointer EncodeSystemPointer(
  Pointer Ptr,
) =>
    _EncodeSystemPointer(
      Ptr,
    );

late final _EncodeSystemPointer = _kernel32.lookupFunction<
    Pointer Function(
  Pointer Ptr,
),
    Pointer Function(
  Pointer Ptr,
)>('EncodeSystemPointer');

void FatalAppExit(
  int uAction,
  Pointer<Utf16> lpMessageText,
) =>
    _FatalAppExit(
      uAction,
      lpMessageText,
    );

late final _FatalAppExit = _kernel32.lookupFunction<
    Void Function(
  Uint32 uAction,
  Pointer<Utf16> lpMessageText,
),
    void Function(
  int uAction,
  Pointer<Utf16> lpMessageText,
)>('FatalAppExitW');

void FatalExit(
  int ExitCode,
) =>
    _FatalExit(
      ExitCode,
    );

late final _FatalExit = _kernel32.lookupFunction<
    Void Function(
  Int32 ExitCode,
),
    void Function(
  int ExitCode,
)>('FatalExit');

int FlushInstructionCache(
  int hProcess,
  Pointer lpBaseAddress,
  int dwSize,
) =>
    _FlushInstructionCache(
      hProcess,
      lpBaseAddress,
      dwSize,
    );

late final _FlushInstructionCache = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer lpBaseAddress,
  IntPtr dwSize,
),
    int Function(
  int hProcess,
  Pointer lpBaseAddress,
  int dwSize,
)>('FlushInstructionCache');

int FormatMessage(
  int dwFlags,
  Pointer lpSource,
  int dwMessageId,
  int dwLanguageId,
  Pointer<Utf16> lpBuffer,
  int nSize,
  Pointer<Pointer<Int8>> Arguments,
) =>
    _FormatMessage(
      dwFlags,
      lpSource,
      dwMessageId,
      dwLanguageId,
      lpBuffer,
      nSize,
      Arguments,
    );

late final _FormatMessage = _kernel32.lookupFunction<
    Uint32 Function(
  Uint32 dwFlags,
  Pointer lpSource,
  Uint32 dwMessageId,
  Uint32 dwLanguageId,
  Pointer<Utf16> lpBuffer,
  Uint32 nSize,
  Pointer<Pointer<Int8>> Arguments,
),
    int Function(
  int dwFlags,
  Pointer lpSource,
  int dwMessageId,
  int dwLanguageId,
  Pointer<Utf16> lpBuffer,
  int nSize,
  Pointer<Pointer<Int8>> Arguments,
)>('FormatMessageW');

int GetEnabledXStateFeatures() => _GetEnabledXStateFeatures();

late final _GetEnabledXStateFeatures =
    _kernel32.lookupFunction<Uint64 Function(), int Function()>(
        'GetEnabledXStateFeatures');

int GetErrorMode() => _GetErrorMode();

late final _GetErrorMode =
    _kernel32.lookupFunction<Uint32 Function(), int Function()>('GetErrorMode');

int GetThreadContext(
  int hThread,
  Pointer<CONTEXT> lpContext,
) =>
    _GetThreadContext(
      hThread,
      lpContext,
    );

late final _GetThreadContext = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
  Pointer<CONTEXT> lpContext,
),
    int Function(
  int hThread,
  Pointer<CONTEXT> lpContext,
)>('GetThreadContext');

int GetThreadErrorMode() => _GetThreadErrorMode();

late final _GetThreadErrorMode = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetThreadErrorMode');

int GetThreadSelectorEntry(
  int hThread,
  int dwSelector,
  Pointer<LDT_ENTRY> lpSelectorEntry,
) =>
    _GetThreadSelectorEntry(
      hThread,
      dwSelector,
      lpSelectorEntry,
    );

late final _GetThreadSelectorEntry = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
  Uint32 dwSelector,
  Pointer<LDT_ENTRY> lpSelectorEntry,
),
    int Function(
  int hThread,
  int dwSelector,
  Pointer<LDT_ENTRY> lpSelectorEntry,
)>('GetThreadSelectorEntry');

int GetXStateFeaturesMask(
  Pointer<CONTEXT> Context,
  Pointer<Uint64> FeatureMask,
) =>
    _GetXStateFeaturesMask(
      Context,
      FeatureMask,
    );

late final _GetXStateFeaturesMask = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<CONTEXT> Context,
  Pointer<Uint64> FeatureMask,
),
    int Function(
  Pointer<CONTEXT> Context,
  Pointer<Uint64> FeatureMask,
)>('GetXStateFeaturesMask');

int InitializeContext(
  Pointer Buffer,
  int ContextFlags,
  Pointer<Pointer<CONTEXT>> Context,
  Pointer<Uint32> ContextLength,
) =>
    _InitializeContext(
      Buffer,
      ContextFlags,
      Context,
      ContextLength,
    );

late final _InitializeContext = _kernel32.lookupFunction<
    Int32 Function(
  Pointer Buffer,
  Uint32 ContextFlags,
  Pointer<Pointer<CONTEXT>> Context,
  Pointer<Uint32> ContextLength,
),
    int Function(
  Pointer Buffer,
  int ContextFlags,
  Pointer<Pointer<CONTEXT>> Context,
  Pointer<Uint32> ContextLength,
)>('InitializeContext');

int InitializeContext2(
  Pointer Buffer,
  int ContextFlags,
  Pointer<Pointer<CONTEXT>> Context,
  Pointer<Uint32> ContextLength,
  int XStateCompactionMask,
) =>
    _InitializeContext2(
      Buffer,
      ContextFlags,
      Context,
      ContextLength,
      XStateCompactionMask,
    );

late final _InitializeContext2 = _kernel32.lookupFunction<
    Int32 Function(
  Pointer Buffer,
  Uint32 ContextFlags,
  Pointer<Pointer<CONTEXT>> Context,
  Pointer<Uint32> ContextLength,
  Uint64 XStateCompactionMask,
),
    int Function(
  Pointer Buffer,
  int ContextFlags,
  Pointer<Pointer<CONTEXT>> Context,
  Pointer<Uint32> ContextLength,
  int XStateCompactionMask,
)>('InitializeContext2');

int IsDebuggerPresent() => _IsDebuggerPresent();

late final _IsDebuggerPresent = _kernel32
    .lookupFunction<Int32 Function(), int Function()>('IsDebuggerPresent');

Pointer LocateXStateFeature(
  Pointer<CONTEXT> Context,
  int FeatureId,
  Pointer<Uint32> Length,
) =>
    _LocateXStateFeature(
      Context,
      FeatureId,
      Length,
    );

late final _LocateXStateFeature = _kernel32.lookupFunction<
    Pointer Function(
  Pointer<CONTEXT> Context,
  Uint32 FeatureId,
  Pointer<Uint32> Length,
),
    Pointer Function(
  Pointer<CONTEXT> Context,
  int FeatureId,
  Pointer<Uint32> Length,
)>('LocateXStateFeature');

void OutputDebugString(
  Pointer<Utf16> lpOutputString,
) =>
    _OutputDebugString(
      lpOutputString,
    );

late final _OutputDebugString = _kernel32.lookupFunction<
    Void Function(
  Pointer<Utf16> lpOutputString,
),
    void Function(
  Pointer<Utf16> lpOutputString,
)>('OutputDebugStringW');

void RaiseException(
  int dwExceptionCode,
  int dwExceptionFlags,
  int nNumberOfArguments,
  Pointer<IntPtr> lpArguments,
) =>
    _RaiseException(
      dwExceptionCode,
      dwExceptionFlags,
      nNumberOfArguments,
      lpArguments,
    );

late final _RaiseException = _kernel32.lookupFunction<
    Void Function(
  Uint32 dwExceptionCode,
  Uint32 dwExceptionFlags,
  Uint32 nNumberOfArguments,
  Pointer<IntPtr> lpArguments,
),
    void Function(
  int dwExceptionCode,
  int dwExceptionFlags,
  int nNumberOfArguments,
  Pointer<IntPtr> lpArguments,
)>('RaiseException');

void RaiseFailFastException(
  Pointer<EXCEPTION_RECORD> pExceptionRecord,
  Pointer<CONTEXT> pContextRecord,
  int dwFlags,
) =>
    _RaiseFailFastException(
      pExceptionRecord,
      pContextRecord,
      dwFlags,
    );

late final _RaiseFailFastException = _kernel32.lookupFunction<
    Void Function(
  Pointer<EXCEPTION_RECORD> pExceptionRecord,
  Pointer<CONTEXT> pContextRecord,
  Uint32 dwFlags,
),
    void Function(
  Pointer<EXCEPTION_RECORD> pExceptionRecord,
  Pointer<CONTEXT> pContextRecord,
  int dwFlags,
)>('RaiseFailFastException');

int ReadProcessMemory(
  int hProcess,
  Pointer lpBaseAddress,
  Pointer lpBuffer,
  int nSize,
  Pointer<IntPtr> lpNumberOfBytesRead,
) =>
    _ReadProcessMemory(
      hProcess,
      lpBaseAddress,
      lpBuffer,
      nSize,
      lpNumberOfBytesRead,
    );

late final _ReadProcessMemory = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer lpBaseAddress,
  Pointer lpBuffer,
  IntPtr nSize,
  Pointer<IntPtr> lpNumberOfBytesRead,
),
    int Function(
  int hProcess,
  Pointer lpBaseAddress,
  Pointer lpBuffer,
  int nSize,
  Pointer<IntPtr> lpNumberOfBytesRead,
)>('ReadProcessMemory');

int RemoveVectoredContinueHandler(
  Pointer $Handle,
) =>
    _RemoveVectoredContinueHandler(
      $Handle,
    );

late final _RemoveVectoredContinueHandler = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer $Handle,
),
    int Function(
  Pointer $Handle,
)>('RemoveVectoredContinueHandler');

int RemoveVectoredExceptionHandler(
  Pointer $Handle,
) =>
    _RemoveVectoredExceptionHandler(
      $Handle,
    );

late final _RemoveVectoredExceptionHandler = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer $Handle,
),
    int Function(
  Pointer $Handle,
)>('RemoveVectoredExceptionHandler');

int RtlAddFunctionTable(
  Pointer<IMAGE_RUNTIME_FUNCTION_ENTRY> FunctionTable,
  int EntryCount,
  int BaseAddress,
) =>
    _RtlAddFunctionTable(
      FunctionTable,
      EntryCount,
      BaseAddress,
    );

late final _RtlAddFunctionTable = _kernel32.lookupFunction<
    Uint8 Function(
  Pointer<IMAGE_RUNTIME_FUNCTION_ENTRY> FunctionTable,
  Uint32 EntryCount,
  Uint64 BaseAddress,
),
    int Function(
  Pointer<IMAGE_RUNTIME_FUNCTION_ENTRY> FunctionTable,
  int EntryCount,
  int BaseAddress,
)>('RtlAddFunctionTable');

void RtlCaptureContext(
  Pointer<CONTEXT> ContextRecord,
) =>
    _RtlCaptureContext(
      ContextRecord,
    );

late final _RtlCaptureContext = _kernel32.lookupFunction<
    Void Function(
  Pointer<CONTEXT> ContextRecord,
),
    void Function(
  Pointer<CONTEXT> ContextRecord,
)>('RtlCaptureContext');

void RtlCaptureContext2(
  Pointer<CONTEXT> ContextRecord,
) =>
    _RtlCaptureContext2(
      ContextRecord,
    );

late final _RtlCaptureContext2 = _kernel32.lookupFunction<
    Void Function(
  Pointer<CONTEXT> ContextRecord,
),
    void Function(
  Pointer<CONTEXT> ContextRecord,
)>('RtlCaptureContext2');

int RtlCaptureStackBackTrace(
  int FramesToSkip,
  int FramesToCapture,
  Pointer<Pointer> BackTrace,
  Pointer<Uint32> BackTraceHash,
) =>
    _RtlCaptureStackBackTrace(
      FramesToSkip,
      FramesToCapture,
      BackTrace,
      BackTraceHash,
    );

late final _RtlCaptureStackBackTrace = _kernel32.lookupFunction<
    Uint16 Function(
  Uint32 FramesToSkip,
  Uint32 FramesToCapture,
  Pointer<Pointer> BackTrace,
  Pointer<Uint32> BackTraceHash,
),
    int Function(
  int FramesToSkip,
  int FramesToCapture,
  Pointer<Pointer> BackTrace,
  Pointer<Uint32> BackTraceHash,
)>('RtlCaptureStackBackTrace');

int RtlDeleteFunctionTable(
  Pointer<IMAGE_RUNTIME_FUNCTION_ENTRY> FunctionTable,
) =>
    _RtlDeleteFunctionTable(
      FunctionTable,
    );

late final _RtlDeleteFunctionTable = _kernel32.lookupFunction<
    Uint8 Function(
  Pointer<IMAGE_RUNTIME_FUNCTION_ENTRY> FunctionTable,
),
    int Function(
  Pointer<IMAGE_RUNTIME_FUNCTION_ENTRY> FunctionTable,
)>('RtlDeleteFunctionTable');

int RtlInstallFunctionTableCallback(
  int TableIdentifier,
  int BaseAddress,
  int Length,
  Pointer<NativeFunction<PGET_RUNTIME_FUNCTION_CALLBACK>> Callback,
  Pointer Context,
  Pointer<Utf16> OutOfProcessCallbackDll,
) =>
    _RtlInstallFunctionTableCallback(
      TableIdentifier,
      BaseAddress,
      Length,
      Callback,
      Context,
      OutOfProcessCallbackDll,
    );

late final _RtlInstallFunctionTableCallback = _kernel32.lookupFunction<
    Uint8 Function(
  Uint64 TableIdentifier,
  Uint64 BaseAddress,
  Uint32 Length,
  Pointer<NativeFunction<PGET_RUNTIME_FUNCTION_CALLBACK>> Callback,
  Pointer Context,
  Pointer<Utf16> OutOfProcessCallbackDll,
),
    int Function(
  int TableIdentifier,
  int BaseAddress,
  int Length,
  Pointer<NativeFunction<PGET_RUNTIME_FUNCTION_CALLBACK>> Callback,
  Pointer Context,
  Pointer<Utf16> OutOfProcessCallbackDll,
)>('RtlInstallFunctionTableCallback');

Pointer<IMAGE_RUNTIME_FUNCTION_ENTRY> RtlLookupFunctionEntry(
  int ControlPc,
  Pointer<Uint64> ImageBase,
  Pointer<UNWIND_HISTORY_TABLE> HistoryTable,
) =>
    _RtlLookupFunctionEntry(
      ControlPc,
      ImageBase,
      HistoryTable,
    );

late final _RtlLookupFunctionEntry = _kernel32.lookupFunction<
    Pointer<IMAGE_RUNTIME_FUNCTION_ENTRY> Function(
  Uint64 ControlPc,
  Pointer<Uint64> ImageBase,
  Pointer<UNWIND_HISTORY_TABLE> HistoryTable,
),
    Pointer<IMAGE_RUNTIME_FUNCTION_ENTRY> Function(
  int ControlPc,
  Pointer<Uint64> ImageBase,
  Pointer<UNWIND_HISTORY_TABLE> HistoryTable,
)>('RtlLookupFunctionEntry');

Pointer RtlPcToFileHeader(
  Pointer PcValue,
  Pointer<Pointer> BaseOfImage,
) =>
    _RtlPcToFileHeader(
      PcValue,
      BaseOfImage,
    );

late final _RtlPcToFileHeader = _kernel32.lookupFunction<
    Pointer Function(
  Pointer PcValue,
  Pointer<Pointer> BaseOfImage,
),
    Pointer Function(
  Pointer PcValue,
  Pointer<Pointer> BaseOfImage,
)>('RtlPcToFileHeader');

void RtlRaiseException(
  Pointer<EXCEPTION_RECORD> ExceptionRecord,
) =>
    _RtlRaiseException(
      ExceptionRecord,
    );

late final _RtlRaiseException = _kernel32.lookupFunction<
    Void Function(
  Pointer<EXCEPTION_RECORD> ExceptionRecord,
),
    void Function(
  Pointer<EXCEPTION_RECORD> ExceptionRecord,
)>('RtlRaiseException');

void RtlRestoreContext(
  Pointer<CONTEXT> ContextRecord,
  Pointer<EXCEPTION_RECORD> ExceptionRecord,
) =>
    _RtlRestoreContext(
      ContextRecord,
      ExceptionRecord,
    );

late final _RtlRestoreContext = _kernel32.lookupFunction<
    Void Function(
  Pointer<CONTEXT> ContextRecord,
  Pointer<EXCEPTION_RECORD> ExceptionRecord,
),
    void Function(
  Pointer<CONTEXT> ContextRecord,
  Pointer<EXCEPTION_RECORD> ExceptionRecord,
)>('RtlRestoreContext');

void RtlUnwind(
  Pointer TargetFrame,
  Pointer TargetIp,
  Pointer<EXCEPTION_RECORD> ExceptionRecord,
  Pointer ReturnValue,
) =>
    _RtlUnwind(
      TargetFrame,
      TargetIp,
      ExceptionRecord,
      ReturnValue,
    );

late final _RtlUnwind = _kernel32.lookupFunction<
    Void Function(
  Pointer TargetFrame,
  Pointer TargetIp,
  Pointer<EXCEPTION_RECORD> ExceptionRecord,
  Pointer ReturnValue,
),
    void Function(
  Pointer TargetFrame,
  Pointer TargetIp,
  Pointer<EXCEPTION_RECORD> ExceptionRecord,
  Pointer ReturnValue,
)>('RtlUnwind');

void RtlUnwindEx(
  Pointer TargetFrame,
  Pointer TargetIp,
  Pointer<EXCEPTION_RECORD> ExceptionRecord,
  Pointer ReturnValue,
  Pointer<CONTEXT> ContextRecord,
  Pointer<UNWIND_HISTORY_TABLE> HistoryTable,
) =>
    _RtlUnwindEx(
      TargetFrame,
      TargetIp,
      ExceptionRecord,
      ReturnValue,
      ContextRecord,
      HistoryTable,
    );

late final _RtlUnwindEx = _kernel32.lookupFunction<
    Void Function(
  Pointer TargetFrame,
  Pointer TargetIp,
  Pointer<EXCEPTION_RECORD> ExceptionRecord,
  Pointer ReturnValue,
  Pointer<CONTEXT> ContextRecord,
  Pointer<UNWIND_HISTORY_TABLE> HistoryTable,
),
    void Function(
  Pointer TargetFrame,
  Pointer TargetIp,
  Pointer<EXCEPTION_RECORD> ExceptionRecord,
  Pointer ReturnValue,
  Pointer<CONTEXT> ContextRecord,
  Pointer<UNWIND_HISTORY_TABLE> HistoryTable,
)>('RtlUnwindEx');

Pointer<NativeFunction<EXCEPTION_ROUTINE>> RtlVirtualUnwind(
  int HandlerType,
  int ImageBase,
  int ControlPc,
  Pointer<IMAGE_RUNTIME_FUNCTION_ENTRY> FunctionEntry,
  Pointer<CONTEXT> ContextRecord,
  Pointer<Pointer> HandlerData,
  Pointer<Uint64> EstablisherFrame,
  Pointer<KNONVOLATILE_CONTEXT_POINTERS> ContextPointers,
) =>
    _RtlVirtualUnwind(
      HandlerType,
      ImageBase,
      ControlPc,
      FunctionEntry,
      ContextRecord,
      HandlerData,
      EstablisherFrame,
      ContextPointers,
    );

late final _RtlVirtualUnwind = _kernel32.lookupFunction<
    Pointer<NativeFunction<EXCEPTION_ROUTINE>> Function(
  Uint32 HandlerType,
  Uint64 ImageBase,
  Uint64 ControlPc,
  Pointer<IMAGE_RUNTIME_FUNCTION_ENTRY> FunctionEntry,
  Pointer<CONTEXT> ContextRecord,
  Pointer<Pointer> HandlerData,
  Pointer<Uint64> EstablisherFrame,
  Pointer<KNONVOLATILE_CONTEXT_POINTERS> ContextPointers,
),
    Pointer<NativeFunction<EXCEPTION_ROUTINE>> Function(
  int HandlerType,
  int ImageBase,
  int ControlPc,
  Pointer<IMAGE_RUNTIME_FUNCTION_ENTRY> FunctionEntry,
  Pointer<CONTEXT> ContextRecord,
  Pointer<Pointer> HandlerData,
  Pointer<Uint64> EstablisherFrame,
  Pointer<KNONVOLATILE_CONTEXT_POINTERS> ContextPointers,
)>('RtlVirtualUnwind');

int SetErrorMode(
  int uMode,
) =>
    _SetErrorMode(
      uMode,
    );

late final _SetErrorMode = _kernel32.lookupFunction<
    Uint32 Function(
  Uint32 uMode,
),
    int Function(
  int uMode,
)>('SetErrorMode');

int SetThreadContext(
  int hThread,
  Pointer<CONTEXT> lpContext,
) =>
    _SetThreadContext(
      hThread,
      lpContext,
    );

late final _SetThreadContext = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
  Pointer<CONTEXT> lpContext,
),
    int Function(
  int hThread,
  Pointer<CONTEXT> lpContext,
)>('SetThreadContext');

int SetThreadErrorMode(
  int dwNewMode,
  Pointer<Uint32> lpOldMode,
) =>
    _SetThreadErrorMode(
      dwNewMode,
      lpOldMode,
    );

late final _SetThreadErrorMode = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwNewMode,
  Pointer<Uint32> lpOldMode,
),
    int Function(
  int dwNewMode,
  Pointer<Uint32> lpOldMode,
)>('SetThreadErrorMode');

Pointer<NativeFunction<LPTOP_LEVEL_EXCEPTION_FILTER>>
    SetUnhandledExceptionFilter(
  Pointer<NativeFunction<LPTOP_LEVEL_EXCEPTION_FILTER>>
      lpTopLevelExceptionFilter,
) =>
        _SetUnhandledExceptionFilter(
          lpTopLevelExceptionFilter,
        );

late final _SetUnhandledExceptionFilter = _kernel32.lookupFunction<
    Pointer<NativeFunction<LPTOP_LEVEL_EXCEPTION_FILTER>> Function(
  Pointer<NativeFunction<LPTOP_LEVEL_EXCEPTION_FILTER>>
      lpTopLevelExceptionFilter,
),
    Pointer<NativeFunction<LPTOP_LEVEL_EXCEPTION_FILTER>> Function(
  Pointer<NativeFunction<LPTOP_LEVEL_EXCEPTION_FILTER>>
      lpTopLevelExceptionFilter,
)>('SetUnhandledExceptionFilter');

int SetXStateFeaturesMask(
  Pointer<CONTEXT> Context,
  int FeatureMask,
) =>
    _SetXStateFeaturesMask(
      Context,
      FeatureMask,
    );

late final _SetXStateFeaturesMask = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<CONTEXT> Context,
  Uint64 FeatureMask,
),
    int Function(
  Pointer<CONTEXT> Context,
  int FeatureMask,
)>('SetXStateFeaturesMask');

int UnhandledExceptionFilter(
  Pointer<EXCEPTION_POINTERS> ExceptionInfo,
) =>
    _UnhandledExceptionFilter(
      ExceptionInfo,
    );

late final _UnhandledExceptionFilter = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<EXCEPTION_POINTERS> ExceptionInfo,
),
    int Function(
  Pointer<EXCEPTION_POINTERS> ExceptionInfo,
)>('UnhandledExceptionFilter');

int WaitForDebugEvent(
  Pointer<DEBUG_EVENT> lpDebugEvent,
  int dwMilliseconds,
) =>
    _WaitForDebugEvent(
      lpDebugEvent,
      dwMilliseconds,
    );

late final _WaitForDebugEvent = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<DEBUG_EVENT> lpDebugEvent,
  Uint32 dwMilliseconds,
),
    int Function(
  Pointer<DEBUG_EVENT> lpDebugEvent,
  int dwMilliseconds,
)>('WaitForDebugEvent');

int WaitForDebugEventEx(
  Pointer<DEBUG_EVENT> lpDebugEvent,
  int dwMilliseconds,
) =>
    _WaitForDebugEventEx(
      lpDebugEvent,
      dwMilliseconds,
    );

late final _WaitForDebugEventEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<DEBUG_EVENT> lpDebugEvent,
  Uint32 dwMilliseconds,
),
    int Function(
  Pointer<DEBUG_EVENT> lpDebugEvent,
  int dwMilliseconds,
)>('WaitForDebugEventEx');

int Wow64GetThreadContext(
  int hThread,
  Pointer<WOW64_CONTEXT> lpContext,
) =>
    _Wow64GetThreadContext(
      hThread,
      lpContext,
    );

late final _Wow64GetThreadContext = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
  Pointer<WOW64_CONTEXT> lpContext,
),
    int Function(
  int hThread,
  Pointer<WOW64_CONTEXT> lpContext,
)>('Wow64GetThreadContext');

int Wow64GetThreadSelectorEntry(
  int hThread,
  int dwSelector,
  Pointer<WOW64_LDT_ENTRY> lpSelectorEntry,
) =>
    _Wow64GetThreadSelectorEntry(
      hThread,
      dwSelector,
      lpSelectorEntry,
    );

late final _Wow64GetThreadSelectorEntry = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
  Uint32 dwSelector,
  Pointer<WOW64_LDT_ENTRY> lpSelectorEntry,
),
    int Function(
  int hThread,
  int dwSelector,
  Pointer<WOW64_LDT_ENTRY> lpSelectorEntry,
)>('Wow64GetThreadSelectorEntry');

int Wow64SetThreadContext(
  int hThread,
  Pointer<WOW64_CONTEXT> lpContext,
) =>
    _Wow64SetThreadContext(
      hThread,
      lpContext,
    );

late final _Wow64SetThreadContext = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hThread,
  Pointer<WOW64_CONTEXT> lpContext,
),
    int Function(
  int hThread,
  Pointer<WOW64_CONTEXT> lpContext,
)>('Wow64SetThreadContext');

int WriteProcessMemory(
  int hProcess,
  Pointer lpBaseAddress,
  Pointer lpBuffer,
  int nSize,
  Pointer<IntPtr> lpNumberOfBytesWritten,
) =>
    _WriteProcessMemory(
      hProcess,
      lpBaseAddress,
      lpBuffer,
      nSize,
      lpNumberOfBytesWritten,
    );

late final _WriteProcessMemory = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer lpBaseAddress,
  Pointer lpBuffer,
  IntPtr nSize,
  Pointer<IntPtr> lpNumberOfBytesWritten,
),
    int Function(
  int hProcess,
  Pointer lpBaseAddress,
  Pointer lpBuffer,
  int nSize,
  Pointer<IntPtr> lpNumberOfBytesWritten,
)>('WriteProcessMemory');

// -----------------------------------------------------------------------
// ntdll.dll
// -----------------------------------------------------------------------
final _ntdll = DynamicLibrary.open('ntdll.dll');

int RtlAddGrowableFunctionTable(
  Pointer<Pointer> DynamicTable,
  Pointer<IMAGE_RUNTIME_FUNCTION_ENTRY> FunctionTable,
  int EntryCount,
  int MaximumEntryCount,
  int RangeBase,
  int RangeEnd,
) =>
    _RtlAddGrowableFunctionTable(
      DynamicTable,
      FunctionTable,
      EntryCount,
      MaximumEntryCount,
      RangeBase,
      RangeEnd,
    );

late final _RtlAddGrowableFunctionTable = _ntdll.lookupFunction<
    Uint32 Function(
  Pointer<Pointer> DynamicTable,
  Pointer<IMAGE_RUNTIME_FUNCTION_ENTRY> FunctionTable,
  Uint32 EntryCount,
  Uint32 MaximumEntryCount,
  IntPtr RangeBase,
  IntPtr RangeEnd,
),
    int Function(
  Pointer<Pointer> DynamicTable,
  Pointer<IMAGE_RUNTIME_FUNCTION_ENTRY> FunctionTable,
  int EntryCount,
  int MaximumEntryCount,
  int RangeBase,
  int RangeEnd,
)>('RtlAddGrowableFunctionTable');

void RtlDeleteGrowableFunctionTable(
  Pointer DynamicTable,
) =>
    _RtlDeleteGrowableFunctionTable(
      DynamicTable,
    );

late final _RtlDeleteGrowableFunctionTable = _ntdll.lookupFunction<
    Void Function(
  Pointer DynamicTable,
),
    void Function(
  Pointer DynamicTable,
)>('RtlDeleteGrowableFunctionTable');

void RtlGrowFunctionTable(
  Pointer DynamicTable,
  int NewEntryCount,
) =>
    _RtlGrowFunctionTable(
      DynamicTable,
      NewEntryCount,
    );

late final _RtlGrowFunctionTable = _ntdll.lookupFunction<
    Void Function(
  Pointer DynamicTable,
  Uint32 NewEntryCount,
),
    void Function(
  Pointer DynamicTable,
  int NewEntryCount,
)>('RtlGrowFunctionTable');

// -----------------------------------------------------------------------
// dbgeng.dll
// -----------------------------------------------------------------------
final _dbgeng = DynamicLibrary.open('dbgeng.dll');

int DebugConnect(
  Pointer<Utf8> RemoteOptions,
  Pointer<GUID> InterfaceId,
  Pointer<Pointer> Interface,
) =>
    _DebugConnect(
      RemoteOptions,
      InterfaceId,
      Interface,
    );

late final _DebugConnect = _dbgeng.lookupFunction<
    Int32 Function(
  Pointer<Utf8> RemoteOptions,
  Pointer<GUID> InterfaceId,
  Pointer<Pointer> Interface,
),
    int Function(
  Pointer<Utf8> RemoteOptions,
  Pointer<GUID> InterfaceId,
  Pointer<Pointer> Interface,
)>('DebugConnect');

int DebugConnectWide(
  Pointer<Utf16> RemoteOptions,
  Pointer<GUID> InterfaceId,
  Pointer<Pointer> Interface,
) =>
    _DebugConnectWide(
      RemoteOptions,
      InterfaceId,
      Interface,
    );

late final _DebugConnectWide = _dbgeng.lookupFunction<
    Int32 Function(
  Pointer<Utf16> RemoteOptions,
  Pointer<GUID> InterfaceId,
  Pointer<Pointer> Interface,
),
    int Function(
  Pointer<Utf16> RemoteOptions,
  Pointer<GUID> InterfaceId,
  Pointer<Pointer> Interface,
)>('DebugConnectWide');

int DebugCreate(
  Pointer<GUID> InterfaceId,
  Pointer<Pointer> Interface,
) =>
    _DebugCreate(
      InterfaceId,
      Interface,
    );

late final _DebugCreate = _dbgeng.lookupFunction<
    Int32 Function(
  Pointer<GUID> InterfaceId,
  Pointer<Pointer> Interface,
),
    int Function(
  Pointer<GUID> InterfaceId,
  Pointer<Pointer> Interface,
)>('DebugCreate');

int DebugCreateEx(
  Pointer<GUID> InterfaceId,
  int DbgEngOptions,
  Pointer<Pointer> Interface,
) =>
    _DebugCreateEx(
      InterfaceId,
      DbgEngOptions,
      Interface,
    );

late final _DebugCreateEx = _dbgeng.lookupFunction<
    Int32 Function(
  Pointer<GUID> InterfaceId,
  Uint32 DbgEngOptions,
  Pointer<Pointer> Interface,
),
    int Function(
  Pointer<GUID> InterfaceId,
  int DbgEngOptions,
  Pointer<Pointer> Interface,
)>('DebugCreateEx');

// -----------------------------------------------------------------------
// dbgmodel.dll
// -----------------------------------------------------------------------
final _dbgmodel = DynamicLibrary.open('dbgmodel.dll');

int CreateDataModelManager(
  Pointer<COMObject> debugHost,
  Pointer<Pointer<COMObject>> manager,
) =>
    _CreateDataModelManager(
      debugHost,
      manager,
    );

late final _CreateDataModelManager = _dbgmodel.lookupFunction<
    Int32 Function(
  Pointer<COMObject> debugHost,
  Pointer<Pointer<COMObject>> manager,
),
    int Function(
  Pointer<COMObject> debugHost,
  Pointer<Pointer<COMObject>> manager,
)>('CreateDataModelManager');

// -----------------------------------------------------------------------
// api-ms-win-core-util-l1-1-1.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_util_l1_1_1 =
    DynamicLibrary.open('api-ms-win-core-util-l1-1-1.dll');

int DecodeRemotePointer(
  int ProcessHandle,
  Pointer Ptr,
  Pointer<Pointer> DecodedPtr,
) =>
    _DecodeRemotePointer(
      ProcessHandle,
      Ptr,
      DecodedPtr,
    );

late final _DecodeRemotePointer = _api_ms_win_core_util_l1_1_1.lookupFunction<
    Int32 Function(
  IntPtr ProcessHandle,
  Pointer Ptr,
  Pointer<Pointer> DecodedPtr,
),
    int Function(
  int ProcessHandle,
  Pointer Ptr,
  Pointer<Pointer> DecodedPtr,
)>('DecodeRemotePointer');

int EncodeRemotePointer(
  int ProcessHandle,
  Pointer Ptr,
  Pointer<Pointer> EncodedPtr,
) =>
    _EncodeRemotePointer(
      ProcessHandle,
      Ptr,
      EncodedPtr,
    );

late final _EncodeRemotePointer = _api_ms_win_core_util_l1_1_1.lookupFunction<
    Int32 Function(
  IntPtr ProcessHandle,
  Pointer Ptr,
  Pointer<Pointer> EncodedPtr,
),
    int Function(
  int ProcessHandle,
  Pointer Ptr,
  Pointer<Pointer> EncodedPtr,
)>('EncodeRemotePointer');

// -----------------------------------------------------------------------
// api-ms-win-core-errorhandling-l1-1-3.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_errorhandling_l1_1_3 =
    DynamicLibrary.open('api-ms-win-core-errorhandling-l1-1-3.dll');

void TerminateProcessOnMemoryExhaustion(
  int FailedAllocationSize,
) =>
    _TerminateProcessOnMemoryExhaustion(
      FailedAllocationSize,
    );

late final _TerminateProcessOnMemoryExhaustion =
    _api_ms_win_core_errorhandling_l1_1_3.lookupFunction<
        Void Function(
  IntPtr FailedAllocationSize,
),
        void Function(
  int FailedAllocationSize,
)>('TerminateProcessOnMemoryExhaustion');

// -----------------------------------------------------------------------
// advapi32.dll
// -----------------------------------------------------------------------
final _advapi32 = DynamicLibrary.open('advapi32.dll');

void CloseThreadWaitChainSession(
  Pointer WctHandle,
) =>
    _CloseThreadWaitChainSession(
      WctHandle,
    );

late final _CloseThreadWaitChainSession = _advapi32.lookupFunction<
    Void Function(
  Pointer WctHandle,
),
    void Function(
  Pointer WctHandle,
)>('CloseThreadWaitChainSession');

int GetThreadWaitChain(
  Pointer WctHandle,
  int Context,
  int Flags,
  int ThreadId,
  Pointer<Uint32> NodeCount,
  Pointer<WAITCHAIN_NODE_INFO> NodeInfoArray,
  Pointer<Int32> IsCycle,
) =>
    _GetThreadWaitChain(
      WctHandle,
      Context,
      Flags,
      ThreadId,
      NodeCount,
      NodeInfoArray,
      IsCycle,
    );

late final _GetThreadWaitChain = _advapi32.lookupFunction<
    Int32 Function(
  Pointer WctHandle,
  IntPtr Context,
  Uint32 Flags,
  Uint32 ThreadId,
  Pointer<Uint32> NodeCount,
  Pointer<WAITCHAIN_NODE_INFO> NodeInfoArray,
  Pointer<Int32> IsCycle,
),
    int Function(
  Pointer WctHandle,
  int Context,
  int Flags,
  int ThreadId,
  Pointer<Uint32> NodeCount,
  Pointer<WAITCHAIN_NODE_INFO> NodeInfoArray,
  Pointer<Int32> IsCycle,
)>('GetThreadWaitChain');

Pointer OpenThreadWaitChainSession(
  int Flags,
  Pointer<NativeFunction<PWAITCHAINCALLBACK>> callback,
) =>
    _OpenThreadWaitChainSession(
      Flags,
      callback,
    );

late final _OpenThreadWaitChainSession = _advapi32.lookupFunction<
    Pointer Function(
  Uint32 Flags,
  Pointer<NativeFunction<PWAITCHAINCALLBACK>> callback,
),
    Pointer Function(
  int Flags,
  Pointer<NativeFunction<PWAITCHAINCALLBACK>> callback,
)>('OpenThreadWaitChainSession');

void RegisterWaitChainCOMCallback(
  Pointer<NativeFunction<PCOGETCALLSTATE>> CallStateCallback,
  Pointer<NativeFunction<PCOGETACTIVATIONSTATE>> ActivationStateCallback,
) =>
    _RegisterWaitChainCOMCallback(
      CallStateCallback,
      ActivationStateCallback,
    );

late final _RegisterWaitChainCOMCallback = _advapi32.lookupFunction<
    Void Function(
  Pointer<NativeFunction<PCOGETCALLSTATE>> CallStateCallback,
  Pointer<NativeFunction<PCOGETACTIVATIONSTATE>> ActivationStateCallback,
),
    void Function(
  Pointer<NativeFunction<PCOGETCALLSTATE>> CallStateCallback,
  Pointer<NativeFunction<PCOGETACTIVATIONSTATE>> ActivationStateCallback,
)>('RegisterWaitChainCOMCallback');

// -----------------------------------------------------------------------
// dbghelp.dll
// -----------------------------------------------------------------------
final _dbghelp = DynamicLibrary.open('dbghelp.dll');

int DbgHelpCreateUserDump(
  Pointer<Utf16> FileName,
  Pointer<NativeFunction<PDBGHELP_CREATE_USER_DUMP_CALLBACK>> Callback,
  Pointer UserData,
) =>
    _DbgHelpCreateUserDump(
      FileName,
      Callback,
      UserData,
    );

late final _DbgHelpCreateUserDump = _dbghelp.lookupFunction<
    Int32 Function(
  Pointer<Utf16> FileName,
  Pointer<NativeFunction<PDBGHELP_CREATE_USER_DUMP_CALLBACK>> Callback,
  Pointer UserData,
),
    int Function(
  Pointer<Utf16> FileName,
  Pointer<NativeFunction<PDBGHELP_CREATE_USER_DUMP_CALLBACK>> Callback,
  Pointer UserData,
)>('DbgHelpCreateUserDumpW');

int EnumDirTree(
  int hProcess,
  Pointer<Utf16> RootPath,
  Pointer<Utf16> InputPathName,
  Pointer<Utf16> OutputPathBuffer,
  Pointer<NativeFunction<PENUMDIRTREE_CALLBACKW>> cb,
  Pointer data,
) =>
    _EnumDirTree(
      hProcess,
      RootPath,
      InputPathName,
      OutputPathBuffer,
      cb,
      data,
    );

late final _EnumDirTree = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Utf16> RootPath,
  Pointer<Utf16> InputPathName,
  Pointer<Utf16> OutputPathBuffer,
  Pointer<NativeFunction<PENUMDIRTREE_CALLBACKW>> cb,
  Pointer data,
),
    int Function(
  int hProcess,
  Pointer<Utf16> RootPath,
  Pointer<Utf16> InputPathName,
  Pointer<Utf16> OutputPathBuffer,
  Pointer<NativeFunction<PENUMDIRTREE_CALLBACKW>> cb,
  Pointer data,
)>('EnumDirTreeW');

int EnumerateLoadedModules64(
  int hProcess,
  Pointer<NativeFunction<PENUMLOADED_MODULES_CALLBACK64>>
      EnumLoadedModulesCallback,
  Pointer UserContext,
) =>
    _EnumerateLoadedModules64(
      hProcess,
      EnumLoadedModulesCallback,
      UserContext,
    );

late final _EnumerateLoadedModules64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<NativeFunction<PENUMLOADED_MODULES_CALLBACK64>>
      EnumLoadedModulesCallback,
  Pointer UserContext,
),
    int Function(
  int hProcess,
  Pointer<NativeFunction<PENUMLOADED_MODULES_CALLBACK64>>
      EnumLoadedModulesCallback,
  Pointer UserContext,
)>('EnumerateLoadedModules64');

int EnumerateLoadedModulesEx(
  int hProcess,
  Pointer<NativeFunction<PENUMLOADED_MODULES_CALLBACKW64>>
      EnumLoadedModulesCallback,
  Pointer UserContext,
) =>
    _EnumerateLoadedModulesEx(
      hProcess,
      EnumLoadedModulesCallback,
      UserContext,
    );

late final _EnumerateLoadedModulesEx = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<NativeFunction<PENUMLOADED_MODULES_CALLBACKW64>>
      EnumLoadedModulesCallback,
  Pointer UserContext,
),
    int Function(
  int hProcess,
  Pointer<NativeFunction<PENUMLOADED_MODULES_CALLBACKW64>>
      EnumLoadedModulesCallback,
  Pointer UserContext,
)>('EnumerateLoadedModulesExW');

int EnumerateLoadedModulesW64(
  int hProcess,
  Pointer<NativeFunction<PENUMLOADED_MODULES_CALLBACKW64>>
      EnumLoadedModulesCallback,
  Pointer UserContext,
) =>
    _EnumerateLoadedModulesW64(
      hProcess,
      EnumLoadedModulesCallback,
      UserContext,
    );

late final _EnumerateLoadedModulesW64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<NativeFunction<PENUMLOADED_MODULES_CALLBACKW64>>
      EnumLoadedModulesCallback,
  Pointer UserContext,
),
    int Function(
  int hProcess,
  Pointer<NativeFunction<PENUMLOADED_MODULES_CALLBACKW64>>
      EnumLoadedModulesCallback,
  Pointer UserContext,
)>('EnumerateLoadedModulesW64');

int FindDebugInfoFile(
  Pointer<Utf8> FileName,
  Pointer<Utf8> SymbolPath,
  Pointer<Utf8> DebugFilePath,
) =>
    _FindDebugInfoFile(
      FileName,
      SymbolPath,
      DebugFilePath,
    );

late final _FindDebugInfoFile = _dbghelp.lookupFunction<
    IntPtr Function(
  Pointer<Utf8> FileName,
  Pointer<Utf8> SymbolPath,
  Pointer<Utf8> DebugFilePath,
),
    int Function(
  Pointer<Utf8> FileName,
  Pointer<Utf8> SymbolPath,
  Pointer<Utf8> DebugFilePath,
)>('FindDebugInfoFile');

int FindDebugInfoFileEx(
  Pointer<Utf16> FileName,
  Pointer<Utf16> SymbolPath,
  Pointer<Utf16> DebugFilePath,
  Pointer<NativeFunction<PFIND_DEBUG_FILE_CALLBACKW>> Callback,
  Pointer CallerData,
) =>
    _FindDebugInfoFileEx(
      FileName,
      SymbolPath,
      DebugFilePath,
      Callback,
      CallerData,
    );

late final _FindDebugInfoFileEx = _dbghelp.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> FileName,
  Pointer<Utf16> SymbolPath,
  Pointer<Utf16> DebugFilePath,
  Pointer<NativeFunction<PFIND_DEBUG_FILE_CALLBACKW>> Callback,
  Pointer CallerData,
),
    int Function(
  Pointer<Utf16> FileName,
  Pointer<Utf16> SymbolPath,
  Pointer<Utf16> DebugFilePath,
  Pointer<NativeFunction<PFIND_DEBUG_FILE_CALLBACKW>> Callback,
  Pointer CallerData,
)>('FindDebugInfoFileExW');

int FindExecutableImage(
  Pointer<Utf8> FileName,
  Pointer<Utf8> SymbolPath,
  Pointer<Utf8> ImageFilePath,
) =>
    _FindExecutableImage(
      FileName,
      SymbolPath,
      ImageFilePath,
    );

late final _FindExecutableImage = _dbghelp.lookupFunction<
    IntPtr Function(
  Pointer<Utf8> FileName,
  Pointer<Utf8> SymbolPath,
  Pointer<Utf8> ImageFilePath,
),
    int Function(
  Pointer<Utf8> FileName,
  Pointer<Utf8> SymbolPath,
  Pointer<Utf8> ImageFilePath,
)>('FindExecutableImage');

int FindExecutableImageEx(
  Pointer<Utf16> FileName,
  Pointer<Utf16> SymbolPath,
  Pointer<Utf16> ImageFilePath,
  Pointer<NativeFunction<PFIND_EXE_FILE_CALLBACKW>> Callback,
  Pointer CallerData,
) =>
    _FindExecutableImageEx(
      FileName,
      SymbolPath,
      ImageFilePath,
      Callback,
      CallerData,
    );

late final _FindExecutableImageEx = _dbghelp.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> FileName,
  Pointer<Utf16> SymbolPath,
  Pointer<Utf16> ImageFilePath,
  Pointer<NativeFunction<PFIND_EXE_FILE_CALLBACKW>> Callback,
  Pointer CallerData,
),
    int Function(
  Pointer<Utf16> FileName,
  Pointer<Utf16> SymbolPath,
  Pointer<Utf16> ImageFilePath,
  Pointer<NativeFunction<PFIND_EXE_FILE_CALLBACKW>> Callback,
  Pointer CallerData,
)>('FindExecutableImageExW');

int FindFileInPath(
  int hprocess,
  Pointer<Utf8> SearchPathA,
  Pointer<Utf8> FileName,
  Pointer id,
  int two,
  int three,
  int flags,
  Pointer<Utf8> FilePath,
) =>
    _FindFileInPath(
      hprocess,
      SearchPathA,
      FileName,
      id,
      two,
      three,
      flags,
      FilePath,
    );

late final _FindFileInPath = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hprocess,
  Pointer<Utf8> SearchPathA,
  Pointer<Utf8> FileName,
  Pointer id,
  Uint32 two,
  Uint32 three,
  Uint32 flags,
  Pointer<Utf8> FilePath,
),
    int Function(
  int hprocess,
  Pointer<Utf8> SearchPathA,
  Pointer<Utf8> FileName,
  Pointer id,
  int two,
  int three,
  int flags,
  Pointer<Utf8> FilePath,
)>('FindFileInPath');

int FindFileInSearchPath(
  int hprocess,
  Pointer<Utf8> SearchPathA,
  Pointer<Utf8> FileName,
  int one,
  int two,
  int three,
  Pointer<Utf8> FilePath,
) =>
    _FindFileInSearchPath(
      hprocess,
      SearchPathA,
      FileName,
      one,
      two,
      three,
      FilePath,
    );

late final _FindFileInSearchPath = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hprocess,
  Pointer<Utf8> SearchPathA,
  Pointer<Utf8> FileName,
  Uint32 one,
  Uint32 two,
  Uint32 three,
  Pointer<Utf8> FilePath,
),
    int Function(
  int hprocess,
  Pointer<Utf8> SearchPathA,
  Pointer<Utf8> FileName,
  int one,
  int two,
  int three,
  Pointer<Utf8> FilePath,
)>('FindFileInSearchPath');

int GetSymLoadError() => _GetSymLoadError();

late final _GetSymLoadError = _dbghelp
    .lookupFunction<Uint32 Function(), int Function()>('GetSymLoadError');

int GetTimestampForLoadedLibrary(
  int Module,
) =>
    _GetTimestampForLoadedLibrary(
      Module,
    );

late final _GetTimestampForLoadedLibrary = _dbghelp.lookupFunction<
    Uint32 Function(
  IntPtr Module,
),
    int Function(
  int Module,
)>('GetTimestampForLoadedLibrary');

Pointer ImageDirectoryEntryToData(
  Pointer Base,
  int MappedAsImage,
  int DirectoryEntry,
  Pointer<Uint32> Size,
) =>
    _ImageDirectoryEntryToData(
      Base,
      MappedAsImage,
      DirectoryEntry,
      Size,
    );

late final _ImageDirectoryEntryToData = _dbghelp.lookupFunction<
    Pointer Function(
  Pointer Base,
  Uint8 MappedAsImage,
  Uint32 DirectoryEntry,
  Pointer<Uint32> Size,
),
    Pointer Function(
  Pointer Base,
  int MappedAsImage,
  int DirectoryEntry,
  Pointer<Uint32> Size,
)>('ImageDirectoryEntryToData');

Pointer ImageDirectoryEntryToDataEx(
  Pointer Base,
  int MappedAsImage,
  int DirectoryEntry,
  Pointer<Uint32> Size,
  Pointer<Pointer<IMAGE_SECTION_HEADER>> FoundHeader,
) =>
    _ImageDirectoryEntryToDataEx(
      Base,
      MappedAsImage,
      DirectoryEntry,
      Size,
      FoundHeader,
    );

late final _ImageDirectoryEntryToDataEx = _dbghelp.lookupFunction<
    Pointer Function(
  Pointer Base,
  Uint8 MappedAsImage,
  Uint32 DirectoryEntry,
  Pointer<Uint32> Size,
  Pointer<Pointer<IMAGE_SECTION_HEADER>> FoundHeader,
),
    Pointer Function(
  Pointer Base,
  int MappedAsImage,
  int DirectoryEntry,
  Pointer<Uint32> Size,
  Pointer<Pointer<IMAGE_SECTION_HEADER>> FoundHeader,
)>('ImageDirectoryEntryToDataEx');

Pointer<IMAGE_NT_HEADERS64> ImageNtHeader(
  Pointer Base,
) =>
    _ImageNtHeader(
      Base,
    );

late final _ImageNtHeader = _dbghelp.lookupFunction<
    Pointer<IMAGE_NT_HEADERS64> Function(
  Pointer Base,
),
    Pointer<IMAGE_NT_HEADERS64> Function(
  Pointer Base,
)>('ImageNtHeader');

Pointer<IMAGE_SECTION_HEADER> ImageRvaToSection(
  Pointer<IMAGE_NT_HEADERS64> NtHeaders,
  Pointer Base,
  int Rva,
) =>
    _ImageRvaToSection(
      NtHeaders,
      Base,
      Rva,
    );

late final _ImageRvaToSection = _dbghelp.lookupFunction<
    Pointer<IMAGE_SECTION_HEADER> Function(
  Pointer<IMAGE_NT_HEADERS64> NtHeaders,
  Pointer Base,
  Uint32 Rva,
),
    Pointer<IMAGE_SECTION_HEADER> Function(
  Pointer<IMAGE_NT_HEADERS64> NtHeaders,
  Pointer Base,
  int Rva,
)>('ImageRvaToSection');

Pointer ImageRvaToVa(
  Pointer<IMAGE_NT_HEADERS64> NtHeaders,
  Pointer Base,
  int Rva,
  Pointer<Pointer<IMAGE_SECTION_HEADER>> LastRvaSection,
) =>
    _ImageRvaToVa(
      NtHeaders,
      Base,
      Rva,
      LastRvaSection,
    );

late final _ImageRvaToVa = _dbghelp.lookupFunction<
    Pointer Function(
  Pointer<IMAGE_NT_HEADERS64> NtHeaders,
  Pointer Base,
  Uint32 Rva,
  Pointer<Pointer<IMAGE_SECTION_HEADER>> LastRvaSection,
),
    Pointer Function(
  Pointer<IMAGE_NT_HEADERS64> NtHeaders,
  Pointer Base,
  int Rva,
  Pointer<Pointer<IMAGE_SECTION_HEADER>> LastRvaSection,
)>('ImageRvaToVa');

Pointer<API_VERSION> ImagehlpApiVersion() => _ImagehlpApiVersion();

late final _ImagehlpApiVersion = _dbghelp.lookupFunction<
    Pointer<API_VERSION> Function(),
    Pointer<API_VERSION> Function()>('ImagehlpApiVersion');

Pointer<API_VERSION> ImagehlpApiVersionEx(
  Pointer<API_VERSION> AppVersion,
) =>
    _ImagehlpApiVersionEx(
      AppVersion,
    );

late final _ImagehlpApiVersionEx = _dbghelp.lookupFunction<
    Pointer<API_VERSION> Function(
  Pointer<API_VERSION> AppVersion,
),
    Pointer<API_VERSION> Function(
  Pointer<API_VERSION> AppVersion,
)>('ImagehlpApiVersionEx');

int MakeSureDirectoryPathExists(
  Pointer<Utf8> DirPath,
) =>
    _MakeSureDirectoryPathExists(
      DirPath,
    );

late final _MakeSureDirectoryPathExists = _dbghelp.lookupFunction<
    Int32 Function(
  Pointer<Utf8> DirPath,
),
    int Function(
  Pointer<Utf8> DirPath,
)>('MakeSureDirectoryPathExists');

int MiniDumpReadDumpStream(
  Pointer BaseOfDump,
  int StreamNumber,
  Pointer<Pointer<MINIDUMP_DIRECTORY>> Dir,
  Pointer<Pointer> StreamPointer,
  Pointer<Uint32> StreamSize,
) =>
    _MiniDumpReadDumpStream(
      BaseOfDump,
      StreamNumber,
      Dir,
      StreamPointer,
      StreamSize,
    );

late final _MiniDumpReadDumpStream = _dbghelp.lookupFunction<
    Int32 Function(
  Pointer BaseOfDump,
  Uint32 StreamNumber,
  Pointer<Pointer<MINIDUMP_DIRECTORY>> Dir,
  Pointer<Pointer> StreamPointer,
  Pointer<Uint32> StreamSize,
),
    int Function(
  Pointer BaseOfDump,
  int StreamNumber,
  Pointer<Pointer<MINIDUMP_DIRECTORY>> Dir,
  Pointer<Pointer> StreamPointer,
  Pointer<Uint32> StreamSize,
)>('MiniDumpReadDumpStream');

int MiniDumpWriteDump(
  int hProcess,
  int ProcessId,
  int hFile,
  int DumpType,
  Pointer<MINIDUMP_EXCEPTION_INFORMATION> ExceptionParam,
  Pointer<MINIDUMP_USER_STREAM_INFORMATION> UserStreamParam,
  Pointer<MINIDUMP_CALLBACK_INFORMATION> CallbackParam,
) =>
    _MiniDumpWriteDump(
      hProcess,
      ProcessId,
      hFile,
      DumpType,
      ExceptionParam,
      UserStreamParam,
      CallbackParam,
    );

late final _MiniDumpWriteDump = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint32 ProcessId,
  IntPtr hFile,
  Uint32 DumpType,
  Pointer<MINIDUMP_EXCEPTION_INFORMATION> ExceptionParam,
  Pointer<MINIDUMP_USER_STREAM_INFORMATION> UserStreamParam,
  Pointer<MINIDUMP_CALLBACK_INFORMATION> CallbackParam,
),
    int Function(
  int hProcess,
  int ProcessId,
  int hFile,
  int DumpType,
  Pointer<MINIDUMP_EXCEPTION_INFORMATION> ExceptionParam,
  Pointer<MINIDUMP_USER_STREAM_INFORMATION> UserStreamParam,
  Pointer<MINIDUMP_CALLBACK_INFORMATION> CallbackParam,
)>('MiniDumpWriteDump');

int RangeMapAddPeImageSections(
  Pointer RmapHandle,
  Pointer<Utf16> ImageName,
  Pointer MappedImage,
  int MappingBytes,
  int ImageBase,
  int UserTag,
  int MappingFlags,
) =>
    _RangeMapAddPeImageSections(
      RmapHandle,
      ImageName,
      MappedImage,
      MappingBytes,
      ImageBase,
      UserTag,
      MappingFlags,
    );

late final _RangeMapAddPeImageSections = _dbghelp.lookupFunction<
    Int32 Function(
  Pointer RmapHandle,
  Pointer<Utf16> ImageName,
  Pointer MappedImage,
  Uint32 MappingBytes,
  Uint64 ImageBase,
  Uint64 UserTag,
  Uint32 MappingFlags,
),
    int Function(
  Pointer RmapHandle,
  Pointer<Utf16> ImageName,
  Pointer MappedImage,
  int MappingBytes,
  int ImageBase,
  int UserTag,
  int MappingFlags,
)>('RangeMapAddPeImageSections');

Pointer RangeMapCreate() => _RangeMapCreate();

late final _RangeMapCreate = _dbghelp
    .lookupFunction<Pointer Function(), Pointer Function()>('RangeMapCreate');

void RangeMapFree(
  Pointer RmapHandle,
) =>
    _RangeMapFree(
      RmapHandle,
    );

late final _RangeMapFree = _dbghelp.lookupFunction<
    Void Function(
  Pointer RmapHandle,
),
    void Function(
  Pointer RmapHandle,
)>('RangeMapFree');

int RangeMapRead(
  Pointer RmapHandle,
  int Offset,
  Pointer Buffer,
  int RequestBytes,
  int Flags,
  Pointer<Uint32> DoneBytes,
) =>
    _RangeMapRead(
      RmapHandle,
      Offset,
      Buffer,
      RequestBytes,
      Flags,
      DoneBytes,
    );

late final _RangeMapRead = _dbghelp.lookupFunction<
    Int32 Function(
  Pointer RmapHandle,
  Uint64 Offset,
  Pointer Buffer,
  Uint32 RequestBytes,
  Uint32 Flags,
  Pointer<Uint32> DoneBytes,
),
    int Function(
  Pointer RmapHandle,
  int Offset,
  Pointer Buffer,
  int RequestBytes,
  int Flags,
  Pointer<Uint32> DoneBytes,
)>('RangeMapRead');

int RangeMapRemove(
  Pointer RmapHandle,
  int UserTag,
) =>
    _RangeMapRemove(
      RmapHandle,
      UserTag,
    );

late final _RangeMapRemove = _dbghelp.lookupFunction<
    Int32 Function(
  Pointer RmapHandle,
  Uint64 UserTag,
),
    int Function(
  Pointer RmapHandle,
  int UserTag,
)>('RangeMapRemove');

int RangeMapWrite(
  Pointer RmapHandle,
  int Offset,
  Pointer Buffer,
  int RequestBytes,
  int Flags,
  Pointer<Uint32> DoneBytes,
) =>
    _RangeMapWrite(
      RmapHandle,
      Offset,
      Buffer,
      RequestBytes,
      Flags,
      DoneBytes,
    );

late final _RangeMapWrite = _dbghelp.lookupFunction<
    Int32 Function(
  Pointer RmapHandle,
  Uint64 Offset,
  Pointer Buffer,
  Uint32 RequestBytes,
  Uint32 Flags,
  Pointer<Uint32> DoneBytes,
),
    int Function(
  Pointer RmapHandle,
  int Offset,
  Pointer Buffer,
  int RequestBytes,
  int Flags,
  Pointer<Uint32> DoneBytes,
)>('RangeMapWrite');

void RemoveInvalidModuleList(
  int hProcess,
) =>
    _RemoveInvalidModuleList(
      hProcess,
    );

late final _RemoveInvalidModuleList = _dbghelp.lookupFunction<
    Void Function(
  IntPtr hProcess,
),
    void Function(
  int hProcess,
)>('RemoveInvalidModuleList');

int ReportSymbolLoadSummary(
  int hProcess,
  Pointer<Utf16> pLoadModule,
  Pointer<DBGHELP_DATA_REPORT_STRUCT> pSymbolData,
) =>
    _ReportSymbolLoadSummary(
      hProcess,
      pLoadModule,
      pSymbolData,
    );

late final _ReportSymbolLoadSummary = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Utf16> pLoadModule,
  Pointer<DBGHELP_DATA_REPORT_STRUCT> pSymbolData,
),
    int Function(
  int hProcess,
  Pointer<Utf16> pLoadModule,
  Pointer<DBGHELP_DATA_REPORT_STRUCT> pSymbolData,
)>('ReportSymbolLoadSummary');

int SearchTreeForFile(
  Pointer<Utf16> RootPath,
  Pointer<Utf16> InputPathName,
  Pointer<Utf16> OutputPathBuffer,
) =>
    _SearchTreeForFile(
      RootPath,
      InputPathName,
      OutputPathBuffer,
    );

late final _SearchTreeForFile = _dbghelp.lookupFunction<
    Int32 Function(
  Pointer<Utf16> RootPath,
  Pointer<Utf16> InputPathName,
  Pointer<Utf16> OutputPathBuffer,
),
    int Function(
  Pointer<Utf16> RootPath,
  Pointer<Utf16> InputPathName,
  Pointer<Utf16> OutputPathBuffer,
)>('SearchTreeForFileW');

void SetCheckUserInterruptShared(
  Pointer<NativeFunction<LPCALL_BACK_USER_INTERRUPT_ROUTINE>> lpStartAddress,
) =>
    _SetCheckUserInterruptShared(
      lpStartAddress,
    );

late final _SetCheckUserInterruptShared = _dbghelp.lookupFunction<
    Void Function(
  Pointer<NativeFunction<LPCALL_BACK_USER_INTERRUPT_ROUTINE>> lpStartAddress,
),
    void Function(
  Pointer<NativeFunction<LPCALL_BACK_USER_INTERRUPT_ROUTINE>> lpStartAddress,
)>('SetCheckUserInterruptShared');

void SetSymLoadError(
  int error,
) =>
    _SetSymLoadError(
      error,
    );

late final _SetSymLoadError = _dbghelp.lookupFunction<
    Void Function(
  Uint32 error,
),
    void Function(
  int error,
)>('SetSymLoadError');

int StackWalk64(
  int MachineType,
  int hProcess,
  int hThread,
  Pointer<STACKFRAME64> StackFrame,
  Pointer ContextRecord,
  Pointer<NativeFunction<PREAD_PROCESS_MEMORY_ROUTINE64>> ReadMemoryRoutine,
  Pointer<NativeFunction<PFUNCTION_TABLE_ACCESS_ROUTINE64>>
      FunctionTableAccessRoutine,
  Pointer<NativeFunction<PGET_MODULE_BASE_ROUTINE64>> GetModuleBaseRoutine,
  Pointer<NativeFunction<PTRANSLATE_ADDRESS_ROUTINE64>> TranslateAddress,
) =>
    _StackWalk64(
      MachineType,
      hProcess,
      hThread,
      StackFrame,
      ContextRecord,
      ReadMemoryRoutine,
      FunctionTableAccessRoutine,
      GetModuleBaseRoutine,
      TranslateAddress,
    );

late final _StackWalk64 = _dbghelp.lookupFunction<
    Int32 Function(
  Uint32 MachineType,
  IntPtr hProcess,
  IntPtr hThread,
  Pointer<STACKFRAME64> StackFrame,
  Pointer ContextRecord,
  Pointer<NativeFunction<PREAD_PROCESS_MEMORY_ROUTINE64>> ReadMemoryRoutine,
  Pointer<NativeFunction<PFUNCTION_TABLE_ACCESS_ROUTINE64>>
      FunctionTableAccessRoutine,
  Pointer<NativeFunction<PGET_MODULE_BASE_ROUTINE64>> GetModuleBaseRoutine,
  Pointer<NativeFunction<PTRANSLATE_ADDRESS_ROUTINE64>> TranslateAddress,
),
    int Function(
  int MachineType,
  int hProcess,
  int hThread,
  Pointer<STACKFRAME64> StackFrame,
  Pointer ContextRecord,
  Pointer<NativeFunction<PREAD_PROCESS_MEMORY_ROUTINE64>> ReadMemoryRoutine,
  Pointer<NativeFunction<PFUNCTION_TABLE_ACCESS_ROUTINE64>>
      FunctionTableAccessRoutine,
  Pointer<NativeFunction<PGET_MODULE_BASE_ROUTINE64>> GetModuleBaseRoutine,
  Pointer<NativeFunction<PTRANSLATE_ADDRESS_ROUTINE64>> TranslateAddress,
)>('StackWalk64');

int StackWalkEx(
  int MachineType,
  int hProcess,
  int hThread,
  Pointer<STACKFRAME_EX> StackFrame,
  Pointer ContextRecord,
  Pointer<NativeFunction<PREAD_PROCESS_MEMORY_ROUTINE64>> ReadMemoryRoutine,
  Pointer<NativeFunction<PFUNCTION_TABLE_ACCESS_ROUTINE64>>
      FunctionTableAccessRoutine,
  Pointer<NativeFunction<PGET_MODULE_BASE_ROUTINE64>> GetModuleBaseRoutine,
  Pointer<NativeFunction<PTRANSLATE_ADDRESS_ROUTINE64>> TranslateAddress,
  int Flags,
) =>
    _StackWalkEx(
      MachineType,
      hProcess,
      hThread,
      StackFrame,
      ContextRecord,
      ReadMemoryRoutine,
      FunctionTableAccessRoutine,
      GetModuleBaseRoutine,
      TranslateAddress,
      Flags,
    );

late final _StackWalkEx = _dbghelp.lookupFunction<
    Int32 Function(
  Uint32 MachineType,
  IntPtr hProcess,
  IntPtr hThread,
  Pointer<STACKFRAME_EX> StackFrame,
  Pointer ContextRecord,
  Pointer<NativeFunction<PREAD_PROCESS_MEMORY_ROUTINE64>> ReadMemoryRoutine,
  Pointer<NativeFunction<PFUNCTION_TABLE_ACCESS_ROUTINE64>>
      FunctionTableAccessRoutine,
  Pointer<NativeFunction<PGET_MODULE_BASE_ROUTINE64>> GetModuleBaseRoutine,
  Pointer<NativeFunction<PTRANSLATE_ADDRESS_ROUTINE64>> TranslateAddress,
  Uint32 Flags,
),
    int Function(
  int MachineType,
  int hProcess,
  int hThread,
  Pointer<STACKFRAME_EX> StackFrame,
  Pointer ContextRecord,
  Pointer<NativeFunction<PREAD_PROCESS_MEMORY_ROUTINE64>> ReadMemoryRoutine,
  Pointer<NativeFunction<PFUNCTION_TABLE_ACCESS_ROUTINE64>>
      FunctionTableAccessRoutine,
  Pointer<NativeFunction<PGET_MODULE_BASE_ROUTINE64>> GetModuleBaseRoutine,
  Pointer<NativeFunction<PTRANSLATE_ADDRESS_ROUTINE64>> TranslateAddress,
  int Flags,
)>('StackWalkEx');

int SymAddSourceStream(
  int hProcess,
  int Base,
  Pointer<Utf16> FileSpec,
  Pointer<Uint8> Buffer,
  int Size,
) =>
    _SymAddSourceStream(
      hProcess,
      Base,
      FileSpec,
      Buffer,
      Size,
    );

late final _SymAddSourceStream = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 Base,
  Pointer<Utf16> FileSpec,
  Pointer<Uint8> Buffer,
  IntPtr Size,
),
    int Function(
  int hProcess,
  int Base,
  Pointer<Utf16> FileSpec,
  Pointer<Uint8> Buffer,
  int Size,
)>('SymAddSourceStreamW');

int SymAddSymbol(
  int hProcess,
  int BaseOfDll,
  Pointer<Utf16> Name,
  int Address,
  int Size,
  int Flags,
) =>
    _SymAddSymbol(
      hProcess,
      BaseOfDll,
      Name,
      Address,
      Size,
      Flags,
    );

late final _SymAddSymbol = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 BaseOfDll,
  Pointer<Utf16> Name,
  Uint64 Address,
  Uint32 Size,
  Uint32 Flags,
),
    int Function(
  int hProcess,
  int BaseOfDll,
  Pointer<Utf16> Name,
  int Address,
  int Size,
  int Flags,
)>('SymAddSymbolW');

int SymAddrIncludeInlineTrace(
  int hProcess,
  int Address,
) =>
    _SymAddrIncludeInlineTrace(
      hProcess,
      Address,
    );

late final _SymAddrIncludeInlineTrace = _dbghelp.lookupFunction<
    Uint32 Function(
  IntPtr hProcess,
  Uint64 Address,
),
    int Function(
  int hProcess,
  int Address,
)>('SymAddrIncludeInlineTrace');

int SymCleanup(
  int hProcess,
) =>
    _SymCleanup(
      hProcess,
    );

late final _SymCleanup = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
),
    int Function(
  int hProcess,
)>('SymCleanup');

int SymCompareInlineTrace(
  int hProcess,
  int Address1,
  int InlineContext1,
  int RetAddress1,
  int Address2,
  int RetAddress2,
) =>
    _SymCompareInlineTrace(
      hProcess,
      Address1,
      InlineContext1,
      RetAddress1,
      Address2,
      RetAddress2,
    );

late final _SymCompareInlineTrace = _dbghelp.lookupFunction<
    Uint32 Function(
  IntPtr hProcess,
  Uint64 Address1,
  Uint32 InlineContext1,
  Uint64 RetAddress1,
  Uint64 Address2,
  Uint64 RetAddress2,
),
    int Function(
  int hProcess,
  int Address1,
  int InlineContext1,
  int RetAddress1,
  int Address2,
  int RetAddress2,
)>('SymCompareInlineTrace');

int SymDeleteSymbol(
  int hProcess,
  int BaseOfDll,
  Pointer<Utf16> Name,
  int Address,
  int Flags,
) =>
    _SymDeleteSymbol(
      hProcess,
      BaseOfDll,
      Name,
      Address,
      Flags,
    );

late final _SymDeleteSymbol = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 BaseOfDll,
  Pointer<Utf16> Name,
  Uint64 Address,
  Uint32 Flags,
),
    int Function(
  int hProcess,
  int BaseOfDll,
  Pointer<Utf16> Name,
  int Address,
  int Flags,
)>('SymDeleteSymbolW');

int SymEnumLines(
  int hProcess,
  int Base,
  Pointer<Utf16> Obj,
  Pointer<Utf16> File,
  Pointer<NativeFunction<PSYM_ENUMLINES_CALLBACKW>> EnumLinesCallback,
  Pointer UserContext,
) =>
    _SymEnumLines(
      hProcess,
      Base,
      Obj,
      File,
      EnumLinesCallback,
      UserContext,
    );

late final _SymEnumLines = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 Base,
  Pointer<Utf16> Obj,
  Pointer<Utf16> File,
  Pointer<NativeFunction<PSYM_ENUMLINES_CALLBACKW>> EnumLinesCallback,
  Pointer UserContext,
),
    int Function(
  int hProcess,
  int Base,
  Pointer<Utf16> Obj,
  Pointer<Utf16> File,
  Pointer<NativeFunction<PSYM_ENUMLINES_CALLBACKW>> EnumLinesCallback,
  Pointer UserContext,
)>('SymEnumLinesW');

int SymEnumProcesses(
  Pointer<NativeFunction<PSYM_ENUMPROCESSES_CALLBACK>> EnumProcessesCallback,
  Pointer UserContext,
) =>
    _SymEnumProcesses(
      EnumProcessesCallback,
      UserContext,
    );

late final _SymEnumProcesses = _dbghelp.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<PSYM_ENUMPROCESSES_CALLBACK>> EnumProcessesCallback,
  Pointer UserContext,
),
    int Function(
  Pointer<NativeFunction<PSYM_ENUMPROCESSES_CALLBACK>> EnumProcessesCallback,
  Pointer UserContext,
)>('SymEnumProcesses');

int SymEnumSourceFileTokens(
  int hProcess,
  int Base,
  Pointer<NativeFunction<PENUMSOURCEFILETOKENSCALLBACK>> Callback,
) =>
    _SymEnumSourceFileTokens(
      hProcess,
      Base,
      Callback,
    );

late final _SymEnumSourceFileTokens = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 Base,
  Pointer<NativeFunction<PENUMSOURCEFILETOKENSCALLBACK>> Callback,
),
    int Function(
  int hProcess,
  int Base,
  Pointer<NativeFunction<PENUMSOURCEFILETOKENSCALLBACK>> Callback,
)>('SymEnumSourceFileTokens');

int SymEnumSourceFiles(
  int hProcess,
  int ModBase,
  Pointer<Utf16> Mask,
  Pointer<NativeFunction<PSYM_ENUMSOURCEFILES_CALLBACKW>> cbSrcFiles,
  Pointer UserContext,
) =>
    _SymEnumSourceFiles(
      hProcess,
      ModBase,
      Mask,
      cbSrcFiles,
      UserContext,
    );

late final _SymEnumSourceFiles = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 ModBase,
  Pointer<Utf16> Mask,
  Pointer<NativeFunction<PSYM_ENUMSOURCEFILES_CALLBACKW>> cbSrcFiles,
  Pointer UserContext,
),
    int Function(
  int hProcess,
  int ModBase,
  Pointer<Utf16> Mask,
  Pointer<NativeFunction<PSYM_ENUMSOURCEFILES_CALLBACKW>> cbSrcFiles,
  Pointer UserContext,
)>('SymEnumSourceFilesW');

int SymEnumSourceLines(
  int hProcess,
  int Base,
  Pointer<Utf16> Obj,
  Pointer<Utf16> File,
  int Line,
  int Flags,
  Pointer<NativeFunction<PSYM_ENUMLINES_CALLBACKW>> EnumLinesCallback,
  Pointer UserContext,
) =>
    _SymEnumSourceLines(
      hProcess,
      Base,
      Obj,
      File,
      Line,
      Flags,
      EnumLinesCallback,
      UserContext,
    );

late final _SymEnumSourceLines = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 Base,
  Pointer<Utf16> Obj,
  Pointer<Utf16> File,
  Uint32 Line,
  Uint32 Flags,
  Pointer<NativeFunction<PSYM_ENUMLINES_CALLBACKW>> EnumLinesCallback,
  Pointer UserContext,
),
    int Function(
  int hProcess,
  int Base,
  Pointer<Utf16> Obj,
  Pointer<Utf16> File,
  int Line,
  int Flags,
  Pointer<NativeFunction<PSYM_ENUMLINES_CALLBACKW>> EnumLinesCallback,
  Pointer UserContext,
)>('SymEnumSourceLinesW');

int SymEnumSym(
  int hProcess,
  int BaseOfDll,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>> EnumSymbolsCallback,
  Pointer UserContext,
) =>
    _SymEnumSym(
      hProcess,
      BaseOfDll,
      EnumSymbolsCallback,
      UserContext,
    );

late final _SymEnumSym = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 BaseOfDll,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>> EnumSymbolsCallback,
  Pointer UserContext,
),
    int Function(
  int hProcess,
  int BaseOfDll,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>> EnumSymbolsCallback,
  Pointer UserContext,
)>('SymEnumSym');

int SymEnumSymbolsEx(
  int hProcess,
  int BaseOfDll,
  Pointer<Utf16> Mask,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACKW>> EnumSymbolsCallback,
  Pointer UserContext,
  int Options,
) =>
    _SymEnumSymbolsEx(
      hProcess,
      BaseOfDll,
      Mask,
      EnumSymbolsCallback,
      UserContext,
      Options,
    );

late final _SymEnumSymbolsEx = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 BaseOfDll,
  Pointer<Utf16> Mask,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACKW>> EnumSymbolsCallback,
  Pointer UserContext,
  Uint32 Options,
),
    int Function(
  int hProcess,
  int BaseOfDll,
  Pointer<Utf16> Mask,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACKW>> EnumSymbolsCallback,
  Pointer UserContext,
  int Options,
)>('SymEnumSymbolsExW');

int SymEnumSymbolsForAddr(
  int hProcess,
  int Address,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACKW>> EnumSymbolsCallback,
  Pointer UserContext,
) =>
    _SymEnumSymbolsForAddr(
      hProcess,
      Address,
      EnumSymbolsCallback,
      UserContext,
    );

late final _SymEnumSymbolsForAddr = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 Address,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACKW>> EnumSymbolsCallback,
  Pointer UserContext,
),
    int Function(
  int hProcess,
  int Address,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACKW>> EnumSymbolsCallback,
  Pointer UserContext,
)>('SymEnumSymbolsForAddrW');

int SymEnumSymbols(
  int hProcess,
  int BaseOfDll,
  Pointer<Utf16> Mask,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACKW>> EnumSymbolsCallback,
  Pointer UserContext,
) =>
    _SymEnumSymbols(
      hProcess,
      BaseOfDll,
      Mask,
      EnumSymbolsCallback,
      UserContext,
    );

late final _SymEnumSymbols = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 BaseOfDll,
  Pointer<Utf16> Mask,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACKW>> EnumSymbolsCallback,
  Pointer UserContext,
),
    int Function(
  int hProcess,
  int BaseOfDll,
  Pointer<Utf16> Mask,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACKW>> EnumSymbolsCallback,
  Pointer UserContext,
)>('SymEnumSymbolsW');

int SymEnumTypesByName(
  int hProcess,
  int BaseOfDll,
  Pointer<Utf16> mask,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACKW>> EnumSymbolsCallback,
  Pointer UserContext,
) =>
    _SymEnumTypesByName(
      hProcess,
      BaseOfDll,
      mask,
      EnumSymbolsCallback,
      UserContext,
    );

late final _SymEnumTypesByName = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 BaseOfDll,
  Pointer<Utf16> mask,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACKW>> EnumSymbolsCallback,
  Pointer UserContext,
),
    int Function(
  int hProcess,
  int BaseOfDll,
  Pointer<Utf16> mask,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACKW>> EnumSymbolsCallback,
  Pointer UserContext,
)>('SymEnumTypesByNameW');

int SymEnumTypes(
  int hProcess,
  int BaseOfDll,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACKW>> EnumSymbolsCallback,
  Pointer UserContext,
) =>
    _SymEnumTypes(
      hProcess,
      BaseOfDll,
      EnumSymbolsCallback,
      UserContext,
    );

late final _SymEnumTypes = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 BaseOfDll,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACKW>> EnumSymbolsCallback,
  Pointer UserContext,
),
    int Function(
  int hProcess,
  int BaseOfDll,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACKW>> EnumSymbolsCallback,
  Pointer UserContext,
)>('SymEnumTypesW');

int SymEnumerateModules64(
  int hProcess,
  Pointer<NativeFunction<PSYM_ENUMMODULES_CALLBACK64>> EnumModulesCallback,
  Pointer UserContext,
) =>
    _SymEnumerateModules64(
      hProcess,
      EnumModulesCallback,
      UserContext,
    );

late final _SymEnumerateModules64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<NativeFunction<PSYM_ENUMMODULES_CALLBACK64>> EnumModulesCallback,
  Pointer UserContext,
),
    int Function(
  int hProcess,
  Pointer<NativeFunction<PSYM_ENUMMODULES_CALLBACK64>> EnumModulesCallback,
  Pointer UserContext,
)>('SymEnumerateModules64');

int SymEnumerateModulesW64(
  int hProcess,
  Pointer<NativeFunction<PSYM_ENUMMODULES_CALLBACKW64>> EnumModulesCallback,
  Pointer UserContext,
) =>
    _SymEnumerateModulesW64(
      hProcess,
      EnumModulesCallback,
      UserContext,
    );

late final _SymEnumerateModulesW64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<NativeFunction<PSYM_ENUMMODULES_CALLBACKW64>> EnumModulesCallback,
  Pointer UserContext,
),
    int Function(
  int hProcess,
  Pointer<NativeFunction<PSYM_ENUMMODULES_CALLBACKW64>> EnumModulesCallback,
  Pointer UserContext,
)>('SymEnumerateModulesW64');

int SymEnumerateSymbols64(
  int hProcess,
  int BaseOfDll,
  Pointer<NativeFunction<PSYM_ENUMSYMBOLS_CALLBACK64>> EnumSymbolsCallback,
  Pointer UserContext,
) =>
    _SymEnumerateSymbols64(
      hProcess,
      BaseOfDll,
      EnumSymbolsCallback,
      UserContext,
    );

late final _SymEnumerateSymbols64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 BaseOfDll,
  Pointer<NativeFunction<PSYM_ENUMSYMBOLS_CALLBACK64>> EnumSymbolsCallback,
  Pointer UserContext,
),
    int Function(
  int hProcess,
  int BaseOfDll,
  Pointer<NativeFunction<PSYM_ENUMSYMBOLS_CALLBACK64>> EnumSymbolsCallback,
  Pointer UserContext,
)>('SymEnumerateSymbols64');

int SymEnumerateSymbolsW64(
  int hProcess,
  int BaseOfDll,
  Pointer<NativeFunction<PSYM_ENUMSYMBOLS_CALLBACK64W>> EnumSymbolsCallback,
  Pointer UserContext,
) =>
    _SymEnumerateSymbolsW64(
      hProcess,
      BaseOfDll,
      EnumSymbolsCallback,
      UserContext,
    );

late final _SymEnumerateSymbolsW64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 BaseOfDll,
  Pointer<NativeFunction<PSYM_ENUMSYMBOLS_CALLBACK64W>> EnumSymbolsCallback,
  Pointer UserContext,
),
    int Function(
  int hProcess,
  int BaseOfDll,
  Pointer<NativeFunction<PSYM_ENUMSYMBOLS_CALLBACK64W>> EnumSymbolsCallback,
  Pointer UserContext,
)>('SymEnumerateSymbolsW64');

int SymFindDebugInfoFile(
  int hProcess,
  Pointer<Utf16> FileName,
  Pointer<Utf16> DebugFilePath,
  Pointer<NativeFunction<PFIND_DEBUG_FILE_CALLBACKW>> Callback,
  Pointer CallerData,
) =>
    _SymFindDebugInfoFile(
      hProcess,
      FileName,
      DebugFilePath,
      Callback,
      CallerData,
    );

late final _SymFindDebugInfoFile = _dbghelp.lookupFunction<
    IntPtr Function(
  IntPtr hProcess,
  Pointer<Utf16> FileName,
  Pointer<Utf16> DebugFilePath,
  Pointer<NativeFunction<PFIND_DEBUG_FILE_CALLBACKW>> Callback,
  Pointer CallerData,
),
    int Function(
  int hProcess,
  Pointer<Utf16> FileName,
  Pointer<Utf16> DebugFilePath,
  Pointer<NativeFunction<PFIND_DEBUG_FILE_CALLBACKW>> Callback,
  Pointer CallerData,
)>('SymFindDebugInfoFileW');

int SymFindExecutableImage(
  int hProcess,
  Pointer<Utf16> FileName,
  Pointer<Utf16> ImageFilePath,
  Pointer<NativeFunction<PFIND_EXE_FILE_CALLBACKW>> Callback,
  Pointer CallerData,
) =>
    _SymFindExecutableImage(
      hProcess,
      FileName,
      ImageFilePath,
      Callback,
      CallerData,
    );

late final _SymFindExecutableImage = _dbghelp.lookupFunction<
    IntPtr Function(
  IntPtr hProcess,
  Pointer<Utf16> FileName,
  Pointer<Utf16> ImageFilePath,
  Pointer<NativeFunction<PFIND_EXE_FILE_CALLBACKW>> Callback,
  Pointer CallerData,
),
    int Function(
  int hProcess,
  Pointer<Utf16> FileName,
  Pointer<Utf16> ImageFilePath,
  Pointer<NativeFunction<PFIND_EXE_FILE_CALLBACKW>> Callback,
  Pointer CallerData,
)>('SymFindExecutableImageW');

int SymFindFileInPath(
  int hprocess,
  Pointer<Utf16> SearchPathA,
  Pointer<Utf16> FileName,
  Pointer id,
  int two,
  int three,
  int flags,
  Pointer<Utf16> FoundFile,
  Pointer<NativeFunction<PFINDFILEINPATHCALLBACKW>> callback,
  Pointer context,
) =>
    _SymFindFileInPath(
      hprocess,
      SearchPathA,
      FileName,
      id,
      two,
      three,
      flags,
      FoundFile,
      callback,
      context,
    );

late final _SymFindFileInPath = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hprocess,
  Pointer<Utf16> SearchPathA,
  Pointer<Utf16> FileName,
  Pointer id,
  Uint32 two,
  Uint32 three,
  Uint32 flags,
  Pointer<Utf16> FoundFile,
  Pointer<NativeFunction<PFINDFILEINPATHCALLBACKW>> callback,
  Pointer context,
),
    int Function(
  int hprocess,
  Pointer<Utf16> SearchPathA,
  Pointer<Utf16> FileName,
  Pointer id,
  int two,
  int three,
  int flags,
  Pointer<Utf16> FoundFile,
  Pointer<NativeFunction<PFINDFILEINPATHCALLBACKW>> callback,
  Pointer context,
)>('SymFindFileInPathW');

int SymFromAddr(
  int hProcess,
  int Address,
  Pointer<Uint64> Displacement,
  Pointer<SYMBOL_INFO> Symbol,
) =>
    _SymFromAddr(
      hProcess,
      Address,
      Displacement,
      Symbol,
    );

late final _SymFromAddr = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 Address,
  Pointer<Uint64> Displacement,
  Pointer<SYMBOL_INFO> Symbol,
),
    int Function(
  int hProcess,
  int Address,
  Pointer<Uint64> Displacement,
  Pointer<SYMBOL_INFO> Symbol,
)>('SymFromAddrW');

int SymFromIndex(
  int hProcess,
  int BaseOfDll,
  int Index,
  Pointer<SYMBOL_INFO> Symbol,
) =>
    _SymFromIndex(
      hProcess,
      BaseOfDll,
      Index,
      Symbol,
    );

late final _SymFromIndex = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 BaseOfDll,
  Uint32 Index,
  Pointer<SYMBOL_INFO> Symbol,
),
    int Function(
  int hProcess,
  int BaseOfDll,
  int Index,
  Pointer<SYMBOL_INFO> Symbol,
)>('SymFromIndexW');

int SymFromInlineContext(
  int hProcess,
  int Address,
  int InlineContext,
  Pointer<Uint64> Displacement,
  Pointer<SYMBOL_INFO> Symbol,
) =>
    _SymFromInlineContext(
      hProcess,
      Address,
      InlineContext,
      Displacement,
      Symbol,
    );

late final _SymFromInlineContext = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 Address,
  Uint32 InlineContext,
  Pointer<Uint64> Displacement,
  Pointer<SYMBOL_INFO> Symbol,
),
    int Function(
  int hProcess,
  int Address,
  int InlineContext,
  Pointer<Uint64> Displacement,
  Pointer<SYMBOL_INFO> Symbol,
)>('SymFromInlineContextW');

int SymFromName(
  int hProcess,
  Pointer<Utf16> Name,
  Pointer<SYMBOL_INFO> Symbol,
) =>
    _SymFromName(
      hProcess,
      Name,
      Symbol,
    );

late final _SymFromName = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Utf16> Name,
  Pointer<SYMBOL_INFO> Symbol,
),
    int Function(
  int hProcess,
  Pointer<Utf16> Name,
  Pointer<SYMBOL_INFO> Symbol,
)>('SymFromNameW');

int SymFromToken(
  int hProcess,
  int Base,
  int Token,
  Pointer<SYMBOL_INFO> Symbol,
) =>
    _SymFromToken(
      hProcess,
      Base,
      Token,
      Symbol,
    );

late final _SymFromToken = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 Base,
  Uint32 Token,
  Pointer<SYMBOL_INFO> Symbol,
),
    int Function(
  int hProcess,
  int Base,
  int Token,
  Pointer<SYMBOL_INFO> Symbol,
)>('SymFromTokenW');

Pointer SymFunctionTableAccess64(
  int hProcess,
  int AddrBase,
) =>
    _SymFunctionTableAccess64(
      hProcess,
      AddrBase,
    );

late final _SymFunctionTableAccess64 = _dbghelp.lookupFunction<
    Pointer Function(
  IntPtr hProcess,
  Uint64 AddrBase,
),
    Pointer Function(
  int hProcess,
  int AddrBase,
)>('SymFunctionTableAccess64');

Pointer SymFunctionTableAccess64AccessRoutines(
  int hProcess,
  int AddrBase,
  Pointer<NativeFunction<PREAD_PROCESS_MEMORY_ROUTINE64>> ReadMemoryRoutine,
  Pointer<NativeFunction<PGET_MODULE_BASE_ROUTINE64>> GetModuleBaseRoutine,
) =>
    _SymFunctionTableAccess64AccessRoutines(
      hProcess,
      AddrBase,
      ReadMemoryRoutine,
      GetModuleBaseRoutine,
    );

late final _SymFunctionTableAccess64AccessRoutines = _dbghelp.lookupFunction<
    Pointer Function(
  IntPtr hProcess,
  Uint64 AddrBase,
  Pointer<NativeFunction<PREAD_PROCESS_MEMORY_ROUTINE64>> ReadMemoryRoutine,
  Pointer<NativeFunction<PGET_MODULE_BASE_ROUTINE64>> GetModuleBaseRoutine,
),
    Pointer Function(
  int hProcess,
  int AddrBase,
  Pointer<NativeFunction<PREAD_PROCESS_MEMORY_ROUTINE64>> ReadMemoryRoutine,
  Pointer<NativeFunction<PGET_MODULE_BASE_ROUTINE64>> GetModuleBaseRoutine,
)>('SymFunctionTableAccess64AccessRoutines');

int SymGetExtendedOption(
  int option,
) =>
    _SymGetExtendedOption(
      option,
    );

late final _SymGetExtendedOption = _dbghelp.lookupFunction<
    Int32 Function(
  Int32 option,
),
    int Function(
  int option,
)>('SymGetExtendedOption');

int SymGetFileLineOffsets64(
  int hProcess,
  Pointer<Utf8> ModuleName,
  Pointer<Utf8> FileName,
  Pointer<Uint64> Buffer,
  int BufferLines,
) =>
    _SymGetFileLineOffsets64(
      hProcess,
      ModuleName,
      FileName,
      Buffer,
      BufferLines,
    );

late final _SymGetFileLineOffsets64 = _dbghelp.lookupFunction<
    Uint32 Function(
  IntPtr hProcess,
  Pointer<Utf8> ModuleName,
  Pointer<Utf8> FileName,
  Pointer<Uint64> Buffer,
  Uint32 BufferLines,
),
    int Function(
  int hProcess,
  Pointer<Utf8> ModuleName,
  Pointer<Utf8> FileName,
  Pointer<Uint64> Buffer,
  int BufferLines,
)>('SymGetFileLineOffsets64');

Pointer<Utf16> SymGetHomeDirectory(
  int type,
  Pointer<Utf16> dir,
  int size,
) =>
    _SymGetHomeDirectory(
      type,
      dir,
      size,
    );

late final _SymGetHomeDirectory = _dbghelp.lookupFunction<
    Pointer<Utf16> Function(
  Int32 type,
  Pointer<Utf16> dir,
  IntPtr size,
),
    Pointer<Utf16> Function(
  int type,
  Pointer<Utf16> dir,
  int size,
)>('SymGetHomeDirectoryW');

int SymGetLineFromAddr64(
  int hProcess,
  int qwAddr,
  Pointer<Uint32> pdwDisplacement,
  Pointer<IMAGEHLP_LINE64> Line64,
) =>
    _SymGetLineFromAddr64(
      hProcess,
      qwAddr,
      pdwDisplacement,
      Line64,
    );

late final _SymGetLineFromAddr64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 qwAddr,
  Pointer<Uint32> pdwDisplacement,
  Pointer<IMAGEHLP_LINE64> Line64,
),
    int Function(
  int hProcess,
  int qwAddr,
  Pointer<Uint32> pdwDisplacement,
  Pointer<IMAGEHLP_LINE64> Line64,
)>('SymGetLineFromAddr64');

int SymGetLineFromAddrW64(
  int hProcess,
  int dwAddr,
  Pointer<Uint32> pdwDisplacement,
  Pointer<IMAGEHLP_LINEW64> Line,
) =>
    _SymGetLineFromAddrW64(
      hProcess,
      dwAddr,
      pdwDisplacement,
      Line,
    );

late final _SymGetLineFromAddrW64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 dwAddr,
  Pointer<Uint32> pdwDisplacement,
  Pointer<IMAGEHLP_LINEW64> Line,
),
    int Function(
  int hProcess,
  int dwAddr,
  Pointer<Uint32> pdwDisplacement,
  Pointer<IMAGEHLP_LINEW64> Line,
)>('SymGetLineFromAddrW64');

int SymGetLineFromInlineContext(
  int hProcess,
  int dwAddr,
  int InlineContext,
  int qwModuleBaseAddress,
  Pointer<Uint32> pdwDisplacement,
  Pointer<IMAGEHLP_LINEW64> Line,
) =>
    _SymGetLineFromInlineContext(
      hProcess,
      dwAddr,
      InlineContext,
      qwModuleBaseAddress,
      pdwDisplacement,
      Line,
    );

late final _SymGetLineFromInlineContext = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 dwAddr,
  Uint32 InlineContext,
  Uint64 qwModuleBaseAddress,
  Pointer<Uint32> pdwDisplacement,
  Pointer<IMAGEHLP_LINEW64> Line,
),
    int Function(
  int hProcess,
  int dwAddr,
  int InlineContext,
  int qwModuleBaseAddress,
  Pointer<Uint32> pdwDisplacement,
  Pointer<IMAGEHLP_LINEW64> Line,
)>('SymGetLineFromInlineContextW');

int SymGetLineFromName64(
  int hProcess,
  Pointer<Utf8> ModuleName,
  Pointer<Utf8> FileName,
  int dwLineNumber,
  Pointer<Int32> plDisplacement,
  Pointer<IMAGEHLP_LINE64> Line,
) =>
    _SymGetLineFromName64(
      hProcess,
      ModuleName,
      FileName,
      dwLineNumber,
      plDisplacement,
      Line,
    );

late final _SymGetLineFromName64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Utf8> ModuleName,
  Pointer<Utf8> FileName,
  Uint32 dwLineNumber,
  Pointer<Int32> plDisplacement,
  Pointer<IMAGEHLP_LINE64> Line,
),
    int Function(
  int hProcess,
  Pointer<Utf8> ModuleName,
  Pointer<Utf8> FileName,
  int dwLineNumber,
  Pointer<Int32> plDisplacement,
  Pointer<IMAGEHLP_LINE64> Line,
)>('SymGetLineFromName64');

int SymGetLineFromNameW64(
  int hProcess,
  Pointer<Utf16> ModuleName,
  Pointer<Utf16> FileName,
  int dwLineNumber,
  Pointer<Int32> plDisplacement,
  Pointer<IMAGEHLP_LINEW64> Line,
) =>
    _SymGetLineFromNameW64(
      hProcess,
      ModuleName,
      FileName,
      dwLineNumber,
      plDisplacement,
      Line,
    );

late final _SymGetLineFromNameW64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Utf16> ModuleName,
  Pointer<Utf16> FileName,
  Uint32 dwLineNumber,
  Pointer<Int32> plDisplacement,
  Pointer<IMAGEHLP_LINEW64> Line,
),
    int Function(
  int hProcess,
  Pointer<Utf16> ModuleName,
  Pointer<Utf16> FileName,
  int dwLineNumber,
  Pointer<Int32> plDisplacement,
  Pointer<IMAGEHLP_LINEW64> Line,
)>('SymGetLineFromNameW64');

int SymGetLineNext64(
  int hProcess,
  Pointer<IMAGEHLP_LINE64> Line,
) =>
    _SymGetLineNext64(
      hProcess,
      Line,
    );

late final _SymGetLineNext64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<IMAGEHLP_LINE64> Line,
),
    int Function(
  int hProcess,
  Pointer<IMAGEHLP_LINE64> Line,
)>('SymGetLineNext64');

int SymGetLineNextW64(
  int hProcess,
  Pointer<IMAGEHLP_LINEW64> Line,
) =>
    _SymGetLineNextW64(
      hProcess,
      Line,
    );

late final _SymGetLineNextW64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<IMAGEHLP_LINEW64> Line,
),
    int Function(
  int hProcess,
  Pointer<IMAGEHLP_LINEW64> Line,
)>('SymGetLineNextW64');

int SymGetLinePrev64(
  int hProcess,
  Pointer<IMAGEHLP_LINE64> Line,
) =>
    _SymGetLinePrev64(
      hProcess,
      Line,
    );

late final _SymGetLinePrev64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<IMAGEHLP_LINE64> Line,
),
    int Function(
  int hProcess,
  Pointer<IMAGEHLP_LINE64> Line,
)>('SymGetLinePrev64');

int SymGetLinePrevW64(
  int hProcess,
  Pointer<IMAGEHLP_LINEW64> Line,
) =>
    _SymGetLinePrevW64(
      hProcess,
      Line,
    );

late final _SymGetLinePrevW64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<IMAGEHLP_LINEW64> Line,
),
    int Function(
  int hProcess,
  Pointer<IMAGEHLP_LINEW64> Line,
)>('SymGetLinePrevW64');

int SymGetModuleBase64(
  int hProcess,
  int qwAddr,
) =>
    _SymGetModuleBase64(
      hProcess,
      qwAddr,
    );

late final _SymGetModuleBase64 = _dbghelp.lookupFunction<
    Uint64 Function(
  IntPtr hProcess,
  Uint64 qwAddr,
),
    int Function(
  int hProcess,
  int qwAddr,
)>('SymGetModuleBase64');

int SymGetModuleInfo64(
  int hProcess,
  int qwAddr,
  Pointer<IMAGEHLP_MODULE64> ModuleInfo,
) =>
    _SymGetModuleInfo64(
      hProcess,
      qwAddr,
      ModuleInfo,
    );

late final _SymGetModuleInfo64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 qwAddr,
  Pointer<IMAGEHLP_MODULE64> ModuleInfo,
),
    int Function(
  int hProcess,
  int qwAddr,
  Pointer<IMAGEHLP_MODULE64> ModuleInfo,
)>('SymGetModuleInfo64');

int SymGetModuleInfoW64(
  int hProcess,
  int qwAddr,
  Pointer<IMAGEHLP_MODULEW64> ModuleInfo,
) =>
    _SymGetModuleInfoW64(
      hProcess,
      qwAddr,
      ModuleInfo,
    );

late final _SymGetModuleInfoW64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 qwAddr,
  Pointer<IMAGEHLP_MODULEW64> ModuleInfo,
),
    int Function(
  int hProcess,
  int qwAddr,
  Pointer<IMAGEHLP_MODULEW64> ModuleInfo,
)>('SymGetModuleInfoW64');

int SymGetOmaps(
  int hProcess,
  int BaseOfDll,
  Pointer<Pointer<OMAP>> OmapTo,
  Pointer<Uint64> cOmapTo,
  Pointer<Pointer<OMAP>> OmapFrom,
  Pointer<Uint64> cOmapFrom,
) =>
    _SymGetOmaps(
      hProcess,
      BaseOfDll,
      OmapTo,
      cOmapTo,
      OmapFrom,
      cOmapFrom,
    );

late final _SymGetOmaps = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 BaseOfDll,
  Pointer<Pointer<OMAP>> OmapTo,
  Pointer<Uint64> cOmapTo,
  Pointer<Pointer<OMAP>> OmapFrom,
  Pointer<Uint64> cOmapFrom,
),
    int Function(
  int hProcess,
  int BaseOfDll,
  Pointer<Pointer<OMAP>> OmapTo,
  Pointer<Uint64> cOmapTo,
  Pointer<Pointer<OMAP>> OmapFrom,
  Pointer<Uint64> cOmapFrom,
)>('SymGetOmaps');

int SymGetOptions() => _SymGetOptions();

late final _SymGetOptions =
    _dbghelp.lookupFunction<Uint32 Function(), int Function()>('SymGetOptions');

int SymGetScope(
  int hProcess,
  int BaseOfDll,
  int Index,
  Pointer<SYMBOL_INFO> Symbol,
) =>
    _SymGetScope(
      hProcess,
      BaseOfDll,
      Index,
      Symbol,
    );

late final _SymGetScope = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 BaseOfDll,
  Uint32 Index,
  Pointer<SYMBOL_INFO> Symbol,
),
    int Function(
  int hProcess,
  int BaseOfDll,
  int Index,
  Pointer<SYMBOL_INFO> Symbol,
)>('SymGetScopeW');

int SymGetSearchPath(
  int hProcess,
  Pointer<Utf16> SearchPathA,
  int SearchPathLength,
) =>
    _SymGetSearchPath(
      hProcess,
      SearchPathA,
      SearchPathLength,
    );

late final _SymGetSearchPath = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Utf16> SearchPathA,
  Uint32 SearchPathLength,
),
    int Function(
  int hProcess,
  Pointer<Utf16> SearchPathA,
  int SearchPathLength,
)>('SymGetSearchPathW');

int SymGetSourceFileChecksum(
  int hProcess,
  int Base,
  Pointer<Utf16> FileSpec,
  Pointer<Uint32> pCheckSumType,
  Pointer<Uint8> pChecksum,
  int checksumSize,
  Pointer<Uint32> pActualBytesWritten,
) =>
    _SymGetSourceFileChecksum(
      hProcess,
      Base,
      FileSpec,
      pCheckSumType,
      pChecksum,
      checksumSize,
      pActualBytesWritten,
    );

late final _SymGetSourceFileChecksum = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 Base,
  Pointer<Utf16> FileSpec,
  Pointer<Uint32> pCheckSumType,
  Pointer<Uint8> pChecksum,
  Uint32 checksumSize,
  Pointer<Uint32> pActualBytesWritten,
),
    int Function(
  int hProcess,
  int Base,
  Pointer<Utf16> FileSpec,
  Pointer<Uint32> pCheckSumType,
  Pointer<Uint8> pChecksum,
  int checksumSize,
  Pointer<Uint32> pActualBytesWritten,
)>('SymGetSourceFileChecksumW');

int SymGetSourceFileFromTokenByTokenName(
  int hProcess,
  Pointer Token,
  Pointer<Utf16> TokenName,
  Pointer<Utf16> Params,
  Pointer<Utf16> FilePath,
  int Size,
) =>
    _SymGetSourceFileFromTokenByTokenName(
      hProcess,
      Token,
      TokenName,
      Params,
      FilePath,
      Size,
    );

late final _SymGetSourceFileFromTokenByTokenName = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer Token,
  Pointer<Utf16> TokenName,
  Pointer<Utf16> Params,
  Pointer<Utf16> FilePath,
  Uint32 Size,
),
    int Function(
  int hProcess,
  Pointer Token,
  Pointer<Utf16> TokenName,
  Pointer<Utf16> Params,
  Pointer<Utf16> FilePath,
  int Size,
)>('SymGetSourceFileFromTokenByTokenNameW');

int SymGetSourceFileFromToken(
  int hProcess,
  Pointer Token,
  Pointer<Utf16> Params,
  Pointer<Utf16> FilePath,
  int Size,
) =>
    _SymGetSourceFileFromToken(
      hProcess,
      Token,
      Params,
      FilePath,
      Size,
    );

late final _SymGetSourceFileFromToken = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer Token,
  Pointer<Utf16> Params,
  Pointer<Utf16> FilePath,
  Uint32 Size,
),
    int Function(
  int hProcess,
  Pointer Token,
  Pointer<Utf16> Params,
  Pointer<Utf16> FilePath,
  int Size,
)>('SymGetSourceFileFromTokenW');

int SymGetSourceFileTokenByTokenName(
  int hProcess,
  int Base,
  Pointer<Utf16> FileSpec,
  Pointer<Utf16> TokenName,
  Pointer<Utf16> TokenParameters,
  Pointer<Pointer> Token,
  Pointer<Uint32> Size,
) =>
    _SymGetSourceFileTokenByTokenName(
      hProcess,
      Base,
      FileSpec,
      TokenName,
      TokenParameters,
      Token,
      Size,
    );

late final _SymGetSourceFileTokenByTokenName = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 Base,
  Pointer<Utf16> FileSpec,
  Pointer<Utf16> TokenName,
  Pointer<Utf16> TokenParameters,
  Pointer<Pointer> Token,
  Pointer<Uint32> Size,
),
    int Function(
  int hProcess,
  int Base,
  Pointer<Utf16> FileSpec,
  Pointer<Utf16> TokenName,
  Pointer<Utf16> TokenParameters,
  Pointer<Pointer> Token,
  Pointer<Uint32> Size,
)>('SymGetSourceFileTokenByTokenNameW');

int SymGetSourceFileToken(
  int hProcess,
  int Base,
  Pointer<Utf16> FileSpec,
  Pointer<Pointer> Token,
  Pointer<Uint32> Size,
) =>
    _SymGetSourceFileToken(
      hProcess,
      Base,
      FileSpec,
      Token,
      Size,
    );

late final _SymGetSourceFileToken = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 Base,
  Pointer<Utf16> FileSpec,
  Pointer<Pointer> Token,
  Pointer<Uint32> Size,
),
    int Function(
  int hProcess,
  int Base,
  Pointer<Utf16> FileSpec,
  Pointer<Pointer> Token,
  Pointer<Uint32> Size,
)>('SymGetSourceFileTokenW');

int SymGetSourceFile(
  int hProcess,
  int Base,
  Pointer<Utf16> Params,
  Pointer<Utf16> FileSpec,
  Pointer<Utf16> FilePath,
  int Size,
) =>
    _SymGetSourceFile(
      hProcess,
      Base,
      Params,
      FileSpec,
      FilePath,
      Size,
    );

late final _SymGetSourceFile = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 Base,
  Pointer<Utf16> Params,
  Pointer<Utf16> FileSpec,
  Pointer<Utf16> FilePath,
  Uint32 Size,
),
    int Function(
  int hProcess,
  int Base,
  Pointer<Utf16> Params,
  Pointer<Utf16> FileSpec,
  Pointer<Utf16> FilePath,
  int Size,
)>('SymGetSourceFileW');

int SymGetSourceVarFromToken(
  int hProcess,
  Pointer Token,
  Pointer<Utf16> Params,
  Pointer<Utf16> VarName,
  Pointer<Utf16> Value,
  int Size,
) =>
    _SymGetSourceVarFromToken(
      hProcess,
      Token,
      Params,
      VarName,
      Value,
      Size,
    );

late final _SymGetSourceVarFromToken = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer Token,
  Pointer<Utf16> Params,
  Pointer<Utf16> VarName,
  Pointer<Utf16> Value,
  Uint32 Size,
),
    int Function(
  int hProcess,
  Pointer Token,
  Pointer<Utf16> Params,
  Pointer<Utf16> VarName,
  Pointer<Utf16> Value,
  int Size,
)>('SymGetSourceVarFromTokenW');

int SymGetSymFromAddr64(
  int hProcess,
  int qwAddr,
  Pointer<Uint64> pdwDisplacement,
  Pointer<IMAGEHLP_SYMBOL64> Symbol,
) =>
    _SymGetSymFromAddr64(
      hProcess,
      qwAddr,
      pdwDisplacement,
      Symbol,
    );

late final _SymGetSymFromAddr64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 qwAddr,
  Pointer<Uint64> pdwDisplacement,
  Pointer<IMAGEHLP_SYMBOL64> Symbol,
),
    int Function(
  int hProcess,
  int qwAddr,
  Pointer<Uint64> pdwDisplacement,
  Pointer<IMAGEHLP_SYMBOL64> Symbol,
)>('SymGetSymFromAddr64');

int SymGetSymFromName64(
  int hProcess,
  Pointer<Utf8> Name,
  Pointer<IMAGEHLP_SYMBOL64> Symbol,
) =>
    _SymGetSymFromName64(
      hProcess,
      Name,
      Symbol,
    );

late final _SymGetSymFromName64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Utf8> Name,
  Pointer<IMAGEHLP_SYMBOL64> Symbol,
),
    int Function(
  int hProcess,
  Pointer<Utf8> Name,
  Pointer<IMAGEHLP_SYMBOL64> Symbol,
)>('SymGetSymFromName64');

int SymGetSymNext64(
  int hProcess,
  Pointer<IMAGEHLP_SYMBOL64> Symbol,
) =>
    _SymGetSymNext64(
      hProcess,
      Symbol,
    );

late final _SymGetSymNext64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<IMAGEHLP_SYMBOL64> Symbol,
),
    int Function(
  int hProcess,
  Pointer<IMAGEHLP_SYMBOL64> Symbol,
)>('SymGetSymNext64');

int SymGetSymPrev64(
  int hProcess,
  Pointer<IMAGEHLP_SYMBOL64> Symbol,
) =>
    _SymGetSymPrev64(
      hProcess,
      Symbol,
    );

late final _SymGetSymPrev64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<IMAGEHLP_SYMBOL64> Symbol,
),
    int Function(
  int hProcess,
  Pointer<IMAGEHLP_SYMBOL64> Symbol,
)>('SymGetSymPrev64');

int SymGetSymbolFile(
  int hProcess,
  Pointer<Utf16> SymPath,
  Pointer<Utf16> ImageFile,
  int Type,
  Pointer<Utf16> SymbolFile,
  int cSymbolFile,
  Pointer<Utf16> DbgFile,
  int cDbgFile,
) =>
    _SymGetSymbolFile(
      hProcess,
      SymPath,
      ImageFile,
      Type,
      SymbolFile,
      cSymbolFile,
      DbgFile,
      cDbgFile,
    );

late final _SymGetSymbolFile = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Utf16> SymPath,
  Pointer<Utf16> ImageFile,
  Int32 Type,
  Pointer<Utf16> SymbolFile,
  IntPtr cSymbolFile,
  Pointer<Utf16> DbgFile,
  IntPtr cDbgFile,
),
    int Function(
  int hProcess,
  Pointer<Utf16> SymPath,
  Pointer<Utf16> ImageFile,
  int Type,
  Pointer<Utf16> SymbolFile,
  int cSymbolFile,
  Pointer<Utf16> DbgFile,
  int cDbgFile,
)>('SymGetSymbolFileW');

int SymGetTypeFromName(
  int hProcess,
  int BaseOfDll,
  Pointer<Utf16> Name,
  Pointer<SYMBOL_INFO> Symbol,
) =>
    _SymGetTypeFromName(
      hProcess,
      BaseOfDll,
      Name,
      Symbol,
    );

late final _SymGetTypeFromName = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 BaseOfDll,
  Pointer<Utf16> Name,
  Pointer<SYMBOL_INFO> Symbol,
),
    int Function(
  int hProcess,
  int BaseOfDll,
  Pointer<Utf16> Name,
  Pointer<SYMBOL_INFO> Symbol,
)>('SymGetTypeFromNameW');

int SymGetTypeInfo(
  int hProcess,
  int ModBase,
  int TypeId,
  int GetType,
  Pointer pInfo,
) =>
    _SymGetTypeInfo(
      hProcess,
      ModBase,
      TypeId,
      GetType,
      pInfo,
    );

late final _SymGetTypeInfo = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 ModBase,
  Uint32 TypeId,
  Int32 GetType,
  Pointer pInfo,
),
    int Function(
  int hProcess,
  int ModBase,
  int TypeId,
  int GetType,
  Pointer pInfo,
)>('SymGetTypeInfo');

int SymGetTypeInfoEx(
  int hProcess,
  int ModBase,
  Pointer<IMAGEHLP_GET_TYPE_INFO_PARAMS> Params,
) =>
    _SymGetTypeInfoEx(
      hProcess,
      ModBase,
      Params,
    );

late final _SymGetTypeInfoEx = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 ModBase,
  Pointer<IMAGEHLP_GET_TYPE_INFO_PARAMS> Params,
),
    int Function(
  int hProcess,
  int ModBase,
  Pointer<IMAGEHLP_GET_TYPE_INFO_PARAMS> Params,
)>('SymGetTypeInfoEx');

int SymGetUnwindInfo(
  int hProcess,
  int Address,
  Pointer Buffer,
  Pointer<Uint32> Size,
) =>
    _SymGetUnwindInfo(
      hProcess,
      Address,
      Buffer,
      Size,
    );

late final _SymGetUnwindInfo = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 Address,
  Pointer Buffer,
  Pointer<Uint32> Size,
),
    int Function(
  int hProcess,
  int Address,
  Pointer Buffer,
  Pointer<Uint32> Size,
)>('SymGetUnwindInfo');

int SymInitialize(
  int hProcess,
  Pointer<Utf16> UserSearchPath,
  int fInvadeProcess,
) =>
    _SymInitialize(
      hProcess,
      UserSearchPath,
      fInvadeProcess,
    );

late final _SymInitialize = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Utf16> UserSearchPath,
  Int32 fInvadeProcess,
),
    int Function(
  int hProcess,
  Pointer<Utf16> UserSearchPath,
  int fInvadeProcess,
)>('SymInitializeW');

int SymLoadModule64(
  int hProcess,
  int hFile,
  Pointer<Utf8> ImageName,
  Pointer<Utf8> ModuleName,
  int BaseOfDll,
  int SizeOfDll,
) =>
    _SymLoadModule64(
      hProcess,
      hFile,
      ImageName,
      ModuleName,
      BaseOfDll,
      SizeOfDll,
    );

late final _SymLoadModule64 = _dbghelp.lookupFunction<
    Uint64 Function(
  IntPtr hProcess,
  IntPtr hFile,
  Pointer<Utf8> ImageName,
  Pointer<Utf8> ModuleName,
  Uint64 BaseOfDll,
  Uint32 SizeOfDll,
),
    int Function(
  int hProcess,
  int hFile,
  Pointer<Utf8> ImageName,
  Pointer<Utf8> ModuleName,
  int BaseOfDll,
  int SizeOfDll,
)>('SymLoadModule64');

int SymLoadModuleEx(
  int hProcess,
  int hFile,
  Pointer<Utf16> ImageName,
  Pointer<Utf16> ModuleName,
  int BaseOfDll,
  int DllSize,
  Pointer<MODLOAD_DATA> Data,
  int Flags,
) =>
    _SymLoadModuleEx(
      hProcess,
      hFile,
      ImageName,
      ModuleName,
      BaseOfDll,
      DllSize,
      Data,
      Flags,
    );

late final _SymLoadModuleEx = _dbghelp.lookupFunction<
    Uint64 Function(
  IntPtr hProcess,
  IntPtr hFile,
  Pointer<Utf16> ImageName,
  Pointer<Utf16> ModuleName,
  Uint64 BaseOfDll,
  Uint32 DllSize,
  Pointer<MODLOAD_DATA> Data,
  Uint32 Flags,
),
    int Function(
  int hProcess,
  int hFile,
  Pointer<Utf16> ImageName,
  Pointer<Utf16> ModuleName,
  int BaseOfDll,
  int DllSize,
  Pointer<MODLOAD_DATA> Data,
  int Flags,
)>('SymLoadModuleExW');

int SymMatchFileName(
  Pointer<Utf16> FileName,
  Pointer<Utf16> Match,
  Pointer<Pointer<Utf16>> FileNameStop,
  Pointer<Pointer<Utf16>> MatchStop,
) =>
    _SymMatchFileName(
      FileName,
      Match,
      FileNameStop,
      MatchStop,
    );

late final _SymMatchFileName = _dbghelp.lookupFunction<
    Int32 Function(
  Pointer<Utf16> FileName,
  Pointer<Utf16> Match,
  Pointer<Pointer<Utf16>> FileNameStop,
  Pointer<Pointer<Utf16>> MatchStop,
),
    int Function(
  Pointer<Utf16> FileName,
  Pointer<Utf16> Match,
  Pointer<Pointer<Utf16>> FileNameStop,
  Pointer<Pointer<Utf16>> MatchStop,
)>('SymMatchFileNameW');

int SymMatchString(
  Pointer<Utf16> string,
  Pointer<Utf16> expression,
  int fCase,
) =>
    _SymMatchString(
      string,
      expression,
      fCase,
    );

late final _SymMatchString = _dbghelp.lookupFunction<
    Int32 Function(
  Pointer<Utf16> string,
  Pointer<Utf16> expression,
  Int32 fCase,
),
    int Function(
  Pointer<Utf16> string,
  Pointer<Utf16> expression,
  int fCase,
)>('SymMatchStringW');

int SymNext(
  int hProcess,
  Pointer<SYMBOL_INFO> siw,
) =>
    _SymNext(
      hProcess,
      siw,
    );

late final _SymNext = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<SYMBOL_INFO> siw,
),
    int Function(
  int hProcess,
  Pointer<SYMBOL_INFO> siw,
)>('SymNextW');

int SymPrev(
  int hProcess,
  Pointer<SYMBOL_INFO> siw,
) =>
    _SymPrev(
      hProcess,
      siw,
    );

late final _SymPrev = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<SYMBOL_INFO> siw,
),
    int Function(
  int hProcess,
  Pointer<SYMBOL_INFO> siw,
)>('SymPrevW');

int SymQueryInlineTrace(
  int hProcess,
  int StartAddress,
  int StartContext,
  int StartRetAddress,
  int CurAddress,
  Pointer<Uint32> CurContext,
  Pointer<Uint32> CurFrameIndex,
) =>
    _SymQueryInlineTrace(
      hProcess,
      StartAddress,
      StartContext,
      StartRetAddress,
      CurAddress,
      CurContext,
      CurFrameIndex,
    );

late final _SymQueryInlineTrace = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 StartAddress,
  Uint32 StartContext,
  Uint64 StartRetAddress,
  Uint64 CurAddress,
  Pointer<Uint32> CurContext,
  Pointer<Uint32> CurFrameIndex,
),
    int Function(
  int hProcess,
  int StartAddress,
  int StartContext,
  int StartRetAddress,
  int CurAddress,
  Pointer<Uint32> CurContext,
  Pointer<Uint32> CurFrameIndex,
)>('SymQueryInlineTrace');

int SymRefreshModuleList(
  int hProcess,
) =>
    _SymRefreshModuleList(
      hProcess,
    );

late final _SymRefreshModuleList = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
),
    int Function(
  int hProcess,
)>('SymRefreshModuleList');

int SymRegisterCallback64(
  int hProcess,
  Pointer<NativeFunction<PSYMBOL_REGISTERED_CALLBACK64>> CallbackFunction,
  int UserContext,
) =>
    _SymRegisterCallback64(
      hProcess,
      CallbackFunction,
      UserContext,
    );

late final _SymRegisterCallback64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<NativeFunction<PSYMBOL_REGISTERED_CALLBACK64>> CallbackFunction,
  Uint64 UserContext,
),
    int Function(
  int hProcess,
  Pointer<NativeFunction<PSYMBOL_REGISTERED_CALLBACK64>> CallbackFunction,
  int UserContext,
)>('SymRegisterCallback64');

int SymRegisterCallbackW64(
  int hProcess,
  Pointer<NativeFunction<PSYMBOL_REGISTERED_CALLBACK64>> CallbackFunction,
  int UserContext,
) =>
    _SymRegisterCallbackW64(
      hProcess,
      CallbackFunction,
      UserContext,
    );

late final _SymRegisterCallbackW64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<NativeFunction<PSYMBOL_REGISTERED_CALLBACK64>> CallbackFunction,
  Uint64 UserContext,
),
    int Function(
  int hProcess,
  Pointer<NativeFunction<PSYMBOL_REGISTERED_CALLBACK64>> CallbackFunction,
  int UserContext,
)>('SymRegisterCallbackW64');

int SymRegisterFunctionEntryCallback64(
  int hProcess,
  Pointer<NativeFunction<PSYMBOL_FUNCENTRY_CALLBACK64>> CallbackFunction,
  int UserContext,
) =>
    _SymRegisterFunctionEntryCallback64(
      hProcess,
      CallbackFunction,
      UserContext,
    );

late final _SymRegisterFunctionEntryCallback64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<NativeFunction<PSYMBOL_FUNCENTRY_CALLBACK64>> CallbackFunction,
  Uint64 UserContext,
),
    int Function(
  int hProcess,
  Pointer<NativeFunction<PSYMBOL_FUNCENTRY_CALLBACK64>> CallbackFunction,
  int UserContext,
)>('SymRegisterFunctionEntryCallback64');

int SymSearch(
  int hProcess,
  int BaseOfDll,
  int Index,
  int SymTag,
  Pointer<Utf16> Mask,
  int Address,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACKW>> EnumSymbolsCallback,
  Pointer UserContext,
  int Options,
) =>
    _SymSearch(
      hProcess,
      BaseOfDll,
      Index,
      SymTag,
      Mask,
      Address,
      EnumSymbolsCallback,
      UserContext,
      Options,
    );

late final _SymSearch = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 BaseOfDll,
  Uint32 Index,
  Uint32 SymTag,
  Pointer<Utf16> Mask,
  Uint64 Address,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACKW>> EnumSymbolsCallback,
  Pointer UserContext,
  Uint32 Options,
),
    int Function(
  int hProcess,
  int BaseOfDll,
  int Index,
  int SymTag,
  Pointer<Utf16> Mask,
  int Address,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACKW>> EnumSymbolsCallback,
  Pointer UserContext,
  int Options,
)>('SymSearchW');

int SymSetContext(
  int hProcess,
  Pointer<IMAGEHLP_STACK_FRAME> StackFrame,
  Pointer Context,
) =>
    _SymSetContext(
      hProcess,
      StackFrame,
      Context,
    );

late final _SymSetContext = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<IMAGEHLP_STACK_FRAME> StackFrame,
  Pointer Context,
),
    int Function(
  int hProcess,
  Pointer<IMAGEHLP_STACK_FRAME> StackFrame,
  Pointer Context,
)>('SymSetContext');

int SymSetExtendedOption(
  int option,
  int value,
) =>
    _SymSetExtendedOption(
      option,
      value,
    );

late final _SymSetExtendedOption = _dbghelp.lookupFunction<
    Int32 Function(
  Int32 option,
  Int32 value,
),
    int Function(
  int option,
  int value,
)>('SymSetExtendedOption');

Pointer<Utf16> SymSetHomeDirectory(
  int hProcess,
  Pointer<Utf16> dir,
) =>
    _SymSetHomeDirectory(
      hProcess,
      dir,
    );

late final _SymSetHomeDirectory = _dbghelp.lookupFunction<
    Pointer<Utf16> Function(
  IntPtr hProcess,
  Pointer<Utf16> dir,
),
    Pointer<Utf16> Function(
  int hProcess,
  Pointer<Utf16> dir,
)>('SymSetHomeDirectoryW');

int SymSetOptions(
  int SymOptions,
) =>
    _SymSetOptions(
      SymOptions,
    );

late final _SymSetOptions = _dbghelp.lookupFunction<
    Uint32 Function(
  Uint32 SymOptions,
),
    int Function(
  int SymOptions,
)>('SymSetOptions');

int SymSetParentWindow(
  int hwnd,
) =>
    _SymSetParentWindow(
      hwnd,
    );

late final _SymSetParentWindow = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
),
    int Function(
  int hwnd,
)>('SymSetParentWindow');

int SymSetScopeFromAddr(
  int hProcess,
  int Address,
) =>
    _SymSetScopeFromAddr(
      hProcess,
      Address,
    );

late final _SymSetScopeFromAddr = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 Address,
),
    int Function(
  int hProcess,
  int Address,
)>('SymSetScopeFromAddr');

int SymSetScopeFromIndex(
  int hProcess,
  int BaseOfDll,
  int Index,
) =>
    _SymSetScopeFromIndex(
      hProcess,
      BaseOfDll,
      Index,
    );

late final _SymSetScopeFromIndex = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 BaseOfDll,
  Uint32 Index,
),
    int Function(
  int hProcess,
  int BaseOfDll,
  int Index,
)>('SymSetScopeFromIndex');

int SymSetScopeFromInlineContext(
  int hProcess,
  int Address,
  int InlineContext,
) =>
    _SymSetScopeFromInlineContext(
      hProcess,
      Address,
      InlineContext,
    );

late final _SymSetScopeFromInlineContext = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 Address,
  Uint32 InlineContext,
),
    int Function(
  int hProcess,
  int Address,
  int InlineContext,
)>('SymSetScopeFromInlineContext');

int SymSetSearchPath(
  int hProcess,
  Pointer<Utf16> SearchPathA,
) =>
    _SymSetSearchPath(
      hProcess,
      SearchPathA,
    );

late final _SymSetSearchPath = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Utf16> SearchPathA,
),
    int Function(
  int hProcess,
  Pointer<Utf16> SearchPathA,
)>('SymSetSearchPathW');

Pointer<Utf16> SymSrvDeltaName(
  int hProcess,
  Pointer<Utf16> SymPath,
  Pointer<Utf16> Type,
  Pointer<Utf16> File1,
  Pointer<Utf16> File2,
) =>
    _SymSrvDeltaName(
      hProcess,
      SymPath,
      Type,
      File1,
      File2,
    );

late final _SymSrvDeltaName = _dbghelp.lookupFunction<
    Pointer<Utf16> Function(
  IntPtr hProcess,
  Pointer<Utf16> SymPath,
  Pointer<Utf16> Type,
  Pointer<Utf16> File1,
  Pointer<Utf16> File2,
),
    Pointer<Utf16> Function(
  int hProcess,
  Pointer<Utf16> SymPath,
  Pointer<Utf16> Type,
  Pointer<Utf16> File1,
  Pointer<Utf16> File2,
)>('SymSrvDeltaNameW');

int SymSrvGetFileIndexInfo(
  Pointer<Utf16> File,
  Pointer<SYMSRV_INDEX_INFO> Info,
  int Flags,
) =>
    _SymSrvGetFileIndexInfo(
      File,
      Info,
      Flags,
    );

late final _SymSrvGetFileIndexInfo = _dbghelp.lookupFunction<
    Int32 Function(
  Pointer<Utf16> File,
  Pointer<SYMSRV_INDEX_INFO> Info,
  Uint32 Flags,
),
    int Function(
  Pointer<Utf16> File,
  Pointer<SYMSRV_INDEX_INFO> Info,
  int Flags,
)>('SymSrvGetFileIndexInfoW');

int SymSrvGetFileIndexString(
  int hProcess,
  Pointer<Utf16> SrvPath,
  Pointer<Utf16> File,
  Pointer<Utf16> Index,
  int Size,
  int Flags,
) =>
    _SymSrvGetFileIndexString(
      hProcess,
      SrvPath,
      File,
      Index,
      Size,
      Flags,
    );

late final _SymSrvGetFileIndexString = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Utf16> SrvPath,
  Pointer<Utf16> File,
  Pointer<Utf16> Index,
  IntPtr Size,
  Uint32 Flags,
),
    int Function(
  int hProcess,
  Pointer<Utf16> SrvPath,
  Pointer<Utf16> File,
  Pointer<Utf16> Index,
  int Size,
  int Flags,
)>('SymSrvGetFileIndexStringW');

int SymSrvGetFileIndexes(
  Pointer<Utf16> File,
  Pointer<GUID> Id,
  Pointer<Uint32> Val1,
  Pointer<Uint32> Val2,
  int Flags,
) =>
    _SymSrvGetFileIndexes(
      File,
      Id,
      Val1,
      Val2,
      Flags,
    );

late final _SymSrvGetFileIndexes = _dbghelp.lookupFunction<
    Int32 Function(
  Pointer<Utf16> File,
  Pointer<GUID> Id,
  Pointer<Uint32> Val1,
  Pointer<Uint32> Val2,
  Uint32 Flags,
),
    int Function(
  Pointer<Utf16> File,
  Pointer<GUID> Id,
  Pointer<Uint32> Val1,
  Pointer<Uint32> Val2,
  int Flags,
)>('SymSrvGetFileIndexesW');

Pointer<Utf16> SymSrvGetSupplement(
  int hProcess,
  Pointer<Utf16> SymPath,
  Pointer<Utf16> Node,
  Pointer<Utf16> File,
) =>
    _SymSrvGetSupplement(
      hProcess,
      SymPath,
      Node,
      File,
    );

late final _SymSrvGetSupplement = _dbghelp.lookupFunction<
    Pointer<Utf16> Function(
  IntPtr hProcess,
  Pointer<Utf16> SymPath,
  Pointer<Utf16> Node,
  Pointer<Utf16> File,
),
    Pointer<Utf16> Function(
  int hProcess,
  Pointer<Utf16> SymPath,
  Pointer<Utf16> Node,
  Pointer<Utf16> File,
)>('SymSrvGetSupplementW');

int SymSrvIsStore(
  int hProcess,
  Pointer<Utf16> path,
) =>
    _SymSrvIsStore(
      hProcess,
      path,
    );

late final _SymSrvIsStore = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Utf16> path,
),
    int Function(
  int hProcess,
  Pointer<Utf16> path,
)>('SymSrvIsStoreW');

Pointer<Utf16> SymSrvStoreFile(
  int hProcess,
  Pointer<Utf16> SrvPath,
  Pointer<Utf16> File,
  int Flags,
) =>
    _SymSrvStoreFile(
      hProcess,
      SrvPath,
      File,
      Flags,
    );

late final _SymSrvStoreFile = _dbghelp.lookupFunction<
    Pointer<Utf16> Function(
  IntPtr hProcess,
  Pointer<Utf16> SrvPath,
  Pointer<Utf16> File,
  Uint32 Flags,
),
    Pointer<Utf16> Function(
  int hProcess,
  Pointer<Utf16> SrvPath,
  Pointer<Utf16> File,
  int Flags,
)>('SymSrvStoreFileW');

Pointer<Utf16> SymSrvStoreSupplement(
  int hProcess,
  Pointer<Utf16> SymPath,
  Pointer<Utf16> Node,
  Pointer<Utf16> File,
  int Flags,
) =>
    _SymSrvStoreSupplement(
      hProcess,
      SymPath,
      Node,
      File,
      Flags,
    );

late final _SymSrvStoreSupplement = _dbghelp.lookupFunction<
    Pointer<Utf16> Function(
  IntPtr hProcess,
  Pointer<Utf16> SymPath,
  Pointer<Utf16> Node,
  Pointer<Utf16> File,
  Uint32 Flags,
),
    Pointer<Utf16> Function(
  int hProcess,
  Pointer<Utf16> SymPath,
  Pointer<Utf16> Node,
  Pointer<Utf16> File,
  int Flags,
)>('SymSrvStoreSupplementW');

int SymUnDName64(
  Pointer<IMAGEHLP_SYMBOL64> sym,
  Pointer<Utf8> UnDecName,
  int UnDecNameLength,
) =>
    _SymUnDName64(
      sym,
      UnDecName,
      UnDecNameLength,
    );

late final _SymUnDName64 = _dbghelp.lookupFunction<
    Int32 Function(
  Pointer<IMAGEHLP_SYMBOL64> sym,
  Pointer<Utf8> UnDecName,
  Uint32 UnDecNameLength,
),
    int Function(
  Pointer<IMAGEHLP_SYMBOL64> sym,
  Pointer<Utf8> UnDecName,
  int UnDecNameLength,
)>('SymUnDName64');

int SymUnloadModule64(
  int hProcess,
  int BaseOfDll,
) =>
    _SymUnloadModule64(
      hProcess,
      BaseOfDll,
    );

late final _SymUnloadModule64 = _dbghelp.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Uint64 BaseOfDll,
),
    int Function(
  int hProcess,
  int BaseOfDll,
)>('SymUnloadModule64');

int UnDecorateSymbolName(
  Pointer<Utf16> name,
  Pointer<Utf16> outputString,
  int maxStringLength,
  int flags,
) =>
    _UnDecorateSymbolName(
      name,
      outputString,
      maxStringLength,
      flags,
    );

late final _UnDecorateSymbolName = _dbghelp.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> name,
  Pointer<Utf16> outputString,
  Uint32 maxStringLength,
  Uint32 flags,
),
    int Function(
  Pointer<Utf16> name,
  Pointer<Utf16> outputString,
  int maxStringLength,
  int flags,
)>('UnDecorateSymbolNameW');

// -----------------------------------------------------------------------
// imagehlp.dll
// -----------------------------------------------------------------------
final _imagehlp = DynamicLibrary.open('imagehlp.dll');

int BindImage(
  Pointer<Utf8> ImageName,
  Pointer<Utf8> DllPath,
  Pointer<Utf8> SymbolPath,
) =>
    _BindImage(
      ImageName,
      DllPath,
      SymbolPath,
    );

late final _BindImage = _imagehlp.lookupFunction<
    Int32 Function(
  Pointer<Utf8> ImageName,
  Pointer<Utf8> DllPath,
  Pointer<Utf8> SymbolPath,
),
    int Function(
  Pointer<Utf8> ImageName,
  Pointer<Utf8> DllPath,
  Pointer<Utf8> SymbolPath,
)>('BindImage');

int BindImageEx(
  int Flags,
  Pointer<Utf8> ImageName,
  Pointer<Utf8> DllPath,
  Pointer<Utf8> SymbolPath,
  Pointer<NativeFunction<PIMAGEHLP_STATUS_ROUTINE>> StatusRoutine,
) =>
    _BindImageEx(
      Flags,
      ImageName,
      DllPath,
      SymbolPath,
      StatusRoutine,
    );

late final _BindImageEx = _imagehlp.lookupFunction<
    Int32 Function(
  Uint32 Flags,
  Pointer<Utf8> ImageName,
  Pointer<Utf8> DllPath,
  Pointer<Utf8> SymbolPath,
  Pointer<NativeFunction<PIMAGEHLP_STATUS_ROUTINE>> StatusRoutine,
),
    int Function(
  int Flags,
  Pointer<Utf8> ImageName,
  Pointer<Utf8> DllPath,
  Pointer<Utf8> SymbolPath,
  Pointer<NativeFunction<PIMAGEHLP_STATUS_ROUTINE>> StatusRoutine,
)>('BindImageEx');

Pointer<IMAGE_NT_HEADERS64> CheckSumMappedFile(
  Pointer BaseAddress,
  int FileLength,
  Pointer<Uint32> HeaderSum,
  Pointer<Uint32> CheckSum,
) =>
    _CheckSumMappedFile(
      BaseAddress,
      FileLength,
      HeaderSum,
      CheckSum,
    );

late final _CheckSumMappedFile = _imagehlp.lookupFunction<
    Pointer<IMAGE_NT_HEADERS64> Function(
  Pointer BaseAddress,
  Uint32 FileLength,
  Pointer<Uint32> HeaderSum,
  Pointer<Uint32> CheckSum,
),
    Pointer<IMAGE_NT_HEADERS64> Function(
  Pointer BaseAddress,
  int FileLength,
  Pointer<Uint32> HeaderSum,
  Pointer<Uint32> CheckSum,
)>('CheckSumMappedFile');

int GetImageConfigInformation(
  Pointer<LOADED_IMAGE> LoadedImage,
  Pointer<IMAGE_LOAD_CONFIG_DIRECTORY64> ImageConfigInformation,
) =>
    _GetImageConfigInformation(
      LoadedImage,
      ImageConfigInformation,
    );

late final _GetImageConfigInformation = _imagehlp.lookupFunction<
    Int32 Function(
  Pointer<LOADED_IMAGE> LoadedImage,
  Pointer<IMAGE_LOAD_CONFIG_DIRECTORY64> ImageConfigInformation,
),
    int Function(
  Pointer<LOADED_IMAGE> LoadedImage,
  Pointer<IMAGE_LOAD_CONFIG_DIRECTORY64> ImageConfigInformation,
)>('GetImageConfigInformation');

int GetImageUnusedHeaderBytes(
  Pointer<LOADED_IMAGE> LoadedImage,
  Pointer<Uint32> SizeUnusedHeaderBytes,
) =>
    _GetImageUnusedHeaderBytes(
      LoadedImage,
      SizeUnusedHeaderBytes,
    );

late final _GetImageUnusedHeaderBytes = _imagehlp.lookupFunction<
    Uint32 Function(
  Pointer<LOADED_IMAGE> LoadedImage,
  Pointer<Uint32> SizeUnusedHeaderBytes,
),
    int Function(
  Pointer<LOADED_IMAGE> LoadedImage,
  Pointer<Uint32> SizeUnusedHeaderBytes,
)>('GetImageUnusedHeaderBytes');

int ImageAddCertificate(
  int FileHandle,
  Pointer<WIN_CERTIFICATE> Certificate,
  Pointer<Uint32> Index,
) =>
    _ImageAddCertificate(
      FileHandle,
      Certificate,
      Index,
    );

late final _ImageAddCertificate = _imagehlp.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Pointer<WIN_CERTIFICATE> Certificate,
  Pointer<Uint32> Index,
),
    int Function(
  int FileHandle,
  Pointer<WIN_CERTIFICATE> Certificate,
  Pointer<Uint32> Index,
)>('ImageAddCertificate');

int ImageEnumerateCertificates(
  int FileHandle,
  int TypeFilter,
  Pointer<Uint32> CertificateCount,
  Pointer<Uint32> Indices,
  int IndexCount,
) =>
    _ImageEnumerateCertificates(
      FileHandle,
      TypeFilter,
      CertificateCount,
      Indices,
      IndexCount,
    );

late final _ImageEnumerateCertificates = _imagehlp.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Uint16 TypeFilter,
  Pointer<Uint32> CertificateCount,
  Pointer<Uint32> Indices,
  Uint32 IndexCount,
),
    int Function(
  int FileHandle,
  int TypeFilter,
  Pointer<Uint32> CertificateCount,
  Pointer<Uint32> Indices,
  int IndexCount,
)>('ImageEnumerateCertificates');

int ImageGetCertificateData(
  int FileHandle,
  int CertificateIndex,
  Pointer<WIN_CERTIFICATE> Certificate,
  Pointer<Uint32> RequiredLength,
) =>
    _ImageGetCertificateData(
      FileHandle,
      CertificateIndex,
      Certificate,
      RequiredLength,
    );

late final _ImageGetCertificateData = _imagehlp.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Uint32 CertificateIndex,
  Pointer<WIN_CERTIFICATE> Certificate,
  Pointer<Uint32> RequiredLength,
),
    int Function(
  int FileHandle,
  int CertificateIndex,
  Pointer<WIN_CERTIFICATE> Certificate,
  Pointer<Uint32> RequiredLength,
)>('ImageGetCertificateData');

int ImageGetCertificateHeader(
  int FileHandle,
  int CertificateIndex,
  Pointer<WIN_CERTIFICATE> Certificateheader,
) =>
    _ImageGetCertificateHeader(
      FileHandle,
      CertificateIndex,
      Certificateheader,
    );

late final _ImageGetCertificateHeader = _imagehlp.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Uint32 CertificateIndex,
  Pointer<WIN_CERTIFICATE> Certificateheader,
),
    int Function(
  int FileHandle,
  int CertificateIndex,
  Pointer<WIN_CERTIFICATE> Certificateheader,
)>('ImageGetCertificateHeader');

int ImageGetDigestStream(
  int FileHandle,
  int DigestLevel,
  Pointer<NativeFunction<DIGEST_FUNCTION>> DigestFunction,
  Pointer DigestHandle,
) =>
    _ImageGetDigestStream(
      FileHandle,
      DigestLevel,
      DigestFunction,
      DigestHandle,
    );

late final _ImageGetDigestStream = _imagehlp.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Uint32 DigestLevel,
  Pointer<NativeFunction<DIGEST_FUNCTION>> DigestFunction,
  Pointer DigestHandle,
),
    int Function(
  int FileHandle,
  int DigestLevel,
  Pointer<NativeFunction<DIGEST_FUNCTION>> DigestFunction,
  Pointer DigestHandle,
)>('ImageGetDigestStream');

Pointer<LOADED_IMAGE> ImageLoad(
  Pointer<Utf8> DllName,
  Pointer<Utf8> DllPath,
) =>
    _ImageLoad(
      DllName,
      DllPath,
    );

late final _ImageLoad = _imagehlp.lookupFunction<
    Pointer<LOADED_IMAGE> Function(
  Pointer<Utf8> DllName,
  Pointer<Utf8> DllPath,
),
    Pointer<LOADED_IMAGE> Function(
  Pointer<Utf8> DllName,
  Pointer<Utf8> DllPath,
)>('ImageLoad');

int ImageRemoveCertificate(
  int FileHandle,
  int Index,
) =>
    _ImageRemoveCertificate(
      FileHandle,
      Index,
    );

late final _ImageRemoveCertificate = _imagehlp.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Uint32 Index,
),
    int Function(
  int FileHandle,
  int Index,
)>('ImageRemoveCertificate');

int ImageUnload(
  Pointer<LOADED_IMAGE> LoadedImage,
) =>
    _ImageUnload(
      LoadedImage,
    );

late final _ImageUnload = _imagehlp.lookupFunction<
    Int32 Function(
  Pointer<LOADED_IMAGE> LoadedImage,
),
    int Function(
  Pointer<LOADED_IMAGE> LoadedImage,
)>('ImageUnload');

int MapAndLoad(
  Pointer<Utf8> ImageName,
  Pointer<Utf8> DllPath,
  Pointer<LOADED_IMAGE> LoadedImage,
  int DotDll,
  int ReadOnly,
) =>
    _MapAndLoad(
      ImageName,
      DllPath,
      LoadedImage,
      DotDll,
      ReadOnly,
    );

late final _MapAndLoad = _imagehlp.lookupFunction<
    Int32 Function(
  Pointer<Utf8> ImageName,
  Pointer<Utf8> DllPath,
  Pointer<LOADED_IMAGE> LoadedImage,
  Int32 DotDll,
  Int32 ReadOnly,
),
    int Function(
  Pointer<Utf8> ImageName,
  Pointer<Utf8> DllPath,
  Pointer<LOADED_IMAGE> LoadedImage,
  int DotDll,
  int ReadOnly,
)>('MapAndLoad');

int MapFileAndCheckSum(
  Pointer<Utf16> Filename,
  Pointer<Uint32> HeaderSum,
  Pointer<Uint32> CheckSum,
) =>
    _MapFileAndCheckSum(
      Filename,
      HeaderSum,
      CheckSum,
    );

late final _MapFileAndCheckSum = _imagehlp.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> Filename,
  Pointer<Uint32> HeaderSum,
  Pointer<Uint32> CheckSum,
),
    int Function(
  Pointer<Utf16> Filename,
  Pointer<Uint32> HeaderSum,
  Pointer<Uint32> CheckSum,
)>('MapFileAndCheckSumW');

int ReBaseImage(
  Pointer<Utf8> CurrentImageName,
  Pointer<Utf8> SymbolPath,
  int fReBase,
  int fRebaseSysfileOk,
  int fGoingDown,
  int CheckImageSize,
  Pointer<Uint32> OldImageSize,
  Pointer<IntPtr> OldImageBase,
  Pointer<Uint32> NewImageSize,
  Pointer<IntPtr> NewImageBase,
  int TimeStamp,
) =>
    _ReBaseImage(
      CurrentImageName,
      SymbolPath,
      fReBase,
      fRebaseSysfileOk,
      fGoingDown,
      CheckImageSize,
      OldImageSize,
      OldImageBase,
      NewImageSize,
      NewImageBase,
      TimeStamp,
    );

late final _ReBaseImage = _imagehlp.lookupFunction<
    Int32 Function(
  Pointer<Utf8> CurrentImageName,
  Pointer<Utf8> SymbolPath,
  Int32 fReBase,
  Int32 fRebaseSysfileOk,
  Int32 fGoingDown,
  Uint32 CheckImageSize,
  Pointer<Uint32> OldImageSize,
  Pointer<IntPtr> OldImageBase,
  Pointer<Uint32> NewImageSize,
  Pointer<IntPtr> NewImageBase,
  Uint32 TimeStamp,
),
    int Function(
  Pointer<Utf8> CurrentImageName,
  Pointer<Utf8> SymbolPath,
  int fReBase,
  int fRebaseSysfileOk,
  int fGoingDown,
  int CheckImageSize,
  Pointer<Uint32> OldImageSize,
  Pointer<IntPtr> OldImageBase,
  Pointer<Uint32> NewImageSize,
  Pointer<IntPtr> NewImageBase,
  int TimeStamp,
)>('ReBaseImage');

int ReBaseImage64(
  Pointer<Utf8> CurrentImageName,
  Pointer<Utf8> SymbolPath,
  int fReBase,
  int fRebaseSysfileOk,
  int fGoingDown,
  int CheckImageSize,
  Pointer<Uint32> OldImageSize,
  Pointer<Uint64> OldImageBase,
  Pointer<Uint32> NewImageSize,
  Pointer<Uint64> NewImageBase,
  int TimeStamp,
) =>
    _ReBaseImage64(
      CurrentImageName,
      SymbolPath,
      fReBase,
      fRebaseSysfileOk,
      fGoingDown,
      CheckImageSize,
      OldImageSize,
      OldImageBase,
      NewImageSize,
      NewImageBase,
      TimeStamp,
    );

late final _ReBaseImage64 = _imagehlp.lookupFunction<
    Int32 Function(
  Pointer<Utf8> CurrentImageName,
  Pointer<Utf8> SymbolPath,
  Int32 fReBase,
  Int32 fRebaseSysfileOk,
  Int32 fGoingDown,
  Uint32 CheckImageSize,
  Pointer<Uint32> OldImageSize,
  Pointer<Uint64> OldImageBase,
  Pointer<Uint32> NewImageSize,
  Pointer<Uint64> NewImageBase,
  Uint32 TimeStamp,
),
    int Function(
  Pointer<Utf8> CurrentImageName,
  Pointer<Utf8> SymbolPath,
  int fReBase,
  int fRebaseSysfileOk,
  int fGoingDown,
  int CheckImageSize,
  Pointer<Uint32> OldImageSize,
  Pointer<Uint64> OldImageBase,
  Pointer<Uint32> NewImageSize,
  Pointer<Uint64> NewImageBase,
  int TimeStamp,
)>('ReBaseImage64');

int SetImageConfigInformation(
  Pointer<LOADED_IMAGE> LoadedImage,
  Pointer<IMAGE_LOAD_CONFIG_DIRECTORY64> ImageConfigInformation,
) =>
    _SetImageConfigInformation(
      LoadedImage,
      ImageConfigInformation,
    );

late final _SetImageConfigInformation = _imagehlp.lookupFunction<
    Int32 Function(
  Pointer<LOADED_IMAGE> LoadedImage,
  Pointer<IMAGE_LOAD_CONFIG_DIRECTORY64> ImageConfigInformation,
),
    int Function(
  Pointer<LOADED_IMAGE> LoadedImage,
  Pointer<IMAGE_LOAD_CONFIG_DIRECTORY64> ImageConfigInformation,
)>('SetImageConfigInformation');

int TouchFileTimes(
  int FileHandle,
  Pointer<SYSTEMTIME> pSystemTime,
) =>
    _TouchFileTimes(
      FileHandle,
      pSystemTime,
    );

late final _TouchFileTimes = _imagehlp.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Pointer<SYSTEMTIME> pSystemTime,
),
    int Function(
  int FileHandle,
  Pointer<SYSTEMTIME> pSystemTime,
)>('TouchFileTimes');

int UnMapAndLoad(
  Pointer<LOADED_IMAGE> LoadedImage,
) =>
    _UnMapAndLoad(
      LoadedImage,
    );

late final _UnMapAndLoad = _imagehlp.lookupFunction<
    Int32 Function(
  Pointer<LOADED_IMAGE> LoadedImage,
),
    int Function(
  Pointer<LOADED_IMAGE> LoadedImage,
)>('UnMapAndLoad');

int UpdateDebugInfoFile(
  Pointer<Utf8> ImageFileName,
  Pointer<Utf8> SymbolPath,
  Pointer<Utf8> DebugFilePath,
  Pointer<IMAGE_NT_HEADERS32> NtHeaders,
) =>
    _UpdateDebugInfoFile(
      ImageFileName,
      SymbolPath,
      DebugFilePath,
      NtHeaders,
    );

late final _UpdateDebugInfoFile = _imagehlp.lookupFunction<
    Int32 Function(
  Pointer<Utf8> ImageFileName,
  Pointer<Utf8> SymbolPath,
  Pointer<Utf8> DebugFilePath,
  Pointer<IMAGE_NT_HEADERS32> NtHeaders,
),
    int Function(
  Pointer<Utf8> ImageFileName,
  Pointer<Utf8> SymbolPath,
  Pointer<Utf8> DebugFilePath,
  Pointer<IMAGE_NT_HEADERS32> NtHeaders,
)>('UpdateDebugInfoFile');

int UpdateDebugInfoFileEx(
  Pointer<Utf8> ImageFileName,
  Pointer<Utf8> SymbolPath,
  Pointer<Utf8> DebugFilePath,
  Pointer<IMAGE_NT_HEADERS32> NtHeaders,
  int OldCheckSum,
) =>
    _UpdateDebugInfoFileEx(
      ImageFileName,
      SymbolPath,
      DebugFilePath,
      NtHeaders,
      OldCheckSum,
    );

late final _UpdateDebugInfoFileEx = _imagehlp.lookupFunction<
    Int32 Function(
  Pointer<Utf8> ImageFileName,
  Pointer<Utf8> SymbolPath,
  Pointer<Utf8> DebugFilePath,
  Pointer<IMAGE_NT_HEADERS32> NtHeaders,
  Uint32 OldCheckSum,
),
    int Function(
  Pointer<Utf8> ImageFileName,
  Pointer<Utf8> SymbolPath,
  Pointer<Utf8> DebugFilePath,
  Pointer<IMAGE_NT_HEADERS32> NtHeaders,
  int OldCheckSum,
)>('UpdateDebugInfoFileEx');

// -----------------------------------------------------------------------
// user32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('user32.dll');

int MessageBeep(
  int uType,
) =>
    _MessageBeep(
      uType,
    );

late final _MessageBeep = _user32.lookupFunction<
    Int32 Function(
  Uint32 uType,
),
    int Function(
  int uType,
)>('MessageBeep');
