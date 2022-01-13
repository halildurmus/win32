// IDebugClient6.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugClient.dart';
import '../../../system/diagnostics/debug/IDebugInputCallbacks.dart';
import '../../../system/diagnostics/debug/IDebugOutputCallbacks.dart';
import '../../../system/diagnostics/debug/IDebugEventCallbacks.dart';
import '../../../system/diagnostics/debug/IDebugOutputCallbacksWide.dart';
import '../../../system/diagnostics/debug/IDebugEventCallbacksWide.dart';
import '../../../system/diagnostics/debug/IDebugEventContextCallbacks.dart';

/// @nodoc
const IID_IDebugClient6 = '{FD28B4C5-C498-4686-A28E-62CAD2154EB3}';

/// {@category Interface}
/// {@category com}
class IDebugClient6 extends IUnknown {
  // vtable begins at 3, is 93 entries long.
  IDebugClient6(Pointer<COMObject> ptr) : super(ptr);

  int AttachKernel(
    int Flags,
    Pointer<Utf8> ConnectOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
            Pointer<Utf8> ConnectOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Utf8> ConnectOptions,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        ConnectOptions,
      );

  int GetKernelConnectionOptions(
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> OptionsSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> OptionsSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> OptionsSize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        OptionsSize,
      );

  int SetKernelConnectionOptions(
    Pointer<Utf8> Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Options,
          )>()(
        ptr.ref.lpVtbl,
        Options,
      );

  int StartProcessServer(
    int Flags,
    Pointer<Utf8> Options,
    Pointer Reserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
            Pointer<Utf8> Options,
            Pointer Reserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Utf8> Options,
            Pointer Reserved,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        Options,
        Reserved,
      );

  int ConnectProcessServer(
    Pointer<Utf8> RemoteOptions,
    Pointer<Uint64> Server,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> RemoteOptions,
            Pointer<Uint64> Server,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> RemoteOptions,
            Pointer<Uint64> Server,
          )>()(
        ptr.ref.lpVtbl,
        RemoteOptions,
        Server,
      );

  int DisconnectProcessServer(
    int Server,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
          )>()(
        ptr.ref.lpVtbl,
        Server,
      );

  int GetRunningProcessSystemIds(
    int Server,
    Pointer<Uint32> Ids,
    int Count,
    Pointer<Uint32> ActualCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Pointer<Uint32> Ids,
            Uint32 Count,
            Pointer<Uint32> ActualCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            Pointer<Uint32> Ids,
            int Count,
            Pointer<Uint32> ActualCount,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        Ids,
        Count,
        ActualCount,
      );

  int GetRunningProcessSystemIdByExecutableName(
    int Server,
    Pointer<Utf8> ExeName,
    int Flags,
    Pointer<Uint32> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Pointer<Utf8> ExeName,
            Uint32 Flags,
            Pointer<Uint32> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            Pointer<Utf8> ExeName,
            int Flags,
            Pointer<Uint32> Id,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        ExeName,
        Flags,
        Id,
      );

  int GetRunningProcessDescription(
    int Server,
    int SystemId,
    int Flags,
    Pointer<Utf8> ExeName,
    int ExeNameSize,
    Pointer<Uint32> ActualExeNameSize,
    Pointer<Utf8> Description,
    int DescriptionSize,
    Pointer<Uint32> ActualDescriptionSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Uint32 SystemId,
            Uint32 Flags,
            Pointer<Utf8> ExeName,
            Uint32 ExeNameSize,
            Pointer<Uint32> ActualExeNameSize,
            Pointer<Utf8> Description,
            Uint32 DescriptionSize,
            Pointer<Uint32> ActualDescriptionSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            int SystemId,
            int Flags,
            Pointer<Utf8> ExeName,
            int ExeNameSize,
            Pointer<Uint32> ActualExeNameSize,
            Pointer<Utf8> Description,
            int DescriptionSize,
            Pointer<Uint32> ActualDescriptionSize,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        SystemId,
        Flags,
        ExeName,
        ExeNameSize,
        ActualExeNameSize,
        Description,
        DescriptionSize,
        ActualDescriptionSize,
      );

  int AttachProcess(
    int Server,
    int ProcessId,
    int AttachFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Uint32 ProcessId,
            Uint32 AttachFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            int ProcessId,
            int AttachFlags,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        ProcessId,
        AttachFlags,
      );

