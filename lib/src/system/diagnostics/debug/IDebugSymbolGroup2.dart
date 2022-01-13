// IDebugSymbolGroup2.dart

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
const IID_IDebugSymbolGroup2 = '{6A7CCC5F-FB5E-4DCC-B41C-6C20307BCCC7}';

/// {@category Interface}
/// {@category com}
class IDebugSymbolGroup2 extends IUnknown {
  // vtable begins at 3, is 23 entries long.
  IDebugSymbolGroup2(Pointer<COMObject> ptr) : super(ptr);

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

  int AddSymbolWide(
    Pointer<Utf16> Name,
    Pointer<Uint32> Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int RemoveSymbolByNameWide(
    Pointer<Utf16> Name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
          )>()(
        ptr.ref.lpVtbl,
        Name,
      );

  int GetSymbolNameWide(
    int Index,
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> NameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> NameSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> NameSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Buffer,
        BufferSize,
        NameSize,
      );

  int WriteSymbolWide(
    int Index,
    Pointer<Utf16> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf16> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf16> Value,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Value,
      );

  int OutputAsTypeWide(
    int Index,
    Pointer<Utf16> Type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf16> Type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf16> Type,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Type,
      );

  int GetSymbolTypeName(
    int Index,
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> NameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int GetSymbolTypeNameWide(
    int Index,
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> NameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> NameSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> NameSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Buffer,
        BufferSize,
        NameSize,
      );

  int GetSymbolSize(
    int Index,
    Pointer<Uint32> Size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Uint32> Size,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Uint32> Size,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Size,
      );

  int GetSymbolOffset(
    int Index,
    Pointer<Uint64> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Uint64> Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Uint64> Offset,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Offset,
      );

  int GetSymbolRegister(
    int Index,
    Pointer<Uint32> Register,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Uint32> Register,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Uint32> Register,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Register,
      );

  int GetSymbolValueText(
    int Index,
    Pointer<Utf8> Buffer,
    int BufferSize,
    Pointer<Uint32> NameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
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

  int GetSymbolValueTextWide(
    int Index,
    Pointer<Utf16> Buffer,
    int BufferSize,
    Pointer<Uint32> NameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Utf16> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> NameSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf16> Buffer,
            int BufferSize,
            Pointer<Uint32> NameSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Buffer,
        BufferSize,
        NameSize,
      );

  int GetSymbolEntryInformation(
    int Index,
    Pointer<DEBUG_SYMBOL_ENTRY> Entry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<DEBUG_SYMBOL_ENTRY> Entry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<DEBUG_SYMBOL_ENTRY> Entry,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Entry,
      );
}
