// ISBE2SpanningEvent.dart

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
const IID_ISBE2SpanningEvent = '{CAEDE760-B6B1-11DB-A578-0018F3FA24C6}';

/// {@category Interface}
/// {@category com}
class ISBE2SpanningEvent extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISBE2SpanningEvent(Pointer<COMObject> ptr) : super(ptr);

  int GetEvent(
    Pointer<GUID> idEvt,
    int streamId,
    Pointer<Uint32> pcb,
    Pointer<Uint8> pb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> idEvt,
            Uint32 streamId,
            Pointer<Uint32> pcb,
            Pointer<Uint8> pb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> idEvt,
            int streamId,
            Pointer<Uint32> pcb,
            Pointer<Uint8> pb,
          )>()(
        ptr.ref.lpVtbl,
        idEvt,
        streamId,
        pcb,
        pb,
      );
}
