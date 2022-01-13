// IReconcileInitiator.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IReconcileInitiator = '{99180161-DA16-101A-935C-444553540000}';

/// {@category Interface}
/// {@category com}
class IReconcileInitiator extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IReconcileInitiator(Pointer<COMObject> ptr) : super(ptr);

  int SetAbortCallback(
    Pointer<COMObject> punkForAbort,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkForAbort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkForAbort,
          )>()(
        ptr.ref.lpVtbl,
        punkForAbort,
      );

  int SetProgressFeedback(
    int ulProgress,
    int ulProgressMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulProgress,
            Uint32 ulProgressMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulProgress,
            int ulProgressMax,
          )>()(
        ptr.ref.lpVtbl,
        ulProgress,
        ulProgressMax,
      );
}
