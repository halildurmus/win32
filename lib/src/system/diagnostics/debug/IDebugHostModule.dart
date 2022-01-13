// IDebugHostModule.dart

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

import '../../../system/diagnostics/debug/IDebugHostSymbol.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugHostType.dart';

/// @nodoc
const IID_IDebugHostModule = '{C9BA3E18-D070-4378-BBD0-34613B346E1E}';

/// {@category Interface}
/// {@category com}
class IDebugHostModule extends IDebugHostSymbol {
  // vtable begins at 10, is 6 entries long.
  IDebugHostModule(Pointer<COMObject> ptr) : super(ptr);

  int GetImageName(
    int allowPath,
    Pointer<Pointer<Utf16>> imageName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 allowPath,
            Pointer<Pointer<Utf16>> imageName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int allowPath,
            Pointer<Pointer<Utf16>> imageName,
          )>()(
        ptr.ref.lpVtbl,
        allowPath,
        imageName,
      );

  int GetBaseLocation(
    Pointer<Location> moduleBaseLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Location> moduleBaseLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Location> moduleBaseLocation,
          )>()(
        ptr.ref.lpVtbl,
        moduleBaseLocation,
      );

  int GetVersion(
    Pointer<Uint64> fileVersion,
    Pointer<Uint64> productVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> fileVersion,
            Pointer<Uint64> productVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> fileVersion,
            Pointer<Uint64> productVersion,
          )>()(
        ptr.ref.lpVtbl,
        fileVersion,
        productVersion,
      );

  int FindTypeByName(
    Pointer<Utf16> typeName,
    Pointer<Pointer<COMObject>> type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> typeName,
            Pointer<Pointer<COMObject>> type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> typeName,
            Pointer<Pointer<COMObject>> type,
          )>()(
        ptr.ref.lpVtbl,
        typeName,
        type,
      );

  int FindSymbolByRVA(
    int rva,
    Pointer<Pointer<COMObject>> symbol,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 rva,
            Pointer<Pointer<COMObject>> symbol,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int rva,
            Pointer<Pointer<COMObject>> symbol,
          )>()(
        ptr.ref.lpVtbl,
        rva,
        symbol,
      );

  int FindSymbolByName(
    Pointer<Utf16> symbolName,
    Pointer<Pointer<COMObject>> symbol,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> symbolName,
            Pointer<Pointer<COMObject>> symbol,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> symbolName,
            Pointer<Pointer<COMObject>> symbol,
          )>()(
        ptr.ref.lpVtbl,
        symbolName,
        symbol,
      );
}
