// ITransactionPhase0NotifyAsync.dart

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
const IID_ITransactionPhase0NotifyAsync =
    '{EF081809-0C76-11D2-87A6-00C04F990F34}';

/// {@category Interface}
/// {@category com}
class ITransactionPhase0NotifyAsync extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITransactionPhase0NotifyAsync(Pointer<COMObject> ptr) : super(ptr);

  int Phase0Request(
    int fAbortingHint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fAbortingHint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fAbortingHint,
          )>()(
        ptr.ref.lpVtbl,
        fAbortingHint,
      );

  int EnlistCompleted(
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        status,
      );
}
