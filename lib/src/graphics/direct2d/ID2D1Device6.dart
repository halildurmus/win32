// ID2D1Device6.dart

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

import '../../graphics/direct2d/ID2D1Device5.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/direct2d/ID2D1DeviceContext6.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1Device6 = '{7BFEF914-2D75-4BAD-BE87-E18DDB077B6D}';

/// {@category Interface}
/// {@category com}
class ID2D1Device6 extends ID2D1Device5 {
  // vtable begins at 20, is 1 entries long.
  ID2D1Device6(Pointer<COMObject> ptr) : super(ptr);

  int CreateDeviceContext_6(
    int options,
    Pointer<Pointer<COMObject>> deviceContext6,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 options,
            Pointer<Pointer<COMObject>> deviceContext6,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int options,
            Pointer<Pointer<COMObject>> deviceContext6,
          )>()(
        ptr.ref.lpVtbl,
        options,
        deviceContext6,
      );
}
