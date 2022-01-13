// IDCompositionDevice3.dart

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

import '../../graphics/directcomposition/IDCompositionDevice2.dart';
import '../../graphics/directcomposition/IDCompositionGaussianBlurEffect.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directcomposition/IDCompositionBrightnessEffect.dart';
import '../../graphics/directcomposition/IDCompositionColorMatrixEffect.dart';
import '../../graphics/directcomposition/IDCompositionShadowEffect.dart';
import '../../graphics/directcomposition/IDCompositionHueRotationEffect.dart';
import '../../graphics/directcomposition/IDCompositionSaturationEffect.dart';
import '../../graphics/directcomposition/IDCompositionTurbulenceEffect.dart';
import '../../graphics/directcomposition/IDCompositionLinearTransferEffect.dart';
import '../../graphics/directcomposition/IDCompositionTableTransferEffect.dart';
import '../../graphics/directcomposition/IDCompositionCompositeEffect.dart';
import '../../graphics/directcomposition/IDCompositionBlendEffect.dart';
import '../../graphics/directcomposition/IDCompositionArithmeticCompositeEffect.dart';
import '../../graphics/directcomposition/IDCompositionAffineTransform2DEffect.dart';

/// @nodoc
const IID_IDCompositionDevice3 = '{0987CB06-F916-48BF-8D35-CE7641781BD9}';

/// {@category Interface}
/// {@category com}
class IDCompositionDevice3 extends IDCompositionDevice2 {
  // vtable begins at 24, is 13 entries long.
  IDCompositionDevice3(Pointer<COMObject> ptr) : super(ptr);

  int CreateGaussianBlurEffect(
    Pointer<Pointer<COMObject>> gaussianBlurEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> gaussianBlurEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> gaussianBlurEffect,
          )>()(
        ptr.ref.lpVtbl,
        gaussianBlurEffect,
      );

  int CreateBrightnessEffect(
    Pointer<Pointer<COMObject>> brightnessEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> brightnessEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> brightnessEffect,
          )>()(
        ptr.ref.lpVtbl,
        brightnessEffect,
      );

  int CreateColorMatrixEffect(
    Pointer<Pointer<COMObject>> colorMatrixEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> colorMatrixEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> colorMatrixEffect,
          )>()(
        ptr.ref.lpVtbl,
        colorMatrixEffect,
      );

  int CreateShadowEffect(
    Pointer<Pointer<COMObject>> shadowEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> shadowEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> shadowEffect,
          )>()(
        ptr.ref.lpVtbl,
        shadowEffect,
      );

  int CreateHueRotationEffect(
    Pointer<Pointer<COMObject>> hueRotationEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> hueRotationEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> hueRotationEffect,
          )>()(
        ptr.ref.lpVtbl,
        hueRotationEffect,
      );

  int CreateSaturationEffect(
    Pointer<Pointer<COMObject>> saturationEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> saturationEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> saturationEffect,
          )>()(
        ptr.ref.lpVtbl,
        saturationEffect,
      );

  int CreateTurbulenceEffect(
    Pointer<Pointer<COMObject>> turbulenceEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> turbulenceEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> turbulenceEffect,
          )>()(
        ptr.ref.lpVtbl,
        turbulenceEffect,
      );

  int CreateLinearTransferEffect(
    Pointer<Pointer<COMObject>> linearTransferEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> linearTransferEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> linearTransferEffect,
          )>()(
        ptr.ref.lpVtbl,
        linearTransferEffect,
      );

  int CreateTableTransferEffect(
    Pointer<Pointer<COMObject>> tableTransferEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> tableTransferEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> tableTransferEffect,
          )>()(
        ptr.ref.lpVtbl,
        tableTransferEffect,
      );

  int CreateCompositeEffect(
    Pointer<Pointer<COMObject>> compositeEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> compositeEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> compositeEffect,
          )>()(
        ptr.ref.lpVtbl,
        compositeEffect,
      );

  int CreateBlendEffect(
    Pointer<Pointer<COMObject>> blendEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> blendEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> blendEffect,
          )>()(
        ptr.ref.lpVtbl,
        blendEffect,
      );

  int CreateArithmeticCompositeEffect(
    Pointer<Pointer<COMObject>> arithmeticCompositeEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> arithmeticCompositeEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> arithmeticCompositeEffect,
          )>()(
        ptr.ref.lpVtbl,
        arithmeticCompositeEffect,
      );

  int CreateAffineTransform2DEffect(
    Pointer<Pointer<COMObject>> affineTransform2dEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> affineTransform2dEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> affineTransform2dEffect,
          )>()(
        ptr.ref.lpVtbl,
        affineTransform2dEffect,
      );
}
