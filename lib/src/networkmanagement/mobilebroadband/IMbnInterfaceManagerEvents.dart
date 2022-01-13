// IMbnInterfaceManagerEvents.dart

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
import '../../networkmanagement/mobilebroadband/IMbnInterface.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMbnInterfaceManagerEvents = '{DCBBBAB6-201C-4BBB-AAEE-338E368AF6FA}';

/// {@category Interface}
/// {@category com}
class IMbnInterfaceManagerEvents extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMbnInterfaceManagerEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnInterfaceArrival(
    Pointer<COMObject> newInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> newInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> newInterface,
          )>()(
        ptr.ref.lpVtbl,
        newInterface,
      );

  int OnInterfaceRemoval(
    Pointer<COMObject> oldInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> oldInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> oldInterface,
          )>()(
        ptr.ref.lpVtbl,
        oldInterface,
      );
}
