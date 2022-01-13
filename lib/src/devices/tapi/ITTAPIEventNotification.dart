// ITTAPIEventNotification.dart

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
import '../../devices/tapi/structs.g.dart';
import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITTAPIEventNotification = '{EDDB9426-3B91-11D1-8F30-00C04FB6809F}';

/// {@category Interface}
/// {@category com}
class ITTAPIEventNotification extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITTAPIEventNotification(Pointer<COMObject> ptr) : super(ptr);

  int Event(
    int TapiEvent,
    Pointer<COMObject> pEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 TapiEvent,
            Pointer<COMObject> pEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int TapiEvent,
            Pointer<COMObject> pEvent,
          )>()(
        ptr.ref.lpVtbl,
        TapiEvent,
        pEvent,
      );
}
