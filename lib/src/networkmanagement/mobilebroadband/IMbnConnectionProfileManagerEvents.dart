// IMbnConnectionProfileManagerEvents.dart

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
import '../../networkmanagement/mobilebroadband/IMbnConnectionProfile.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMbnConnectionProfileManagerEvents =
    '{DCBBBAB6-201F-4BBB-AAEE-338E368AF6FA}';

/// {@category Interface}
/// {@category com}
class IMbnConnectionProfileManagerEvents extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMbnConnectionProfileManagerEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnConnectionProfileArrival(
    Pointer<COMObject> newConnectionProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> newConnectionProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> newConnectionProfile,
          )>()(
        ptr.ref.lpVtbl,
        newConnectionProfile,
      );

  int OnConnectionProfileRemoval(
    Pointer<COMObject> oldConnectionProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> oldConnectionProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> oldConnectionProfile,
          )>()(
        ptr.ref.lpVtbl,
        oldConnectionProfile,
      );
}
