// IWICColorContext.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/imaging/structs.g.dart';

/// @nodoc
const IID_IWICColorContext = '{3C613A02-34B2-44EA-9A7C-45AEA9C6FD6D}';

/// {@category Interface}
/// {@category com}
class IWICColorContext extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IWICColorContext(Pointer<COMObject> ptr) : super(ptr);

  int InitializeFromFilename(
    Pointer<Utf16> wzFilename,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wzFilename,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wzFilename,
          )>()(
        ptr.ref.lpVtbl,
        wzFilename,
      );

  int InitializeFromMemory(
    Pointer<Uint8> pbBuffer,
    int cbBufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbBuffer,
            Uint32 cbBufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbBuffer,
            int cbBufferSize,
          )>()(
        ptr.ref.lpVtbl,
        pbBuffer,
        cbBufferSize,
      );

  int InitializeFromExifColorSpace(
    int value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int GetType(
    Pointer<Int32> pType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pType,
          )>()(
        ptr.ref.lpVtbl,
        pType,
      );

  int GetProfileBytes(
    int cbBuffer,
    Pointer<Uint8> pbBuffer,
    Pointer<Uint32> pcbActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbBuffer,
            Pointer<Uint8> pbBuffer,
            Pointer<Uint32> pcbActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbBuffer,
            Pointer<Uint8> pbBuffer,
            Pointer<Uint32> pcbActual,
          )>()(
        ptr.ref.lpVtbl,
        cbBuffer,
        pbBuffer,
        pcbActual,
      );

  int GetExifColorSpace(
    Pointer<Uint32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );
}
