// IWICImageEncoder.dart

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
import '../../../graphics/direct2d/ID2D1Image.dart';
import '../../../graphics/imaging/IWICBitmapFrameEncode.dart';
import '../../../graphics/imaging/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../graphics/imaging/IWICBitmapEncoder.dart';

/// @nodoc
const IID_IWICImageEncoder = '{04C75BF8-3CE1-473B-ACC5-3CC4F5E94999}';

/// {@category Interface}
/// {@category com}
class IWICImageEncoder extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWICImageEncoder(Pointer<COMObject> ptr) : super(ptr);

  int WriteFrame(
    Pointer<COMObject> pImage,
    Pointer<COMObject> pFrameEncode,
    Pointer<WICImageParameters> pImageParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pImage,
            Pointer<COMObject> pFrameEncode,
            Pointer<WICImageParameters> pImageParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pImage,
            Pointer<COMObject> pFrameEncode,
            Pointer<WICImageParameters> pImageParameters,
          )>()(
        ptr.ref.lpVtbl,
        pImage,
        pFrameEncode,
        pImageParameters,
      );

  int WriteFrameThumbnail(
    Pointer<COMObject> pImage,
    Pointer<COMObject> pFrameEncode,
    Pointer<WICImageParameters> pImageParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pImage,
            Pointer<COMObject> pFrameEncode,
            Pointer<WICImageParameters> pImageParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pImage,
            Pointer<COMObject> pFrameEncode,
            Pointer<WICImageParameters> pImageParameters,
          )>()(
        ptr.ref.lpVtbl,
        pImage,
        pFrameEncode,
        pImageParameters,
      );

  int WriteThumbnail(
    Pointer<COMObject> pImage,
    Pointer<COMObject> pEncoder,
    Pointer<WICImageParameters> pImageParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pImage,
            Pointer<COMObject> pEncoder,
            Pointer<WICImageParameters> pImageParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pImage,
            Pointer<COMObject> pEncoder,
            Pointer<WICImageParameters> pImageParameters,
          )>()(
        ptr.ref.lpVtbl,
        pImage,
        pEncoder,
        pImageParameters,
      );
}
