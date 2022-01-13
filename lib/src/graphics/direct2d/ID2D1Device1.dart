// ID2D1Device1.dart

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

import '../../graphics/direct2d/ID2D1Device.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/direct2d/ID2D1DeviceContext1.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1Device1 = '{D21768E1-23A4-4823-A14B-7C3EBA85D658}';

/// {@category Interface}
/// {@category com}
class ID2D1Device1 extends ID2D1Device {
  // vtable begins at 9, is 3 entries long.
  ID2D1Device1(Pointer<COMObject> ptr) : super(ptr);

  int GetRenderingPriority() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void SetRenderingPriority(
    int renderingPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 renderingPriority,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int renderingPriority,
          )>()(
        ptr.ref.lpVtbl,
        renderingPriority,
      );

  int CreateDeviceContext_1(
    int options,
    Pointer<Pointer<COMObject>> deviceContext1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 options,
            Pointer<Pointer<COMObject>> deviceContext1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int options,
            Pointer<Pointer<COMObject>> deviceContext1,
          )>()(
        ptr.ref.lpVtbl,
        options,
        deviceContext1,
      );
}
