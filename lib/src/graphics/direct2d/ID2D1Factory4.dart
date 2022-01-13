// ID2D1Factory4.dart

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

import '../../graphics/direct2d/ID2D1Factory3.dart';
import '../../graphics/dxgi/IDXGIDevice.dart';
import '../../graphics/direct2d/ID2D1Device3.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1Factory4 = '{BD4EC2D2-0662-4BEE-BA8E-6F29F032E096}';

/// {@category Interface}
/// {@category com}
class ID2D1Factory4 extends ID2D1Factory3 {
  // vtable begins at 29, is 1 entries long.
  ID2D1Factory4(Pointer<COMObject> ptr) : super(ptr);

  int CreateDevice_3(
    Pointer<COMObject> dxgiDevice,
    Pointer<Pointer<COMObject>> d2dDevice3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> dxgiDevice,
            Pointer<Pointer<COMObject>> d2dDevice3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> dxgiDevice,
            Pointer<Pointer<COMObject>> d2dDevice3,
          )>()(
        ptr.ref.lpVtbl,
        dxgiDevice,
        d2dDevice3,
      );
}
