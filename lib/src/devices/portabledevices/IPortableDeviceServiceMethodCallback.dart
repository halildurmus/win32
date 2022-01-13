// IPortableDeviceServiceMethodCallback.dart

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
import '../../devices/portabledevices/IPortableDeviceValues.dart';

/// @nodoc
const IID_IPortableDeviceServiceMethodCallback =
    '{C424233C-AFCE-4828-A756-7ED7A2350083}';

/// {@category Interface}
/// {@category com}
class IPortableDeviceServiceMethodCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPortableDeviceServiceMethodCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnComplete(
    int hrStatus,
    Pointer<COMObject> pResults,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrStatus,
            Pointer<COMObject> pResults,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrStatus,
            Pointer<COMObject> pResults,
          )>()(
        ptr.ref.lpVtbl,
        hrStatus,
        pResults,
      );
}
