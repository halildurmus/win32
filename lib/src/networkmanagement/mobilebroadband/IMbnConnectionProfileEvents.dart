// IMbnConnectionProfileEvents.dart

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
const IID_IMbnConnectionProfileEvents =
    '{DCBBBAB6-2011-4BBB-AAEE-338E368AF6FA}';

/// {@category Interface}
/// {@category com}
class IMbnConnectionProfileEvents extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMbnConnectionProfileEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnProfileUpdate(
    Pointer<COMObject> newProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> newProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> newProfile,
          )>()(
        ptr.ref.lpVtbl,
        newProfile,
      );
}
