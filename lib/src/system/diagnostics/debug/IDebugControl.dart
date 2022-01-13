// IDebugControl.dart

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

/// @nodoc
const IID_IDebugControl = '{5182E668-105E-416E-AD92-24EF800424BA}';

/// {@category Interface}
/// {@category com}
class IDebugControl extends IUnknown {
  // vtable begins at 3, is 92 entries long.
  IDebugControl(Pointer<COMObject> ptr) : super(ptr);

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
}
