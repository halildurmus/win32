// IXpsOMVisual.dart

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

import '../../storage/xps/IXpsOMShareable.dart';
import '../../storage/xps/IXpsOMMatrixTransform.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/IXpsOMGeometry.dart';
import '../../storage/xps/IXpsOMBrush.dart';
import '../../system/com/IUri.dart';

/// @nodoc
const IID_IXpsOMVisual = '{BC3E7333-FB0B-4AF3-A819-0B4EAAD0D2FD}';

/// {@category Interface}
/// {@category com}
class IXpsOMVisual extends IXpsOMShareable {
  // vtable begins at 5, is 25 entries long.
  IXpsOMVisual(Pointer<COMObject> ptr) : super(ptr);

  int GetTransform(
    Pointer<Pointer<COMObject>> matrixTransform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> matrixTransform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> matrixTransform,
          )>()(
        ptr.ref.lpVtbl,
        matrixTransform,
      );

  int GetTransformLocal(
    Pointer<Pointer<COMObject>> matrixTransform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> matrixTransform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> matrixTransform,
          )>()(
        ptr.ref.lpVtbl,
        matrixTransform,
      );

  int SetTransformLocal(
    Pointer<COMObject> matrixTransform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> matrixTransform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> matrixTransform,
          )>()(
        ptr.ref.lpVtbl,
        matrixTransform,
      );

  int GetTransformLookup(
    Pointer<Pointer<Utf16>> key,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> key,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> key,
          )>()(
        ptr.ref.lpVtbl,
        key,
      );

  int SetTransformLookup(
    Pointer<Utf16> key,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> key,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> key,
          )>()(
        ptr.ref.lpVtbl,
        key,
      );

  int GetClipGeometry(
    Pointer<Pointer<COMObject>> clipGeometry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> clipGeometry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> clipGeometry,
          )>()(
        ptr.ref.lpVtbl,
        clipGeometry,
      );

  int GetClipGeometryLocal(
    Pointer<Pointer<COMObject>> clipGeometry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> clipGeometry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> clipGeometry,
          )>()(
        ptr.ref.lpVtbl,
        clipGeometry,
      );

  int SetClipGeometryLocal(
    Pointer<COMObject> clipGeometry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> clipGeometry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> clipGeometry,
          )>()(
        ptr.ref.lpVtbl,
        clipGeometry,
      );

  int GetClipGeometryLookup(
    Pointer<Pointer<Utf16>> key,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> key,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> key,
          )>()(
        ptr.ref.lpVtbl,
        key,
      );

  int SetClipGeometryLookup(
    Pointer<Utf16> key,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> key,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> key,
          )>()(
        ptr.ref.lpVtbl,
        key,
      );

  int GetOpacity(
    Pointer<Float> opacity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> opacity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> opacity,
          )>()(
        ptr.ref.lpVtbl,
        opacity,
      );

  int SetOpacity(
    double opacity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float opacity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double opacity,
          )>()(
        ptr.ref.lpVtbl,
        opacity,
      );

  int GetOpacityMaskBrush(
    Pointer<Pointer<COMObject>> opacityMaskBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> opacityMaskBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> opacityMaskBrush,
          )>()(
        ptr.ref.lpVtbl,
        opacityMaskBrush,
      );

  int GetOpacityMaskBrushLocal(
    Pointer<Pointer<COMObject>> opacityMaskBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> opacityMaskBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> opacityMaskBrush,
          )>()(
        ptr.ref.lpVtbl,
        opacityMaskBrush,
      );

  int SetOpacityMaskBrushLocal(
    Pointer<COMObject> opacityMaskBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> opacityMaskBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> opacityMaskBrush,
          )>()(
        ptr.ref.lpVtbl,
        opacityMaskBrush,
      );

  int GetOpacityMaskBrushLookup(
    Pointer<Pointer<Utf16>> key,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> key,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> key,
          )>()(
        ptr.ref.lpVtbl,
        key,
      );

  int SetOpacityMaskBrushLookup(
    Pointer<Utf16> key,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> key,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> key,
          )>()(
        ptr.ref.lpVtbl,
        key,
      );

  int GetName(
    Pointer<Pointer<Utf16>> name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> name,
          )>()(
        ptr.ref.lpVtbl,
        name,
      );

  int SetName(
    Pointer<Utf16> name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
          )>()(
        ptr.ref.lpVtbl,
        name,
      );

  int GetIsHyperlinkTarget(
    Pointer<Int32> isHyperlink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> isHyperlink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> isHyperlink,
          )>()(
        ptr.ref.lpVtbl,
        isHyperlink,
      );

  int SetIsHyperlinkTarget(
    int isHyperlink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 isHyperlink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int isHyperlink,
          )>()(
        ptr.ref.lpVtbl,
        isHyperlink,
      );

  int GetHyperlinkNavigateUri(
    Pointer<Pointer<COMObject>> hyperlinkUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> hyperlinkUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> hyperlinkUri,
          )>()(
        ptr.ref.lpVtbl,
        hyperlinkUri,
      );

  int SetHyperlinkNavigateUri(
    Pointer<COMObject> hyperlinkUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> hyperlinkUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> hyperlinkUri,
          )>()(
        ptr.ref.lpVtbl,
        hyperlinkUri,
      );

  int GetLanguage(
    Pointer<Pointer<Utf16>> language,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> language,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> language,
          )>()(
        ptr.ref.lpVtbl,
        language,
      );

  int SetLanguage(
    Pointer<Utf16> language,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> language,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> language,
          )>()(
        ptr.ref.lpVtbl,
        language,
      );
}
