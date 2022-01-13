// IDWriteBitmapRenderTarget.dart

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
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteRenderingParams.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IDWriteBitmapRenderTarget = '{5E5A32A3-8DFF-4773-9FF6-0696EAB77267}';

/// {@category Interface}
/// {@category com}
class IDWriteBitmapRenderTarget extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IDWriteBitmapRenderTarget(Pointer<COMObject> ptr) : super(ptr);

  int DrawGlyphRun(
    double baselineOriginX,
    double baselineOriginY,
    int measuringMode,
    Pointer<DWRITE_GLYPH_RUN> glyphRun,
    Pointer<COMObject> renderingParams,
    int textColor,
    Pointer<RECT> blackBoxRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float baselineOriginX,
            Float baselineOriginY,
            Int32 measuringMode,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Pointer<COMObject> renderingParams,
            Uint32 textColor,
            Pointer<RECT> blackBoxRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double baselineOriginX,
            double baselineOriginY,
            int measuringMode,
            Pointer<DWRITE_GLYPH_RUN> glyphRun,
            Pointer<COMObject> renderingParams,
            int textColor,
            Pointer<RECT> blackBoxRect,
          )>()(
        ptr.ref.lpVtbl,
        baselineOriginX,
        baselineOriginY,
        measuringMode,
        glyphRun,
        renderingParams,
        textColor,
        blackBoxRect,
      );

  int GetMemoryDC() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      IntPtr Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  double GetPixelsPerDip() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Float Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              double Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetPixelsPerDip(
    double pixelsPerDip,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float pixelsPerDip,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double pixelsPerDip,
          )>()(
        ptr.ref.lpVtbl,
        pixelsPerDip,
      );

  int GetCurrentTransform(
    Pointer<DWRITE_MATRIX> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_MATRIX> transform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_MATRIX> transform,
          )>()(
        ptr.ref.lpVtbl,
        transform,
      );

  int SetCurrentTransform(
    Pointer<DWRITE_MATRIX> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_MATRIX> transform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_MATRIX> transform,
          )>()(
        ptr.ref.lpVtbl,
        transform,
      );

  int GetSize(
    Pointer<SIZE> size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SIZE> size,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SIZE> size,
          )>()(
        ptr.ref.lpVtbl,
        size,
      );

  int Resize(
    int width,
    int height,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 width,
            Uint32 height,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int width,
            int height,
          )>()(
        ptr.ref.lpVtbl,
        width,
        height,
      );
}
