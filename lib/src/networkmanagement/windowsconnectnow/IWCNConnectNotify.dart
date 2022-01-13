// IWCNConnectNotify.dart

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
const IID_IWCNConnectNotify = '{C100BE9F-D33A-4A4B-BF23-BBEF4663D017}';

/// {@category Interface}
/// {@category com}
class IWCNConnectNotify extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWCNConnectNotify(Pointer<COMObject> ptr) : super(ptr);

  int ConnectSucceeded() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int ConnectFailed(
    int hrFailure,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrFailure,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrFailure,
          )>()(
        ptr.ref.lpVtbl,
        hrFailure,
      );
}
