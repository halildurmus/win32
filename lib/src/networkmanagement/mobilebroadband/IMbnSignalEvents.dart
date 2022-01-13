// IMbnSignalEvents.dart

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
import '../../networkmanagement/mobilebroadband/IMbnSignal.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMbnSignalEvents = '{DCBBBAB6-2004-4BBB-AAEE-338E368AF6FA}';

/// {@category Interface}
/// {@category com}
class IMbnSignalEvents extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMbnSignalEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnSignalStateChange(
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
}
