// IContextState.dart

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
import '../../system/componentservices/structs.g.dart';

/// @nodoc
const IID_IContextState = '{3C05E54B-A42A-11D2-AFC4-00C04F8EE1C4}';

/// {@category Interface}
/// {@category com}
class IContextState extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IContextState(Pointer<COMObject> ptr) : super(ptr);

  int SetDeactivateOnReturn(
    int bDeactivate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bDeactivate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bDeactivate,
          )>()(
        ptr.ref.lpVtbl,
        bDeactivate,
      );

  int GetDeactivateOnReturn(
    Pointer<Int16> pbDeactivate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbDeactivate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbDeactivate,
          )>()(
        ptr.ref.lpVtbl,
        pbDeactivate,
      );

  int SetMyTransactionVote(
    int txVote,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 txVote,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int txVote,
          )>()(
        ptr.ref.lpVtbl,
        txVote,
      );

  int GetMyTransactionVote(
    Pointer<Int32> ptxVote,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> ptxVote,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> ptxVote,
          )>()(
        ptr.ref.lpVtbl,
        ptxVote,
      );
}
