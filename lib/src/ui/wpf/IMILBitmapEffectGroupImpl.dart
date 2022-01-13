// IMILBitmapEffectGroupImpl.dart

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
import '../../foundation/structs.g.dart';
import '../../ui/wpf/IMILBitmapEffects.dart';

/// @nodoc
const IID_IMILBitmapEffectGroupImpl = '{78FED518-1CFC-4807-8B85-6B6E51398F62}';

/// {@category Interface}
/// {@category com}
class IMILBitmapEffectGroupImpl extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMILBitmapEffectGroupImpl(Pointer<COMObject> ptr) : super(ptr);

  int Preprocess(
    Pointer<COMObject> pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pContext,
          )>()(
        ptr.ref.lpVtbl,
        pContext,
      );

  int GetNumberChildren(
    Pointer<Uint32> puiNumberChildren,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiNumberChildren,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiNumberChildren,
          )>()(
        ptr.ref.lpVtbl,
        puiNumberChildren,
      );

  int GetChildren(
    Pointer<Pointer<COMObject>> pChildren,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pChildren,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pChildren,
          )>()(
        ptr.ref.lpVtbl,
        pChildren,
      );
}
