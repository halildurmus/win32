// ITransactionTransmitter.dart

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
const IID_ITransactionTransmitter = '{59313E01-B36C-11CF-A539-00AA006887C3}';

/// {@category Interface}
/// {@category com}
class ITransactionTransmitter extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ITransactionTransmitter(Pointer<COMObject> ptr) : super(ptr);

  int $Set(
    Pointer<COMObject> pTransaction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTransaction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTransaction,
          )>()(
        ptr.ref.lpVtbl,
        pTransaction,
      );

  int GetPropagationTokenSize(
    Pointer<Uint32> pcbToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcbToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcbToken,
          )>()(
        ptr.ref.lpVtbl,
        pcbToken,
      );

  int MarshalPropagationToken(
    int cbToken,
    Pointer<Uint8> rgbToken,
    Pointer<Uint32> pcbUsed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbToken,
            Pointer<Uint8> rgbToken,
            Pointer<Uint32> pcbUsed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbToken,
            Pointer<Uint8> rgbToken,
            Pointer<Uint32> pcbUsed,
          )>()(
        ptr.ref.lpVtbl,
        cbToken,
        rgbToken,
        pcbUsed,
      );

  int UnmarshalReturnToken(
    int cbReturnToken,
    Pointer<Uint8> rgbReturnToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbReturnToken,
            Pointer<Uint8> rgbReturnToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbReturnToken,
            Pointer<Uint8> rgbReturnToken,
          )>()(
        ptr.ref.lpVtbl,
        cbReturnToken,
        rgbReturnToken,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(7)
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
