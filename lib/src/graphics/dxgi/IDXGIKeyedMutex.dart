// IDXGIKeyedMutex.dart

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

import '../../graphics/dxgi/IDXGIDeviceSubObject.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGIKeyedMutex = '{9D8E1289-D7B3-465F-8126-250E349AF85D}';

/// {@category Interface}
/// {@category com}
class IDXGIKeyedMutex extends IDXGIDeviceSubObject {
  // vtable begins at 8, is 2 entries long.
  IDXGIKeyedMutex(Pointer<COMObject> ptr) : super(ptr);

  int AcquireSync(
    int Key,
    int dwMilliseconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Key,
            Uint32 dwMilliseconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Key,
            int dwMilliseconds,
          )>()(
        ptr.ref.lpVtbl,
        Key,
        dwMilliseconds,
      );

  int ReleaseSync(
    int Key,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Key,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Key,
          )>()(
        ptr.ref.lpVtbl,
        Key,
      );
}