  int CreateProcessA(
    int Server,
    Pointer<Utf8> CommandLine,
    int CreateFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Pointer<Utf8> CommandLine,
            Uint32 CreateFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            Pointer<Utf8> CommandLine,
            int CreateFlags,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        CommandLine,
        CreateFlags,
      );

  int CreateProcessAndAttach(
    int Server,
    Pointer<Utf8> CommandLine,
    int CreateFlags,
    int ProcessId,
    int AttachFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Pointer<Utf8> CommandLine,
            Uint32 CreateFlags,
            Uint32 ProcessId,
            Uint32 AttachFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            Pointer<Utf8> CommandLine,
            int CreateFlags,
            int ProcessId,
            int AttachFlags,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        CommandLine,
        CreateFlags,
        ProcessId,
        AttachFlags,
      );

  int GetProcessOptions(
    Pointer<Uint32> Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Options,
          )>()(
        ptr.ref.lpVtbl,
        Options,
      );

  int AddProcessOptions(
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Options,
          )>()(
        ptr.ref.lpVtbl,
        Options,
      );

  int RemoveProcessOptions(
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Options,
          )>()(
        ptr.ref.lpVtbl,
        Options,
      );

  int SetProcessOptions(
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Options,
          )>()(
        ptr.ref.lpVtbl,
        Options,
      );

  int OpenDumpFile(
    Pointer<Utf8> DumpFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> DumpFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> DumpFile,
          )>()(
        ptr.ref.lpVtbl,
        DumpFile,
      );

  int WriteDumpFile(
    Pointer<Utf8> DumpFile,
    int Qualifier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> DumpFile,
            Uint32 Qualifier,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> DumpFile,
            int Qualifier,
          )>()(
        ptr.ref.lpVtbl,
        DumpFile,
        Qualifier,
      );

  int ConnectSession(
    int Flags,
    int HistoryLimit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
            Uint32 HistoryLimit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            int HistoryLimit,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        HistoryLimit,
      );

  int StartServer(
    Pointer<Utf8> Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Options,
          )>()(
        ptr.ref.lpVtbl,
        Options,
      );

  int OutputServers(
    int OutputControl,
    Pointer<Utf8> Machine,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Pointer<Utf8> Machine,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            Pointer<Utf8> Machine,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Machine,
        Flags,
      );

  int TerminateProcesses() => ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int DetachProcesses() => ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int EndSession(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
      );

  int GetExitCode(
    Pointer<Uint32> Code,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Code,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Code,
          )>()(
        ptr.ref.lpVtbl,
        Code,
      );

  int DispatchCallbacks(
    int Timeout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Timeout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Timeout,
          )>()(
        ptr.ref.lpVtbl,
        Timeout,
      );

  int ExitDispatch(
    Pointer<COMObject> Client,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Client,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Client,
          )>()(
        ptr.ref.lpVtbl,
        Client,
      );

  int CreateClient(
    Pointer<Pointer<COMObject>> Client,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Client,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Client,
          )>()(
        ptr.ref.lpVtbl,
        Client,
      );

  int GetInputCallbacks(
    Pointer<Pointer<COMObject>> Callbacks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Callbacks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Callbacks,
          )>()(
        ptr.ref.lpVtbl,
        Callbacks,
      );

  int SetInputCallbacks(
    Pointer<COMObject> Callbacks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Callbacks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Callbacks,
          )>()(
        ptr.ref.lpVtbl,
        Callbacks,
      );

  int GetOutputCallbacks(
    Pointer<Pointer<COMObject>> Callbacks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Callbacks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Callbacks,
          )>()(
        ptr.ref.lpVtbl,
        Callbacks,
      );

  int SetOutputCallbacks(
    Pointer<COMObject> Callbacks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Callbacks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Callbacks,
          )>()(
        ptr.ref.lpVtbl,
        Callbacks,
      );

  int GetOutputMask(
    Pointer<Uint32> Mask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Mask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Mask,
          )>()(
        ptr.ref.lpVtbl,
        Mask,
      );

  int SetOutputMask(
    int Mask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Mask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Mask,
          )>()(
        ptr.ref.lpVtbl,
        Mask,
      );

