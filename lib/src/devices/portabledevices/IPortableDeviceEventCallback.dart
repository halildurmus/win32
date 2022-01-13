// IPortableDeviceEventCallback.dart

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
import '../../devices/portabledevices/IPortableDeviceValues.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPortableDeviceEventCallback =
    '{A8792A31-F385-493C-A893-40F64EB45F6E}';

/// {@category Interface}
/// {@category com}
class IPortableDeviceEventCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPortableDeviceEventCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnEvent(
    Pointer<COMObject> pEventParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEventParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEventParameters,
          )>()(
        ptr.ref.lpVtbl,
        pEventParameters,
      );
}
