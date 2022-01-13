// ITransactionOptions.dart

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
import '../../system/distributedtransactioncoordinator/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITransactionOptions = '{3A6AD9E0-23B9-11CF-AD60-00AA00A74CCD}';

/// {@category Interface}
/// {@category com}
class ITransactionOptions extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITransactionOptions(Pointer<COMObject> ptr) : super(ptr);

  int SetOptions(
    Pointer<XACTOPT> pOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XACTOPT> pOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XACTOPT> pOptions,
          )>()(
        ptr.ref.lpVtbl,
        pOptions,
      );

  int GetOptions(
    Pointer<XACTOPT> pOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XACTOPT> pOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XACTOPT> pOptions,
          )>()(
        ptr.ref.lpVtbl,
        pOptions,
      );
}
