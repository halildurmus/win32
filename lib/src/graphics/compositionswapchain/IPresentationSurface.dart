// IPresentationSurface.dart

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

import '../../graphics/compositionswapchain/IPresentationContent.dart';
import '../../graphics/compositionswapchain/IPresentationBuffer.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../graphics/compositionswapchain/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IPresentationSurface = '{956710FB-EA40-4EBA-A3EB-4375A0EB4EDC}';

/// {@category Interface}
/// {@category com}
class IPresentationSurface extends IPresentationContent {
  // vtable begins at 4, is 8 entries long.
  IPresentationSurface(Pointer<COMObject> ptr) : super(ptr);

  int SetBuffer(
    Pointer<COMObject> presentationBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> presentationBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> presentationBuffer,
          )>()(
        ptr.ref.lpVtbl,
        presentationBuffer,
      );

  int SetColorSpace(
    int colorSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 colorSpace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int colorSpace,
          )>()(
        ptr.ref.lpVtbl,
        colorSpace,
      );

  int SetAlphaMode(
    int alphaMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 alphaMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int alphaMode,
          )>()(
        ptr.ref.lpVtbl,
        alphaMode,
      );

  int SetSourceRect(
    Pointer<RECT> sourceRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> sourceRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> sourceRect,
          )>()(
        ptr.ref.lpVtbl,
        sourceRect,
      );

  int SetTransform(
    Pointer<PresentationTransform> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PresentationTransform> transform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PresentationTransform> transform,
          )>()(
        ptr.ref.lpVtbl,
        transform,
      );

  int RestrictToOutput(
    Pointer<COMObject> output,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> output,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> output,
          )>()(
        ptr.ref.lpVtbl,
        output,
      );

  int SetDisableReadback(
    int value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int SetLetterboxingMargins(
    double leftLetterboxSize,
    double topLetterboxSize,
    double rightLetterboxSize,
    double bottomLetterboxSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float leftLetterboxSize,
            Float topLetterboxSize,
            Float rightLetterboxSize,
            Float bottomLetterboxSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double leftLetterboxSize,
            double topLetterboxSize,
            double rightLetterboxSize,
            double bottomLetterboxSize,
          )>()(
        ptr.ref.lpVtbl,
        leftLetterboxSize,
        topLetterboxSize,
        rightLetterboxSize,
        bottomLetterboxSize,
      );
}
