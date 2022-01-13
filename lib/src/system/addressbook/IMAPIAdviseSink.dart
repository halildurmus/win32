// IMAPIAdviseSink.dart

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
import '../../system/addressbook/structs.g.dart';

/// @nodoc
const IID_IMAPIAdviseSink = 'null';

/// {@category Interface}
/// {@category com}
class IMAPIAdviseSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMAPIAdviseSink(Pointer<COMObject> ptr) : super(ptr);

  int OnNotify(
    int cNotif,
    Pointer<NOTIFICATION> lpNotifications,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Uint32 cNotif,
            Pointer<NOTIFICATION> lpNotifications,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cNotif,
            Pointer<NOTIFICATION> lpNotifications,
          )>()(
        ptr.ref.lpVtbl,
        cNotif,
        lpNotifications,
      );
}
