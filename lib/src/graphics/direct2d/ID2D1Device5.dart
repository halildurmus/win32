// ID2D1Device5.dart

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

import '../../graphics/direct2d/ID2D1Device4.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/direct2d/ID2D1DeviceContext5.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1Device5 = '{D55BA0A4-6405-4694-AEF5-08EE1A4358B4}';

/// {@category Interface}
/// {@category com}
class ID2D1Device5 extends ID2D1Device4 {
  // vtable begins at 19, is 1 entries long.
  ID2D1Device5(Pointer<COMObject> ptr) : super(ptr);

  int CreateDeviceContext_5(
    int options,
    Pointer<Pointer<COMObject>> deviceContext5,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 options,
            Pointer<Pointer<COMObject>> deviceContext5,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int options,
            Pointer<Pointer<COMObject>> deviceContext5,
          )>()(
        ptr.ref.lpVtbl,
        options,
        deviceContext5,
      );
}
