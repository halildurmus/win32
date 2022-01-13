// IMILBitmapEffects.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../ui/wpf/IMILBitmapEffectGroup.dart';
import '../../ui/wpf/IMILBitmapEffect.dart';

/// @nodoc
const IID_IMILBitmapEffects = '{51AC3DCE-67C5-448B-9180-AD3EABDDD5DD}';

/// {@category Interface}
/// {@category com}
class IMILBitmapEffects extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMILBitmapEffects(Pointer<COMObject> ptr) : super(ptr);

  int NewEnum(
    Pointer<Pointer<COMObject>> ppiuReturn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppiuReturn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppiuReturn,
          )>()(
        ptr.ref.lpVtbl,
        ppiuReturn,
      );

  Pointer<COMObject> get Parent {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEffect,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Item(
    int uindex,
    Pointer<Pointer<COMObject>> ppEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uindex,
            Pointer<Pointer<COMObject>> ppEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uindex,
            Pointer<Pointer<COMObject>> ppEffect,
          )>()(
        ptr.ref.lpVtbl,
        uindex,
        ppEffect,
      );

  int get Count {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
