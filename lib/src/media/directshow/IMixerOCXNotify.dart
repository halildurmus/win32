// IMixerOCXNotify.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMixerOCXNotify = '{81A3BD31-DEE1-11D1-8508-00A0C91F9CA0}';

/// {@category Interface}
/// {@category com}
class IMixerOCXNotify extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMixerOCXNotify(Pointer<COMObject> ptr) : super(ptr);

  int OnInvalidateRect(
    Pointer<RECT> lpcRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> lpcRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> lpcRect,
          )>()(
        ptr.ref.lpVtbl,
        lpcRect,
      );

  int OnStatusChange(
    int ulStatusFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulStatusFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulStatusFlags,
          )>()(
        ptr.ref.lpVtbl,
        ulStatusFlags,
      );

  int OnDataChange(
    int ulDataFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulDataFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulDataFlags,
          )>()(
        ptr.ref.lpVtbl,
        ulDataFlags,
      );
}
