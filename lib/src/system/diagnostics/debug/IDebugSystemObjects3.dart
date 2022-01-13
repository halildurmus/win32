// IDebugSystemObjects3.dart

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

/// @nodoc
const IID_IDebugSystemObjects3 = '{E9676E2F-E286-4EA3-B0F9-DFE5D9FC330E}';

/// {@category Interface}
/// {@category com}
class IDebugSystemObjects3 extends IUnknown {
  // vtable begins at 3, is 43 entries long.
  IDebugSystemObjects3(Pointer<COMObject> ptr) : super(ptr);

  int GetEventThread(
    Pointer<Uint32> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Id,
          )>()(
        ptr.ref.lpVtbl,
        Id,
      );

  int GetEventProcess(
    Pointer<Uint32> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Id,
          )>()(
        ptr.ref.lpVtbl,
        Id,
      );

  int GetCurrentThreadId(
    Pointer<Uint32> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Id,
          )>()(
        ptr.ref.lpVtbl,
        Id,
      );

  int SetCurrentThreadId(
    int Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Id,
          )>()(
        ptr.ref.lpVtbl,
        Id,
      );

  int GetCurrentProcessId(
    Pointer<Uint32> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Id,
          )>()(
        ptr.ref.lpVtbl,
        Id,
      );

  int SetCurrentProcessId(
    int Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Id,
          )>()(
        ptr.ref.lpVtbl,
        Id,
      );

