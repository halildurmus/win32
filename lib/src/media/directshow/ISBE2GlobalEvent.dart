// ISBE2GlobalEvent.dart

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
const IID_ISBE2GlobalEvent = '{CAEDE759-B6B1-11DB-A578-0018F3FA24C6}';

/// {@category Interface}
/// {@category com}
class ISBE2GlobalEvent extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISBE2GlobalEvent(Pointer<COMObject> ptr) : super(ptr);

  int GetEvent(
    Pointer<GUID> idEvt,
    int param1,
    int param2,
    int param3,
    int param4,
    Pointer<Int32> pSpanning,
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
            Uint32 param1,
            Uint32 param2,
            Uint32 param3,
            Uint32 param4,
            Pointer<Int32> pSpanning,
            Pointer<Uint32> pcb,
            Pointer<Uint8> pb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> idEvt,
            int param1,
            int param2,
            int param3,
            int param4,
            Pointer<Int32> pSpanning,
            Pointer<Uint32> pcb,
            Pointer<Uint8> pb,
          )>()(
        ptr.ref.lpVtbl,
        idEvt,
        param1,
        param2,
        param3,
        param4,
        pSpanning,
        pcb,
        pb,
      );
}
