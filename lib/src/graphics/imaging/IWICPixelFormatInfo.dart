// IWICPixelFormatInfo.dart

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

import '../../graphics/imaging/IWICComponentInfo.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/imaging/IWICColorContext.dart';

/// @nodoc
const IID_IWICPixelFormatInfo = '{E8EDA601-3D48-431A-AB44-69059BE88BBE}';

/// {@category Interface}
/// {@category com}
class IWICPixelFormatInfo extends IWICComponentInfo {
  // vtable begins at 11, is 5 entries long.
  IWICPixelFormatInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetFormatGUID(
    Pointer<GUID> pFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pFormat,
          )>()(
        ptr.ref.lpVtbl,
        pFormat,
      );

  int GetColorContext(
    Pointer<Pointer<COMObject>> ppIColorContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIColorContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIColorContext,
          )>()(
        ptr.ref.lpVtbl,
        ppIColorContext,
      );

  int GetBitsPerPixel(
    Pointer<Uint32> puiBitsPerPixel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiBitsPerPixel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiBitsPerPixel,
          )>()(
        ptr.ref.lpVtbl,
        puiBitsPerPixel,
      );

  int GetChannelCount(
    Pointer<Uint32> puiChannelCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiChannelCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiChannelCount,
          )>()(
        ptr.ref.lpVtbl,
        puiChannelCount,
      );

  int GetChannelMask(
    int uiChannelIndex,
    int cbMaskBuffer,
    Pointer<Uint8> pbMaskBuffer,
    Pointer<Uint32> pcbActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiChannelIndex,
            Uint32 cbMaskBuffer,
            Pointer<Uint8> pbMaskBuffer,
            Pointer<Uint32> pcbActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiChannelIndex,
            int cbMaskBuffer,
            Pointer<Uint8> pbMaskBuffer,
            Pointer<Uint32> pcbActual,
          )>()(
        ptr.ref.lpVtbl,
        uiChannelIndex,
        cbMaskBuffer,
        pbMaskBuffer,
        pcbActual,
      );
}
