// IAudioClock2.dart

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
const IID_IAudioClock2 = '{6F49FF73-6727-49AC-A008-D98CF5E70048}';

/// {@category Interface}
/// {@category com}
class IAudioClock2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAudioClock2(Pointer<COMObject> ptr) : super(ptr);

  int GetDevicePosition(
    Pointer<Uint64> DevicePosition,
    Pointer<Uint64> QPCPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> DevicePosition,
            Pointer<Uint64> QPCPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> DevicePosition,
            Pointer<Uint64> QPCPosition,
          )>()(
        ptr.ref.lpVtbl,
        DevicePosition,
        QPCPosition,
      );
}
