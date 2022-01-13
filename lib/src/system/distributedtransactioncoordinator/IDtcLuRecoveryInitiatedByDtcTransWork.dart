// IDtcLuRecoveryInitiatedByDtcTransWork.dart

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
import '../../system/distributedtransactioncoordinator/structs.g.dart';

/// @nodoc
const IID_IDtcLuRecoveryInitiatedByDtcTransWork =
    '{4131E765-1AEA-11D0-944B-00A0C905416E}';

/// {@category Interface}
/// {@category com}
class IDtcLuRecoveryInitiatedByDtcTransWork extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IDtcLuRecoveryInitiatedByDtcTransWork(Pointer<COMObject> ptr) : super(ptr);

  int GetLogNameSizes(
    Pointer<Uint32> pcbOurLogName,
    Pointer<Uint32> pcbRemoteLogName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcbOurLogName,
            Pointer<Uint32> pcbRemoteLogName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcbOurLogName,
            Pointer<Uint32> pcbRemoteLogName,
          )>()(
        ptr.ref.lpVtbl,
        pcbOurLogName,
        pcbRemoteLogName,
      );

  int GetOurXln(
    Pointer<Int32> pXln,
    Pointer<Uint8> pOurLogName,
    Pointer<Uint8> pRemoteLogName,
    Pointer<Uint32> pdwProtocol,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pXln,
            Pointer<Uint8> pOurLogName,
            Pointer<Uint8> pRemoteLogName,
            Pointer<Uint32> pdwProtocol,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pXln,
            Pointer<Uint8> pOurLogName,
            Pointer<Uint8> pRemoteLogName,
            Pointer<Uint32> pdwProtocol,
          )>()(
        ptr.ref.lpVtbl,
        pXln,
        pOurLogName,
        pRemoteLogName,
        pdwProtocol,
      );

  int HandleConfirmationFromOurXln(
    int Confirmation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Confirmation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Confirmation,
          )>()(
        ptr.ref.lpVtbl,
        Confirmation,
      );

  int HandleTheirXlnResponse(
    int Xln,
    Pointer<Uint8> pRemoteLogName,
    int cbRemoteLogName,
    int dwProtocol,
    Pointer<Int32> pConfirmation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Xln,
            Pointer<Uint8> pRemoteLogName,
            Uint32 cbRemoteLogName,
            Uint32 dwProtocol,
            Pointer<Int32> pConfirmation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Xln,
            Pointer<Uint8> pRemoteLogName,
            int cbRemoteLogName,
            int dwProtocol,
            Pointer<Int32> pConfirmation,
          )>()(
        ptr.ref.lpVtbl,
        Xln,
        pRemoteLogName,
        cbRemoteLogName,
        dwProtocol,
        pConfirmation,
      );

  int HandleErrorFromOurXln(
    int Error,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Error,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Error,
          )>()(
        ptr.ref.lpVtbl,
        Error,
      );

  int CheckForCompareStates(
    Pointer<Int32> fCompareStates,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> fCompareStates,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> fCompareStates,
          )>()(
        ptr.ref.lpVtbl,
        fCompareStates,
      );

  int GetOurTransIdSize(
    Pointer<Uint32> pcbOurTransId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcbOurTransId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcbOurTransId,
          )>()(
        ptr.ref.lpVtbl,
        pcbOurTransId,
      );

  int GetOurCompareStates(
    Pointer<Uint8> pOurTransId,
    Pointer<Int32> pCompareState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pOurTransId,
            Pointer<Int32> pCompareState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pOurTransId,
            Pointer<Int32> pCompareState,
          )>()(
        ptr.ref.lpVtbl,
        pOurTransId,
        pCompareState,
      );

  int HandleTheirCompareStatesResponse(
    int CompareState,
    Pointer<Int32> pConfirmation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 CompareState,
            Pointer<Int32> pConfirmation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int CompareState,
            Pointer<Int32> pConfirmation,
          )>()(
        ptr.ref.lpVtbl,
        CompareState,
        pConfirmation,
      );

  int HandleErrorFromOurCompareStates(
    int Error,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Error,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Error,
          )>()(
        ptr.ref.lpVtbl,
        Error,
      );

  int ConversationLost() => ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int GetRecoverySeqNum(
    Pointer<Int32> plRecoverySeqNum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plRecoverySeqNum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plRecoverySeqNum,
          )>()(
        ptr.ref.lpVtbl,
        plRecoverySeqNum,
      );

  int ObsoleteRecoverySeqNum(
    int lNewRecoverySeqNum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lNewRecoverySeqNum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lNewRecoverySeqNum,
          )>()(
        ptr.ref.lpVtbl,
        lNewRecoverySeqNum,
      );
}
