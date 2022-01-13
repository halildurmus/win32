// IDebugEventCallbacks.dart

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
import '../../../system/diagnostics/debug/IDebugBreakpoint.dart';
import '../../../system/diagnostics/debug/structs.g.dart';

/// @nodoc
const IID_IDebugEventCallbacks = '{337BE28B-5036-4D72-B6BF-C45FBB9F2EAA}';

/// {@category Interface}
/// {@category com}
class IDebugEventCallbacks extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  IDebugEventCallbacks(Pointer<COMObject> ptr) : super(ptr);

  int GetInterestMask(
    Pointer<Uint32> Mask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int Breakpoint(
    Pointer<COMObject> Bp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Bp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Bp,
          )>()(
        ptr.ref.lpVtbl,
        Bp,
      );

  int Exception(
    Pointer<EXCEPTION_RECORD64> Exception,
    int FirstChance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<EXCEPTION_RECORD64> Exception,
            Uint32 FirstChance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<EXCEPTION_RECORD64> Exception,
            int FirstChance,
          )>()(
        ptr.ref.lpVtbl,
        Exception,
        FirstChance,
      );

  int CreateThread(
    int $Handle,
    int DataOffset,
    int StartOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 $Handle,
            Uint64 DataOffset,
            Uint64 StartOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int $Handle,
            int DataOffset,
            int StartOffset,
          )>()(
        ptr.ref.lpVtbl,
        $Handle,
        DataOffset,
        StartOffset,
      );

  int ExitThread(
    int ExitCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ExitCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ExitCode,
          )>()(
        ptr.ref.lpVtbl,
        ExitCode,
      );

  int CreateProcessA(
    int ImageFileHandle,
    int $Handle,
    int BaseOffset,
    int ModuleSize,
    Pointer<Utf8> ModuleName,
    Pointer<Utf8> ImageName,
    int CheckSum,
    int TimeDateStamp,
    int InitialThreadHandle,
    int ThreadDataOffset,
    int StartOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ImageFileHandle,
            Uint64 $Handle,
            Uint64 BaseOffset,
            Uint32 ModuleSize,
            Pointer<Utf8> ModuleName,
            Pointer<Utf8> ImageName,
            Uint32 CheckSum,
            Uint32 TimeDateStamp,
            Uint64 InitialThreadHandle,
            Uint64 ThreadDataOffset,
            Uint64 StartOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ImageFileHandle,
            int $Handle,
            int BaseOffset,
            int ModuleSize,
            Pointer<Utf8> ModuleName,
            Pointer<Utf8> ImageName,
            int CheckSum,
            int TimeDateStamp,
            int InitialThreadHandle,
            int ThreadDataOffset,
            int StartOffset,
          )>()(
        ptr.ref.lpVtbl,
        ImageFileHandle,
        $Handle,
        BaseOffset,
        ModuleSize,
        ModuleName,
        ImageName,
        CheckSum,
        TimeDateStamp,
        InitialThreadHandle,
        ThreadDataOffset,
        StartOffset,
      );

  int ExitProcess(
    int ExitCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ExitCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ExitCode,
          )>()(
        ptr.ref.lpVtbl,
        ExitCode,
      );

  int LoadModule(
    int ImageFileHandle,
    int BaseOffset,
    int ModuleSize,
    Pointer<Utf8> ModuleName,
    Pointer<Utf8> ImageName,
    int CheckSum,
    int TimeDateStamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ImageFileHandle,
            Uint64 BaseOffset,
            Uint32 ModuleSize,
            Pointer<Utf8> ModuleName,
            Pointer<Utf8> ImageName,
            Uint32 CheckSum,
            Uint32 TimeDateStamp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ImageFileHandle,
            int BaseOffset,
            int ModuleSize,
            Pointer<Utf8> ModuleName,
            Pointer<Utf8> ImageName,
            int CheckSum,
            int TimeDateStamp,
          )>()(
        ptr.ref.lpVtbl,
        ImageFileHandle,
        BaseOffset,
        ModuleSize,
        ModuleName,
        ImageName,
        CheckSum,
        TimeDateStamp,
      );

  int UnloadModule(
    Pointer<Utf8> ImageBaseName,
    int BaseOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> ImageBaseName,
            Uint64 BaseOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> ImageBaseName,
            int BaseOffset,
          )>()(
        ptr.ref.lpVtbl,
        ImageBaseName,
        BaseOffset,
      );

  int SystemError(
    int Error,
    int Level,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Error,
            Uint32 Level,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Error,
            int Level,
          )>()(
        ptr.ref.lpVtbl,
        Error,
        Level,
      );

  int SessionStatus(
    int Status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Status,
          )>()(
        ptr.ref.lpVtbl,
        Status,
      );

  int ChangeDebuggeeState(
    int Flags,
    int Argument,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
            Uint64 Argument,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            int Argument,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        Argument,
      );

  int ChangeEngineState(
    int Flags,
    int Argument,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
            Uint64 Argument,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            int Argument,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        Argument,
      );

  int ChangeSymbolState(
    int Flags,
    int Argument,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
            Uint64 Argument,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            int Argument,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        Argument,
      );
}
