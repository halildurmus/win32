// ILocationPermissions.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ILocationPermissions = '{D5FB0A7F-E74E-44F5-8E02-4806863A274F}';

/// {@category Interface}
/// {@category com}
class ILocationPermissions extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ILocationPermissions(Pointer<COMObject> ptr) : super(ptr);

  int GetGlobalLocationPermission(
    Pointer<Int32> pfEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfEnabled,
          )>()(
        ptr.ref.lpVtbl,
        pfEnabled,
      );

  int CheckLocationCapability(
    int dwClientThreadId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwClientThreadId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwClientThreadId,
          )>()(
        ptr.ref.lpVtbl,
        dwClientThreadId,
      );
}
