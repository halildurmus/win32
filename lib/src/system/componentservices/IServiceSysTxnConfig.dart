// IServiceSysTxnConfig.dart

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

import '../../system/componentservices/IServiceTransactionConfig.dart';
import '../../system/componentservices/ITransactionProxy.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IServiceSysTxnConfig = '{33CAF1A1-FCB8-472B-B45E-967448DED6D8}';

/// {@category Interface}
/// {@category com}
class IServiceSysTxnConfig extends IServiceTransactionConfig {
  // vtable begins at 9, is 1 entries long.
  IServiceSysTxnConfig(Pointer<COMObject> ptr) : super(ptr);

  int ConfigureBYOTSysTxn(
    Pointer<COMObject> pTxProxy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTxProxy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTxProxy,
          )>()(
        ptr.ref.lpVtbl,
        pTxProxy,
      );
}