  int GetOtherOutputMask(
    Pointer<COMObject> Client,
    Pointer<Uint32> Mask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Client,
            Pointer<Uint32> Mask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Client,
            Pointer<Uint32> Mask,
          )>()(
        ptr.ref.lpVtbl,
        Client,
        Mask,
      );

  int SetOtherOutputMask(
    Pointer<COMObject> Client,
    int Mask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Client,
            Uint32 Mask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Client,
            int Mask,
          )>()(
        ptr.ref.lpVtbl,
        Client,
        Mask,
      );

  int GetOutputWidth(
    Pointer<Uint32> Columns,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Columns,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Columns,
          )>()(
        ptr.ref.lpVtbl,
        Columns,
      );

  int SetOutputWidth(
    int Columns,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Columns,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Columns,
          )>()(
        ptr.ref.lpVtbl,
        Columns,
      );

  int GetOutputLinePrefix(
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> PrefixSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> PrefixSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> PrefixSize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        PrefixSize,
      );

  int SetOutputLinePrefix(
    Pointer<Utf8> Prefix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Prefix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Prefix,
          )>()(
        ptr.ref.lpVtbl,
        Prefix,
      );

  int GetIdentity(
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> IdentitySize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> IdentitySize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> IdentitySize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        IdentitySize,
      );

  int OutputIdentity(
    int OutputControl,
    int Flags,
    Pointer<Utf8> Format,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Uint32 Flags,
            Pointer<Utf8> Format,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            int Flags,
            Pointer<Utf8> Format,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Flags,
        Format,
      );

  int GetEventCallbacks(
    Pointer<Pointer<COMObject>> Callbacks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Callbacks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Callbacks,
          )>()(
        ptr.ref.lpVtbl,
        Callbacks,
      );

  int SetEventCallbacks(
    Pointer<COMObject> Callbacks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Callbacks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Callbacks,
          )>()(
        ptr.ref.lpVtbl,
        Callbacks,
      );

  int FlushCallbacks() => ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int WriteDumpFile2(
    Pointer<Utf8> DumpFile,
    int Qualifier,
    int FormatFlags,
    Pointer<Utf8> Comment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> DumpFile,
            Uint32 Qualifier,
            Uint32 FormatFlags,
            Pointer<Utf8> Comment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> DumpFile,
            int Qualifier,
            int FormatFlags,
            Pointer<Utf8> Comment,
          )>()(
        ptr.ref.lpVtbl,
        DumpFile,
        Qualifier,
        FormatFlags,
        Comment,
      );

  int AddDumpInformationFile(
    Pointer<Utf8> InfoFile,
    int Type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> InfoFile,
            Uint32 Type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> InfoFile,
            int Type,
          )>()(
        ptr.ref.lpVtbl,
        InfoFile,
        Type,
      );

  int EndProcessServer(
    int Server,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
          )>()(
        ptr.ref.lpVtbl,
        Server,
      );

  int WaitForProcessServerEnd(
    int Timeout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Timeout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Timeout,
          )>()(
        ptr.ref.lpVtbl,
        Timeout,
      );

  int IsKernelDebuggerEnabled() => ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int TerminateCurrentProcess() => ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int DetachCurrentProcess() => ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int AbandonCurrentProcess() => ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetRunningProcessSystemIdByExecutableNameWide(
    int Server,
    Pointer<Utf16> ExeName,
    int Flags,
    Pointer<Uint32> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Pointer<Utf16> ExeName,
            Uint32 Flags,
            Pointer<Uint32> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            Pointer<Utf16> ExeName,
            int Flags,
            Pointer<Uint32> Id,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        ExeName,
        Flags,
        Id,
      );

  int GetRunningProcessDescriptionWide(
    int Server,
    int SystemId,
    int Flags,
    Pointer<Utf16> ExeName,
    int ExeNameSize,
    Pointer<Uint32> ActualExeNameSize,
    Pointer<Utf16> Description,
    int DescriptionSize,
    Pointer<Uint32> ActualDescriptionSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Uint32 SystemId,
            Uint32 Flags,
            Pointer<Utf16> ExeName,
            Uint32 ExeNameSize,
            Pointer<Uint32> ActualExeNameSize,
            Pointer<Utf16> Description,
            Uint32 DescriptionSize,
            Pointer<Uint32> ActualDescriptionSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            int SystemId,
            int Flags,
            Pointer<Utf16> ExeName,
            int ExeNameSize,
            Pointer<Uint32> ActualExeNameSize,
            Pointer<Utf16> Description,
            int DescriptionSize,
            Pointer<Uint32> ActualDescriptionSize,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        SystemId,
        Flags,
        ExeName,
        ExeNameSize,
        ActualExeNameSize,
        Description,
        DescriptionSize,
        ActualDescriptionSize,
      );

