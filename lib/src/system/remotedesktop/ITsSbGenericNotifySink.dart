// ITsSbGenericNotifySink.dart

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
const IID_ITsSbGenericNotifySink = '{4C4C8C4F-300B-46AD-9164-8468A7E7568C}';

/// {@category Interface}
/// {@category com}
class ITsSbGenericNotifySink extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITsSbGenericNotifySink(Pointer<COMObject> ptr) : super(ptr);

  int OnCompleted(
    int Status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Status,
          )>()(
        ptr.ref.lpVtbl,
        Status,
      );

  int GetWaitTimeout(
    Pointer<FILETIME> pftTimeout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FILETIME> pftTimeout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FILETIME> pftTimeout,
          )>()(
        ptr.ref.lpVtbl,
        pftTimeout,
      );
}
