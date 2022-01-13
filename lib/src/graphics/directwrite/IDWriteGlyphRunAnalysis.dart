// IDWriteGlyphRunAnalysis.dart

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
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteRenderingParams.dart';

/// @nodoc
const IID_IDWriteGlyphRunAnalysis = '{7D97DBF7-E085-42D4-81E3-6A883BDED118}';

/// {@category Interface}
/// {@category com}
class IDWriteGlyphRunAnalysis extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDWriteGlyphRunAnalysis(Pointer<COMObject> ptr) : super(ptr);

  int GetAlphaTextureBounds(
    int textureType,
    Pointer<RECT> textureBounds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 textureType,
            Pointer<RECT> textureBounds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int textureType,
            Pointer<RECT> textureBounds,
          )>()(
        ptr.ref.lpVtbl,
        textureType,
        textureBounds,
      );

  int CreateAlphaTexture(
    int textureType,
    Pointer<RECT> textureBounds,
    Pointer<Uint8> alphaValues,
    int bufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 textureType,
            Pointer<RECT> textureBounds,
            Pointer<Uint8> alphaValues,
            Uint32 bufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int textureType,
            Pointer<RECT> textureBounds,
            Pointer<Uint8> alphaValues,
            int bufferSize,
          )>()(
        ptr.ref.lpVtbl,
        textureType,
        textureBounds,
        alphaValues,
        bufferSize,
      );

  int GetAlphaBlendParams(
    Pointer<COMObject> renderingParams,
    Pointer<Float> blendGamma,
    Pointer<Float> blendEnhancedContrast,
    Pointer<Float> blendClearTypeLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> renderingParams,
            Pointer<Float> blendGamma,
            Pointer<Float> blendEnhancedContrast,
            Pointer<Float> blendClearTypeLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> renderingParams,
            Pointer<Float> blendGamma,
            Pointer<Float> blendEnhancedContrast,
            Pointer<Float> blendClearTypeLevel,
          )>()(
        ptr.ref.lpVtbl,
        renderingParams,
        blendGamma,
        blendEnhancedContrast,
        blendClearTypeLevel,
      );
}
