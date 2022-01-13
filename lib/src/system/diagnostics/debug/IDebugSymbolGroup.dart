// IDebugSymbolGroup.dart

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
const IID_IDebugSymbolGroup = '{F2528316-0F1A-4431-AEED-11D096E1E2AB}';

/// {@category Interface}
/// {@category com}
class IDebugSymbolGroup extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IDebugSymbolGroup(Pointer<COMObject> ptr) : super(ptr);

  int GetNumberSymbols(
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

  int AddSymbol(
    Pointer<Utf8> Name,
    Pointer<Uint32> Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int RemoveSymbolByName(
    Pointer<Utf8> Name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> Name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> Name,
          )>()(
        ptr.ref.lpVtbl,
        Name,
      );

  int RemoveSymbolByIndex(
    int Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int GetSymbolName(
    int Index,
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> NameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> NameSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf8> Buffer,
            int BufferSize,
            Pointer<Uint32> NameSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Buffer,
        BufferSize,
        NameSize,
      );

  int GetSymbolParameters(
    int Start,
    int Count,
    Pointer<DEBUG_SYMBOL_PARAMETERS> Params,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Start,
            Uint32 Count,
            Pointer<DEBUG_SYMBOL_PARAMETERS> Params,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Start,
            int Count,
            Pointer<DEBUG_SYMBOL_PARAMETERS> Params,
          )>()(
        ptr.ref.lpVtbl,
        Start,
        Count,
        Params,
      );

  int ExpandSymbol(
    int Index,
    int Expand,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Int32 Expand,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            int Expand,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Expand,
      );

  int OutputSymbols(
    int OutputControl,
    int Flags,
    int Start,
    int Count,
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
            Uint32 Start,
            Uint32 Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputControl,
            int Flags,
            int Start,
            int Count,
          )>()(
        ptr.ref.lpVtbl,
        OutputControl,
        Flags,
        Start,
        Count,
      );

  int WriteSymbol(
    int Index,
    Pointer<Utf8> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf8> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf8> Value,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Value,
      );

  int OutputAsType(
    int Index,
    Pointer<Utf8> Type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf8> Type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf8> Type,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Type,
      );
}
