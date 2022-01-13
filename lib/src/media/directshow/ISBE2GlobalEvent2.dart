// ISBE2GlobalEvent2.dart

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

import '../../media/directshow/ISBE2GlobalEvent.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISBE2GlobalEvent2 = '{6D8309BF-00FE-4506-8B03-F8C65B5C9B39}';

/// {@category Interface}
/// {@category com}
class ISBE2GlobalEvent2 extends ISBE2GlobalEvent {
  // vtable begins at 4, is 1 entries long.
  ISBE2GlobalEvent2(Pointer<COMObject> ptr) : super(ptr);

  int GetEventEx(
    Pointer<GUID> idEvt,
    int param1,
    int param2,
    int param3,
    int param4,
    Pointer<Int32> pSpanning,
    Pointer<Uint32> pcb,
    Pointer<Uint8> pb,
    Pointer<Int64> pStreamTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
            Pointer<Int64> pStreamTime,
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
            Pointer<Int64> pStreamTime,
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
        pStreamTime,
      );
}
