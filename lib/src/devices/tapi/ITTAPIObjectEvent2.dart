// ITTAPIObjectEvent2.dart

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

import '../../devices/tapi/ITTAPIObjectEvent.dart';
import '../../devices/tapi/ITPhone.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITTAPIObjectEvent2 = '{359DDA6E-68CE-4383-BF0B-169133C41B46}';

/// {@category Interface}
/// {@category com}
class ITTAPIObjectEvent2 extends ITTAPIObjectEvent {
  // vtable begins at 11, is 1 entries long.
  ITTAPIObjectEvent2(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get Phone {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPhone,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPhone,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
