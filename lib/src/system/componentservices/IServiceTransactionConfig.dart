// IServiceTransactionConfig.dart

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

import '../../system/componentservices/IServiceTransactionConfigBase.dart';
import '../../system/distributedtransactioncoordinator/ITransaction.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IServiceTransactionConfig = '{59F4C2A3-D3D7-4A31-B6E4-6AB3177C50B9}';

/// {@category Interface}
/// {@category com}
class IServiceTransactionConfig extends IServiceTransactionConfigBase {
  // vtable begins at 8, is 1 entries long.
  IServiceTransactionConfig(Pointer<COMObject> ptr) : super(ptr);

  int ConfigureBYOT(
    Pointer<COMObject> pITxByot,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pITxByot,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pITxByot,
          )>()(
        ptr.ref.lpVtbl,
        pITxByot,
      );
}
