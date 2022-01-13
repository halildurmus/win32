// ILastResourceManager.dart

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

/// @nodoc
const IID_ILastResourceManager = '{4D964AD4-5B33-11D3-8A91-00C04F79EB6D}';

/// {@category Interface}
/// {@category com}
class ILastResourceManager extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ILastResourceManager(Pointer<COMObject> ptr) : super(ptr);

  int TransactionCommitted(
    Pointer<Uint8> pPrepInfo,
    int cbPrepInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pPrepInfo,
            Uint32 cbPrepInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pPrepInfo,
            int cbPrepInfo,
          )>()(
        ptr.ref.lpVtbl,
        pPrepInfo,
        cbPrepInfo,
      );

  int RecoveryDone() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
