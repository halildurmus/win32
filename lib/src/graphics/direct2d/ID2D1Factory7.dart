// ID2D1Factory7.dart

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

import '../../graphics/direct2d/ID2D1Factory6.dart';
import '../../graphics/dxgi/IDXGIDevice.dart';
import '../../graphics/direct2d/ID2D1Device6.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1Factory7 = '{BDC2BDD3-B96C-4DE6-BDF7-99D4745454DE}';

/// {@category Interface}
/// {@category com}
class ID2D1Factory7 extends ID2D1Factory6 {
  // vtable begins at 32, is 1 entries long.
  ID2D1Factory7(Pointer<COMObject> ptr) : super(ptr);

  int CreateDevice_6(
    Pointer<COMObject> dxgiDevice,
    Pointer<Pointer<COMObject>> d2dDevice6,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> dxgiDevice,
            Pointer<Pointer<COMObject>> d2dDevice6,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> dxgiDevice,
            Pointer<Pointer<COMObject>> d2dDevice6,
          )>()(
        ptr.ref.lpVtbl,
        dxgiDevice,
        d2dDevice6,
      );
}
