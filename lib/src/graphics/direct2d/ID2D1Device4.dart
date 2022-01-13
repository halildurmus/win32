// ID2D1Device4.dart

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

import '../../graphics/direct2d/ID2D1Device3.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/direct2d/ID2D1DeviceContext4.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1Device4 = '{D7BDB159-5683-4A46-BC9C-72DC720B858B}';

/// {@category Interface}
/// {@category com}
class ID2D1Device4 extends ID2D1Device3 {
  // vtable begins at 16, is 3 entries long.
  ID2D1Device4(Pointer<COMObject> ptr) : super(ptr);

  int CreateDeviceContext_4(
    int options,
    Pointer<Pointer<COMObject>> deviceContext4,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 options,
            Pointer<Pointer<COMObject>> deviceContext4,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int options,
            Pointer<Pointer<COMObject>> deviceContext4,
          )>()(
        ptr.ref.lpVtbl,
        options,
        deviceContext4,
      );

  void SetMaximumColorGlyphCacheMemory(
    int maximumInBytes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint64 maximumInBytes,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int maximumInBytes,
          )>()(
        ptr.ref.lpVtbl,
        maximumInBytes,
      );

  int GetMaximumColorGlyphCacheMemory() => ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
