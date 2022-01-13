// IMILBitmapEffect.dart

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
import '../../ui/wpf/IMILBitmapEffectRenderContext.dart';
import '../../graphics/imaging/IWICBitmapSource.dart';
import '../../foundation/structs.g.dart';
import '../../ui/wpf/IMILBitmapEffectGroup.dart';

/// @nodoc
const IID_IMILBitmapEffect = '{8A6FF321-C944-4A1B-9944-9954AF301258}';

/// {@category Interface}
/// {@category com}
class IMILBitmapEffect extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMILBitmapEffect(Pointer<COMObject> ptr) : super(ptr);

  int GetOutput(
    int uiIndex,
    Pointer<COMObject> pContext,
    Pointer<Pointer<COMObject>> ppBitmapSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiIndex,
            Pointer<COMObject> pContext,
            Pointer<Pointer<COMObject>> ppBitmapSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiIndex,
            Pointer<COMObject> pContext,
            Pointer<Pointer<COMObject>> ppBitmapSource,
          )>()(
        ptr.ref.lpVtbl,
        uiIndex,
        pContext,
        ppBitmapSource,
      );

  int GetParentEffect(
    Pointer<Pointer<COMObject>> ppParentEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppParentEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppParentEffect,
          )>()(
        ptr.ref.lpVtbl,
        ppParentEffect,
      );

  int SetInputSource(
    int uiIndex,
    Pointer<COMObject> pBitmapSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiIndex,
            Pointer<COMObject> pBitmapSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiIndex,
            Pointer<COMObject> pBitmapSource,
          )>()(
        ptr.ref.lpVtbl,
        uiIndex,
        pBitmapSource,
      );
}
