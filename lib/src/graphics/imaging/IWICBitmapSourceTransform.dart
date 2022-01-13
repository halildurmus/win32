// IWICBitmapSourceTransform.dart

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
import '../../graphics/imaging/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWICBitmapSourceTransform = '{3B16811B-6A43-4EC9-B713-3D5A0C13B940}';

/// {@category Interface}
/// {@category com}
class IWICBitmapSourceTransform extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWICBitmapSourceTransform(Pointer<COMObject> ptr) : super(ptr);

  int CopyPixels(
    Pointer<WICRect> prc,
    int uiWidth,
    int uiHeight,
    Pointer<GUID> pguidDstFormat,
    int dstTransform,
    int nStride,
    int cbBufferSize,
    Pointer<Uint8> pbBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WICRect> prc,
            Uint32 uiWidth,
            Uint32 uiHeight,
            Pointer<GUID> pguidDstFormat,
            Int32 dstTransform,
            Uint32 nStride,
            Uint32 cbBufferSize,
            Pointer<Uint8> pbBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WICRect> prc,
            int uiWidth,
            int uiHeight,
            Pointer<GUID> pguidDstFormat,
            int dstTransform,
            int nStride,
            int cbBufferSize,
            Pointer<Uint8> pbBuffer,
          )>()(
        ptr.ref.lpVtbl,
        prc,
        uiWidth,
        uiHeight,
        pguidDstFormat,
        dstTransform,
        nStride,
        cbBufferSize,
        pbBuffer,
      );

  int GetClosestSize(
    Pointer<Uint32> puiWidth,
    Pointer<Uint32> puiHeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiWidth,
            Pointer<Uint32> puiHeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiWidth,
            Pointer<Uint32> puiHeight,
          )>()(
        ptr.ref.lpVtbl,
        puiWidth,
        puiHeight,
      );

  int GetClosestPixelFormat(
    Pointer<GUID> pguidDstFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidDstFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidDstFormat,
          )>()(
        ptr.ref.lpVtbl,
        pguidDstFormat,
      );

  int DoesSupportTransform(
    int dstTransform,
    Pointer<Int32> pfIsSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dstTransform,
            Pointer<Int32> pfIsSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dstTransform,
            Pointer<Int32> pfIsSupported,
          )>()(
        ptr.ref.lpVtbl,
        dstTransform,
        pfIsSupported,
      );
}
