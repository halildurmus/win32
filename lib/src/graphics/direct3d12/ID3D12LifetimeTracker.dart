// ID3D12LifetimeTracker.dart

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

import '../../graphics/direct3d12/ID3D12DeviceChild.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12LifetimeTracker = '{3FD03D36-4EB1-424A-A582-494ECB8BA813}';

/// {@category Interface}
/// {@category com}
class ID3D12LifetimeTracker extends ID3D12DeviceChild {
  // vtable begins at 8, is 1 entries long.
  ID3D12LifetimeTracker(Pointer<COMObject> ptr) : super(ptr);

  int DestroyOwnedObject(
    Pointer<COMObject> pObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pObject,
          )>()(
        ptr.ref.lpVtbl,
        pObject,
      );
}
