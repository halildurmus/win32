// IBroadcastEvent.dart

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
const IID_IBroadcastEvent = '{3B21263F-26E8-489D-AAC4-924F7EFD9511}';

/// {@category Interface}
/// {@category com}
class IBroadcastEvent extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IBroadcastEvent(Pointer<COMObject> ptr) : super(ptr);

  int Fire(
    GUID EventID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID EventID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID EventID,
          )>()(
        ptr.ref.lpVtbl,
        EventID,
      );
}