  int CreateProcessWide(
    int Server,
    Pointer<Utf16> CommandLine,
    int CreateFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Pointer<Utf16> CommandLine,
            Uint32 CreateFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            Pointer<Utf16> CommandLine,
            int CreateFlags,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        CommandLine,
        CreateFlags,
      );

  int CreateProcessAndAttachWide(
    int Server,
    Pointer<Utf16> CommandLine,
    int CreateFlags,
    int ProcessId,
    int AttachFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Pointer<Utf16> CommandLine,
            Uint32 CreateFlags,
            Uint32 ProcessId,
            Uint32 AttachFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            Pointer<Utf16> CommandLine,
            int CreateFlags,
            int ProcessId,
            int AttachFlags,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        CommandLine,
        CreateFlags,
        ProcessId,
        AttachFlags,
      );

  int OpenDumpFileWide(
    Pointer<Utf16> FileName,
    int FileHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> FileName,
            Uint64 FileHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> FileName,
            int FileHandle,
          )>()(
        ptr.ref.lpVtbl,
        FileName,
        FileHandle,
      );

  int WriteDumpFileWide(
    Pointer<Utf16> FileName,
    int FileHandle,
    int Qualifier,
    int FormatFlags,
    Pointer<Utf16> Comment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> FileName,
            Uint64 FileHandle,
            Uint32 Qualifier,
            Uint32 FormatFlags,
            Pointer<Utf16> Comment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> FileName,
            int FileHandle,
            int Qualifier,
            int FormatFlags,
            Pointer<Utf16> Comment,
          )>()(
        ptr.ref.lpVtbl,
        FileName,
        FileHandle,
        Qualifier,
        FormatFlags,
        Comment,
      );

  int AddDumpInformationFileWide(
    Pointer<Utf16> FileName,
    int FileHandle,
    int Type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> FileName,
            Uint64 FileHandle,
            Uint32 Type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> FileName,
            int FileHandle,
            int Type,
          )>()(
        ptr.ref.lpVtbl,
        FileName,
        FileHandle,
        Type,
      );

  int GetNumberDumpFiles(
    Pointer<Uint32> Number,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Number,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Number,
          )>()(
        ptr.ref.lpVtbl,
        Number,
      );

  int GetDumpFile(
    int Index,
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> NameSize,
    Pointer<Uint64> $Handle,
    Pointer<Uint32> Type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> NameSize,
            Pointer<Uint64> $Handle,
            Pointer<Uint32> Type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> NameSize,
            Pointer<Uint64> $Handle,
            Pointer<Uint32> Type,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Buffer,
        BufferSize,
        NameSize,
        $Handle,
        Type,
      );

  int GetDumpFileWide(
    int Index,
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> NameSize,
    Pointer<Uint64> $Handle,
    Pointer<Uint32> Type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> NameSize,
            Pointer<Uint64> $Handle,
            Pointer<Uint32> Type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> NameSize,
            Pointer<Uint64> $Handle,
            Pointer<Uint32> Type,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Buffer,
        BufferSize,
        NameSize,
        $Handle,
        Type,
      );

  int AttachKernelWide(
    int Flags,
    Pointer<Utf16> ConnectOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(66)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
            Pointer<Utf16> ConnectOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Utf16> ConnectOptions,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        ConnectOptions,
      );

  int GetKernelConnectionOptionsWide(
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> OptionsSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> OptionsSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> OptionsSize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        OptionsSize,
      );

  int SetKernelConnectionOptionsWide(
    Pointer<Utf16> Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(68)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Options,
          )>()(
        ptr.ref.lpVtbl,
        Options,
      );

