// IMILBitmapEffectImpl.dart

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
import '../../ui/wpf/IMILBitmapEffectOutputConnector.dart';
import '../../foundation/structs.g.dart';
import '../../ui/wpf/IMILBitmapEffectGroup.dart';
import '../../graphics/imaging/IWICBitmapSource.dart';
import '../../ui/wpf/structs.g.dart';
import '../../ui/wpf/IMILBitmapEffectRenderContext.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IMILBitmapEffectImpl = '{CC2468F2-9936-47BE-B4AF-06B5DF5DBCBB}';

/// {@category Interface}
/// {@category com}
class IMILBitmapEffectImpl extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IMILBitmapEffectImpl(Pointer<COMObject> ptr) : super(ptr);

  int IsInPlaceModificationAllowed(
    Pointer<COMObject> pOutputConnector,
    Pointer<Int16> pfModifyInPlace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pOutputConnector,
            Pointer<Int16> pfModifyInPlace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pOutputConnector,
            Pointer<Int16> pfModifyInPlace,
          )>()(
        ptr.ref.lpVtbl,
        pOutputConnector,
        pfModifyInPlace,
      );

  int SetParentEffect(
    Pointer<COMObject> pParentEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pParentEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pParentEffect,
          )>()(
        ptr.ref.lpVtbl,
        pParentEffect,
      );

  int GetInputSource(
    int uiIndex,
    Pointer<Pointer<COMObject>> ppBitmapSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiIndex,
            Pointer<Pointer<COMObject>> ppBitmapSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiIndex,
            Pointer<Pointer<COMObject>> ppBitmapSource,
          )>()(
        ptr.ref.lpVtbl,
        uiIndex,
        ppBitmapSource,
      );

  int GetInputSourceBounds(
    int uiIndex,
    Pointer<MilRectD> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiIndex,
            Pointer<MilRectD> pRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiIndex,
            Pointer<MilRectD> pRect,
          )>()(
        ptr.ref.lpVtbl,
        uiIndex,
        pRect,
      );

  int GetInputBitmapSource(
    int uiIndex,
    Pointer<COMObject> pRenderContext,
    Pointer<Int16> pfModifyInPlace,
    Pointer<Pointer<COMObject>> ppBitmapSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiIndex,
            Pointer<COMObject> pRenderContext,
            Pointer<Int16> pfModifyInPlace,
            Pointer<Pointer<COMObject>> ppBitmapSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiIndex,
            Pointer<COMObject> pRenderContext,
            Pointer<Int16> pfModifyInPlace,
            Pointer<Pointer<COMObject>> ppBitmapSource,
          )>()(
        ptr.ref.lpVtbl,
        uiIndex,
        pRenderContext,
        pfModifyInPlace,
        ppBitmapSource,
      );

  int GetOutputBitmapSource(
    int uiIndex,
    Pointer<COMObject> pRenderContext,
    Pointer<Int16> pfModifyInPlace,
    Pointer<Pointer<COMObject>> ppBitmapSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiIndex,
            Pointer<COMObject> pRenderContext,
            Pointer<Int16> pfModifyInPlace,
            Pointer<Pointer<COMObject>> ppBitmapSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiIndex,
            Pointer<COMObject> pRenderContext,
            Pointer<Int16> pfModifyInPlace,
            Pointer<Pointer<COMObject>> ppBitmapSource,
          )>()(
        ptr.ref.lpVtbl,
        uiIndex,
        pRenderContext,
        pfModifyInPlace,
        ppBitmapSource,
      );

  int Initialize(
    Pointer<COMObject> pInner,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pInner,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pInner,
          )>()(
        ptr.ref.lpVtbl,
        pInner,
      );
}
