// IDebugSymbols4.dart

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
import '../../../system/diagnostics/debug/IDebugSymbolGroup.dart';
import '../../../system/diagnostics/debug/IDebugSymbolGroup2.dart';

/// @nodoc
const IID_IDebugSymbols4 = '{E391BBD8-9D8C-4418-840B-C006592A1752}';

/// {@category Interface}
/// {@category com}
class IDebugSymbols4 extends IUnknown {
  // vtable begins at 3, is 130 entries long.
  IDebugSymbols4(Pointer<COMObject> ptr) : super(ptr);

  int GetSymbolOptions(
    Pointer<Uint32> Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int AddSymbolOptions(
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int RemoveSymbolOptions(
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int SetSymbolOptions(
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int GetNameByOffset(
    int Offset,
    Pointer<Utf8> NameBuffer,
    int NameBufferSize,
    Pointer<Uint32> NameSize,
    Pointer<Uint64> Displacement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Pointer<Utf8> NameBuffer,
            Uint32 NameBufferSize,
            Pointer<Uint32> NameSize,
            Pointer<Uint64> Displacement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            Pointer<Utf8> NameBuffer,
            int NameBufferSize,
            Pointer<Uint32> NameSize,
            Pointer<Uint64> Displacement,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        NameBuffer,
        NameBufferSize,
        NameSize,
        Displacement,
      );

  int GetOffsetByName(
    Pointer<Utf8> Symbol,
    Pointer<Uint64> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Symbol,
            Pointer<Uint64> Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Symbol,
            Pointer<Uint64> Offset,
          )>()(
        ptr.ref.lpVtbl,
        Symbol,
        Offset,
      );

  int GetNearNameByOffset(
    int Offset,
    int Delta,
    Pointer<Utf8> NameBuffer,
    int NameBufferSize,
    Pointer<Uint32> NameSize,
    Pointer<Uint64> Displacement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Int32 Delta,
            Pointer<Utf8> NameBuffer,
            Uint32 NameBufferSize,
            Pointer<Uint32> NameSize,
            Pointer<Uint64> Displacement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            int Delta,
            Pointer<Utf8> NameBuffer,
            int NameBufferSize,
            Pointer<Uint32> NameSize,
            Pointer<Uint64> Displacement,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Delta,
        NameBuffer,
        NameBufferSize,
        NameSize,
        Displacement,
      );

  int GetLineByOffset(
    int Offset,
    Pointer<Uint32> Line,
    Pointer<Utf8> FileBuffer,
    int FileBufferSize,
    Pointer<Uint32> FileSize,
    Pointer<Uint64> Displacement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Pointer<Uint32> Line,
            Pointer<Utf8> FileBuffer,
            Uint32 FileBufferSize,
            Pointer<Uint32> FileSize,
            Pointer<Uint64> Displacement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            Pointer<Uint32> Line,
            Pointer<Utf8> FileBuffer,
            int FileBufferSize,
            Pointer<Uint32> FileSize,
            Pointer<Uint64> Displacement,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Line,
        FileBuffer,
        FileBufferSize,
        FileSize,
        Displacement,
      );

  int GetOffsetByLine(
    int Line,
    Pointer<Utf8> File,
    Pointer<Uint64> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Line,
            Pointer<Utf8> File,
            Pointer<Uint64> Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Line,
            Pointer<Utf8> File,
            Pointer<Uint64> Offset,
          )>()(
        ptr.ref.lpVtbl,
        Line,
        File,
        Offset,
      );

  int GetNumberModules(
    Pointer<Uint32> Loaded,
    Pointer<Uint32> Unloaded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Loaded,
            Pointer<Uint32> Unloaded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Loaded,
            Pointer<Uint32> Unloaded,
          )>()(
        ptr.ref.lpVtbl,
        Loaded,
        Unloaded,
      );

  int GetModuleByIndex(
    int Index,
    Pointer<Uint64> Base,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Uint64> Base,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Uint64> Base,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Base,
      );

  int GetModuleByModuleName(
    Pointer<Utf8> Name,
    int StartIndex,
    Pointer<Uint32> Index,
    Pointer<Uint64> Base,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Name,
            Uint32 StartIndex,
            Pointer<Uint32> Index,
            Pointer<Uint64> Base,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Name,
            int StartIndex,
            Pointer<Uint32> Index,
            Pointer<Uint64> Base,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        StartIndex,
        Index,
        Base,
      );

  int GetModuleByOffset(
    int Offset,
    int StartIndex,
    Pointer<Uint32> Index,
    Pointer<Uint64> Base,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Uint32 StartIndex,
            Pointer<Uint32> Index,
            Pointer<Uint64> Base,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            int StartIndex,
            Pointer<Uint32> Index,
            Pointer<Uint64> Base,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        StartIndex,
        Index,
        Base,
      );

  int GetModuleNames(
    int Index,
    int Base,
    Pointer<Utf8> ImageNameBuffer,
    int ImageNameBufferSize,
    Pointer<Uint32> ImageNameSize,
    Pointer<Utf8> ModuleNameBuffer,
    int ModuleNameBufferSize,
    Pointer<Uint32> ModuleNameSize,
    Pointer<Utf8> LoadedImageNameBuffer,
    int LoadedImageNameBufferSize,
    Pointer<Uint32> LoadedImageNameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Uint64 Base,
            Pointer<Utf8> ImageNameBuffer,
            Uint32 ImageNameBufferSize,
            Pointer<Uint32> ImageNameSize,
            Pointer<Utf8> ModuleNameBuffer,
            Uint32 ModuleNameBufferSize,
            Pointer<Uint32> ModuleNameSize,
            Pointer<Utf8> LoadedImageNameBuffer,
            Uint32 LoadedImageNameBufferSize,
            Pointer<Uint32> LoadedImageNameSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            int Base,
            Pointer<Utf8> ImageNameBuffer,
            int ImageNameBufferSize,
            Pointer<Uint32> ImageNameSize,
            Pointer<Utf8> ModuleNameBuffer,
            int ModuleNameBufferSize,
            Pointer<Uint32> ModuleNameSize,
            Pointer<Utf8> LoadedImageNameBuffer,
            int LoadedImageNameBufferSize,
            Pointer<Uint32> LoadedImageNameSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Base,
        ImageNameBuffer,
        ImageNameBufferSize,
        ImageNameSize,
        ModuleNameBuffer,
        ModuleNameBufferSize,
        ModuleNameSize,
        LoadedImageNameBuffer,
        LoadedImageNameBufferSize,
        LoadedImageNameSize,
      );

  int GetModuleParameters(
    int Count,
    Pointer<Uint64> Bases,
    int Start,
    Pointer<DEBUG_MODULE_PARAMETERS> Params,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Count,
            Pointer<Uint64> Bases,
            Uint32 Start,
            Pointer<DEBUG_MODULE_PARAMETERS> Params,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Count,
            Pointer<Uint64> Bases,
            int Start,
            Pointer<DEBUG_MODULE_PARAMETERS> Params,
          )>()(
        ptr.ref.lpVtbl,
        Count,
        Bases,
        Start,
        Params,
      );

  int GetSymbolModule(
    Pointer<Utf8> Symbol,
    Pointer<Uint64> Base,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Symbol,
            Pointer<Uint64> Base,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Symbol,
            Pointer<Uint64> Base,
          )>()(
        ptr.ref.lpVtbl,
        Symbol,
        Base,
      );

  int GetTypeName(
    int Module,
    int TypeId,
    Pointer<Utf8> NameBuffer,
    int NameBufferSize,
    Pointer<Uint32> NameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Module,
            Uint32 TypeId,
            Pointer<Utf8> NameBuffer,
            Uint32 NameBufferSize,
            Pointer<Uint32> NameSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Module,
            int TypeId,
            Pointer<Utf8> NameBuffer,
            int NameBufferSize,
            Pointer<Uint32> NameSize,
          )>()(
        ptr.ref.lpVtbl,
        Module,
        TypeId,
        NameBuffer,
        NameBufferSize,
        NameSize,
      );

  int GetTypeId(
    int Module,
    Pointer<Utf8> Name,
    Pointer<Uint32> TypeId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Module,
            Pointer<Utf8> Name,
            Pointer<Uint32> TypeId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Module,
            Pointer<Utf8> Name,
            Pointer<Uint32> TypeId,
          )>()(
        ptr.ref.lpVtbl,
        Module,
        Name,
        TypeId,
      );

  int GetTypeSize(
    int Module,
    int TypeId,
    Pointer<Uint32> Size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Module,
            Uint32 TypeId,
            Pointer<Uint32> Size,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Module,
            int TypeId,
            Pointer<Uint32> Size,
          )>()(
        ptr.ref.lpVtbl,
        Module,
        TypeId,
        Size,
      );

  int GetFieldOffset(
    int Module,
    int TypeId,
    Pointer<Utf8> Field,
    Pointer<Uint32> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Module,
            Uint32 TypeId,
            Pointer<Utf8> Field,
            Pointer<Uint32> Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Module,
            int TypeId,
            Pointer<Utf8> Field,
            Pointer<Uint32> Offset,
          )>()(
        ptr.ref.lpVtbl,
        Module,
        TypeId,
        Field,
        Offset,
      );

  int GetSymbolTypeId(
    Pointer<Utf8> Symbol,
    Pointer<Uint32> TypeId,
    Pointer<Uint64> Module,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Symbol,
            Pointer<Uint32> TypeId,
            Pointer<Uint64> Module,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Symbol,
            Pointer<Uint32> TypeId,
            Pointer<Uint64> Module,
          )>()(
        ptr.ref.lpVtbl,
        Symbol,
        TypeId,
        Module,
      );

  int GetOffsetTypeId(
    int Offset,
    Pointer<Uint32> TypeId,
    Pointer<Uint64> Module,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Pointer<Uint32> TypeId,
            Pointer<Uint64> Module,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            Pointer<Uint32> TypeId,
            Pointer<Uint64> Module,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        TypeId,
        Module,
      );

  int ReadTypedDataVirtual(
    int Offset,
    int Module,
    int TypeId,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> BytesRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Uint64 Module,
            Uint32 TypeId,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> BytesRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            int Module,
            int TypeId,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> BytesRead,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Module,
        TypeId,
        Buffer,
        BufferSize,
        BytesRead,
      );

  int WriteTypedDataVirtual(
    int Offset,
    int Module,
    int TypeId,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> BytesWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Uint64 Module,
            Uint32 TypeId,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> BytesWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            int Module,
            int TypeId,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> BytesWritten,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Module,
        TypeId,
        Buffer,
        BufferSize,
        BytesWritten,
      );

  int OutputTypedDataVirtual(
    int OutputControl,
    int Offset,
    int Module,
    int TypeId,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Uint64 Offset,
            Uint64 Module,
            Uint32 TypeId,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            int Offset,
            int Module,
            int TypeId,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Offset,
        Module,
        TypeId,
        Flags,
      );

  int ReadTypedDataPhysical(
    int Offset,
    int Module,
    int TypeId,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> BytesRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Uint64 Module,
            Uint32 TypeId,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> BytesRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            int Module,
            int TypeId,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> BytesRead,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Module,
        TypeId,
        Buffer,
        BufferSize,
        BytesRead,
      );

  int WriteTypedDataPhysical(
    int Offset,
    int Module,
    int TypeId,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> BytesWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Uint64 Module,
            Uint32 TypeId,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> BytesWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            int Module,
            int TypeId,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> BytesWritten,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Module,
        TypeId,
        Buffer,
        BufferSize,
        BytesWritten,
      );

  int OutputTypedDataPhysical(
    int OutputControl,
    int Offset,
    int Module,
    int TypeId,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Uint64 Offset,
            Uint64 Module,
            Uint32 TypeId,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            int Offset,
            int Module,
            int TypeId,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Offset,
        Module,
        TypeId,
        Flags,
      );

  int GetScope(
    Pointer<Uint64> InstructionOffset,
    Pointer<DEBUG_STACK_FRAME> ScopeFrame,
    Pointer ScopeContext,
    int ScopeContextSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> InstructionOffset,
            Pointer<DEBUG_STACK_FRAME> ScopeFrame,
            Pointer ScopeContext,
            Uint32 ScopeContextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> InstructionOffset,
            Pointer<DEBUG_STACK_FRAME> ScopeFrame,
            Pointer ScopeContext,
            int ScopeContextSize,
          )>()(
        ptr.ref.lpVtbl,
        InstructionOffset,
        ScopeFrame,
        ScopeContext,
        ScopeContextSize,
      );

  int SetScope(
    int InstructionOffset,
    Pointer<DEBUG_STACK_FRAME> ScopeFrame,
    Pointer ScopeContext,
    int ScopeContextSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 InstructionOffset,
            Pointer<DEBUG_STACK_FRAME> ScopeFrame,
            Pointer ScopeContext,
            Uint32 ScopeContextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int InstructionOffset,
            Pointer<DEBUG_STACK_FRAME> ScopeFrame,
            Pointer ScopeContext,
            int ScopeContextSize,
          )>()(
        ptr.ref.lpVtbl,
        InstructionOffset,
        ScopeFrame,
        ScopeContext,
        ScopeContextSize,
      );

  int ResetScope() => ptr.ref.lpVtbl.value
          .elementAt(33)
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

  int GetScopeSymbolGroup(
    int Flags,
    Pointer<COMObject> Update,
    Pointer<Pointer<COMObject>> Symbols,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
            Pointer<COMObject> Update,
            Pointer<Pointer<COMObject>> Symbols,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<COMObject> Update,
            Pointer<Pointer<COMObject>> Symbols,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        Update,
        Symbols,
      );

  int CreateSymbolGroup(
    Pointer<Pointer<COMObject>> Group,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Group,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Group,
          )>()(
        ptr.ref.lpVtbl,
        Group,
      );

  int StartSymbolMatch(
    Pointer<Utf8> Pattern,
    Pointer<Uint64> $Handle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Pattern,
            Pointer<Uint64> $Handle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Pattern,
            Pointer<Uint64> $Handle,
          )>()(
        ptr.ref.lpVtbl,
        Pattern,
        $Handle,
      );

  int GetNextSymbolMatch(
    int $Handle,
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> MatchSize,
    Pointer<Uint64> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 $Handle,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> MatchSize,
            Pointer<Uint64> Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int $Handle,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> MatchSize,
            Pointer<Uint64> Offset,
          )>()(
        ptr.ref.lpVtbl,
        $Handle,
        Buffer,
        BufferSize,
        MatchSize,
        Offset,
      );

  int EndSymbolMatch(
    int $Handle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
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

  int Reload(
    Pointer<Utf8> Module,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Module,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Module,
          )>()(
        ptr.ref.lpVtbl,
        Module,
      );

  int GetSymbolPath(
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> PathSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> PathSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> PathSize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        PathSize,
      );

  int SetSymbolPath(
    Pointer<Utf8> Path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Path,
          )>()(
        ptr.ref.lpVtbl,
        Path,
      );

  int AppendSymbolPath(
    Pointer<Utf8> Addition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Addition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Addition,
          )>()(
        ptr.ref.lpVtbl,
        Addition,
      );

  int GetImagePath(
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> PathSize,
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
            Pointer<Uint32> PathSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> PathSize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        PathSize,
      );

  int SetImagePath(
    Pointer<Utf8> Path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Path,
          )>()(
        ptr.ref.lpVtbl,
        Path,
      );

  int AppendImagePath(
    Pointer<Utf8> Addition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Addition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Addition,
          )>()(
        ptr.ref.lpVtbl,
        Addition,
      );

  int GetSourcePath(
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> PathSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> PathSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> PathSize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        PathSize,
      );

  int GetSourcePathElement(
    int Index,
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> ElementSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> ElementSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> ElementSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Buffer,
        BufferSize,
        ElementSize,
      );

  int SetSourcePath(
    Pointer<Utf8> Path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Path,
          )>()(
        ptr.ref.lpVtbl,
        Path,
      );

  int AppendSourcePath(
    Pointer<Utf8> Addition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Addition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Addition,
          )>()(
        ptr.ref.lpVtbl,
        Addition,
      );

  int FindSourceFile(
    int StartElement,
    Pointer<Utf8> File,
    int Flags,
    Pointer<Uint32> FoundElement,
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> FoundSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StartElement,
            Pointer<Utf8> File,
            Uint32 Flags,
            Pointer<Uint32> FoundElement,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> FoundSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StartElement,
            Pointer<Utf8> File,
            int Flags,
            Pointer<Uint32> FoundElement,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> FoundSize,
          )>()(
        ptr.ref.lpVtbl,
        StartElement,
        File,
        Flags,
        FoundElement,
        Buffer,
        BufferSize,
        FoundSize,
      );

  int GetSourceFileLineOffsets(
    Pointer<Utf8> File,
    Pointer<Uint64> Buffer,
    int BufferLines,
    Pointer<Uint32> FileLines,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> File,
            Pointer<Uint64> Buffer,
            Uint32 BufferLines,
            Pointer<Uint32> FileLines,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> File,
            Pointer<Uint64> Buffer,
            int BufferLines,
            Pointer<Uint32> FileLines,
          )>()(
        ptr.ref.lpVtbl,
        File,
        Buffer,
        BufferLines,
        FileLines,
      );

  int GetModuleVersionInformation(
    int Index,
    int Base,
    Pointer<Utf8> Item,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> VerInfoSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Uint64 Base,
            Pointer<Utf8> Item,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> VerInfoSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            int Base,
            Pointer<Utf8> Item,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> VerInfoSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Base,
        Item,
        Buffer,
        BufferSize,
        VerInfoSize,
      );

  int GetModuleNameString(
    int Which,
    int Index,
    int Base,
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> NameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Which,
            Uint32 Index,
            Uint64 Base,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> NameSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Which,
            int Index,
            int Base,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> NameSize,
          )>()(
        ptr.ref.lpVtbl,
        Which,
        Index,
        Base,
        Buffer,
        BufferSize,
        NameSize,
      );

  int GetConstantName(
    int Module,
    int TypeId,
    int Value,
    Pointer<Utf8> NameBuffer,
    int NameBufferSize,
    Pointer<Uint32> NameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Module,
            Uint32 TypeId,
            Uint64 Value,
            Pointer<Utf8> NameBuffer,
            Uint32 NameBufferSize,
            Pointer<Uint32> NameSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Module,
            int TypeId,
            int Value,
            Pointer<Utf8> NameBuffer,
            int NameBufferSize,
            Pointer<Uint32> NameSize,
          )>()(
        ptr.ref.lpVtbl,
        Module,
        TypeId,
        Value,
        NameBuffer,
        NameBufferSize,
        NameSize,
      );

  int GetFieldName(
    int Module,
    int TypeId,
    int FieldIndex,
    Pointer<Utf8> NameBuffer,
    int NameBufferSize,
    Pointer<Uint32> NameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Module,
            Uint32 TypeId,
            Uint32 FieldIndex,
            Pointer<Utf8> NameBuffer,
            Uint32 NameBufferSize,
            Pointer<Uint32> NameSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Module,
            int TypeId,
            int FieldIndex,
            Pointer<Utf8> NameBuffer,
            int NameBufferSize,
            Pointer<Uint32> NameSize,
          )>()(
        ptr.ref.lpVtbl,
        Module,
        TypeId,
        FieldIndex,
        NameBuffer,
        NameBufferSize,
        NameSize,
      );

  int GetTypeOptions(
    Pointer<Uint32> Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
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

  int AddTypeOptions(
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
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

  int RemoveTypeOptions(
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
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

  int SetTypeOptions(
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
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

  int GetNameByOffsetWide(
    int Offset,
    Pointer<Utf16> NameBuffer,
    int NameBufferSize,
    Pointer<Uint32> NameSize,
    Pointer<Uint64> Displacement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Pointer<Utf16> NameBuffer,
            Uint32 NameBufferSize,
            Pointer<Uint32> NameSize,
            Pointer<Uint64> Displacement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            Pointer<Utf16> NameBuffer,
            int NameBufferSize,
            Pointer<Uint32> NameSize,
            Pointer<Uint64> Displacement,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        NameBuffer,
        NameBufferSize,
        NameSize,
        Displacement,
      );

  int GetOffsetByNameWide(
    Pointer<Utf16> Symbol,
    Pointer<Uint64> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Symbol,
            Pointer<Uint64> Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Symbol,
            Pointer<Uint64> Offset,
          )>()(
        ptr.ref.lpVtbl,
        Symbol,
        Offset,
      );

  int GetNearNameByOffsetWide(
    int Offset,
    int Delta,
    Pointer<Utf16> NameBuffer,
    int NameBufferSize,
    Pointer<Uint32> NameSize,
    Pointer<Uint64> Displacement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Int32 Delta,
            Pointer<Utf16> NameBuffer,
            Uint32 NameBufferSize,
            Pointer<Uint32> NameSize,
            Pointer<Uint64> Displacement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            int Delta,
            Pointer<Utf16> NameBuffer,
            int NameBufferSize,
            Pointer<Uint32> NameSize,
            Pointer<Uint64> Displacement,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Delta,
        NameBuffer,
        NameBufferSize,
        NameSize,
        Displacement,
      );

  int GetLineByOffsetWide(
    int Offset,
    Pointer<Uint32> Line,
    Pointer<Utf16> FileBuffer,
    int FileBufferSize,
    Pointer<Uint32> FileSize,
    Pointer<Uint64> Displacement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Pointer<Uint32> Line,
            Pointer<Utf16> FileBuffer,
            Uint32 FileBufferSize,
            Pointer<Uint32> FileSize,
            Pointer<Uint64> Displacement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            Pointer<Uint32> Line,
            Pointer<Utf16> FileBuffer,
            int FileBufferSize,
            Pointer<Uint32> FileSize,
            Pointer<Uint64> Displacement,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Line,
        FileBuffer,
        FileBufferSize,
        FileSize,
        Displacement,
      );

  int GetOffsetByLineWide(
    int Line,
    Pointer<Utf16> File,
    Pointer<Uint64> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Line,
            Pointer<Utf16> File,
            Pointer<Uint64> Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Line,
            Pointer<Utf16> File,
            Pointer<Uint64> Offset,
          )>()(
        ptr.ref.lpVtbl,
        Line,
        File,
        Offset,
      );

  int GetModuleByModuleNameWide(
    Pointer<Utf16> Name,
    int StartIndex,
    Pointer<Uint32> Index,
    Pointer<Uint64> Base,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
            Uint32 StartIndex,
            Pointer<Uint32> Index,
            Pointer<Uint64> Base,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
            int StartIndex,
            Pointer<Uint32> Index,
            Pointer<Uint64> Base,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        StartIndex,
        Index,
        Base,
      );

  int GetSymbolModuleWide(
    Pointer<Utf16> Symbol,
    Pointer<Uint64> Base,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(66)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Symbol,
            Pointer<Uint64> Base,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Symbol,
            Pointer<Uint64> Base,
          )>()(
        ptr.ref.lpVtbl,
        Symbol,
        Base,
      );

  int GetTypeNameWide(
    int Module,
    int TypeId,
    Pointer<Utf16> NameBuffer,
    int NameBufferSize,
    Pointer<Uint32> NameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Module,
            Uint32 TypeId,
            Pointer<Utf16> NameBuffer,
            Uint32 NameBufferSize,
            Pointer<Uint32> NameSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Module,
            int TypeId,
            Pointer<Utf16> NameBuffer,
            int NameBufferSize,
            Pointer<Uint32> NameSize,
          )>()(
        ptr.ref.lpVtbl,
        Module,
        TypeId,
        NameBuffer,
        NameBufferSize,
        NameSize,
      );

  int GetTypeIdWide(
    int Module,
    Pointer<Utf16> Name,
    Pointer<Uint32> TypeId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(68)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Module,
            Pointer<Utf16> Name,
            Pointer<Uint32> TypeId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Module,
            Pointer<Utf16> Name,
            Pointer<Uint32> TypeId,
          )>()(
        ptr.ref.lpVtbl,
        Module,
        Name,
        TypeId,
      );

  int GetFieldOffsetWide(
    int Module,
    int TypeId,
    Pointer<Utf16> Field,
    Pointer<Uint32> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(69)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Module,
            Uint32 TypeId,
            Pointer<Utf16> Field,
            Pointer<Uint32> Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Module,
            int TypeId,
            Pointer<Utf16> Field,
            Pointer<Uint32> Offset,
          )>()(
        ptr.ref.lpVtbl,
        Module,
        TypeId,
        Field,
        Offset,
      );

  int GetSymbolTypeIdWide(
    Pointer<Utf16> Symbol,
    Pointer<Uint32> TypeId,
    Pointer<Uint64> Module,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(70)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Symbol,
            Pointer<Uint32> TypeId,
            Pointer<Uint64> Module,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Symbol,
            Pointer<Uint32> TypeId,
            Pointer<Uint64> Module,
          )>()(
        ptr.ref.lpVtbl,
        Symbol,
        TypeId,
        Module,
      );

  int GetScopeSymbolGroup2(
    int Flags,
    Pointer<COMObject> Update,
    Pointer<Pointer<COMObject>> Symbols,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(71)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
            Pointer<COMObject> Update,
            Pointer<Pointer<COMObject>> Symbols,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<COMObject> Update,
            Pointer<Pointer<COMObject>> Symbols,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        Update,
        Symbols,
      );

  int CreateSymbolGroup2(
    Pointer<Pointer<COMObject>> Group,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(72)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Group,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Group,
          )>()(
        ptr.ref.lpVtbl,
        Group,
      );

  int StartSymbolMatchWide(
    Pointer<Utf16> Pattern,
    Pointer<Uint64> $Handle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(73)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Pattern,
            Pointer<Uint64> $Handle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Pattern,
            Pointer<Uint64> $Handle,
          )>()(
        ptr.ref.lpVtbl,
        Pattern,
        $Handle,
      );

  int GetNextSymbolMatchWide(
    int $Handle,
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> MatchSize,
    Pointer<Uint64> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(74)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 $Handle,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> MatchSize,
            Pointer<Uint64> Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int $Handle,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> MatchSize,
            Pointer<Uint64> Offset,
          )>()(
        ptr.ref.lpVtbl,
        $Handle,
        Buffer,
        BufferSize,
        MatchSize,
        Offset,
      );

  int ReloadWide(
    Pointer<Utf16> Module,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(75)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Module,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Module,
          )>()(
        ptr.ref.lpVtbl,
        Module,
      );

  int GetSymbolPathWide(
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> PathSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(76)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> PathSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> PathSize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        PathSize,
      );

  int SetSymbolPathWide(
    Pointer<Utf16> Path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(77)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Path,
          )>()(
        ptr.ref.lpVtbl,
        Path,
      );

  int AppendSymbolPathWide(
    Pointer<Utf16> Addition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(78)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Addition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Addition,
          )>()(
        ptr.ref.lpVtbl,
        Addition,
      );

  int GetImagePathWide(
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> PathSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(79)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> PathSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> PathSize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        PathSize,
      );

  int SetImagePathWide(
    Pointer<Utf16> Path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(80)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Path,
          )>()(
        ptr.ref.lpVtbl,
        Path,
      );

  int AppendImagePathWide(
    Pointer<Utf16> Addition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(81)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Addition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Addition,
          )>()(
        ptr.ref.lpVtbl,
        Addition,
      );

  int GetSourcePathWide(
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> PathSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(82)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> PathSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> PathSize,
          )>()(
        ptr.ref.lpVtbl,
        Buffer,
        BufferSize,
        PathSize,
      );

  int GetSourcePathElementWide(
    int Index,
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> ElementSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(83)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> ElementSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> ElementSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Buffer,
        BufferSize,
        ElementSize,
      );

  int SetSourcePathWide(
    Pointer<Utf16> Path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(84)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Path,
          )>()(
        ptr.ref.lpVtbl,
        Path,
      );

  int AppendSourcePathWide(
    Pointer<Utf16> Addition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(85)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Addition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Addition,
          )>()(
        ptr.ref.lpVtbl,
        Addition,
      );

  int FindSourceFileWide(
    int StartElement,
    Pointer<Utf16> File,
    int Flags,
    Pointer<Uint32> FoundElement,
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> FoundSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(86)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StartElement,
            Pointer<Utf16> File,
            Uint32 Flags,
            Pointer<Uint32> FoundElement,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> FoundSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StartElement,
            Pointer<Utf16> File,
            int Flags,
            Pointer<Uint32> FoundElement,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> FoundSize,
          )>()(
        ptr.ref.lpVtbl,
        StartElement,
        File,
        Flags,
        FoundElement,
        Buffer,
        BufferSize,
        FoundSize,
      );

  int GetSourceFileLineOffsetsWide(
    Pointer<Utf16> File,
    Pointer<Uint64> Buffer,
    int BufferLines,
    Pointer<Uint32> FileLines,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(87)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> File,
            Pointer<Uint64> Buffer,
            Uint32 BufferLines,
            Pointer<Uint32> FileLines,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> File,
            Pointer<Uint64> Buffer,
            int BufferLines,
            Pointer<Uint32> FileLines,
          )>()(
        ptr.ref.lpVtbl,
        File,
        Buffer,
        BufferLines,
        FileLines,
      );

  int GetModuleVersionInformationWide(
    int Index,
    int Base,
    Pointer<Utf16> Item,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> VerInfoSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(88)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Uint64 Base,
            Pointer<Utf16> Item,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> VerInfoSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            int Base,
            Pointer<Utf16> Item,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> VerInfoSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Base,
        Item,
        Buffer,
        BufferSize,
        VerInfoSize,
      );

  int GetModuleNameStringWide(
    int Which,
    int Index,
    int Base,
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> NameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(89)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Which,
            Uint32 Index,
            Uint64 Base,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> NameSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Which,
            int Index,
            int Base,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> NameSize,
          )>()(
        ptr.ref.lpVtbl,
        Which,
        Index,
        Base,
        Buffer,
        BufferSize,
        NameSize,
      );

  int GetConstantNameWide(
    int Module,
    int TypeId,
    int Value,
    Pointer<Utf16> NameBuffer,
    int NameBufferSize,
    Pointer<Uint32> NameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(90)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Module,
            Uint32 TypeId,
            Uint64 Value,
            Pointer<Utf16> NameBuffer,
            Uint32 NameBufferSize,
            Pointer<Uint32> NameSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Module,
            int TypeId,
            int Value,
            Pointer<Utf16> NameBuffer,
            int NameBufferSize,
            Pointer<Uint32> NameSize,
          )>()(
        ptr.ref.lpVtbl,
        Module,
        TypeId,
        Value,
        NameBuffer,
        NameBufferSize,
        NameSize,
      );

  int GetFieldNameWide(
    int Module,
    int TypeId,
    int FieldIndex,
    Pointer<Utf16> NameBuffer,
    int NameBufferSize,
    Pointer<Uint32> NameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(91)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Module,
            Uint32 TypeId,
            Uint32 FieldIndex,
            Pointer<Utf16> NameBuffer,
            Uint32 NameBufferSize,
            Pointer<Uint32> NameSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Module,
            int TypeId,
            int FieldIndex,
            Pointer<Utf16> NameBuffer,
            int NameBufferSize,
            Pointer<Uint32> NameSize,
          )>()(
        ptr.ref.lpVtbl,
        Module,
        TypeId,
        FieldIndex,
        NameBuffer,
        NameBufferSize,
        NameSize,
      );

  int IsManagedModule(
    int Index,
    int Base,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(92)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Uint64 Base,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            int Base,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Base,
      );

  int GetModuleByModuleName2(
    Pointer<Utf8> Name,
    int StartIndex,
    int Flags,
    Pointer<Uint32> Index,
    Pointer<Uint64> Base,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(93)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Name,
            Uint32 StartIndex,
            Uint32 Flags,
            Pointer<Uint32> Index,
            Pointer<Uint64> Base,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Name,
            int StartIndex,
            int Flags,
            Pointer<Uint32> Index,
            Pointer<Uint64> Base,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        StartIndex,
        Flags,
        Index,
        Base,
      );

  int GetModuleByModuleName2Wide(
    Pointer<Utf16> Name,
    int StartIndex,
    int Flags,
    Pointer<Uint32> Index,
    Pointer<Uint64> Base,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(94)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
            Uint32 StartIndex,
            Uint32 Flags,
            Pointer<Uint32> Index,
            Pointer<Uint64> Base,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
            int StartIndex,
            int Flags,
            Pointer<Uint32> Index,
            Pointer<Uint64> Base,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        StartIndex,
        Flags,
        Index,
        Base,
      );

  int GetModuleByOffset2(
    int Offset,
    int StartIndex,
    int Flags,
    Pointer<Uint32> Index,
    Pointer<Uint64> Base,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(95)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Uint32 StartIndex,
            Uint32 Flags,
            Pointer<Uint32> Index,
            Pointer<Uint64> Base,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            int StartIndex,
            int Flags,
            Pointer<Uint32> Index,
            Pointer<Uint64> Base,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        StartIndex,
        Flags,
        Index,
        Base,
      );

  int AddSyntheticModule(
    int Base,
    int Size,
    Pointer<Utf8> ImagePath,
    Pointer<Utf8> ModuleName,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(96)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Base,
            Uint32 Size,
            Pointer<Utf8> ImagePath,
            Pointer<Utf8> ModuleName,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Base,
            int Size,
            Pointer<Utf8> ImagePath,
            Pointer<Utf8> ModuleName,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Base,
        Size,
        ImagePath,
        ModuleName,
        Flags,
      );

  int AddSyntheticModuleWide(
    int Base,
    int Size,
    Pointer<Utf16> ImagePath,
    Pointer<Utf16> ModuleName,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(97)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Base,
            Uint32 Size,
            Pointer<Utf16> ImagePath,
            Pointer<Utf16> ModuleName,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Base,
            int Size,
            Pointer<Utf16> ImagePath,
            Pointer<Utf16> ModuleName,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Base,
        Size,
        ImagePath,
        ModuleName,
        Flags,
      );

  int RemoveSyntheticModule(
    int Base,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(98)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Base,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Base,
          )>()(
        ptr.ref.lpVtbl,
        Base,
      );

  int GetCurrentScopeFrameIndex(
    Pointer<Uint32> Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(99)
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

  int SetScopeFrameByIndex(
    int Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(100)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
          )>()(
        ptr.ref.lpVtbl,
        Index,
      );

  int SetScopeFromJitDebugInfo(
    int OutputControl,
    int InfoOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(101)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Uint64 InfoOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            int InfoOffset,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        InfoOffset,
      );

  int SetScopeFromStoredEvent() => ptr.ref.lpVtbl.value
          .elementAt(102)
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

  int OutputSymbolByOffset(
    int OutputControl,
    int Flags,
    int Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(103)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Uint32 Flags,
            Uint64 Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            int Flags,
            int Offset,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Flags,
        Offset,
      );

  int GetFunctionEntryByOffset(
    int Offset,
    int Flags,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> BufferNeeded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(104)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Uint32 Flags,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> BufferNeeded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            int Flags,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> BufferNeeded,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Flags,
        Buffer,
        BufferSize,
        BufferNeeded,
      );

  int GetFieldTypeAndOffset(
    int Module,
    int ContainerTypeId,
    Pointer<Utf8> Field,
    Pointer<Uint32> FieldTypeId,
    Pointer<Uint32> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(105)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Module,
            Uint32 ContainerTypeId,
            Pointer<Utf8> Field,
            Pointer<Uint32> FieldTypeId,
            Pointer<Uint32> Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Module,
            int ContainerTypeId,
            Pointer<Utf8> Field,
            Pointer<Uint32> FieldTypeId,
            Pointer<Uint32> Offset,
          )>()(
        ptr.ref.lpVtbl,
        Module,
        ContainerTypeId,
        Field,
        FieldTypeId,
        Offset,
      );

  int GetFieldTypeAndOffsetWide(
    int Module,
    int ContainerTypeId,
    Pointer<Utf16> Field,
    Pointer<Uint32> FieldTypeId,
    Pointer<Uint32> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(106)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Module,
            Uint32 ContainerTypeId,
            Pointer<Utf16> Field,
            Pointer<Uint32> FieldTypeId,
            Pointer<Uint32> Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Module,
            int ContainerTypeId,
            Pointer<Utf16> Field,
            Pointer<Uint32> FieldTypeId,
            Pointer<Uint32> Offset,
          )>()(
        ptr.ref.lpVtbl,
        Module,
        ContainerTypeId,
        Field,
        FieldTypeId,
        Offset,
      );

  int AddSyntheticSymbol(
    int Offset,
    int Size,
    Pointer<Utf8> Name,
    int Flags,
    Pointer<DEBUG_MODULE_AND_ID> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(107)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Uint32 Size,
            Pointer<Utf8> Name,
            Uint32 Flags,
            Pointer<DEBUG_MODULE_AND_ID> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            int Size,
            Pointer<Utf8> Name,
            int Flags,
            Pointer<DEBUG_MODULE_AND_ID> Id,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Size,
        Name,
        Flags,
        Id,
      );

  int AddSyntheticSymbolWide(
    int Offset,
    int Size,
    Pointer<Utf16> Name,
    int Flags,
    Pointer<DEBUG_MODULE_AND_ID> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(108)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Uint32 Size,
            Pointer<Utf16> Name,
            Uint32 Flags,
            Pointer<DEBUG_MODULE_AND_ID> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            int Size,
            Pointer<Utf16> Name,
            int Flags,
            Pointer<DEBUG_MODULE_AND_ID> Id,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Size,
        Name,
        Flags,
        Id,
      );

  int RemoveSyntheticSymbol(
    Pointer<DEBUG_MODULE_AND_ID> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(109)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEBUG_MODULE_AND_ID> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEBUG_MODULE_AND_ID> Id,
          )>()(
        ptr.ref.lpVtbl,
        Id,
      );

  int GetSymbolEntriesByOffset(
    int Offset,
    int Flags,
    Pointer<DEBUG_MODULE_AND_ID> Ids,
    Pointer<Uint64> Displacements,
    int IdsCount,
    Pointer<Uint32> Entries,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(110)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Uint32 Flags,
            Pointer<DEBUG_MODULE_AND_ID> Ids,
            Pointer<Uint64> Displacements,
            Uint32 IdsCount,
            Pointer<Uint32> Entries,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            int Flags,
            Pointer<DEBUG_MODULE_AND_ID> Ids,
            Pointer<Uint64> Displacements,
            int IdsCount,
            Pointer<Uint32> Entries,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Flags,
        Ids,
        Displacements,
        IdsCount,
        Entries,
      );

  int GetSymbolEntriesByName(
    Pointer<Utf8> Symbol,
    int Flags,
    Pointer<DEBUG_MODULE_AND_ID> Ids,
    int IdsCount,
    Pointer<Uint32> Entries,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(111)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Symbol,
            Uint32 Flags,
            Pointer<DEBUG_MODULE_AND_ID> Ids,
            Uint32 IdsCount,
            Pointer<Uint32> Entries,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Symbol,
            int Flags,
            Pointer<DEBUG_MODULE_AND_ID> Ids,
            int IdsCount,
            Pointer<Uint32> Entries,
          )>()(
        ptr.ref.lpVtbl,
        Symbol,
        Flags,
        Ids,
        IdsCount,
        Entries,
      );

  int GetSymbolEntriesByNameWide(
    Pointer<Utf16> Symbol,
    int Flags,
    Pointer<DEBUG_MODULE_AND_ID> Ids,
    int IdsCount,
    Pointer<Uint32> Entries,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(112)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Symbol,
            Uint32 Flags,
            Pointer<DEBUG_MODULE_AND_ID> Ids,
            Uint32 IdsCount,
            Pointer<Uint32> Entries,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Symbol,
            int Flags,
            Pointer<DEBUG_MODULE_AND_ID> Ids,
            int IdsCount,
            Pointer<Uint32> Entries,
          )>()(
        ptr.ref.lpVtbl,
        Symbol,
        Flags,
        Ids,
        IdsCount,
        Entries,
      );

  int GetSymbolEntryByToken(
    int ModuleBase,
    int Token,
    Pointer<DEBUG_MODULE_AND_ID> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(113)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ModuleBase,
            Uint32 Token,
            Pointer<DEBUG_MODULE_AND_ID> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ModuleBase,
            int Token,
            Pointer<DEBUG_MODULE_AND_ID> Id,
          )>()(
        ptr.ref.lpVtbl,
        ModuleBase,
        Token,
        Id,
      );

  int GetSymbolEntryInformation(
    Pointer<DEBUG_MODULE_AND_ID> Id,
    Pointer<DEBUG_SYMBOL_ENTRY> Info,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(114)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEBUG_MODULE_AND_ID> Id,
            Pointer<DEBUG_SYMBOL_ENTRY> Info,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEBUG_MODULE_AND_ID> Id,
            Pointer<DEBUG_SYMBOL_ENTRY> Info,
          )>()(
        ptr.ref.lpVtbl,
        Id,
        Info,
      );

  int GetSymbolEntryString(
    Pointer<DEBUG_MODULE_AND_ID> Id,
    int Which,
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> StringSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(115)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEBUG_MODULE_AND_ID> Id,
            Uint32 Which,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> StringSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEBUG_MODULE_AND_ID> Id,
            int Which,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> StringSize,
          )>()(
        ptr.ref.lpVtbl,
        Id,
        Which,
        Buffer,
        BufferSize,
        StringSize,
      );

  int GetSymbolEntryStringWide(
    Pointer<DEBUG_MODULE_AND_ID> Id,
    int Which,
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> StringSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(116)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEBUG_MODULE_AND_ID> Id,
            Uint32 Which,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> StringSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEBUG_MODULE_AND_ID> Id,
            int Which,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> StringSize,
          )>()(
        ptr.ref.lpVtbl,
        Id,
        Which,
        Buffer,
        BufferSize,
        StringSize,
      );

  int GetSymbolEntryOffsetRegions(
    Pointer<DEBUG_MODULE_AND_ID> Id,
    int Flags,
    Pointer<DEBUG_OFFSET_REGION> Regions,
    int RegionsCount,
    Pointer<Uint32> RegionsAvail,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(117)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEBUG_MODULE_AND_ID> Id,
            Uint32 Flags,
            Pointer<DEBUG_OFFSET_REGION> Regions,
            Uint32 RegionsCount,
            Pointer<Uint32> RegionsAvail,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEBUG_MODULE_AND_ID> Id,
            int Flags,
            Pointer<DEBUG_OFFSET_REGION> Regions,
            int RegionsCount,
            Pointer<Uint32> RegionsAvail,
          )>()(
        ptr.ref.lpVtbl,
        Id,
        Flags,
        Regions,
        RegionsCount,
        RegionsAvail,
      );

  int GetSymbolEntryBySymbolEntry(
    Pointer<DEBUG_MODULE_AND_ID> FromId,
    int Flags,
    Pointer<DEBUG_MODULE_AND_ID> ToId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(118)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEBUG_MODULE_AND_ID> FromId,
            Uint32 Flags,
            Pointer<DEBUG_MODULE_AND_ID> ToId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEBUG_MODULE_AND_ID> FromId,
            int Flags,
            Pointer<DEBUG_MODULE_AND_ID> ToId,
          )>()(
        ptr.ref.lpVtbl,
        FromId,
        Flags,
        ToId,
      );

  int GetSourceEntriesByOffset(
    int Offset,
    int Flags,
    Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> Entries,
    int EntriesCount,
    Pointer<Uint32> EntriesAvail,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(119)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Uint32 Flags,
            Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> Entries,
            Uint32 EntriesCount,
            Pointer<Uint32> EntriesAvail,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            int Flags,
            Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> Entries,
            int EntriesCount,
            Pointer<Uint32> EntriesAvail,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Flags,
        Entries,
        EntriesCount,
        EntriesAvail,
      );

  int GetSourceEntriesByLine(
    int Line,
    Pointer<Utf8> File,
    int Flags,
    Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> Entries,
    int EntriesCount,
    Pointer<Uint32> EntriesAvail,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(120)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Line,
            Pointer<Utf8> File,
            Uint32 Flags,
            Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> Entries,
            Uint32 EntriesCount,
            Pointer<Uint32> EntriesAvail,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Line,
            Pointer<Utf8> File,
            int Flags,
            Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> Entries,
            int EntriesCount,
            Pointer<Uint32> EntriesAvail,
          )>()(
        ptr.ref.lpVtbl,
        Line,
        File,
        Flags,
        Entries,
        EntriesCount,
        EntriesAvail,
      );

  int GetSourceEntriesByLineWide(
    int Line,
    Pointer<Utf16> File,
    int Flags,
    Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> Entries,
    int EntriesCount,
    Pointer<Uint32> EntriesAvail,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(121)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Line,
            Pointer<Utf16> File,
            Uint32 Flags,
            Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> Entries,
            Uint32 EntriesCount,
            Pointer<Uint32> EntriesAvail,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Line,
            Pointer<Utf16> File,
            int Flags,
            Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> Entries,
            int EntriesCount,
            Pointer<Uint32> EntriesAvail,
          )>()(
        ptr.ref.lpVtbl,
        Line,
        File,
        Flags,
        Entries,
        EntriesCount,
        EntriesAvail,
      );

  int GetSourceEntryString(
    Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> Entry,
    int Which,
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> StringSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(122)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> Entry,
            Uint32 Which,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> StringSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> Entry,
            int Which,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> StringSize,
          )>()(
        ptr.ref.lpVtbl,
        Entry,
        Which,
        Buffer,
        BufferSize,
        StringSize,
      );

  int GetSourceEntryStringWide(
    Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> Entry,
    int Which,
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> StringSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(123)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> Entry,
            Uint32 Which,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> StringSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> Entry,
            int Which,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> StringSize,
          )>()(
        ptr.ref.lpVtbl,
        Entry,
        Which,
        Buffer,
        BufferSize,
        StringSize,
      );

  int GetSourceEntryOffsetRegions(
    Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> Entry,
    int Flags,
    Pointer<DEBUG_OFFSET_REGION> Regions,
    int RegionsCount,
    Pointer<Uint32> RegionsAvail,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(124)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> Entry,
            Uint32 Flags,
            Pointer<DEBUG_OFFSET_REGION> Regions,
            Uint32 RegionsCount,
            Pointer<Uint32> RegionsAvail,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> Entry,
            int Flags,
            Pointer<DEBUG_OFFSET_REGION> Regions,
            int RegionsCount,
            Pointer<Uint32> RegionsAvail,
          )>()(
        ptr.ref.lpVtbl,
        Entry,
        Flags,
        Regions,
        RegionsCount,
        RegionsAvail,
      );

  int GetSourceEntryBySourceEntry(
    Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> FromEntry,
    int Flags,
    Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> ToEntry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(125)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> FromEntry,
            Uint32 Flags,
            Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> ToEntry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> FromEntry,
            int Flags,
            Pointer<DEBUG_SYMBOL_SOURCE_ENTRY> ToEntry,
          )>()(
        ptr.ref.lpVtbl,
        FromEntry,
        Flags,
        ToEntry,
      );

  int GetScopeEx(
    Pointer<Uint64> InstructionOffset,
    Pointer<DEBUG_STACK_FRAME_EX> ScopeFrame,
    Pointer ScopeContext,
    int ScopeContextSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(126)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> InstructionOffset,
            Pointer<DEBUG_STACK_FRAME_EX> ScopeFrame,
            Pointer ScopeContext,
            Uint32 ScopeContextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> InstructionOffset,
            Pointer<DEBUG_STACK_FRAME_EX> ScopeFrame,
            Pointer ScopeContext,
            int ScopeContextSize,
          )>()(
        ptr.ref.lpVtbl,
        InstructionOffset,
        ScopeFrame,
        ScopeContext,
        ScopeContextSize,
      );

  int SetScopeEx(
    int InstructionOffset,
    Pointer<DEBUG_STACK_FRAME_EX> ScopeFrame,
    Pointer ScopeContext,
    int ScopeContextSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(127)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 InstructionOffset,
            Pointer<DEBUG_STACK_FRAME_EX> ScopeFrame,
            Pointer ScopeContext,
            Uint32 ScopeContextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int InstructionOffset,
            Pointer<DEBUG_STACK_FRAME_EX> ScopeFrame,
            Pointer ScopeContext,
            int ScopeContextSize,
          )>()(
        ptr.ref.lpVtbl,
        InstructionOffset,
        ScopeFrame,
        ScopeContext,
        ScopeContextSize,
      );

  int GetNameByInlineContext(
    int Offset,
    int InlineContext,
    Pointer<Utf8> NameBuffer,
    int NameBufferSize,
    Pointer<Uint32> NameSize,
    Pointer<Uint64> Displacement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(128)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Uint32 InlineContext,
            Pointer<Utf8> NameBuffer,
            Uint32 NameBufferSize,
            Pointer<Uint32> NameSize,
            Pointer<Uint64> Displacement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            int InlineContext,
            Pointer<Utf8> NameBuffer,
            int NameBufferSize,
            Pointer<Uint32> NameSize,
            Pointer<Uint64> Displacement,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        InlineContext,
        NameBuffer,
        NameBufferSize,
        NameSize,
        Displacement,
      );

  int GetNameByInlineContextWide(
    int Offset,
    int InlineContext,
    Pointer<Utf16> NameBuffer,
    int NameBufferSize,
    Pointer<Uint32> NameSize,
    Pointer<Uint64> Displacement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(129)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Uint32 InlineContext,
            Pointer<Utf16> NameBuffer,
            Uint32 NameBufferSize,
            Pointer<Uint32> NameSize,
            Pointer<Uint64> Displacement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            int InlineContext,
            Pointer<Utf16> NameBuffer,
            int NameBufferSize,
            Pointer<Uint32> NameSize,
            Pointer<Uint64> Displacement,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        InlineContext,
        NameBuffer,
        NameBufferSize,
        NameSize,
        Displacement,
      );

  int GetLineByInlineContext(
    int Offset,
    int InlineContext,
    Pointer<Uint32> Line,
    Pointer<Utf8> FileBuffer,
    int FileBufferSize,
    Pointer<Uint32> FileSize,
    Pointer<Uint64> Displacement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(130)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Uint32 InlineContext,
            Pointer<Uint32> Line,
            Pointer<Utf8> FileBuffer,
            Uint32 FileBufferSize,
            Pointer<Uint32> FileSize,
            Pointer<Uint64> Displacement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            int InlineContext,
            Pointer<Uint32> Line,
            Pointer<Utf8> FileBuffer,
            int FileBufferSize,
            Pointer<Uint32> FileSize,
            Pointer<Uint64> Displacement,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        InlineContext,
        Line,
        FileBuffer,
        FileBufferSize,
        FileSize,
        Displacement,
      );

  int GetLineByInlineContextWide(
    int Offset,
    int InlineContext,
    Pointer<Uint32> Line,
    Pointer<Utf16> FileBuffer,
    int FileBufferSize,
    Pointer<Uint32> FileSize,
    Pointer<Uint64> Displacement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(131)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Uint32 InlineContext,
            Pointer<Uint32> Line,
            Pointer<Utf16> FileBuffer,
            Uint32 FileBufferSize,
            Pointer<Uint32> FileSize,
            Pointer<Uint64> Displacement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            int InlineContext,
            Pointer<Uint32> Line,
            Pointer<Utf16> FileBuffer,
            int FileBufferSize,
            Pointer<Uint32> FileSize,
            Pointer<Uint64> Displacement,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        InlineContext,
        Line,
        FileBuffer,
        FileBufferSize,
        FileSize,
        Displacement,
      );

  int OutputSymbolByInlineContext(
    int OutputControl,
    int Flags,
    int Offset,
    int InlineContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(132)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OutputControl,
            Uint32 Flags,
            Uint64 Offset,
            Uint32 InlineContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            int Flags,
            int Offset,
            int InlineContext,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Flags,
        Offset,
        InlineContext,
      );
}
