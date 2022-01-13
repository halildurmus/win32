// IDtcLuSubordinateDtcFactory.dart

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
import '../../specialTypes.dart';
import '../../system/distributedtransactioncoordinator/ITransactionOptions.dart';
import '../../system/distributedtransactioncoordinator/ITransaction.dart';
import '../../system/distributedtransactioncoordinator/IDtcLuSubordinateDtcSink.dart';
import '../../system/distributedtransactioncoordinator/IDtcLuSubordinateDtc.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDtcLuSubordinateDtcFactory =
    '{4131E775-1AEA-11D0-944B-00A0C905416E}';

/// {@category Interface}
/// {@category com}
class IDtcLuSubordinateDtcFactory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDtcLuSubordinateDtcFactory(Pointer<COMObject> ptr) : super(ptr);

  int Create(
    Pointer<Uint8> pucLuPair,
    int cbLuPair,
    Pointer<COMObject> punkTransactionOuter,
    int isoLevel,
    int isoFlags,
    Pointer<COMObject> pOptions,
    Pointer<Pointer<COMObject>> ppTransaction,
    Pointer<Uint8> pTransId,
    int cbTransId,
    Pointer<COMObject> pSubordinateDtcSink,
    Pointer<Pointer<COMObject>> ppSubordinateDtc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pucLuPair,
            Uint32 cbLuPair,
            Pointer<COMObject> punkTransactionOuter,
            Int32 isoLevel,
            Uint32 isoFlags,
            Pointer<COMObject> pOptions,
            Pointer<Pointer<COMObject>> ppTransaction,
            Pointer<Uint8> pTransId,
            Uint32 cbTransId,
            Pointer<COMObject> pSubordinateDtcSink,
            Pointer<Pointer<COMObject>> ppSubordinateDtc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pucLuPair,
            int cbLuPair,
            Pointer<COMObject> punkTransactionOuter,
            int isoLevel,
            int isoFlags,
            Pointer<COMObject> pOptions,
            Pointer<Pointer<COMObject>> ppTransaction,
            Pointer<Uint8> pTransId,
            int cbTransId,
            Pointer<COMObject> pSubordinateDtcSink,
            Pointer<Pointer<COMObject>> ppSubordinateDtc,
          )>()(
        ptr.ref.lpVtbl,
        pucLuPair,
        cbLuPair,
        punkTransactionOuter,
        isoLevel,
        isoFlags,
        pOptions,
        ppTransaction,
        pTransId,
        cbTransId,
        pSubordinateDtcSink,
        ppSubordinateDtc,
      );
}
