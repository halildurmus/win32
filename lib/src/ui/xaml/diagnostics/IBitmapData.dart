// IBitmapData.dart

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
import '../../../ui/xaml/diagnostics/structs.g.dart';

/// @nodoc
const IID_IBitmapData = '{D1A34EF2-CAD8-4635-A3D2-FCDA8D3F3CAF}';

/// {@category Interface}
/// {@category com}
class IBitmapData extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IBitmapData(Pointer<COMObject> ptr) : super(ptr);

  int CopyBytesTo(
    int sourceOffsetInBytes,
    int maxBytesToCopy,
    Pointer<Uint8> pvBytes,
    Pointer<Uint32> numberOfBytesCopied,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 sourceOffsetInBytes,
            Uint32 maxBytesToCopy,
            Pointer<Uint8> pvBytes,
            Pointer<Uint32> numberOfBytesCopied,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int sourceOffsetInBytes,
            int maxBytesToCopy,
            Pointer<Uint8> pvBytes,
            Pointer<Uint32> numberOfBytesCopied,
          )>()(
        ptr.ref.lpVtbl,
        sourceOffsetInBytes,
        maxBytesToCopy,
        pvBytes,
        numberOfBytesCopied,
      );

  int GetStride(
    Pointer<Uint32> pStride,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pStride,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pStride,
          )>()(
        ptr.ref.lpVtbl,
        pStride,
      );

  int GetBitmapDescription(
    Pointer<BitmapDescription> pBitmapDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BitmapDescription> pBitmapDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BitmapDescription> pBitmapDescription,
          )>()(
        ptr.ref.lpVtbl,
        pBitmapDescription,
      );

  int GetSourceBitmapDescription(
    Pointer<BitmapDescription> pBitmapDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BitmapDescription> pBitmapDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BitmapDescription> pBitmapDescription,
          )>()(
        ptr.ref.lpVtbl,
        pBitmapDescription,
      );
}
