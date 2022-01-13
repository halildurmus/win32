// ID2D1Factory5.dart

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

import '../../graphics/direct2d/ID2D1Factory4.dart';
import '../../graphics/dxgi/IDXGIDevice.dart';
import '../../graphics/direct2d/ID2D1Device4.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1Factory5 = '{C4349994-838E-4B0F-8CAB-44997D9EEACC}';

/// {@category Interface}
/// {@category com}
class ID2D1Factory5 extends ID2D1Factory4 {
  // vtable begins at 30, is 1 entries long.
  ID2D1Factory5(Pointer<COMObject> ptr) : super(ptr);

  int CreateDevice_4(
    Pointer<COMObject> dxgiDevice,
    Pointer<Pointer<COMObject>> d2dDevice4,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> dxgiDevice,
            Pointer<Pointer<COMObject>> d2dDevice4,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> dxgiDevice,
            Pointer<Pointer<COMObject>> d2dDevice4,
          )>()(
        ptr.ref.lpVtbl,
        dxgiDevice,
        d2dDevice4,
      );
}
