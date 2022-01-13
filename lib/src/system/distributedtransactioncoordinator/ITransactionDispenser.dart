// ITransactionDispenser.dart

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
import '../../system/distributedtransactioncoordinator/ITransactionOptions.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/distributedtransactioncoordinator/ITransaction.dart';

/// @nodoc
const IID_ITransactionDispenser = '{3A6AD9E1-23B9-11CF-AD60-00AA00A74CCD}';

/// {@category Interface}
/// {@category com}
class ITransactionDispenser extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITransactionDispenser(Pointer<COMObject> ptr) : super(ptr);

  int GetOptionsObject(
    Pointer<Pointer<COMObject>> ppOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppOptions,
          )>()(
        ptr.ref.lpVtbl,
        ppOptions,
      );

  int BeginTransaction(
    Pointer<COMObject> punkOuter,
    int isoLevel,
    int isoFlags,
    Pointer<COMObject> pOptions,
    Pointer<Pointer<COMObject>> ppTransaction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkOuter,
            Int32 isoLevel,
            Uint32 isoFlags,
            Pointer<COMObject> pOptions,
            Pointer<Pointer<COMObject>> ppTransaction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkOuter,
            int isoLevel,
            int isoFlags,
            Pointer<COMObject> pOptions,
            Pointer<Pointer<COMObject>> ppTransaction,
          )>()(
        ptr.ref.lpVtbl,
        punkOuter,
        isoLevel,
        isoFlags,
        pOptions,
        ppTransaction,
      );
}
