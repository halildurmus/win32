// ITfMouseSink.dart

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
const IID_ITfMouseSink = '{A1ADAAA2-3A24-449D-AC96-5183E7F5C217}';

/// {@category Interface}
/// {@category com}
class ITfMouseSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITfMouseSink(Pointer<COMObject> ptr) : super(ptr);

  int OnMouseEvent(
    int uEdge,
    int uQuadrant,
    int dwBtnStatus,
    Pointer<Int32> pfEaten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uEdge,
            Uint32 uQuadrant,
            Uint32 dwBtnStatus,
            Pointer<Int32> pfEaten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uEdge,
            int uQuadrant,
            int dwBtnStatus,
            Pointer<Int32> pfEaten,
          )>()(
        ptr.ref.lpVtbl,
        uEdge,
        uQuadrant,
        dwBtnStatus,
        pfEaten,
      );
}
