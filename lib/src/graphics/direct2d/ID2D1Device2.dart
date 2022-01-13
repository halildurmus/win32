// ID2D1Device2.dart

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

import '../../graphics/direct2d/ID2D1Device1.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/direct2d/ID2D1DeviceContext2.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/ID2D1Bitmap.dart';
import '../../graphics/dxgi/IDXGIDevice.dart';

/// @nodoc
const IID_ID2D1Device2 = '{A44472E1-8DFB-4E60-8492-6E2861C9CA8B}';

/// {@category Interface}
/// {@category com}
class ID2D1Device2 extends ID2D1Device1 {
  // vtable begins at 12, is 3 entries long.
  ID2D1Device2(Pointer<COMObject> ptr) : super(ptr);

  int CreateDeviceContext_2(
    int options,
    Pointer<Pointer<COMObject>> deviceContext2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 options,
            Pointer<Pointer<COMObject>> deviceContext2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int options,
            Pointer<Pointer<COMObject>> deviceContext2,
          )>()(
        ptr.ref.lpVtbl,
        options,
        deviceContext2,
      );

  void FlushDeviceContexts(
    Pointer<COMObject> bitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> bitmap,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> bitmap,
          )>()(
        ptr.ref.lpVtbl,
        bitmap,
      );

  int GetDxgiDevice(
    Pointer<Pointer<COMObject>> dxgiDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> dxgiDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> dxgiDevice,
          )>()(
        ptr.ref.lpVtbl,
        dxgiDevice,
      );
}
