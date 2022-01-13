// ID2D1Factory1.dart

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

import '../../graphics/direct2d/ID2D1Factory.dart';
import '../../graphics/dxgi/IDXGIDevice.dart';
import '../../graphics/direct2d/ID2D1Device.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/direct2d/ID2D1StrokeStyle1.dart';
import '../../graphics/direct2d/ID2D1PathGeometry1.dart';
import '../../graphics/directwrite/IDWriteRenderingParams.dart';
import '../../graphics/direct2d/ID2D1DrawingStateBlock1.dart';
import '../../system/com/IStream.dart';
import '../../graphics/direct2d/ID2D1GdiMetafile.dart';
import '../../graphics/direct2d/callbacks.g.dart';
import '../../graphics/direct2d/ID2D1Properties.dart';

/// @nodoc
const IID_ID2D1Factory1 = '{BB12D362-DAEE-4B9A-AA1D-14BA401CFA1F}';

/// {@category Interface}
/// {@category com}
class ID2D1Factory1 extends ID2D1Factory {
  // vtable begins at 17, is 10 entries long.
  ID2D1Factory1(Pointer<COMObject> ptr) : super(ptr);

  int CreateDevice(
    Pointer<COMObject> dxgiDevice,
    Pointer<Pointer<COMObject>> d2dDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> dxgiDevice,
            Pointer<Pointer<COMObject>> d2dDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> dxgiDevice,
            Pointer<Pointer<COMObject>> d2dDevice,
          )>()(
        ptr.ref.lpVtbl,
        dxgiDevice,
        d2dDevice,
      );

  int CreateStrokeStyle_1(
    Pointer<D2D1_STROKE_STYLE_PROPERTIES1> strokeStyleProperties,
    Pointer<Float> dashes,
    int dashesCount,
    Pointer<Pointer<COMObject>> strokeStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_STROKE_STYLE_PROPERTIES1> strokeStyleProperties,
            Pointer<Float> dashes,
            Uint32 dashesCount,
            Pointer<Pointer<COMObject>> strokeStyle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_STROKE_STYLE_PROPERTIES1> strokeStyleProperties,
            Pointer<Float> dashes,
            int dashesCount,
            Pointer<Pointer<COMObject>> strokeStyle,
          )>()(
        ptr.ref.lpVtbl,
        strokeStyleProperties,
        dashes,
        dashesCount,
        strokeStyle,
      );

  int CreatePathGeometry_1(
    Pointer<Pointer<COMObject>> pathGeometry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pathGeometry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pathGeometry,
          )>()(
        ptr.ref.lpVtbl,
        pathGeometry,
      );

  int CreateDrawingStateBlock_1(
    Pointer<D2D1_DRAWING_STATE_DESCRIPTION1> drawingStateDescription,
    Pointer<COMObject> textRenderingParams,
    Pointer<Pointer<COMObject>> drawingStateBlock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_DRAWING_STATE_DESCRIPTION1> drawingStateDescription,
            Pointer<COMObject> textRenderingParams,
            Pointer<Pointer<COMObject>> drawingStateBlock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_DRAWING_STATE_DESCRIPTION1> drawingStateDescription,
            Pointer<COMObject> textRenderingParams,
            Pointer<Pointer<COMObject>> drawingStateBlock,
          )>()(
        ptr.ref.lpVtbl,
        drawingStateDescription,
        textRenderingParams,
        drawingStateBlock,
      );

  int CreateGdiMetafile(
    Pointer<COMObject> metafileStream,
    Pointer<Pointer<COMObject>> metafile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> metafileStream,
            Pointer<Pointer<COMObject>> metafile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> metafileStream,
            Pointer<Pointer<COMObject>> metafile,
          )>()(
        ptr.ref.lpVtbl,
        metafileStream,
        metafile,
      );

  int RegisterEffectFromStream(
    Pointer<GUID> classId,
    Pointer<COMObject> propertyXml,
    Pointer<D2D1_PROPERTY_BINDING> bindings,
    int bindingsCount,
    Pointer<NativeFunction<PD2D1_EFFECT_FACTORY>> effectFactory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> classId,
            Pointer<COMObject> propertyXml,
            Pointer<D2D1_PROPERTY_BINDING> bindings,
            Uint32 bindingsCount,
            Pointer<NativeFunction<PD2D1_EFFECT_FACTORY>> effectFactory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> classId,
            Pointer<COMObject> propertyXml,
            Pointer<D2D1_PROPERTY_BINDING> bindings,
            int bindingsCount,
            Pointer<NativeFunction<PD2D1_EFFECT_FACTORY>> effectFactory,
          )>()(
        ptr.ref.lpVtbl,
        classId,
        propertyXml,
        bindings,
        bindingsCount,
        effectFactory,
      );

  int RegisterEffectFromString(
    Pointer<GUID> classId,
    Pointer<Utf16> propertyXml,
    Pointer<D2D1_PROPERTY_BINDING> bindings,
    int bindingsCount,
    Pointer<NativeFunction<PD2D1_EFFECT_FACTORY>> effectFactory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> classId,
            Pointer<Utf16> propertyXml,
            Pointer<D2D1_PROPERTY_BINDING> bindings,
            Uint32 bindingsCount,
            Pointer<NativeFunction<PD2D1_EFFECT_FACTORY>> effectFactory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> classId,
            Pointer<Utf16> propertyXml,
            Pointer<D2D1_PROPERTY_BINDING> bindings,
            int bindingsCount,
            Pointer<NativeFunction<PD2D1_EFFECT_FACTORY>> effectFactory,
          )>()(
        ptr.ref.lpVtbl,
        classId,
        propertyXml,
        bindings,
        bindingsCount,
        effectFactory,
      );

  int UnregisterEffect(
    Pointer<GUID> classId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> classId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> classId,
          )>()(
        ptr.ref.lpVtbl,
        classId,
      );

  int GetRegisteredEffects(
    Pointer<GUID> effects,
    int effectsCount,
    Pointer<Uint32> effectsReturned,
    Pointer<Uint32> effectsRegistered,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> effects,
            Uint32 effectsCount,
            Pointer<Uint32> effectsReturned,
            Pointer<Uint32> effectsRegistered,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> effects,
            int effectsCount,
            Pointer<Uint32> effectsReturned,
            Pointer<Uint32> effectsRegistered,
          )>()(
        ptr.ref.lpVtbl,
        effects,
        effectsCount,
        effectsReturned,
        effectsRegistered,
      );

  int GetEffectProperties(
    Pointer<GUID> effectId,
    Pointer<Pointer<COMObject>> properties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> effectId,
            Pointer<Pointer<COMObject>> properties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> effectId,
            Pointer<Pointer<COMObject>> properties,
          )>()(
        ptr.ref.lpVtbl,
        effectId,
        properties,
      );
}
