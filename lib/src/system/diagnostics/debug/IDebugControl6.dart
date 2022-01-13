// IDebugControl6.dart

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
import '../../../system/diagnostics/debug/IDebugBreakpoint.dart';
import '../../../foundation/callbacks.g.dart';
import '../../../system/diagnostics/debug/IDebugBreakpoint2.dart';
import '../../../system/diagnostics/debug/IDebugBreakpoint3.dart';

/// @nodoc
const IID_IDebugControl6 = '{BC0D583F-126D-43A1-9CC4-A860AB1D537B}';

/// {@category Interface}
/// {@category com}
class IDebugControl6 extends IUnknown {
  // vtable begins at 3, is 173 entries long.
  IDebugControl6(Pointer<COMObject> ptr) : super(ptr);

  int GetInterrupt() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int SetInterrupt(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetInterruptTimeout(
    Pointer<Uint32> Seconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Seconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Seconds,
          )>()(
        ptr.ref.lpVtbl,
        Seconds,
      );

  int SetInterruptTimeout(
    int Seconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Seconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Seconds,
          )>()(
        ptr.ref.lpVtbl,
        Seconds,
      );

  int GetLogFile(
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> FileSize,
    Pointer<Int32> Append,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> FileSize,
            Pointer<Int32> Append,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> FileSize,
            Pointer<Int32> Append,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        FileSize,
        Append,
      );

  int OpenLogFile(
    Pointer<Utf8> File,
    int Append,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> File,
            Int32 Append,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> File,
            int Append,
          )>()(
        ptr.ref.lpVtbl,
        File,
        Append,
      );

  int CloseLogFile() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int GetLogMask(
    Pointer<Uint32> Mask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int SetLogMask(
    int Mask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int Input(
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> InputSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> InputSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> InputSize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        InputSize,
      );

  int ReturnInput(
    Pointer<Utf8> Buffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Buffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Buffer,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
      );

  int Output(
    int Mask,
    Pointer<Utf8> Format,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Mask,
            Pointer<Utf8> Format,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Mask,
            Pointer<Utf8> Format,
          )>()(
        ptr.ref.lpVtbl,
        Mask,
        Format,
      );

  int OutputVaList(
    int Mask,
    Pointer<Utf8> Format,
    Pointer<Int8> Args,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Mask,
            Pointer<Utf8> Format,
            Pointer<Int8> Args,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Mask,
            Pointer<Utf8> Format,
            Pointer<Int8> Args,
          )>()(
        ptr.ref.lpVtbl,
        Mask,
        Format,
        Args,
      );

  int ControlledOutput(
    int OutputControl,
    int Mask,
    Pointer<Utf8> Format,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Uint32 Mask,
            Pointer<Utf8> Format,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            int Mask,
            Pointer<Utf8> Format,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Mask,
        Format,
      );

  int ControlledOutputVaList(
    int OutputControl,
    int Mask,
    Pointer<Utf8> Format,
    Pointer<Int8> Args,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Uint32 Mask,
            Pointer<Utf8> Format,
            Pointer<Int8> Args,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            int Mask,
            Pointer<Utf8> Format,
            Pointer<Int8> Args,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Mask,
        Format,
        Args,
      );

  int OutputPrompt(
    int OutputControl,
    Pointer<Utf8> Format,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Pointer<Utf8> Format,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            Pointer<Utf8> Format,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Format,
      );

  int OutputPromptVaList(
    int OutputControl,
    Pointer<Utf8> Format,
    Pointer<Int8> Args,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Pointer<Utf8> Format,
            Pointer<Int8> Args,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            Pointer<Utf8> Format,
            Pointer<Int8> Args,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Format,
        Args,
      );

  int GetPromptText(
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> TextSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> TextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> TextSize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        TextSize,
      );

  int OutputCurrentState(
    int OutputControl,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
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

  int OutputVersionInformation(
    int OutputControl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
      );

  int GetNotifyEventHandle(
    Pointer<Uint64> $Handle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
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

  int SetNotifyEventHandle(
    int $Handle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
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

  int Assemble(
    int Offset,
    Pointer<Utf8> Instr,
    Pointer<Uint64> EndOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Pointer<Utf8> Instr,
            Pointer<Uint64> EndOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            Pointer<Utf8> Instr,
            Pointer<Uint64> EndOffset,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Instr,
        EndOffset,
      );

  int Disassemble(
    int Offset,
    int Flags,
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> DisassemblySize,
    Pointer<Uint64> EndOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Uint32 Flags,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> DisassemblySize,
            Pointer<Uint64> EndOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            int Flags,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> DisassemblySize,
            Pointer<Uint64> EndOffset,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Flags,
        Buffer,
        BufferSize,
        DisassemblySize,
        EndOffset,
      );

  int GetDisassembleEffectiveOffset(
    Pointer<Uint64> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
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

  int OutputDisassembly(
    int OutputControl,
    int Offset,
    int Flags,
    Pointer<Uint64> EndOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Uint64 Offset,
            Uint32 Flags,
            Pointer<Uint64> EndOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            int Offset,
            int Flags,
            Pointer<Uint64> EndOffset,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Offset,
        Flags,
        EndOffset,
      );

  int OutputDisassemblyLines(
    int OutputControl,
    int PreviousLines,
    int TotalLines,
    int Offset,
    int Flags,
    Pointer<Uint32> OffsetLine,
    Pointer<Uint64> StartOffset,
    Pointer<Uint64> EndOffset,
    Pointer<Uint64> LineOffsets,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Uint32 PreviousLines,
            Uint32 TotalLines,
            Uint64 Offset,
            Uint32 Flags,
            Pointer<Uint32> OffsetLine,
            Pointer<Uint64> StartOffset,
            Pointer<Uint64> EndOffset,
            Pointer<Uint64> LineOffsets,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            int PreviousLines,
            int TotalLines,
            int Offset,
            int Flags,
            Pointer<Uint32> OffsetLine,
            Pointer<Uint64> StartOffset,
            Pointer<Uint64> EndOffset,
            Pointer<Uint64> LineOffsets,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        PreviousLines,
        TotalLines,
        Offset,
        Flags,
        OffsetLine,
        StartOffset,
        EndOffset,
        LineOffsets,
      );

  int GetNearInstruction(
    int Offset,
    int Delta,
    Pointer<Uint64> NearOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Int32 Delta,
            Pointer<Uint64> NearOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            int Delta,
            Pointer<Uint64> NearOffset,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Delta,
        NearOffset,
      );

  int GetStackTrace(
    int FrameOffset,
    int StackOffset,
    int InstructionOffset,
    Pointer<DEBUG_STACK_FRAME> Frames,
    int FramesSize,
    Pointer<Uint32> FramesFilled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 FrameOffset,
            Uint64 StackOffset,
            Uint64 InstructionOffset,
            Pointer<DEBUG_STACK_FRAME> Frames,
            Uint32 FramesSize,
            Pointer<Uint32> FramesFilled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int FrameOffset,
            int StackOffset,
            int InstructionOffset,
            Pointer<DEBUG_STACK_FRAME> Frames,
            int FramesSize,
            Pointer<Uint32> FramesFilled,
          )>()(
        ptr.ref.lpVtbl,
        FrameOffset,
        StackOffset,
        InstructionOffset,
        Frames,
        FramesSize,
        FramesFilled,
      );

  int GetReturnOffset(
    Pointer<Uint64> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
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

  int OutputStackTrace(
    int OutputControl,
    Pointer<DEBUG_STACK_FRAME> Frames,
    int FramesSize,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Pointer<DEBUG_STACK_FRAME> Frames,
            Uint32 FramesSize,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            Pointer<DEBUG_STACK_FRAME> Frames,
            int FramesSize,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Frames,
        FramesSize,
        Flags,
      );

  int GetDebuggeeType(
    Pointer<Uint32> Class,
    Pointer<Uint32> Qualifier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Class,
            Pointer<Uint32> Qualifier,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Class,
            Pointer<Uint32> Qualifier,
          )>()(
        ptr.ref.lpVtbl,
        Class,
        Qualifier,
      );

  int GetActualProcessorType(
    Pointer<Uint32> Type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Type,
          )>()(
        ptr.ref.lpVtbl,
        Type,
      );

  int GetExecutingProcessorType(
    Pointer<Uint32> Type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Type,
          )>()(
        ptr.ref.lpVtbl,
        Type,
      );

  int GetNumberPossibleExecutingProcessorTypes(
    Pointer<Uint32> Number,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
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

  int GetPossibleExecutingProcessorTypes(
    int Start,
    int Count,
    Pointer<Uint32> Types,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Start,
            Uint32 Count,
            Pointer<Uint32> Types,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Start,
            int Count,
            Pointer<Uint32> Types,
          )>()(
        ptr.ref.lpVtbl,
        Start,
        Count,
        Types,
      );

  int GetNumberProcessors(
    Pointer<Uint32> Number,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
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

  int GetSystemVersion(
    Pointer<Uint32> PlatformId,
    Pointer<Uint32> Major,
    Pointer<Uint32> Minor,
    Pointer<Utf8> ServicePackString,
    int ServicePackStringSize,
    Pointer<Uint32> ServicePackStringUsed,
    Pointer<Uint32> ServicePackNumber,
    Pointer<Utf8> BuildString,
    int BuildStringSize,
    Pointer<Uint32> BuildStringUsed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> PlatformId,
            Pointer<Uint32> Major,
            Pointer<Uint32> Minor,
            Pointer<Utf8> ServicePackString,
            Uint32 ServicePackStringSize,
            Pointer<Uint32> ServicePackStringUsed,
            Pointer<Uint32> ServicePackNumber,
            Pointer<Utf8> BuildString,
            Uint32 BuildStringSize,
            Pointer<Uint32> BuildStringUsed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> PlatformId,
            Pointer<Uint32> Major,
            Pointer<Uint32> Minor,
            Pointer<Utf8> ServicePackString,
            int ServicePackStringSize,
            Pointer<Uint32> ServicePackStringUsed,
            Pointer<Uint32> ServicePackNumber,
            Pointer<Utf8> BuildString,
            int BuildStringSize,
            Pointer<Uint32> BuildStringUsed,
          )>()(
        ptr.ref.lpVtbl,
        PlatformId,
        Major,
        Minor,
        ServicePackString,
        ServicePackStringSize,
        ServicePackStringUsed,
        ServicePackNumber,
        BuildString,
        BuildStringSize,
        BuildStringUsed,
      );

  int GetPageSize(
    Pointer<Uint32> Size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Size,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Size,
          )>()(
        ptr.ref.lpVtbl,
        Size,
      );

  int IsPointer64Bit() => ptr.ref.lpVtbl.value
          .elementAt(42)
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

  int ReadBugCheckData(
    Pointer<Uint32> Code,
    Pointer<Uint64> Arg1,
    Pointer<Uint64> Arg2,
    Pointer<Uint64> Arg3,
    Pointer<Uint64> Arg4,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Code,
            Pointer<Uint64> Arg1,
            Pointer<Uint64> Arg2,
            Pointer<Uint64> Arg3,
            Pointer<Uint64> Arg4,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Code,
            Pointer<Uint64> Arg1,
            Pointer<Uint64> Arg2,
            Pointer<Uint64> Arg3,
            Pointer<Uint64> Arg4,
          )>()(
        ptr.ref.lpVtbl,
        Code,
        Arg1,
        Arg2,
        Arg3,
        Arg4,
      );

  int GetNumberSupportedProcessorTypes(
    Pointer<Uint32> Number,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
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

  int GetSupportedProcessorTypes(
    int Start,
    int Count,
    Pointer<Uint32> Types,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Start,
            Uint32 Count,
            Pointer<Uint32> Types,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Start,
            int Count,
            Pointer<Uint32> Types,
          )>()(
        ptr.ref.lpVtbl,
        Start,
        Count,
        Types,
      );

  int GetProcessorTypeNames(
    int Type,
    Pointer<Utf8> FullNameBuffer,
    int FullNameBufferSize,
    Pointer<Uint32> FullNameSize,
    Pointer<Utf8> AbbrevNameBuffer,
    int AbbrevNameBufferSize,
    Pointer<Uint32> AbbrevNameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Type,
            Pointer<Utf8> FullNameBuffer,
            Uint32 FullNameBufferSize,
            Pointer<Uint32> FullNameSize,
            Pointer<Utf8> AbbrevNameBuffer,
            Uint32 AbbrevNameBufferSize,
            Pointer<Uint32> AbbrevNameSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
            Pointer<Utf8> FullNameBuffer,
            int FullNameBufferSize,
            Pointer<Uint32> FullNameSize,
            Pointer<Utf8> AbbrevNameBuffer,
            int AbbrevNameBufferSize,
            Pointer<Uint32> AbbrevNameSize,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        FullNameBuffer,
        FullNameBufferSize,
        FullNameSize,
        AbbrevNameBuffer,
        AbbrevNameBufferSize,
        AbbrevNameSize,
      );

  int GetEffectiveProcessorType(
    Pointer<Uint32> Type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Type,
          )>()(
        ptr.ref.lpVtbl,
        Type,
      );

  int SetEffectiveProcessorType(
    int Type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
          )>()(
        ptr.ref.lpVtbl,
        Type,
      );

  int GetExecutionStatus(
    Pointer<Uint32> Status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Status,
          )>()(
        ptr.ref.lpVtbl,
        Status,
      );

  int SetExecutionStatus(
    int Status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
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

  int GetCodeLevel(
    Pointer<Uint32> Level,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Level,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Level,
          )>()(
        ptr.ref.lpVtbl,
        Level,
      );

  int SetCodeLevel(
    int Level,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Level,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Level,
          )>()(
        ptr.ref.lpVtbl,
        Level,
      );

  int GetEngineOptions(
    Pointer<Uint32> Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
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

  int AddEngineOptions(
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
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

  int RemoveEngineOptions(
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
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

  int SetEngineOptions(
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
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

  int GetSystemErrorControl(
    Pointer<Uint32> OutputLevel,
    Pointer<Uint32> BreakLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> OutputLevel,
            Pointer<Uint32> BreakLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> OutputLevel,
            Pointer<Uint32> BreakLevel,
          )>()(
        ptr.ref.lpVtbl,
        OutputLevel,
        BreakLevel,
      );

  int SetSystemErrorControl(
    int OutputLevel,
    int BreakLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputLevel,
            Uint32 BreakLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputLevel,
            int BreakLevel,
          )>()(
        ptr.ref.lpVtbl,
        OutputLevel,
        BreakLevel,
      );

  int GetTextMacro(
    int Slot,
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> MacroSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Slot,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> MacroSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Slot,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> MacroSize,
          )>()(
        ptr.ref.lpVtbl,
        Slot,
        Buffer,
        BufferSize,
        MacroSize,
      );

  int SetTextMacro(
    int Slot,
    Pointer<Utf8> Macro,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Slot,
            Pointer<Utf8> Macro,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Slot,
            Pointer<Utf8> Macro,
          )>()(
        ptr.ref.lpVtbl,
        Slot,
        Macro,
      );

  int GetRadix(
    Pointer<Uint32> Radix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Radix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Radix,
          )>()(
        ptr.ref.lpVtbl,
        Radix,
      );

  int SetRadix(
    int Radix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Radix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Radix,
          )>()(
        ptr.ref.lpVtbl,
        Radix,
      );

  int Evaluate(
    Pointer<Utf8> Expression,
    int DesiredType,
    Pointer<DEBUG_VALUE> Value,
    Pointer<Uint32> RemainderIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Expression,
            Uint32 DesiredType,
            Pointer<DEBUG_VALUE> Value,
            Pointer<Uint32> RemainderIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Expression,
            int DesiredType,
            Pointer<DEBUG_VALUE> Value,
            Pointer<Uint32> RemainderIndex,
          )>()(
        ptr.ref.lpVtbl,
        Expression,
        DesiredType,
        Value,
        RemainderIndex,
      );

  int CoerceValue(
    Pointer<DEBUG_VALUE> In,
    int OutType,
    Pointer<DEBUG_VALUE> Out,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEBUG_VALUE> In,
            Uint32 OutType,
            Pointer<DEBUG_VALUE> Out,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEBUG_VALUE> In,
            int OutType,
            Pointer<DEBUG_VALUE> Out,
          )>()(
        ptr.ref.lpVtbl,
        In,
        OutType,
        Out,
      );

  int CoerceValues(
    int Count,
    Pointer<DEBUG_VALUE> In,
    Pointer<Uint32> OutTypes,
    Pointer<DEBUG_VALUE> Out,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Count,
            Pointer<DEBUG_VALUE> In,
            Pointer<Uint32> OutTypes,
            Pointer<DEBUG_VALUE> Out,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Count,
            Pointer<DEBUG_VALUE> In,
            Pointer<Uint32> OutTypes,
            Pointer<DEBUG_VALUE> Out,
          )>()(
        ptr.ref.lpVtbl,
        Count,
        In,
        OutTypes,
        Out,
      );

  int Execute(
    int OutputControl,
    Pointer<Utf8> Command,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(66)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Pointer<Utf8> Command,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            Pointer<Utf8> Command,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Command,
        Flags,
      );

  int ExecuteCommandFile(
    int OutputControl,
    Pointer<Utf8> CommandFile,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Pointer<Utf8> CommandFile,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            Pointer<Utf8> CommandFile,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        CommandFile,
        Flags,
      );

  int GetNumberBreakpoints(
    Pointer<Uint32> Number,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(68)
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

  int GetBreakpointByIndex(
    int Index,
    Pointer<Pointer<COMObject>> Bp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(69)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Pointer<COMObject>> Bp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Pointer<COMObject>> Bp,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Bp,
      );

  int GetBreakpointById(
    int Id,
    Pointer<Pointer<COMObject>> Bp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(70)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Id,
            Pointer<Pointer<COMObject>> Bp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Id,
            Pointer<Pointer<COMObject>> Bp,
          )>()(
        ptr.ref.lpVtbl,
        Id,
        Bp,
      );

  int GetBreakpointParameters(
    int Count,
    Pointer<Uint32> Ids,
    int Start,
    Pointer<DEBUG_BREAKPOINT_PARAMETERS> Params,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(71)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Count,
            Pointer<Uint32> Ids,
            Uint32 Start,
            Pointer<DEBUG_BREAKPOINT_PARAMETERS> Params,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Count,
            Pointer<Uint32> Ids,
            int Start,
            Pointer<DEBUG_BREAKPOINT_PARAMETERS> Params,
          )>()(
        ptr.ref.lpVtbl,
        Count,
        Ids,
        Start,
        Params,
      );

  int AddBreakpoint(
    int Type,
    int DesiredId,
    Pointer<Pointer<COMObject>> Bp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(72)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Type,
            Uint32 DesiredId,
            Pointer<Pointer<COMObject>> Bp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
            int DesiredId,
            Pointer<Pointer<COMObject>> Bp,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        DesiredId,
        Bp,
      );

  int RemoveBreakpoint(
    Pointer<COMObject> Bp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(73)
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

  int AddExtension(
    Pointer<Utf8> Path,
    int Flags,
    Pointer<Uint64> $Handle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(74)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Path,
            Uint32 Flags,
            Pointer<Uint64> $Handle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Path,
            int Flags,
            Pointer<Uint64> $Handle,
          )>()(
        ptr.ref.lpVtbl,
        Path,
        Flags,
        $Handle,
      );

  int RemoveExtension(
    int $Handle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(75)
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

  int GetExtensionByPath(
    Pointer<Utf8> Path,
    Pointer<Uint64> $Handle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(76)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Path,
            Pointer<Uint64> $Handle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Path,
            Pointer<Uint64> $Handle,
          )>()(
        ptr.ref.lpVtbl,
        Path,
        $Handle,
      );

  int CallExtension(
    int $Handle,
    Pointer<Utf8> Function,
    Pointer<Utf8> Arguments,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(77)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 $Handle,
            Pointer<Utf8> Function,
            Pointer<Utf8> Arguments,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int $Handle,
            Pointer<Utf8> Function,
            Pointer<Utf8> Arguments,
          )>()(
        ptr.ref.lpVtbl,
        $Handle,
        Function,
        Arguments,
      );

  int GetExtensionFunction(
    int $Handle,
    Pointer<Utf8> FuncName,
    Pointer<Pointer> Function,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(78)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 $Handle,
            Pointer<Utf8> FuncName,
            Pointer<Pointer> Function,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int $Handle,
            Pointer<Utf8> FuncName,
            Pointer<Pointer> Function,
          )>()(
        ptr.ref.lpVtbl,
        $Handle,
        FuncName,
        Function,
      );

  int GetWindbgExtensionApis32(
    Pointer<WINDBG_EXTENSION_APIS32> Api,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(79)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WINDBG_EXTENSION_APIS32> Api,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WINDBG_EXTENSION_APIS32> Api,
          )>()(
        ptr.ref.lpVtbl,
        Api,
      );

  int GetWindbgExtensionApis64(
    Pointer<WINDBG_EXTENSION_APIS64> Api,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(80)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WINDBG_EXTENSION_APIS64> Api,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WINDBG_EXTENSION_APIS64> Api,
          )>()(
        ptr.ref.lpVtbl,
        Api,
      );

  int GetNumberEventFilters(
    Pointer<Uint32> SpecificEvents,
    Pointer<Uint32> SpecificExceptions,
    Pointer<Uint32> ArbitraryExceptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(81)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> SpecificEvents,
            Pointer<Uint32> SpecificExceptions,
            Pointer<Uint32> ArbitraryExceptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> SpecificEvents,
            Pointer<Uint32> SpecificExceptions,
            Pointer<Uint32> ArbitraryExceptions,
          )>()(
        ptr.ref.lpVtbl,
        SpecificEvents,
        SpecificExceptions,
        ArbitraryExceptions,
      );

  int GetEventFilterText(
    int Index,
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> TextSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(82)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> TextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> TextSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Buffer,
        BufferSize,
        TextSize,
      );

  int GetEventFilterCommand(
    int Index,
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> CommandSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(83)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> CommandSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> CommandSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Buffer,
        BufferSize,
        CommandSize,
      );

  int SetEventFilterCommand(
    int Index,
    Pointer<Utf8> Command,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(84)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf8> Command,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf8> Command,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Command,
      );

  int GetSpecificFilterParameters(
    int Start,
    int Count,
    Pointer<DEBUG_SPECIFIC_FILTER_PARAMETERS> Params,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(85)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Start,
            Uint32 Count,
            Pointer<DEBUG_SPECIFIC_FILTER_PARAMETERS> Params,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Start,
            int Count,
            Pointer<DEBUG_SPECIFIC_FILTER_PARAMETERS> Params,
          )>()(
        ptr.ref.lpVtbl,
        Start,
        Count,
        Params,
      );

  int SetSpecificFilterParameters(
    int Start,
    int Count,
    Pointer<DEBUG_SPECIFIC_FILTER_PARAMETERS> Params,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(86)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Start,
            Uint32 Count,
            Pointer<DEBUG_SPECIFIC_FILTER_PARAMETERS> Params,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Start,
            int Count,
            Pointer<DEBUG_SPECIFIC_FILTER_PARAMETERS> Params,
          )>()(
        ptr.ref.lpVtbl,
        Start,
        Count,
        Params,
      );

  int GetSpecificFilterArgument(
    int Index,
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> ArgumentSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(87)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> ArgumentSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> ArgumentSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Buffer,
        BufferSize,
        ArgumentSize,
      );

  int SetSpecificFilterArgument(
    int Index,
    Pointer<Utf8> Argument,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(88)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf8> Argument,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf8> Argument,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Argument,
      );

  int GetExceptionFilterParameters(
    int Count,
    Pointer<Uint32> Codes,
    int Start,
    Pointer<DEBUG_EXCEPTION_FILTER_PARAMETERS> Params,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(89)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Count,
            Pointer<Uint32> Codes,
            Uint32 Start,
            Pointer<DEBUG_EXCEPTION_FILTER_PARAMETERS> Params,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Count,
            Pointer<Uint32> Codes,
            int Start,
            Pointer<DEBUG_EXCEPTION_FILTER_PARAMETERS> Params,
          )>()(
        ptr.ref.lpVtbl,
        Count,
        Codes,
        Start,
        Params,
      );

  int SetExceptionFilterParameters(
    int Count,
    Pointer<DEBUG_EXCEPTION_FILTER_PARAMETERS> Params,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(90)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Count,
            Pointer<DEBUG_EXCEPTION_FILTER_PARAMETERS> Params,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Count,
            Pointer<DEBUG_EXCEPTION_FILTER_PARAMETERS> Params,
          )>()(
        ptr.ref.lpVtbl,
        Count,
        Params,
      );

  int GetExceptionFilterSecondCommand(
    int Index,
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> CommandSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(91)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> CommandSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> CommandSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Buffer,
        BufferSize,
        CommandSize,
      );

  int SetExceptionFilterSecondCommand(
    int Index,
    Pointer<Utf8> Command,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(92)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf8> Command,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf8> Command,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Command,
      );

  int WaitForEvent(
    int Flags,
    int Timeout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(93)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
            Uint32 Timeout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            int Timeout,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        Timeout,
      );

  int GetLastEventInformation(
    Pointer<Uint32> Type,
    Pointer<Uint32> ProcessId,
    Pointer<Uint32> ThreadId,
    Pointer ExtraInformation,
    int ExtraInformationSize,
    Pointer<Uint32> ExtraInformationUsed,
    Pointer<Utf8> Description,
    int DescriptionSize,
    Pointer<Uint32> DescriptionUsed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(94)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Type,
            Pointer<Uint32> ProcessId,
            Pointer<Uint32> ThreadId,
            Pointer ExtraInformation,
            Uint32 ExtraInformationSize,
            Pointer<Uint32> ExtraInformationUsed,
            Pointer<Utf8> Description,
            Uint32 DescriptionSize,
            Pointer<Uint32> DescriptionUsed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Type,
            Pointer<Uint32> ProcessId,
            Pointer<Uint32> ThreadId,
            Pointer ExtraInformation,
            int ExtraInformationSize,
            Pointer<Uint32> ExtraInformationUsed,
            Pointer<Utf8> Description,
            int DescriptionSize,
            Pointer<Uint32> DescriptionUsed,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        ProcessId,
        ThreadId,
        ExtraInformation,
        ExtraInformationSize,
        ExtraInformationUsed,
        Description,
        DescriptionSize,
        DescriptionUsed,
      );

  int GetCurrentTimeDate(
    Pointer<Uint32> TimeDate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(95)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> TimeDate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> TimeDate,
          )>()(
        ptr.ref.lpVtbl,
        TimeDate,
      );

  int GetCurrentSystemUpTime(
    Pointer<Uint32> UpTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(96)
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

  int GetDumpFormatFlags(
    Pointer<Uint32> FormatFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(97)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> FormatFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> FormatFlags,
          )>()(
        ptr.ref.lpVtbl,
        FormatFlags,
      );

  int GetNumberTextReplacements(
    Pointer<Uint32> NumRepl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(98)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> NumRepl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> NumRepl,
          )>()(
        ptr.ref.lpVtbl,
        NumRepl,
      );

  int GetTextReplacement(
    Pointer<Utf8> SrcText,
    int Index,
    Pointer<Utf8> SrcBuffer,
    int SrcBufferSize,
    Pointer<Uint32> SrcSize,
    Pointer<Utf8> DstBuffer,
    int DstBufferSize,
    Pointer<Uint32> DstSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(99)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> SrcText,
            Uint32 Index,
            Pointer<Utf8> SrcBuffer,
            Uint32 SrcBufferSize,
            Pointer<Uint32> SrcSize,
            Pointer<Utf8> DstBuffer,
            Uint32 DstBufferSize,
            Pointer<Uint32> DstSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> SrcText,
            int Index,
            Pointer<Utf8> SrcBuffer,
            int SrcBufferSize,
            Pointer<Uint32> SrcSize,
            Pointer<Utf8> DstBuffer,
            int DstBufferSize,
            Pointer<Uint32> DstSize,
          )>()(
        ptr.ref.lpVtbl,
        SrcText,
        Index,
        SrcBuffer,
        SrcBufferSize,
        SrcSize,
        DstBuffer,
        DstBufferSize,
        DstSize,
      );

  int SetTextReplacement(
    Pointer<Utf8> SrcText,
    Pointer<Utf8> DstText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(100)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> SrcText,
            Pointer<Utf8> DstText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> SrcText,
            Pointer<Utf8> DstText,
          )>()(
        ptr.ref.lpVtbl,
        SrcText,
        DstText,
      );

  int RemoveTextReplacements() => ptr.ref.lpVtbl.value
          .elementAt(101)
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

  int OutputTextReplacements(
    int OutputControl,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(102)
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

  int GetAssemblyOptions(
    Pointer<Uint32> Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(103)
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

  int AddAssemblyOptions(
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(104)
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

  int RemoveAssemblyOptions(
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(105)
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

  int SetAssemblyOptions(
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(106)
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

  int GetExpressionSyntax(
    Pointer<Uint32> Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(107)
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

  int SetExpressionSyntax(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(108)
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

  int SetExpressionSyntaxByName(
    Pointer<Utf8> AbbrevName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(109)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> AbbrevName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> AbbrevName,
          )>()(
        ptr.ref.lpVtbl,
        AbbrevName,
      );

  int GetNumberExpressionSyntaxes(
    Pointer<Uint32> Number,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(110)
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

  int GetExpressionSyntaxNames(
    int Index,
    Pointer<Utf8> FullNameBuffer,
    int FullNameBufferSize,
    Pointer<Uint32> FullNameSize,
    Pointer<Utf8> AbbrevNameBuffer,
    int AbbrevNameBufferSize,
    Pointer<Uint32> AbbrevNameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(111)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf8> FullNameBuffer,
            Uint32 FullNameBufferSize,
            Pointer<Uint32> FullNameSize,
            Pointer<Utf8> AbbrevNameBuffer,
            Uint32 AbbrevNameBufferSize,
            Pointer<Uint32> AbbrevNameSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf8> FullNameBuffer,
            int FullNameBufferSize,
            Pointer<Uint32> FullNameSize,
            Pointer<Utf8> AbbrevNameBuffer,
            int AbbrevNameBufferSize,
            Pointer<Uint32> AbbrevNameSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        FullNameBuffer,
        FullNameBufferSize,
        FullNameSize,
        AbbrevNameBuffer,
        AbbrevNameBufferSize,
        AbbrevNameSize,
      );

  int GetNumberEvents(
    Pointer<Uint32> Events,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(112)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Events,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Events,
          )>()(
        ptr.ref.lpVtbl,
        Events,
      );

  int GetEventIndexDescription(
    int Index,
    int Which,
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> DescSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(113)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Uint32 Which,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> DescSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            int Which,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> DescSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Which,
        Buffer,
        BufferSize,
        DescSize,
      );

  int GetCurrentEventIndex(
    Pointer<Uint32> Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(114)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Index,
          )>()(
        ptr.ref.lpVtbl,
        Index,
      );

  int SetNextEventIndex(
    int Relation,
    int Value,
    Pointer<Uint32> NextIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(115)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Relation,
            Uint32 Value,
            Pointer<Uint32> NextIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Relation,
            int Value,
            Pointer<Uint32> NextIndex,
          )>()(
        ptr.ref.lpVtbl,
        Relation,
        Value,
        NextIndex,
      );

  int GetLogFileWide(
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> FileSize,
    Pointer<Int32> Append,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(116)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> FileSize,
            Pointer<Int32> Append,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> FileSize,
            Pointer<Int32> Append,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        FileSize,
        Append,
      );

  int OpenLogFileWide(
    Pointer<Utf16> File,
    int Append,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(117)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> File,
            Int32 Append,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> File,
            int Append,
          )>()(
        ptr.ref.lpVtbl,
        File,
        Append,
      );

  int InputWide(
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> InputSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(118)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> InputSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> InputSize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        InputSize,
      );

  int ReturnInputWide(
    Pointer<Utf16> Buffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(119)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Buffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Buffer,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
      );

  int OutputWide(
    int Mask,
    Pointer<Utf16> Format,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(120)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Mask,
            Pointer<Utf16> Format,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Mask,
            Pointer<Utf16> Format,
          )>()(
        ptr.ref.lpVtbl,
        Mask,
        Format,
      );

  int OutputVaListWide(
    int Mask,
    Pointer<Utf16> Format,
    Pointer<Int8> Args,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(121)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Mask,
            Pointer<Utf16> Format,
            Pointer<Int8> Args,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Mask,
            Pointer<Utf16> Format,
            Pointer<Int8> Args,
          )>()(
        ptr.ref.lpVtbl,
        Mask,
        Format,
        Args,
      );

  int ControlledOutputWide(
    int OutputControl,
    int Mask,
    Pointer<Utf16> Format,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(122)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Uint32 Mask,
            Pointer<Utf16> Format,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            int Mask,
            Pointer<Utf16> Format,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Mask,
        Format,
      );

  int ControlledOutputVaListWide(
    int OutputControl,
    int Mask,
    Pointer<Utf16> Format,
    Pointer<Int8> Args,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(123)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Uint32 Mask,
            Pointer<Utf16> Format,
            Pointer<Int8> Args,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            int Mask,
            Pointer<Utf16> Format,
            Pointer<Int8> Args,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Mask,
        Format,
        Args,
      );

  int OutputPromptWide(
    int OutputControl,
    Pointer<Utf16> Format,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(124)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Pointer<Utf16> Format,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            Pointer<Utf16> Format,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Format,
      );

  int OutputPromptVaListWide(
    int OutputControl,
    Pointer<Utf16> Format,
    Pointer<Int8> Args,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(125)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Pointer<Utf16> Format,
            Pointer<Int8> Args,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            Pointer<Utf16> Format,
            Pointer<Int8> Args,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Format,
        Args,
      );

  int GetPromptTextWide(
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> TextSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(126)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> TextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> TextSize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        TextSize,
      );

  int AssembleWide(
    int Offset,
    Pointer<Utf16> Instr,
    Pointer<Uint64> EndOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(127)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Pointer<Utf16> Instr,
            Pointer<Uint64> EndOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            Pointer<Utf16> Instr,
            Pointer<Uint64> EndOffset,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Instr,
        EndOffset,
      );

  int DisassembleWide(
    int Offset,
    int Flags,
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> DisassemblySize,
    Pointer<Uint64> EndOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(128)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Uint32 Flags,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> DisassemblySize,
            Pointer<Uint64> EndOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            int Flags,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> DisassemblySize,
            Pointer<Uint64> EndOffset,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Flags,
        Buffer,
        BufferSize,
        DisassemblySize,
        EndOffset,
      );

  int GetProcessorTypeNamesWide(
    int Type,
    Pointer<Utf16> FullNameBuffer,
    int FullNameBufferSize,
    Pointer<Uint32> FullNameSize,
    Pointer<Utf16> AbbrevNameBuffer,
    int AbbrevNameBufferSize,
    Pointer<Uint32> AbbrevNameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(129)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Type,
            Pointer<Utf16> FullNameBuffer,
            Uint32 FullNameBufferSize,
            Pointer<Uint32> FullNameSize,
            Pointer<Utf16> AbbrevNameBuffer,
            Uint32 AbbrevNameBufferSize,
            Pointer<Uint32> AbbrevNameSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
            Pointer<Utf16> FullNameBuffer,
            int FullNameBufferSize,
            Pointer<Uint32> FullNameSize,
            Pointer<Utf16> AbbrevNameBuffer,
            int AbbrevNameBufferSize,
            Pointer<Uint32> AbbrevNameSize,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        FullNameBuffer,
        FullNameBufferSize,
        FullNameSize,
        AbbrevNameBuffer,
        AbbrevNameBufferSize,
        AbbrevNameSize,
      );

  int GetTextMacroWide(
    int Slot,
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> MacroSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(130)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Slot,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> MacroSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Slot,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> MacroSize,
          )>()(
        ptr.ref.lpVtbl,
        Slot,
        Buffer,
        BufferSize,
        MacroSize,
      );

  int SetTextMacroWide(
    int Slot,
    Pointer<Utf16> Macro,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(131)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Slot,
            Pointer<Utf16> Macro,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Slot,
            Pointer<Utf16> Macro,
          )>()(
        ptr.ref.lpVtbl,
        Slot,
        Macro,
      );

  int EvaluateWide(
    Pointer<Utf16> Expression,
    int DesiredType,
    Pointer<DEBUG_VALUE> Value,
    Pointer<Uint32> RemainderIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(132)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Expression,
            Uint32 DesiredType,
            Pointer<DEBUG_VALUE> Value,
            Pointer<Uint32> RemainderIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Expression,
            int DesiredType,
            Pointer<DEBUG_VALUE> Value,
            Pointer<Uint32> RemainderIndex,
          )>()(
        ptr.ref.lpVtbl,
        Expression,
        DesiredType,
        Value,
        RemainderIndex,
      );

  int ExecuteWide(
    int OutputControl,
    Pointer<Utf16> Command,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(133)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Pointer<Utf16> Command,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            Pointer<Utf16> Command,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Command,
        Flags,
      );

  int ExecuteCommandFileWide(
    int OutputControl,
    Pointer<Utf16> CommandFile,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(134)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Pointer<Utf16> CommandFile,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            Pointer<Utf16> CommandFile,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        CommandFile,
        Flags,
      );

  int GetBreakpointByIndex2(
    int Index,
    Pointer<Pointer<COMObject>> Bp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(135)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Pointer<COMObject>> Bp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Pointer<COMObject>> Bp,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Bp,
      );

  int GetBreakpointById2(
    int Id,
    Pointer<Pointer<COMObject>> Bp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(136)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Id,
            Pointer<Pointer<COMObject>> Bp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Id,
            Pointer<Pointer<COMObject>> Bp,
          )>()(
        ptr.ref.lpVtbl,
        Id,
        Bp,
      );

  int AddBreakpoint2(
    int Type,
    int DesiredId,
    Pointer<Pointer<COMObject>> Bp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(137)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Type,
            Uint32 DesiredId,
            Pointer<Pointer<COMObject>> Bp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
            int DesiredId,
            Pointer<Pointer<COMObject>> Bp,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        DesiredId,
        Bp,
      );

  int RemoveBreakpoint2(
    Pointer<COMObject> Bp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(138)
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

  int AddExtensionWide(
    Pointer<Utf16> Path,
    int Flags,
    Pointer<Uint64> $Handle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(139)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Path,
            Uint32 Flags,
            Pointer<Uint64> $Handle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Path,
            int Flags,
            Pointer<Uint64> $Handle,
          )>()(
        ptr.ref.lpVtbl,
        Path,
        Flags,
        $Handle,
      );

  int GetExtensionByPathWide(
    Pointer<Utf16> Path,
    Pointer<Uint64> $Handle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(140)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Path,
            Pointer<Uint64> $Handle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Path,
            Pointer<Uint64> $Handle,
          )>()(
        ptr.ref.lpVtbl,
        Path,
        $Handle,
      );

  int CallExtensionWide(
    int $Handle,
    Pointer<Utf16> Function,
    Pointer<Utf16> Arguments,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(141)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 $Handle,
            Pointer<Utf16> Function,
            Pointer<Utf16> Arguments,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int $Handle,
            Pointer<Utf16> Function,
            Pointer<Utf16> Arguments,
          )>()(
        ptr.ref.lpVtbl,
        $Handle,
        Function,
        Arguments,
      );

  int GetExtensionFunctionWide(
    int $Handle,
    Pointer<Utf16> FuncName,
    Pointer<Pointer> Function,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(142)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 $Handle,
            Pointer<Utf16> FuncName,
            Pointer<Pointer> Function,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int $Handle,
            Pointer<Utf16> FuncName,
            Pointer<Pointer> Function,
          )>()(
        ptr.ref.lpVtbl,
        $Handle,
        FuncName,
        Function,
      );

  int GetEventFilterTextWide(
    int Index,
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> TextSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(143)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> TextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> TextSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Buffer,
        BufferSize,
        TextSize,
      );

  int GetEventFilterCommandWide(
    int Index,
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> CommandSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(144)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> CommandSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> CommandSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Buffer,
        BufferSize,
        CommandSize,
      );

  int SetEventFilterCommandWide(
    int Index,
    Pointer<Utf16> Command,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(145)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf16> Command,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf16> Command,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Command,
      );

  int GetSpecificFilterArgumentWide(
    int Index,
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> ArgumentSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(146)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> ArgumentSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> ArgumentSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Buffer,
        BufferSize,
        ArgumentSize,
      );

  int SetSpecificFilterArgumentWide(
    int Index,
    Pointer<Utf16> Argument,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(147)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf16> Argument,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf16> Argument,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Argument,
      );

  int GetExceptionFilterSecondCommandWide(
    int Index,
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> CommandSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(148)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> CommandSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> CommandSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Buffer,
        BufferSize,
        CommandSize,
      );

  int SetExceptionFilterSecondCommandWide(
    int Index,
    Pointer<Utf16> Command,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(149)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf16> Command,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf16> Command,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Command,
      );

  int GetLastEventInformationWide(
    Pointer<Uint32> Type,
    Pointer<Uint32> ProcessId,
    Pointer<Uint32> ThreadId,
    Pointer ExtraInformation,
    int ExtraInformationSize,
    Pointer<Uint32> ExtraInformationUsed,
    Pointer<Utf16> Description,
    int DescriptionSize,
    Pointer<Uint32> DescriptionUsed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(150)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Type,
            Pointer<Uint32> ProcessId,
            Pointer<Uint32> ThreadId,
            Pointer ExtraInformation,
            Uint32 ExtraInformationSize,
            Pointer<Uint32> ExtraInformationUsed,
            Pointer<Utf16> Description,
            Uint32 DescriptionSize,
            Pointer<Uint32> DescriptionUsed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Type,
            Pointer<Uint32> ProcessId,
            Pointer<Uint32> ThreadId,
            Pointer ExtraInformation,
            int ExtraInformationSize,
            Pointer<Uint32> ExtraInformationUsed,
            Pointer<Utf16> Description,
            int DescriptionSize,
            Pointer<Uint32> DescriptionUsed,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        ProcessId,
        ThreadId,
        ExtraInformation,
        ExtraInformationSize,
        ExtraInformationUsed,
        Description,
        DescriptionSize,
        DescriptionUsed,
      );

  int GetTextReplacementWide(
    Pointer<Utf16> SrcText,
    int Index,
    Pointer<Utf16> SrcBuffer,
    int SrcBufferSize,
    Pointer<Uint32> SrcSize,
    Pointer<Utf16> DstBuffer,
    int DstBufferSize,
    Pointer<Uint32> DstSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(151)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> SrcText,
            Uint32 Index,
            Pointer<Utf16> SrcBuffer,
            Uint32 SrcBufferSize,
            Pointer<Uint32> SrcSize,
            Pointer<Utf16> DstBuffer,
            Uint32 DstBufferSize,
            Pointer<Uint32> DstSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> SrcText,
            int Index,
            Pointer<Utf16> SrcBuffer,
            int SrcBufferSize,
            Pointer<Uint32> SrcSize,
            Pointer<Utf16> DstBuffer,
            int DstBufferSize,
            Pointer<Uint32> DstSize,
          )>()(
        ptr.ref.lpVtbl,
        SrcText,
        Index,
        SrcBuffer,
        SrcBufferSize,
        SrcSize,
        DstBuffer,
        DstBufferSize,
        DstSize,
      );

  int SetTextReplacementWide(
    Pointer<Utf16> SrcText,
    Pointer<Utf16> DstText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(152)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> SrcText,
            Pointer<Utf16> DstText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> SrcText,
            Pointer<Utf16> DstText,
          )>()(
        ptr.ref.lpVtbl,
        SrcText,
        DstText,
      );

  int SetExpressionSyntaxByNameWide(
    Pointer<Utf16> AbbrevName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(153)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> AbbrevName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> AbbrevName,
          )>()(
        ptr.ref.lpVtbl,
        AbbrevName,
      );

  int GetExpressionSyntaxNamesWide(
    int Index,
    Pointer<Utf16> FullNameBuffer,
    int FullNameBufferSize,
    Pointer<Uint32> FullNameSize,
    Pointer<Utf16> AbbrevNameBuffer,
    int AbbrevNameBufferSize,
    Pointer<Uint32> AbbrevNameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(154)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf16> FullNameBuffer,
            Uint32 FullNameBufferSize,
            Pointer<Uint32> FullNameSize,
            Pointer<Utf16> AbbrevNameBuffer,
            Uint32 AbbrevNameBufferSize,
            Pointer<Uint32> AbbrevNameSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf16> FullNameBuffer,
            int FullNameBufferSize,
            Pointer<Uint32> FullNameSize,
            Pointer<Utf16> AbbrevNameBuffer,
            int AbbrevNameBufferSize,
            Pointer<Uint32> AbbrevNameSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        FullNameBuffer,
        FullNameBufferSize,
        FullNameSize,
        AbbrevNameBuffer,
        AbbrevNameBufferSize,
        AbbrevNameSize,
      );

  int GetEventIndexDescriptionWide(
    int Index,
    int Which,
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> DescSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(155)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Uint32 Which,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> DescSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            int Which,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> DescSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Which,
        Buffer,
        BufferSize,
        DescSize,
      );

  int GetLogFile2(
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> FileSize,
    Pointer<Uint32> Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(156)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> FileSize,
            Pointer<Uint32> Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> FileSize,
            Pointer<Uint32> Flags,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        FileSize,
        Flags,
      );

  int OpenLogFile2(
    Pointer<Utf8> File,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(157)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> File,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> File,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        File,
        Flags,
      );

  int GetLogFile2Wide(
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> FileSize,
    Pointer<Uint32> Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(158)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> FileSize,
            Pointer<Uint32> Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> FileSize,
            Pointer<Uint32> Flags,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        FileSize,
        Flags,
      );

  int OpenLogFile2Wide(
    Pointer<Utf16> File,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(159)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> File,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> File,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        File,
        Flags,
      );

  int GetSystemVersionValues(
    Pointer<Uint32> PlatformId,
    Pointer<Uint32> Win32Major,
    Pointer<Uint32> Win32Minor,
    Pointer<Uint32> KdMajor,
    Pointer<Uint32> KdMinor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(160)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> PlatformId,
            Pointer<Uint32> Win32Major,
            Pointer<Uint32> Win32Minor,
            Pointer<Uint32> KdMajor,
            Pointer<Uint32> KdMinor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> PlatformId,
            Pointer<Uint32> Win32Major,
            Pointer<Uint32> Win32Minor,
            Pointer<Uint32> KdMajor,
            Pointer<Uint32> KdMinor,
          )>()(
        ptr.ref.lpVtbl,
        PlatformId,
        Win32Major,
        Win32Minor,
        KdMajor,
        KdMinor,
      );

  int GetSystemVersionString(
    int Which,
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> StringSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(161)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Which,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> StringSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Which,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> StringSize,
          )>()(
        ptr.ref.lpVtbl,
        Which,
        Buffer,
        BufferSize,
        StringSize,
      );

  int GetSystemVersionStringWide(
    int Which,
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> StringSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(162)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Which,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> StringSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Which,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> StringSize,
          )>()(
        ptr.ref.lpVtbl,
        Which,
        Buffer,
        BufferSize,
        StringSize,
      );

  int GetContextStackTrace(
    Pointer StartContext,
    int StartContextSize,
    Pointer<DEBUG_STACK_FRAME> Frames,
    int FramesSize,
    Pointer FrameContexts,
    int FrameContextsSize,
    int FrameContextsEntrySize,
    Pointer<Uint32> FramesFilled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(163)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer StartContext,
            Uint32 StartContextSize,
            Pointer<DEBUG_STACK_FRAME> Frames,
            Uint32 FramesSize,
            Pointer FrameContexts,
            Uint32 FrameContextsSize,
            Uint32 FrameContextsEntrySize,
            Pointer<Uint32> FramesFilled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer StartContext,
            int StartContextSize,
            Pointer<DEBUG_STACK_FRAME> Frames,
            int FramesSize,
            Pointer FrameContexts,
            int FrameContextsSize,
            int FrameContextsEntrySize,
            Pointer<Uint32> FramesFilled,
          )>()(
        ptr.ref.lpVtbl,
        StartContext,
        StartContextSize,
        Frames,
        FramesSize,
        FrameContexts,
        FrameContextsSize,
        FrameContextsEntrySize,
        FramesFilled,
      );

  int OutputContextStackTrace(
    int OutputControl,
    Pointer<DEBUG_STACK_FRAME> Frames,
    int FramesSize,
    Pointer FrameContexts,
    int FrameContextsSize,
    int FrameContextsEntrySize,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(164)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Pointer<DEBUG_STACK_FRAME> Frames,
            Uint32 FramesSize,
            Pointer FrameContexts,
            Uint32 FrameContextsSize,
            Uint32 FrameContextsEntrySize,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            Pointer<DEBUG_STACK_FRAME> Frames,
            int FramesSize,
            Pointer FrameContexts,
            int FrameContextsSize,
            int FrameContextsEntrySize,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Frames,
        FramesSize,
        FrameContexts,
        FrameContextsSize,
        FrameContextsEntrySize,
        Flags,
      );

  int GetStoredEventInformation(
    Pointer<Uint32> Type,
    Pointer<Uint32> ProcessId,
    Pointer<Uint32> ThreadId,
    Pointer Context,
    int ContextSize,
    Pointer<Uint32> ContextUsed,
    Pointer ExtraInformation,
    int ExtraInformationSize,
    Pointer<Uint32> ExtraInformationUsed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(165)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Type,
            Pointer<Uint32> ProcessId,
            Pointer<Uint32> ThreadId,
            Pointer Context,
            Uint32 ContextSize,
            Pointer<Uint32> ContextUsed,
            Pointer ExtraInformation,
            Uint32 ExtraInformationSize,
            Pointer<Uint32> ExtraInformationUsed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Type,
            Pointer<Uint32> ProcessId,
            Pointer<Uint32> ThreadId,
            Pointer Context,
            int ContextSize,
            Pointer<Uint32> ContextUsed,
            Pointer ExtraInformation,
            int ExtraInformationSize,
            Pointer<Uint32> ExtraInformationUsed,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        ProcessId,
        ThreadId,
        Context,
        ContextSize,
        ContextUsed,
        ExtraInformation,
        ExtraInformationSize,
        ExtraInformationUsed,
      );

  int GetManagedStatus(
    Pointer<Uint32> Flags,
    int WhichString,
    Pointer<Utf8> $String,
    int StringSize,
    Pointer<Uint32> StringNeeded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(166)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Flags,
            Uint32 WhichString,
            Pointer<Utf8> $String,
            Uint32 StringSize,
            Pointer<Uint32> StringNeeded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Flags,
            int WhichString,
            Pointer<Utf8> $String,
            int StringSize,
            Pointer<Uint32> StringNeeded,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        WhichString,
        $String,
        StringSize,
        StringNeeded,
      );

  int GetManagedStatusWide(
    Pointer<Uint32> Flags,
    int WhichString,
    Pointer<Utf16> $String,
    int StringSize,
    Pointer<Uint32> StringNeeded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(167)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Flags,
            Uint32 WhichString,
            Pointer<Utf16> $String,
            Uint32 StringSize,
            Pointer<Uint32> StringNeeded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Flags,
            int WhichString,
            Pointer<Utf16> $String,
            int StringSize,
            Pointer<Uint32> StringNeeded,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        WhichString,
        $String,
        StringSize,
        StringNeeded,
      );

  int ResetManagedStatus(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(168)
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

  int GetStackTraceEx(
    int FrameOffset,
    int StackOffset,
    int InstructionOffset,
    Pointer<DEBUG_STACK_FRAME_EX> Frames,
    int FramesSize,
    Pointer<Uint32> FramesFilled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(169)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 FrameOffset,
            Uint64 StackOffset,
            Uint64 InstructionOffset,
            Pointer<DEBUG_STACK_FRAME_EX> Frames,
            Uint32 FramesSize,
            Pointer<Uint32> FramesFilled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int FrameOffset,
            int StackOffset,
            int InstructionOffset,
            Pointer<DEBUG_STACK_FRAME_EX> Frames,
            int FramesSize,
            Pointer<Uint32> FramesFilled,
          )>()(
        ptr.ref.lpVtbl,
        FrameOffset,
        StackOffset,
        InstructionOffset,
        Frames,
        FramesSize,
        FramesFilled,
      );

  int OutputStackTraceEx(
    int OutputControl,
    Pointer<DEBUG_STACK_FRAME_EX> Frames,
    int FramesSize,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(170)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Pointer<DEBUG_STACK_FRAME_EX> Frames,
            Uint32 FramesSize,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            Pointer<DEBUG_STACK_FRAME_EX> Frames,
            int FramesSize,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Frames,
        FramesSize,
        Flags,
      );

  int GetContextStackTraceEx(
    Pointer StartContext,
    int StartContextSize,
    Pointer<DEBUG_STACK_FRAME_EX> Frames,
    int FramesSize,
    Pointer FrameContexts,
    int FrameContextsSize,
    int FrameContextsEntrySize,
    Pointer<Uint32> FramesFilled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(171)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer StartContext,
            Uint32 StartContextSize,
            Pointer<DEBUG_STACK_FRAME_EX> Frames,
            Uint32 FramesSize,
            Pointer FrameContexts,
            Uint32 FrameContextsSize,
            Uint32 FrameContextsEntrySize,
            Pointer<Uint32> FramesFilled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer StartContext,
            int StartContextSize,
            Pointer<DEBUG_STACK_FRAME_EX> Frames,
            int FramesSize,
            Pointer FrameContexts,
            int FrameContextsSize,
            int FrameContextsEntrySize,
            Pointer<Uint32> FramesFilled,
          )>()(
        ptr.ref.lpVtbl,
        StartContext,
        StartContextSize,
        Frames,
        FramesSize,
        FrameContexts,
        FrameContextsSize,
        FrameContextsEntrySize,
        FramesFilled,
      );

  int OutputContextStackTraceEx(
    int OutputControl,
    Pointer<DEBUG_STACK_FRAME_EX> Frames,
    int FramesSize,
    Pointer FrameContexts,
    int FrameContextsSize,
    int FrameContextsEntrySize,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(172)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Pointer<DEBUG_STACK_FRAME_EX> Frames,
            Uint32 FramesSize,
            Pointer FrameContexts,
            Uint32 FrameContextsSize,
            Uint32 FrameContextsEntrySize,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            Pointer<DEBUG_STACK_FRAME_EX> Frames,
            int FramesSize,
            Pointer FrameContexts,
            int FrameContextsSize,
            int FrameContextsEntrySize,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Frames,
        FramesSize,
        FrameContexts,
        FrameContextsSize,
        FrameContextsEntrySize,
        Flags,
      );

  int GetBreakpointByGuid(
    Pointer<GUID> Guid,
    Pointer<Pointer<COMObject>> Bp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(173)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Guid,
            Pointer<Pointer<COMObject>> Bp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Guid,
            Pointer<Pointer<COMObject>> Bp,
          )>()(
        ptr.ref.lpVtbl,
        Guid,
        Bp,
      );

  int GetExecutionStatusEx(
    Pointer<Uint32> Status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(174)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Status,
          )>()(
        ptr.ref.lpVtbl,
        Status,
      );

  int GetSynchronizationStatus(
    Pointer<Uint32> SendsAttempted,
    Pointer<Uint32> SecondsSinceLastResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(175)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> SendsAttempted,
            Pointer<Uint32> SecondsSinceLastResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> SendsAttempted,
            Pointer<Uint32> SecondsSinceLastResponse,
          )>()(
        ptr.ref.lpVtbl,
        SendsAttempted,
        SecondsSinceLastResponse,
      );
}
