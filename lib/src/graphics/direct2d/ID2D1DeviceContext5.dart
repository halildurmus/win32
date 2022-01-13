// ID2D1DeviceContext5.dart

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

import '../../graphics/direct2d/ID2D1DeviceContext4.dart';
import '../../system/com/IStream.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../graphics/direct2d/ID2D1SvgDocument.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../graphics/direct2d/ID2D1ColorContext1.dart';
import '../../graphics/direct2d/structs.g.dart';

/// @nodoc
const IID_ID2D1DeviceContext5 = '{7836D248-68CC-4DF6-B9E8-DE991BF62EB7}';

/// {@category Interface}
/// {@category com}
class ID2D1DeviceContext5 extends ID2D1DeviceContext4 {
  // vtable begins at 115, is 4 entries long.
  ID2D1DeviceContext5(Pointer<COMObject> ptr) : super(ptr);

  int CreateSvgDocument(
    Pointer<COMObject> inputXmlStream,
    D2D_SIZE_F viewportSize,
    Pointer<Pointer<COMObject>> svgDocument,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(115)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> inputXmlStream,
            D2D_SIZE_F viewportSize,
            Pointer<Pointer<COMObject>> svgDocument,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> inputXmlStream,
            D2D_SIZE_F viewportSize,
            Pointer<Pointer<COMObject>> svgDocument,
          )>()(
        ptr.ref.lpVtbl,
        inputXmlStream,
        viewportSize,
        svgDocument,
      );

  void DrawSvgDocument(
    Pointer<COMObject> svgDocument,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(116)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> svgDocument,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> svgDocument,
          )>()(
        ptr.ref.lpVtbl,
        svgDocument,
      );

  int CreateColorContextFromDxgiColorSpace(
    int colorSpace,
    Pointer<Pointer<COMObject>> colorContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(117)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 colorSpace,
            Pointer<Pointer<COMObject>> colorContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int colorSpace,
            Pointer<Pointer<COMObject>> colorContext,
          )>()(
        ptr.ref.lpVtbl,
        colorSpace,
        colorContext,
      );

  int CreateColorContextFromSimpleColorProfile(
    Pointer<D2D1_SIMPLE_COLOR_PROFILE> simpleProfile,
    Pointer<Pointer<COMObject>> colorContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(118)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_SIMPLE_COLOR_PROFILE> simpleProfile,
            Pointer<Pointer<COMObject>> colorContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_SIMPLE_COLOR_PROFILE> simpleProfile,
            Pointer<Pointer<COMObject>> colorContext,
          )>()(
        ptr.ref.lpVtbl,
        simpleProfile,
        colorContext,
      );
}
