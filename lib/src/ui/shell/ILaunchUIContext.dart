// ILaunchUIContext.dart

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
const IID_ILaunchUIContext = '{1791E8F6-21C7-4340-882A-A6A93E3FD73B}';

/// {@category Interface}
/// {@category com}
class ILaunchUIContext extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ILaunchUIContext(Pointer<COMObject> ptr) : super(ptr);

  int SetAssociatedWindow(
    int value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int SetTabGroupingPreference(
    int value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );
}
