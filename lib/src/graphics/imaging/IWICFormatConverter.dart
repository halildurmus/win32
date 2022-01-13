// IWICFormatConverter.dart

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

import '../../graphics/imaging/IWICBitmapSource.dart';
import '../../graphics/imaging/structs.g.dart';
import '../../graphics/imaging/IWICPalette.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWICFormatConverter = '{00000301-A8F2-4877-BA0A-FD2B6645FB94}';

/// {@category Interface}
/// {@category com}
class IWICFormatConverter extends IWICBitmapSource {
  // vtable begins at 8, is 2 entries long.
  IWICFormatConverter(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pISource,
    Pointer<GUID> dstFormat,
    int dither,
    Pointer<COMObject> pIPalette,
    double alphaThresholdPercent,
    int paletteTranslate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pISource,
            Pointer<GUID> dstFormat,
            Int32 dither,
            Pointer<COMObject> pIPalette,
            Double alphaThresholdPercent,
            Int32 paletteTranslate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pISource,
            Pointer<GUID> dstFormat,
            int dither,
            Pointer<COMObject> pIPalette,
            double alphaThresholdPercent,
            int paletteTranslate,
          )>()(
        ptr.ref.lpVtbl,
        pISource,
        dstFormat,
        dither,
        pIPalette,
        alphaThresholdPercent,
        paletteTranslate,
      );

  int CanConvert(
    Pointer<GUID> srcPixelFormat,
    Pointer<GUID> dstPixelFormat,
    Pointer<Int32> pfCanConvert,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> srcPixelFormat,
            Pointer<GUID> dstPixelFormat,
            Pointer<Int32> pfCanConvert,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> srcPixelFormat,
            Pointer<GUID> dstPixelFormat,
            Pointer<Int32> pfCanConvert,
          )>()(
        ptr.ref.lpVtbl,
        srcPixelFormat,
        dstPixelFormat,
        pfCanConvert,
      );
}
