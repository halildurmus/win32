// IMF2DBuffer.dart

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

/// @nodoc
const IID_IMF2DBuffer = '{7DC9D5F9-9ED9-44EC-9BBF-0600BB589FBB}';

/// {@category Interface}
/// {@category com}
class IMF2DBuffer extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IMF2DBuffer(Pointer<COMObject> ptr) : super(ptr);

  int Lock2D(
    Pointer<Pointer<Uint8>> ppbScanline0,
    Pointer<Int32> plPitch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppbScanline0,
            Pointer<Int32> plPitch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppbScanline0,
            Pointer<Int32> plPitch,
          )>()(
        ptr.ref.lpVtbl,
        ppbScanline0,
        plPitch,
      );

  int Unlock2D() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetScanline0AndPitch(
    Pointer<Pointer<Uint8>> pbScanline0,
    Pointer<Int32> plPitch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> pbScanline0,
            Pointer<Int32> plPitch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> pbScanline0,
            Pointer<Int32> plPitch,
          )>()(
        ptr.ref.lpVtbl,
        pbScanline0,
        plPitch,
      );

  int IsContiguousFormat(
    Pointer<Int32> pfIsContiguous,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfIsContiguous,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfIsContiguous,
          )>()(
        ptr.ref.lpVtbl,
        pfIsContiguous,
      );

  int GetContiguousLength(
    Pointer<Uint32> pcbLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcbLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcbLength,
          )>()(
        ptr.ref.lpVtbl,
        pcbLength,
      );

  int ContiguousCopyTo(
    Pointer<Uint8> pbDestBuffer,
    int cbDestBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbDestBuffer,
            Uint32 cbDestBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbDestBuffer,
            int cbDestBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pbDestBuffer,
        cbDestBuffer,
      );

  int ContiguousCopyFrom(
    Pointer<Uint8> pbSrcBuffer,
    int cbSrcBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbSrcBuffer,
            Uint32 cbSrcBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbSrcBuffer,
            int cbSrcBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pbSrcBuffer,
        cbSrcBuffer,
      );
}
