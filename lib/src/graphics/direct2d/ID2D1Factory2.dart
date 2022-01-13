// ID2D1Factory2.dart

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

import '../../graphics/direct2d/ID2D1Factory1.dart';
import '../../graphics/dxgi/IDXGIDevice.dart';
import '../../graphics/direct2d/ID2D1Device1.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1Factory2 = '{94F81A73-9212-4376-9C58-B16A3A0D3992}';

/// {@category Interface}
/// {@category com}
class ID2D1Factory2 extends ID2D1Factory1 {
  // vtable begins at 27, is 1 entries long.
  ID2D1Factory2(Pointer<COMObject> ptr) : super(ptr);

  int CreateDevice_1(
    Pointer<COMObject> dxgiDevice,
    Pointer<Pointer<COMObject>> d2dDevice1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> dxgiDevice,
            Pointer<Pointer<COMObject>> d2dDevice1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> dxgiDevice,
            Pointer<Pointer<COMObject>> d2dDevice1,
          )>()(
        ptr.ref.lpVtbl,
        dxgiDevice,
        d2dDevice1,
      );
}
