// IDWriteFontFace2.dart

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

import '../../graphics/directwrite/IDWriteFontFace1.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteRenderingParams.dart';

/// @nodoc
const IID_IDWriteFontFace2 = '{D8B768FF-64BC-4E66-982B-EC8E87F693F7}';

/// {@category Interface}
/// {@category com}
class IDWriteFontFace2 extends IDWriteFontFace1 {
  // vtable begins at 30, is 5 entries long.
  IDWriteFontFace2(Pointer<COMObject> ptr) : super(ptr);

  int IsColorFont() => ptr.ref.lpVtbl.value
          .elementAt(30)
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

  int GetColorPaletteCount() => ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetPaletteEntryCount() => ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetPaletteEntries(
    int colorPaletteIndex,
    int firstEntryIndex,
    int entryCount,
    Pointer<DWRITE_COLOR_F> paletteEntries,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 colorPaletteIndex,
            Uint32 firstEntryIndex,
            Uint32 entryCount,
            Pointer<DWRITE_COLOR_F> paletteEntries,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int colorPaletteIndex,
            int firstEntryIndex,
            int entryCount,
            Pointer<DWRITE_COLOR_F> paletteEntries,
          )>()(
        ptr.ref.lpVtbl,
        colorPaletteIndex,
        firstEntryIndex,
        entryCount,
        paletteEntries,
      );

  int GetRecommendedRenderingMode_2(
    double fontEmSize,
    double dpiX,
    double dpiY,
    Pointer<DWRITE_MATRIX> transform,
    int isSideways,
    int outlineThreshold,
    int measuringMode,
    Pointer<COMObject> renderingParams,
    Pointer<Int32> renderingMode,
    Pointer<Int32> gridFitMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float fontEmSize,
            Float dpiX,
            Float dpiY,
            Pointer<DWRITE_MATRIX> transform,
            Int32 isSideways,
            Int32 outlineThreshold,
            Int32 measuringMode,
            Pointer<COMObject> renderingParams,
            Pointer<Int32> renderingMode,
            Pointer<Int32> gridFitMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double fontEmSize,
            double dpiX,
            double dpiY,
            Pointer<DWRITE_MATRIX> transform,
            int isSideways,
            int outlineThreshold,
            int measuringMode,
            Pointer<COMObject> renderingParams,
            Pointer<Int32> renderingMode,
            Pointer<Int32> gridFitMode,
          )>()(
        ptr.ref.lpVtbl,
        fontEmSize,
        dpiX,
        dpiY,
        transform,
        isSideways,
        outlineThreshold,
        measuringMode,
        renderingParams,
        renderingMode,
        gridFitMode,
      );
}