  int StartProcessServerWide(
    int Flags,
    Pointer<Utf16> Options,
    Pointer Reserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(69)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
            Pointer<Utf16> Options,
            Pointer Reserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Utf16> Options,
            Pointer Reserved,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        Options,
        Reserved,
      );

  int ConnectProcessServerWide(
    Pointer<Utf16> RemoteOptions,
    Pointer<Uint64> Server,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(70)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> RemoteOptions,
            Pointer<Uint64> Server,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> RemoteOptions,
            Pointer<Uint64> Server,
          )>()(
        ptr.ref.lpVtbl,
        RemoteOptions,
        Server,
      );

  int StartServerWide(
    Pointer<Utf16> Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(71)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Options,
          )>()(
        ptr.ref.lpVtbl,
        Options,
      );

  int OutputServersWide(
    int OutputControl,
    Pointer<Utf16> Machine,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(72)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Pointer<Utf16> Machine,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            Pointer<Utf16> Machine,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Machine,
        Flags,
      );

  int GetOutputCallbacksWide(
    Pointer<Pointer<COMObject>> Callbacks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(73)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Callbacks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Callbacks,
          )>()(
        ptr.ref.lpVtbl,
        Callbacks,
      );

  int SetOutputCallbacksWide(
    Pointer<COMObject> Callbacks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(74)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Callbacks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Callbacks,
          )>()(
        ptr.ref.lpVtbl,
        Callbacks,
      );

  int GetOutputLinePrefixWide(
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> PrefixSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(75)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> PrefixSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> PrefixSize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        PrefixSize,
      );

  int SetOutputLinePrefixWide(
    Pointer<Utf16> Prefix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(76)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Prefix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Prefix,
          )>()(
        ptr.ref.lpVtbl,
        Prefix,
      );

  int GetIdentityWide(
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> IdentitySize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(77)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> IdentitySize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> IdentitySize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        IdentitySize,
      );

  int OutputIdentityWide(
    int OutputControl,
    int Flags,
    Pointer<Utf16> Format,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(78)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Uint32 Flags,
            Pointer<Utf16> Format,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            int Flags,
            Pointer<Utf16> Format,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Flags,
        Format,
      );

  int GetEventCallbacksWide(
    Pointer<Pointer<COMObject>> Callbacks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(79)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Callbacks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Callbacks,
          )>()(
        ptr.ref.lpVtbl,
        Callbacks,
      );

  int SetEventCallbacksWide(
    Pointer<COMObject> Callbacks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(80)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Callbacks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Callbacks,
          )>()(
        ptr.ref.lpVtbl,
        Callbacks,
      );

  int CreateProcess2(
    int Server,
    Pointer<Utf8> CommandLine,
    Pointer OptionsBuffer,
    int OptionsBufferSize,
    Pointer<Utf8> InitialDirectory,
    Pointer<Utf8> Environment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(81)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Pointer<Utf8> CommandLine,
            Pointer OptionsBuffer,
            Uint32 OptionsBufferSize,
            Pointer<Utf8> InitialDirectory,
            Pointer<Utf8> Environment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            Pointer<Utf8> CommandLine,
            Pointer OptionsBuffer,
            int OptionsBufferSize,
            Pointer<Utf8> InitialDirectory,
            Pointer<Utf8> Environment,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        CommandLine,
        OptionsBuffer,
        OptionsBufferSize,
        InitialDirectory,
        Environment,
      );

  int CreateProcess2Wide(
    int Server,
    Pointer<Utf16> CommandLine,
    Pointer OptionsBuffer,
    int OptionsBufferSize,
    Pointer<Utf16> InitialDirectory,
    Pointer<Utf16> Environment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(82)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Pointer<Utf16> CommandLine,
            Pointer OptionsBuffer,
            Uint32 OptionsBufferSize,
            Pointer<Utf16> InitialDirectory,
            Pointer<Utf16> Environment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            Pointer<Utf16> CommandLine,
            Pointer OptionsBuffer,
            int OptionsBufferSize,
            Pointer<Utf16> InitialDirectory,
            Pointer<Utf16> Environment,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        CommandLine,
        OptionsBuffer,
        OptionsBufferSize,
        InitialDirectory,
        Environment,
      );

