// ITransactionTransmitterFactory.dart

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
import '../../system/distributedtransactioncoordinator/ITransactionTransmitter.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITransactionTransmitterFactory =
    '{59313E00-B36C-11CF-A539-00AA006887C3}';

/// {@category Interface}
/// {@category com}
class ITransactionTransmitterFactory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITransactionTransmitterFactory(Pointer<COMObject> ptr) : super(ptr);

  int Create(
    Pointer<Pointer<COMObject>> ppTransmitter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTransmitter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTransmitter,
          )>()(
        ptr.ref.lpVtbl,
        ppTransmitter,
      );
}
