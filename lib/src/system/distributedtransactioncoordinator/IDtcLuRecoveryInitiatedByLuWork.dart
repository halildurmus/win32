// IDtcLuRecoveryInitiatedByLuWork.dart

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
const IID_IDtcLuRecoveryInitiatedByLuWork =
    '{AC2B8AD1-D6F0-11D0-B386-00A0C9083365}';

/// {@category Interface}
/// {@category com}
class IDtcLuRecoveryInitiatedByLuWork extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IDtcLuRecoveryInitiatedByLuWork(Pointer<COMObject> ptr) : super(ptr);

  int HandleTheirXln(
    int lRecoverySeqNum,
    int Xln,
    Pointer<Uint8> pRemoteLogName,
    int cbRemoteLogName,
    Pointer<Uint8> pOurLogName,
    int cbOurLogName,
    int dwProtocol,
    Pointer<Int32> pResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lRecoverySeqNum,
            Int32 Xln,
            Pointer<Uint8> pRemoteLogName,
            Uint32 cbRemoteLogName,
            Pointer<Uint8> pOurLogName,
            Uint32 cbOurLogName,
            Uint32 dwProtocol,
            Pointer<Int32> pResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lRecoverySeqNum,
            int Xln,
            Pointer<Uint8> pRemoteLogName,
            int cbRemoteLogName,
            Pointer<Uint8> pOurLogName,
            int cbOurLogName,
            int dwProtocol,
            Pointer<Int32> pResponse,
          )>()(
        ptr.ref.lpVtbl,
        lRecoverySeqNum,
        Xln,
        pRemoteLogName,
        cbRemoteLogName,
        pOurLogName,
        cbOurLogName,
        dwProtocol,
        pResponse,
      );

  int GetOurLogNameSize(
    Pointer<Uint32> pcbOurLogName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcbOurLogName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcbOurLogName,
          )>()(
        ptr.ref.lpVtbl,
        pcbOurLogName,
      );

  int GetOurXln(
    Pointer<Int32> pXln,
    Pointer<Uint8> pOurLogName,
    Pointer<Uint32> pdwProtocol,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pXln,
            Pointer<Uint8> pOurLogName,
            Pointer<Uint32> pdwProtocol,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pXln,
            Pointer<Uint8> pOurLogName,
            Pointer<Uint32> pdwProtocol,
          )>()(
        ptr.ref.lpVtbl,
        pXln,
        pOurLogName,
        pdwProtocol,
      );

  int HandleConfirmationOfOurXln(
    int Confirmation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int HandleTheirCompareStates(
    Pointer<Uint8> pRemoteTransId,
    int cbRemoteTransId,
    int CompareState,
    Pointer<Int32> pResponse,
    Pointer<Int32> pCompareState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pRemoteTransId,
            Uint32 cbRemoteTransId,
            Int32 CompareState,
            Pointer<Int32> pResponse,
            Pointer<Int32> pCompareState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pRemoteTransId,
            int cbRemoteTransId,
            int CompareState,
            Pointer<Int32> pResponse,
            Pointer<Int32> pCompareState,
          )>()(
        ptr.ref.lpVtbl,
        pRemoteTransId,
        cbRemoteTransId,
        CompareState,
        pResponse,
        pCompareState,
      );

  int HandleConfirmationOfOurCompareStates(
    int Confirmation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int HandleErrorFromOurCompareStates(
    int Error,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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
          .elementAt(10)
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