  int CreateProcessAndAttach2(
    int Server,
    Pointer<Utf8> CommandLine,
    Pointer OptionsBuffer,
    int OptionsBufferSize,
    Pointer<Utf8> InitialDirectory,
    Pointer<Utf8> Environment,
    int ProcessId,
    int AttachFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(83)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Pointer<Utf8> CommandLine,
            Pointer OptionsBuffer,
            Uint32 OptionsBufferSize,
            Pointer<Utf8> InitialDirectory,
            Pointer<Utf8> Environment,
            Uint32 ProcessId,
            Uint32 AttachFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            Pointer<Utf8> CommandLine,
            Pointer OptionsBuffer,
            int OptionsBufferSize,
            Pointer<Utf8> InitialDirectory,
            Pointer<Utf8> Environment,
            int ProcessId,
            int AttachFlags,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        CommandLine,
        OptionsBuffer,
        OptionsBufferSize,
        InitialDirectory,
        Environment,
        ProcessId,
        AttachFlags,
      );

  int CreateProcessAndAttach2Wide(
    int Server,
    Pointer<Utf16> CommandLine,
    Pointer OptionsBuffer,
    int OptionsBufferSize,
    Pointer<Utf16> InitialDirectory,
    Pointer<Utf16> Environment,
    int ProcessId,
    int AttachFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(84)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Pointer<Utf16> CommandLine,
            Pointer OptionsBuffer,
            Uint32 OptionsBufferSize,
            Pointer<Utf16> InitialDirectory,
            Pointer<Utf16> Environment,
            Uint32 ProcessId,
            Uint32 AttachFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            Pointer<Utf16> CommandLine,
            Pointer OptionsBuffer,
            int OptionsBufferSize,
            Pointer<Utf16> InitialDirectory,
            Pointer<Utf16> Environment,
            int ProcessId,
            int AttachFlags,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        CommandLine,
        OptionsBuffer,
        OptionsBufferSize,
        InitialDirectory,
        Environment,
        ProcessId,
        AttachFlags,
      );

  int PushOutputLinePrefix(
    Pointer<Utf8> NewPrefix,
    Pointer<Uint64> $Handle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(85)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> NewPrefix,
            Pointer<Uint64> $Handle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> NewPrefix,
            Pointer<Uint64> $Handle,
          )>()(
        ptr.ref.lpVtbl,
        NewPrefix,
        $Handle,
      );

  int PushOutputLinePrefixWide(
    Pointer<Utf16> NewPrefix,
    Pointer<Uint64> $Handle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(86)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> NewPrefix,
            Pointer<Uint64> $Handle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> NewPrefix,
            Pointer<Uint64> $Handle,
          )>()(
        ptr.ref.lpVtbl,
        NewPrefix,
        $Handle,
      );

  int PopOutputLinePrefix(
    int $Handle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(87)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 $Handle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int $Handle,
          )>()(
        ptr.ref.lpVtbl,
        $Handle,
      );

  int GetNumberInputCallbacks(
    Pointer<Uint32> Count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(88)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Count,
          )>()(
        ptr.ref.lpVtbl,
        Count,
      );

  int GetNumberOutputCallbacks(
    Pointer<Uint32> Count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(89)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Count,
          )>()(
        ptr.ref.lpVtbl,
        Count,
      );

  int GetNumberEventCallbacks(
    int EventFlags,
    Pointer<Uint32> Count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(90)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 EventFlags,
            Pointer<Uint32> Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int EventFlags,
            Pointer<Uint32> Count,
          )>()(
        ptr.ref.lpVtbl,
        EventFlags,
        Count,
      );

  int GetQuitLockString(
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> StringSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(91)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> StringSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> StringSize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        StringSize,
      );

  int SetQuitLockString(
    Pointer<Utf8> $String,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(92)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> $String,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> $String,
          )>()(
        ptr.ref.lpVtbl,
        $String,
      );

  int GetQuitLockStringWide(
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> StringSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(93)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> StringSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> StringSize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        StringSize,
      );

  int SetQuitLockStringWide(
    Pointer<Utf16> $String,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(94)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> $String,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> $String,
          )>()(
        ptr.ref.lpVtbl,
        $String,
      );

  int SetEventContextCallbacks(
    Pointer<COMObject> Callbacks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(95)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Callbacks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Callbacks,
          )>()(
        ptr.ref.lpVtbl,
        Callbacks,
      );
}
