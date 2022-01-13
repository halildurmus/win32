// IRTCWatcher.dart

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

import '../../system/realtimecommunications/IRTCPresenceContact.dart';
import '../../system/realtimecommunications/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRTCWatcher = '{C7CEDAD8-346B-4D1B-AC02-A2088DF9BE4F}';

/// {@category Interface}
/// {@category com}
class IRTCWatcher extends IRTCPresenceContact {
  // vtable begins at 11, is 2 entries long.
  IRTCWatcher(Pointer<COMObject> ptr) : super(ptr);

  int get State {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> penState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> penState,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set State(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(12)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 enState,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int enState,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
