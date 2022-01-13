// ID2D1Factory3.dart

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

import '../../graphics/direct2d/ID2D1Factory2.dart';
import '../../graphics/dxgi/IDXGIDevice.dart';
import '../../graphics/direct2d/ID2D1Device2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1Factory3 = '{0869759F-4F00-413F-B03E-2BDA45404D0F}';

/// {@category Interface}
/// {@category com}
class ID2D1Factory3 extends ID2D1Factory2 {
  // vtable begins at 28, is 1 entries long.
  ID2D1Factory3(Pointer<COMObject> ptr) : super(ptr);

  int CreateDevice_2(
    Pointer<COMObject> dxgiDevice,
    Pointer<Pointer<COMObject>> d2dDevice2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> dxgiDevice,
            Pointer<Pointer<COMObject>> d2dDevice2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> dxgiDevice,
            Pointer<Pointer<COMObject>> d2dDevice2,
          )>()(
        ptr.ref.lpVtbl,
        dxgiDevice,
        d2dDevice2,
      );
}
