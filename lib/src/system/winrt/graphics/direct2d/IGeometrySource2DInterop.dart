// IGeometrySource2DInterop.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../../combase.dart';
import '../../../../constants.dart';
import '../../../../exceptions.dart';
import '../../../../guid.dart';
import '../../../../macros.dart';
import '../../../../ole32.dart';
import '../../../../utils.dart';

import '../../../../system/com/IUnknown.dart';
import '../../../../graphics/direct2d/ID2D1Geometry.dart';
import '../../../../foundation/structs.g.dart';
import '../../../../graphics/direct2d/ID2D1Factory.dart';

/// @nodoc
const IID_IGeometrySource2DInterop = '{0657AF73-53FD-47CF-84FF-C8492D2A80A3}';

/// {@category Interface}
/// {@category com}
class IGeometrySource2DInterop extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IGeometrySource2DInterop(Pointer<COMObject> ptr) : super(ptr);

  int GetGeometry(
    Pointer<Pointer<COMObject>> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int TryGetGeometryUsingFactory(
    Pointer<COMObject> factory,
    Pointer<Pointer<COMObject>> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> factory,
            Pointer<Pointer<COMObject>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> factory,
            Pointer<Pointer<COMObject>> value,
          )>()(
        ptr.ref.lpVtbl,
        factory,
        value,
      );
}
