// IXATransLookup.dart

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
import '../../system/distributedtransactioncoordinator/ITransaction.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IXATransLookup = '{F3B1F131-EEDA-11CE-AED4-00AA0051E2C4}';

/// {@category Interface}
/// {@category com}
class IXATransLookup extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IXATransLookup(Pointer<COMObject> ptr) : super(ptr);

  int Lookup(
    Pointer<Pointer<COMObject>> ppTransaction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTransaction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTransaction,
          )>()(
        ptr.ref.lpVtbl,
        ppTransaction,
      );
}