  int GetNumberThreads(
    Pointer<Uint32> Number,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int GetTotalNumberThreads(
    Pointer<Uint32> Total,
    Pointer<Uint32> LargestProcess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Total,
            Pointer<Uint32> LargestProcess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Total,
            Pointer<Uint32> LargestProcess,
          )>()(
        ptr.ref.lpVtbl,
        Total,
        LargestProcess,
      );

  int GetThreadIdsByIndex(
    int Start,
    int Count,
    Pointer<Uint32> Ids,
    Pointer<Uint32> SysIds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Start,
            Uint32 Count,
            Pointer<Uint32> Ids,
            Pointer<Uint32> SysIds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Start,
            int Count,
            Pointer<Uint32> Ids,
            Pointer<Uint32> SysIds,
          )>()(
        ptr.ref.lpVtbl,
        Start,
        Count,
        Ids,
        SysIds,
      );

  int GetThreadIdByProcessor(
    int Processor,
    Pointer<Uint32> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Processor,
            Pointer<Uint32> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Processor,
            Pointer<Uint32> Id,
          )>()(
        ptr.ref.lpVtbl,
        Processor,
        Id,
      );

  int GetCurrentThreadDataOffset(
    Pointer<Uint64> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> Offset,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
      );

  int GetThreadIdByDataOffset(
    int Offset,
    Pointer<Uint32> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Pointer<Uint32> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            Pointer<Uint32> Id,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Id,
      );

  int GetCurrentThreadTeb(
    Pointer<Uint64> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> Offset,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
      );

  int GetThreadIdByTeb(
    int Offset,
    Pointer<Uint32> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Pointer<Uint32> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            Pointer<Uint32> Id,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Id,
      );

  int GetCurrentThreadSystemId(
    Pointer<Uint32> SysId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> SysId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> SysId,
          )>()(
        ptr.ref.lpVtbl,
        SysId,
      );

  int GetThreadIdBySystemId(
    int SysId,
    Pointer<Uint32> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 SysId,
            Pointer<Uint32> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int SysId,
            Pointer<Uint32> Id,
          )>()(
        ptr.ref.lpVtbl,
        SysId,
        Id,
      );

  int GetCurrentThreadHandle(
    Pointer<Uint64> $Handle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> $Handle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> $Handle,
          )>()(
        ptr.ref.lpVtbl,
        $Handle,
      );

  int GetThreadIdByHandle(
    int $Handle,
    Pointer<Uint32> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 $Handle,
            Pointer<Uint32> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int $Handle,
            Pointer<Uint32> Id,
          )>()(
        ptr.ref.lpVtbl,
        $Handle,
        Id,
      );

  int GetNumberProcesses(
    Pointer<Uint32> Number,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
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

  int GetProcessIdsByIndex(
    int Start,
    int Count,
    Pointer<Uint32> Ids,
    Pointer<Uint32> SysIds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Start,
            Uint32 Count,
            Pointer<Uint32> Ids,
            Pointer<Uint32> SysIds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Start,
            int Count,
            Pointer<Uint32> Ids,
            Pointer<Uint32> SysIds,
          )>()(
        ptr.ref.lpVtbl,
        Start,
        Count,
        Ids,
        SysIds,
      );

  int GetCurrentProcessDataOffset(
    Pointer<Uint64> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> Offset,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
      );

  int GetProcessIdByDataOffset(
    int Offset,
    Pointer<Uint32> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Pointer<Uint32> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            Pointer<Uint32> Id,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Id,
      );

  int GetCurrentProcessPeb(
    Pointer<Uint64> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> Offset,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
      );

  int GetProcessIdByPeb(
    int Offset,
    Pointer<Uint32> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Pointer<Uint32> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            Pointer<Uint32> Id,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Id,
      );

  int GetCurrentProcessSystemId(
    Pointer<Uint32> SysId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> SysId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> SysId,
          )>()(
        ptr.ref.lpVtbl,
        SysId,
      );

  int GetProcessIdBySystemId(
    int SysId,
    Pointer<Uint32> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 SysId,
            Pointer<Uint32> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int SysId,
            Pointer<Uint32> Id,
          )>()(
        ptr.ref.lpVtbl,
        SysId,
        Id,
      );

  int GetCurrentProcessHandle(
    Pointer<Uint64> $Handle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> $Handle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> $Handle,
          )>()(
        ptr.ref.lpVtbl,
        $Handle,
      );

  int GetProcessIdByHandle(
    int $Handle,
    Pointer<Uint32> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 $Handle,
            Pointer<Uint32> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int $Handle,
            Pointer<Uint32> Id,
          )>()(
        ptr.ref.lpVtbl,
        $Handle,
        Id,
      );

  int GetCurrentProcessExecutableName(
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> ExeSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> ExeSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> ExeSize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        ExeSize,
      );

  int GetCurrentProcessUpTime(
    Pointer<Uint32> UpTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> UpTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> UpTime,
          )>()(
        ptr.ref.lpVtbl,
        UpTime,
      );

  int GetImplicitThreadDataOffset(
    Pointer<Uint64> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> Offset,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
      );

  int SetImplicitThreadDataOffset(
    int Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
      );

  int GetImplicitProcessDataOffset(
    Pointer<Uint64> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> Offset,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
      );

  int SetImplicitProcessDataOffset(
    int Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
      );

  int GetEventSystem(
    Pointer<Uint32> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Id,
          )>()(
        ptr.ref.lpVtbl,
        Id,
      );

  int GetCurrentSystemId(
    Pointer<Uint32> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Id,
          )>()(
        ptr.ref.lpVtbl,
        Id,
      );

  int SetCurrentSystemId(
    int Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Id,
          )>()(
        ptr.ref.lpVtbl,
        Id,
      );

  int GetNumberSystems(
    Pointer<Uint32> Number,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
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

  int GetSystemIdsByIndex(
    int Start,
    int Count,
    Pointer<Uint32> Ids,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Start,
            Uint32 Count,
            Pointer<Uint32> Ids,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Start,
            int Count,
            Pointer<Uint32> Ids,
          )>()(
        ptr.ref.lpVtbl,
        Start,
        Count,
        Ids,
      );

  int GetTotalNumberThreadsAndProcesses(
    Pointer<Uint32> TotalThreads,
    Pointer<Uint32> TotalProcesses,
    Pointer<Uint32> LargestProcessThreads,
    Pointer<Uint32> LargestSystemThreads,
    Pointer<Uint32> LargestSystemProcesses,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> TotalThreads,
            Pointer<Uint32> TotalProcesses,
            Pointer<Uint32> LargestProcessThreads,
            Pointer<Uint32> LargestSystemThreads,
            Pointer<Uint32> LargestSystemProcesses,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> TotalThreads,
            Pointer<Uint32> TotalProcesses,
            Pointer<Uint32> LargestProcessThreads,
            Pointer<Uint32> LargestSystemThreads,
            Pointer<Uint32> LargestSystemProcesses,
          )>()(
        ptr.ref.lpVtbl,
        TotalThreads,
        TotalProcesses,
        LargestProcessThreads,
        LargestSystemThreads,
        LargestSystemProcesses,
      );

  int GetCurrentSystemServer(
    Pointer<Uint64> Server,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> Server,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> Server,
          )>()(
        ptr.ref.lpVtbl,
        Server,
      );

  int GetSystemByServer(
    int Server,
    Pointer<Uint32> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Server,
            Pointer<Uint32> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Server,
            Pointer<Uint32> Id,
          )>()(
        ptr.ref.lpVtbl,
        Server,
        Id,
      );

  int GetCurrentSystemServerName(
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> NameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> NameSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> NameSize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        NameSize,
      );
}
