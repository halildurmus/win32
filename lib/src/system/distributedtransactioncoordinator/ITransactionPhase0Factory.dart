// ITransactionPhase0Factory.dart

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
import '../../system/distributedtransactioncoordinator/ITransactionPhase0NotifyAsync.dart';
import '../../system/distributedtransactioncoordinator/ITransactionPhase0EnlistmentAsync.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITransactionPhase0Factory = '{82DC88E0-A954-11D1-8F88-00600895E7D5}';

/// {@category Interface}
/// {@category com}
class ITransactionPhase0Factory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITransactionPhase0Factory(Pointer<COMObject> ptr) : super(ptr);

  int Create(
    Pointer<COMObject> pPhase0Notify,
    Pointer<Pointer<COMObject>> ppPhase0Enlistment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPhase0Notify,
            Pointer<Pointer<COMObject>> ppPhase0Enlistment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPhase0Notify,
            Pointer<Pointer<COMObject>> ppPhase0Enlistment,
          )>()(
        ptr.ref.lpVtbl,
        pPhase0Notify,
        ppPhase0Enlistment,
      );
}
