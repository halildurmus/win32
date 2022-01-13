// IBroadcastEventEx.dart

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

import '../../media/directshow/IBroadcastEvent.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBroadcastEventEx = '{3D9E3887-1929-423F-8021-43682DE95448}';

/// {@category Interface}
/// {@category com}
class IBroadcastEventEx extends IBroadcastEvent {
  // vtable begins at 4, is 1 entries long.
  IBroadcastEventEx(Pointer<COMObject> ptr) : super(ptr);

  int FireEx(
    GUID EventID,
    int Param1,
    int Param2,
    int Param3,
    int Param4,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID EventID,
            Uint32 Param1,
            Uint32 Param2,
            Uint32 Param3,
            Uint32 Param4,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID EventID,
            int Param1,
            int Param2,
            int Param3,
            int Param4,
          )>()(
        ptr.ref.lpVtbl,
        EventID,
        Param1,
        Param2,
        Param3,
        Param4,
      );
}
