// IDebugEventContextCallbacks.dart

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
import '../../../system/diagnostics/debug/IDebugBreakpoint2.dart';
import '../../../system/diagnostics/debug/structs.g.dart';

/// @nodoc
const IID_IDebugEventContextCallbacks =
    '{61A4905B-23F9-4247-B3C5-53D087529AB7}';

/// {@category Interface}
/// {@category com}
class IDebugEventContextCallbacks extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  IDebugEventContextCallbacks(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer Context,
    int ContextSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Bp,
            Pointer Context,
            Uint32 ContextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Bp,
            Pointer Context,
            int ContextSize,
          )>()(
        ptr.ref.lpVtbl,
        Bp,
        Context,
        ContextSize,
      );

  int Exception(
    Pointer<EXCEPTION_RECORD64> Exception,
    int FirstChance,
    Pointer Context,
    int ContextSize,
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
            Pointer Context,
            Uint32 ContextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<EXCEPTION_RECORD64> Exception,
            int FirstChance,
            Pointer Context,
            int ContextSize,
          )>()(
        ptr.ref.lpVtbl,
        Exception,
        FirstChance,
        Context,
        ContextSize,
      );

  int CreateThread(
    int $Handle,
    int DataOffset,
    int StartOffset,
    Pointer Context,
    int ContextSize,
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
            Pointer Context,
            Uint32 ContextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int $Handle,
            int DataOffset,
            int StartOffset,
            Pointer Context,
            int ContextSize,
          )>()(
        ptr.ref.lpVtbl,
        $Handle,
        DataOffset,
        StartOffset,
        Context,
        ContextSize,
      );

  int ExitThread(
    int ExitCode,
    Pointer Context,
    int ContextSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ExitCode,
            Pointer Context,
            Uint32 ContextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ExitCode,
            Pointer Context,
            int ContextSize,
          )>()(
        ptr.ref.lpVtbl,
        ExitCode,
        Context,
        ContextSize,
      );

  int CreateProcessA(
    int ImageFileHandle,
    int $Handle,
    int BaseOffset,
    int ModuleSize,
    Pointer<Utf16> ModuleName,
    Pointer<Utf16> ImageName,
    int CheckSum,
    int TimeDateStamp,
    int InitialThreadHandle,
    int ThreadDataOffset,
    int StartOffset,
    Pointer Context,
    int ContextSize,
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
            Pointer<Utf16> ModuleName,
            Pointer<Utf16> ImageName,
            Uint32 CheckSum,
            Uint32 TimeDateStamp,
            Uint64 InitialThreadHandle,
            Uint64 ThreadDataOffset,
            Uint64 StartOffset,
            Pointer Context,
            Uint32 ContextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ImageFileHandle,
            int $Handle,
            int BaseOffset,
            int ModuleSize,
            Pointer<Utf16> ModuleName,
            Pointer<Utf16> ImageName,
            int CheckSum,
            int TimeDateStamp,
            int InitialThreadHandle,
            int ThreadDataOffset,
            int StartOffset,
            Pointer Context,
            int ContextSize,
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
        Context,
        ContextSize,
      );

  int ExitProcess(
    int ExitCode,
    Pointer Context,
    int ContextSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ExitCode,
            Pointer Context,
            Uint32 ContextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ExitCode,
            Pointer Context,
            int ContextSize,
          )>()(
        ptr.ref.lpVtbl,
        ExitCode,
        Context,
        ContextSize,
      );

  int LoadModule(
    int ImageFileHandle,
    int BaseOffset,
    int ModuleSize,
    Pointer<Utf16> ModuleName,
    Pointer<Utf16> ImageName,
    int CheckSum,
    int TimeDateStamp,
    Pointer Context,
    int ContextSize,
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
            Pointer<Utf16> ModuleName,
            Pointer<Utf16> ImageName,
            Uint32 CheckSum,
            Uint32 TimeDateStamp,
            Pointer Context,
            Uint32 ContextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ImageFileHandle,
            int BaseOffset,
            int ModuleSize,
            Pointer<Utf16> ModuleName,
            Pointer<Utf16> ImageName,
            int CheckSum,
            int TimeDateStamp,
            Pointer Context,
            int ContextSize,
          )>()(
        ptr.ref.lpVtbl,
        ImageFileHandle,
        BaseOffset,
        ModuleSize,
        ModuleName,
        ImageName,
        CheckSum,
        TimeDateStamp,
        Context,
        ContextSize,
      );

  int UnloadModule(
    Pointer<Utf16> ImageBaseName,
    int BaseOffset,
    Pointer Context,
    int ContextSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ImageBaseName,
            Uint64 BaseOffset,
            Pointer Context,
            Uint32 ContextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ImageBaseName,
            int BaseOffset,
            Pointer Context,
            int ContextSize,
          )>()(
        ptr.ref.lpVtbl,
        ImageBaseName,
        BaseOffset,
        Context,
        ContextSize,
      );

  int SystemError(
    int Error,
    int Level,
    Pointer Context,
    int ContextSize,
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
            Pointer Context,
            Uint32 ContextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Error,
            int Level,
            Pointer Context,
            int ContextSize,
          )>()(
        ptr.ref.lpVtbl,
        Error,
        Level,
        Context,
        ContextSize,
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
    Pointer Context,
    int ContextSize,
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
            Pointer Context,
            Uint32 ContextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            int Argument,
            Pointer Context,
            int ContextSize,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        Argument,
        Context,
        ContextSize,
      );

  int ChangeEngineState(
    int Flags,
    int Argument,
    Pointer Context,
    int ContextSize,
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
            Pointer Context,
            Uint32 ContextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            int Argument,
            Pointer Context,
            int ContextSize,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        Argument,
        Context,
        ContextSize,
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
