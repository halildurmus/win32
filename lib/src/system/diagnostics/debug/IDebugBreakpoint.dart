// IDebugBreakpoint.dart

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
import '../../../system/diagnostics/debug/structs.g.dart';

/// @nodoc
const IID_IDebugBreakpoint = '{5BD9D474-5975-423A-B88B-65A8E7110E65}';

/// {@category Interface}
/// {@category com}
class IDebugBreakpoint extends IUnknown {
  // vtable begins at 3, is 21 entries long.
  IDebugBreakpoint(Pointer<COMObject> ptr) : super(ptr);

  int GetId(
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

  int GetType(
    Pointer<Uint32> BreakType,
    Pointer<Uint32> ProcType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> BreakType,
            Pointer<Uint32> ProcType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> BreakType,
            Pointer<Uint32> ProcType,
          )>()(
        ptr.ref.lpVtbl,
        BreakType,
        ProcType,
      );

  int GetAdder(
    Pointer<Pointer<COMObject>> Adder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Adder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Adder,
          )>()(
        ptr.ref.lpVtbl,
        Adder,
      );

  int GetFlags(
    Pointer<Uint32> Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Flags,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
      );

  int AddFlags(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int RemoveFlags(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int SetFlags(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int GetOffset(
    Pointer<Uint64> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int SetOffset(
    int Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int GetDataParameters(
    Pointer<Uint32> Size,
    Pointer<Uint32> AccessType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Size,
            Pointer<Uint32> AccessType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Size,
            Pointer<Uint32> AccessType,
          )>()(
        ptr.ref.lpVtbl,
        Size,
        AccessType,
      );

  int SetDataParameters(
    int Size,
    int AccessType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Size,
            Uint32 AccessType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Size,
            int AccessType,
          )>()(
        ptr.ref.lpVtbl,
        Size,
        AccessType,
      );

  int GetPassCount(
    Pointer<Uint32> Count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int SetPassCount(
    int Count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Count,
          )>()(
        ptr.ref.lpVtbl,
        Count,
      );

  int GetCurrentPassCount(
    Pointer<Uint32> Count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int GetMatchThreadId(
    Pointer<Uint32> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int SetMatchThreadId(
    int Thread,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Thread,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Thread,
          )>()(
        ptr.ref.lpVtbl,
        Thread,
      );

  int GetCommand(
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> CommandSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> CommandSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> CommandSize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        CommandSize,
      );

  int SetCommand(
    Pointer<Utf8> Command,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Command,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Command,
          )>()(
        ptr.ref.lpVtbl,
        Command,
      );

  int GetOffsetExpression(
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> ExpressionSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> ExpressionSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> ExpressionSize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        ExpressionSize,
      );

  int SetOffsetExpression(
    Pointer<Utf8> Expression,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Expression,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Expression,
          )>()(
        ptr.ref.lpVtbl,
        Expression,
      );

  int GetParameters(
    Pointer<DEBUG_BREAKPOINT_PARAMETERS> Params,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEBUG_BREAKPOINT_PARAMETERS> Params,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEBUG_BREAKPOINT_PARAMETERS> Params,
          )>()(
        ptr.ref.lpVtbl,
        Params,
      );
}
