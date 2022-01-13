// ITransactionReceiver.dart

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
const IID_ITransactionReceiver = '{59313E03-B36C-11CF-A539-00AA006887C3}';

/// {@category Interface}
/// {@category com}
class ITransactionReceiver extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ITransactionReceiver(Pointer<COMObject> ptr) : super(ptr);

  int UnmarshalPropagationToken(
    int cbToken,
    Pointer<Uint8> rgbToken,
    Pointer<Pointer<COMObject>> ppTransaction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbToken,
            Pointer<Uint8> rgbToken,
            Pointer<Pointer<COMObject>> ppTransaction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbToken,
            Pointer<Uint8> rgbToken,
            Pointer<Pointer<COMObject>> ppTransaction,
          )>()(
        ptr.ref.lpVtbl,
        cbToken,
        rgbToken,
        ppTransaction,
      );

  int GetReturnTokenSize(
    Pointer<Uint32> pcbReturnToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcbReturnToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcbReturnToken,
          )>()(
        ptr.ref.lpVtbl,
        pcbReturnToken,
      );

  int MarshalReturnToken(
    int cbReturnToken,
    Pointer<Uint8> rgbReturnToken,
    Pointer<Uint32> pcbUsed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbReturnToken,
            Pointer<Uint8> rgbReturnToken,
            Pointer<Uint32> pcbUsed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbReturnToken,
            Pointer<Uint8> rgbReturnToken,
            Pointer<Uint32> pcbUsed,
          )>()(
        ptr.ref.lpVtbl,
        cbReturnToken,
        rgbReturnToken,
        pcbUsed,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(6)
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
