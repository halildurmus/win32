// ITfMouseTrackerACP.dart

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
import '../../ui/textservices/ITfRangeACP.dart';
import '../../ui/textservices/ITfMouseSink.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfMouseTrackerACP = '{3BDD78E2-C16E-47FD-B883-CE6FACC1A208}';

/// {@category Interface}
/// {@category com}
class ITfMouseTrackerACP extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITfMouseTrackerACP(Pointer<COMObject> ptr) : super(ptr);

  int AdviseMouseSink(
    Pointer<COMObject> range,
    Pointer<COMObject> pSink,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> range,
            Pointer<COMObject> pSink,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> range,
            Pointer<COMObject> pSink,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        range,
        pSink,
        pdwCookie,
      );

  int UnadviseMouseSink(
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
      );
}
