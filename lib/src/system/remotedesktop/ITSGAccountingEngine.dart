// ITSGAccountingEngine.dart

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
import '../../system/remotedesktop/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITSGAccountingEngine = '{4CE2A0C9-E874-4F1A-86F4-06BBB9115338}';

/// {@category Interface}
/// {@category com}
class ITSGAccountingEngine extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITSGAccountingEngine(Pointer<COMObject> ptr) : super(ptr);

  int DoAccounting(
    int accountingDataType,
    AAAccountingData accountingData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 accountingDataType,
            AAAccountingData accountingData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int accountingDataType,
            AAAccountingData accountingData,
          )>()(
        ptr.ref.lpVtbl,
        accountingDataType,
        accountingData,
      );
}
