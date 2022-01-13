// IDebugRegisters2.dart

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
import '../../../system/diagnostics/debug/structs.g.dart';

/// @nodoc
const IID_IDebugRegisters2 = '{1656AFA9-19C6-4E3A-97E7-5DC9160CF9C4}';

/// {@category Interface}
/// {@category com}
class IDebugRegisters2 extends IUnknown {
  // vtable begins at 3, is 26 entries long.
  IDebugRegisters2(Pointer<COMObject> ptr) : super(ptr);

  int GetNumberRegisters(
    Pointer<Uint32> Number,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetDescription(
    int Register,
    Pointer<Utf8> NameBuffer,
    int NameBufferSize,
    Pointer<Uint32> NameSize,
    Pointer<DEBUG_REGISTER_DESCRIPTION> Desc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Register,
            Pointer<Utf8> NameBuffer,
            Uint32 NameBufferSize,
            Pointer<Uint32> NameSize,
            Pointer<DEBUG_REGISTER_DESCRIPTION> Desc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Register,
            Pointer<Utf8> NameBuffer,
            int NameBufferSize,
            Pointer<Uint32> NameSize,
            Pointer<DEBUG_REGISTER_DESCRIPTION> Desc,
          )>()(
        ptr.ref.lpVtbl,
        Register,
        NameBuffer,
        NameBufferSize,
        NameSize,
        Desc,
      );

  int GetIndexByName(
    Pointer<Utf8> Name,
    Pointer<Uint32> Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Name,
            Pointer<Uint32> Index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Name,
            Pointer<Uint32> Index,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        Index,
      );

  int GetValue(
    int Register,
    Pointer<DEBUG_VALUE> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Register,
            Pointer<DEBUG_VALUE> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Register,
            Pointer<DEBUG_VALUE> Value,
          )>()(
        ptr.ref.lpVtbl,
        Register,
        Value,
      );

  int SetValue(
    int Register,
    Pointer<DEBUG_VALUE> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Register,
            Pointer<DEBUG_VALUE> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Register,
            Pointer<DEBUG_VALUE> Value,
          )>()(
        ptr.ref.lpVtbl,
        Register,
        Value,
      );

  int GetValues(
    int Count,
    Pointer<Uint32> Indices,
    int Start,
    Pointer<DEBUG_VALUE> Values,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Count,
            Pointer<Uint32> Indices,
            Uint32 Start,
            Pointer<DEBUG_VALUE> Values,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Count,
            Pointer<Uint32> Indices,
            int Start,
            Pointer<DEBUG_VALUE> Values,
          )>()(
        ptr.ref.lpVtbl,
        Count,
        Indices,
        Start,
        Values,
      );

  int SetValues(
    int Count,
    Pointer<Uint32> Indices,
    int Start,
    Pointer<DEBUG_VALUE> Values,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Count,
            Pointer<Uint32> Indices,
            Uint32 Start,
            Pointer<DEBUG_VALUE> Values,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Count,
            Pointer<Uint32> Indices,
            int Start,
            Pointer<DEBUG_VALUE> Values,
          )>()(
        ptr.ref.lpVtbl,
        Count,
        Indices,
        Start,
        Values,
      );

  int OutputRegisters(
    int OutputControl,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Flags,
      );

  int GetInstructionOffset(
    Pointer<Uint64> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int GetStackOffset(
    Pointer<Uint64> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int GetFrameOffset(
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

  int GetDescriptionWide(
    int Register,
    Pointer<Utf16> NameBuffer,
    int NameBufferSize,
    Pointer<Uint32> NameSize,
    Pointer<DEBUG_REGISTER_DESCRIPTION> Desc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Register,
            Pointer<Utf16> NameBuffer,
            Uint32 NameBufferSize,
            Pointer<Uint32> NameSize,
            Pointer<DEBUG_REGISTER_DESCRIPTION> Desc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Register,
            Pointer<Utf16> NameBuffer,
            int NameBufferSize,
            Pointer<Uint32> NameSize,
            Pointer<DEBUG_REGISTER_DESCRIPTION> Desc,
          )>()(
        ptr.ref.lpVtbl,
        Register,
        NameBuffer,
        NameBufferSize,
        NameSize,
        Desc,
      );

  int GetIndexByNameWide(
    Pointer<Utf16> Name,
    Pointer<Uint32> Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Uint32> Index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Uint32> Index,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        Index,
      );

  int GetNumberPseudoRegisters(
    Pointer<Uint32> Number,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int GetPseudoDescription(
    int Register,
    Pointer<Utf8> NameBuffer,
    int NameBufferSize,
    Pointer<Uint32> NameSize,
    Pointer<Uint64> TypeModule,
    Pointer<Uint32> TypeId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Register,
            Pointer<Utf8> NameBuffer,
            Uint32 NameBufferSize,
            Pointer<Uint32> NameSize,
            Pointer<Uint64> TypeModule,
            Pointer<Uint32> TypeId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Register,
            Pointer<Utf8> NameBuffer,
            int NameBufferSize,
            Pointer<Uint32> NameSize,
            Pointer<Uint64> TypeModule,
            Pointer<Uint32> TypeId,
          )>()(
        ptr.ref.lpVtbl,
        Register,
        NameBuffer,
        NameBufferSize,
        NameSize,
        TypeModule,
        TypeId,
      );

  int GetPseudoDescriptionWide(
    int Register,
    Pointer<Utf16> NameBuffer,
    int NameBufferSize,
    Pointer<Uint32> NameSize,
    Pointer<Uint64> TypeModule,
    Pointer<Uint32> TypeId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Register,
            Pointer<Utf16> NameBuffer,
            Uint32 NameBufferSize,
            Pointer<Uint32> NameSize,
            Pointer<Uint64> TypeModule,
            Pointer<Uint32> TypeId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Register,
            Pointer<Utf16> NameBuffer,
            int NameBufferSize,
            Pointer<Uint32> NameSize,
            Pointer<Uint64> TypeModule,
            Pointer<Uint32> TypeId,
          )>()(
        ptr.ref.lpVtbl,
        Register,
        NameBuffer,
        NameBufferSize,
        NameSize,
        TypeModule,
        TypeId,
      );

  int GetPseudoIndexByName(
    Pointer<Utf8> Name,
    Pointer<Uint32> Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Name,
            Pointer<Uint32> Index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Name,
            Pointer<Uint32> Index,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        Index,
      );

  int GetPseudoIndexByNameWide(
    Pointer<Utf16> Name,
    Pointer<Uint32> Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Uint32> Index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Uint32> Index,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        Index,
      );

  int GetPseudoValues(
    int Source,
    int Count,
    Pointer<Uint32> Indices,
    int Start,
    Pointer<DEBUG_VALUE> Values,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Source,
            Uint32 Count,
            Pointer<Uint32> Indices,
            Uint32 Start,
            Pointer<DEBUG_VALUE> Values,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Source,
            int Count,
            Pointer<Uint32> Indices,
            int Start,
            Pointer<DEBUG_VALUE> Values,
          )>()(
        ptr.ref.lpVtbl,
        Source,
        Count,
        Indices,
        Start,
        Values,
      );

  int SetPseudoValues(
    int Source,
    int Count,
    Pointer<Uint32> Indices,
    int Start,
    Pointer<DEBUG_VALUE> Values,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Source,
            Uint32 Count,
            Pointer<Uint32> Indices,
            Uint32 Start,
            Pointer<DEBUG_VALUE> Values,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Source,
            int Count,
            Pointer<Uint32> Indices,
            int Start,
            Pointer<DEBUG_VALUE> Values,
          )>()(
        ptr.ref.lpVtbl,
        Source,
        Count,
        Indices,
        Start,
        Values,
      );

  int GetValues2(
    int Source,
    int Count,
    Pointer<Uint32> Indices,
    int Start,
    Pointer<DEBUG_VALUE> Values,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Source,
            Uint32 Count,
            Pointer<Uint32> Indices,
            Uint32 Start,
            Pointer<DEBUG_VALUE> Values,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Source,
            int Count,
            Pointer<Uint32> Indices,
            int Start,
            Pointer<DEBUG_VALUE> Values,
          )>()(
        ptr.ref.lpVtbl,
        Source,
        Count,
        Indices,
        Start,
        Values,
      );

  int SetValues2(
    int Source,
    int Count,
    Pointer<Uint32> Indices,
    int Start,
    Pointer<DEBUG_VALUE> Values,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Source,
            Uint32 Count,
            Pointer<Uint32> Indices,
            Uint32 Start,
            Pointer<DEBUG_VALUE> Values,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Source,
            int Count,
            Pointer<Uint32> Indices,
            int Start,
            Pointer<DEBUG_VALUE> Values,
          )>()(
        ptr.ref.lpVtbl,
        Source,
        Count,
        Indices,
        Start,
        Values,
      );

  int OutputRegisters2(
    int OutputControl,
    int Source,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Uint32 Source,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            int Source,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Source,
        Flags,
      );

  int GetInstructionOffset2(
    int Source,
    Pointer<Uint64> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Source,
            Pointer<Uint64> Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Source,
            Pointer<Uint64> Offset,
          )>()(
        ptr.ref.lpVtbl,
        Source,
        Offset,
      );

  int GetStackOffset2(
    int Source,
    Pointer<Uint64> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Source,
            Pointer<Uint64> Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Source,
            Pointer<Uint64> Offset,
          )>()(
        ptr.ref.lpVtbl,
        Source,
        Offset,
      );

  int GetFrameOffset2(
    int Source,
    Pointer<Uint64> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Source,
            Pointer<Uint64> Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Source,
            Pointer<Uint64> Offset,
          )>()(
        ptr.ref.lpVtbl,
        Source,
        Offset,
      );
}
