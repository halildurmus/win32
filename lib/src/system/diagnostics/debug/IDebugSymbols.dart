// IDebugSymbols.dart

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

/// @nodoc
const IID_IDebugSymbols = '{8C31E98C-983A-48A5-9016-6FE5D667A950}';

/// {@category Interface}
/// {@category com}
class IDebugSymbols extends IUnknown {
  // vtable begins at 3, is 49 entries long.
  IDebugSymbols(Pointer<COMObject> ptr) : super(ptr);

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
}
