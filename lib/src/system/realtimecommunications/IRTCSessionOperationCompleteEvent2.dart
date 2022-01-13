// IRTCSessionOperationCompleteEvent2.dart

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

import '../../system/realtimecommunications/IRTCSessionOperationCompleteEvent.dart';
import '../../system/realtimecommunications/IRTCParticipant.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRTCSessionOperationCompleteEvent2 =
    '{F6FC2A9B-D5BC-4241-B436-1B8460C13832}';

/// {@category Interface}
/// {@category com}
class IRTCSessionOperationCompleteEvent2
    extends IRTCSessionOperationCompleteEvent {
  // vtable begins at 11, is 2 entries long.
  IRTCSessionOperationCompleteEvent2(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get Participant {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppParticipant,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppParticipant,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetRemoteSessionDescription(
    Pointer<Pointer<Utf16>> pbstrContentType,
    Pointer<Pointer<Utf16>> pbstrSessionDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrContentType,
            Pointer<Pointer<Utf16>> pbstrSessionDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrContentType,
            Pointer<Pointer<Utf16>> pbstrSessionDescription,
          )>()(
        ptr.ref.lpVtbl,
        pbstrContentType,
        pbstrSessionDescription,
      );
}
