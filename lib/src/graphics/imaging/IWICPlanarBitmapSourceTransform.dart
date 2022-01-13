// IWICPlanarBitmapSourceTransform.dart

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
const IID_IWICPlanarBitmapSourceTransform =
    '{3AFF9CCE-BE95-4303-B927-E7D16FF4A613}';

/// {@category Interface}
/// {@category com}
class IWICPlanarBitmapSourceTransform extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWICPlanarBitmapSourceTransform(Pointer<COMObject> ptr) : super(ptr);

  int DoesSupportTransform(
    Pointer<Uint32> puiWidth,
    Pointer<Uint32> puiHeight,
    int dstTransform,
    int dstPlanarOptions,
    Pointer<GUID> pguidDstFormats,
    Pointer<WICBitmapPlaneDescription> pPlaneDescriptions,
    int cPlanes,
    Pointer<Int32> pfIsSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiWidth,
            Pointer<Uint32> puiHeight,
            Int32 dstTransform,
            Int32 dstPlanarOptions,
            Pointer<GUID> pguidDstFormats,
            Pointer<WICBitmapPlaneDescription> pPlaneDescriptions,
            Uint32 cPlanes,
            Pointer<Int32> pfIsSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiWidth,
            Pointer<Uint32> puiHeight,
            int dstTransform,
            int dstPlanarOptions,
            Pointer<GUID> pguidDstFormats,
            Pointer<WICBitmapPlaneDescription> pPlaneDescriptions,
            int cPlanes,
            Pointer<Int32> pfIsSupported,
          )>()(
        ptr.ref.lpVtbl,
        puiWidth,
        puiHeight,
        dstTransform,
        dstPlanarOptions,
        pguidDstFormats,
        pPlaneDescriptions,
        cPlanes,
        pfIsSupported,
      );

  int CopyPixels(
    Pointer<WICRect> prcSource,
    int uiWidth,
    int uiHeight,
    int dstTransform,
    int dstPlanarOptions,
    Pointer<WICBitmapPlane> pDstPlanes,
    int cPlanes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WICRect> prcSource,
            Uint32 uiWidth,
            Uint32 uiHeight,
            Int32 dstTransform,
            Int32 dstPlanarOptions,
            Pointer<WICBitmapPlane> pDstPlanes,
            Uint32 cPlanes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WICRect> prcSource,
            int uiWidth,
            int uiHeight,
            int dstTransform,
            int dstPlanarOptions,
            Pointer<WICBitmapPlane> pDstPlanes,
            int cPlanes,
          )>()(
        ptr.ref.lpVtbl,
        prcSource,
        uiWidth,
        uiHeight,
        dstTransform,
        dstPlanarOptions,
        pDstPlanes,
        cPlanes,
      );
}
