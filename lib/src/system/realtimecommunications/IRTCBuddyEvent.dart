// IRTCBuddyEvent.dart

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

import '../../system/com/IDispatch.dart';
import '../../system/realtimecommunications/IRTCBuddy.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRTCBuddyEvent = '{F36D755D-17E6-404E-954F-0FC07574C78D}';

/// {@category Interface}
/// {@category com}
class IRTCBuddyEvent extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IRTCBuddyEvent(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get Buddy {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBuddy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBuddy,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
