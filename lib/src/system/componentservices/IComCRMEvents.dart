// IComCRMEvents.dart

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
import '../../system/componentservices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IComCRMEvents = '{683130B5-2E50-11D2-98A5-00C04F8EE1C4}';

/// {@category Interface}
/// {@category com}
class IComCRMEvents extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IComCRMEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnCRMRecoveryStart(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidApp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidApp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidApp,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidApp,
      );

  int OnCRMRecoveryDone(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidApp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidApp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidApp,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidApp,
      );

  int OnCRMCheckpoint(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidApp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidApp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidApp,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidApp,
      );

  int OnCRMBegin(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidClerkCLSID,
    GUID guidActivity,
    GUID guidTx,
    Pointer<Utf16> szProgIdCompensator,
    Pointer<Utf16> szDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
            GUID guidActivity,
            GUID guidTx,
            Pointer<Utf16> szProgIdCompensator,
            Pointer<Utf16> szDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
            GUID guidActivity,
            GUID guidTx,
            Pointer<Utf16> szProgIdCompensator,
            Pointer<Utf16> szDescription,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidClerkCLSID,
        guidActivity,
        guidTx,
        szProgIdCompensator,
        szDescription,
      );

  int OnCRMPrepare(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidClerkCLSID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidClerkCLSID,
      );

  int OnCRMCommit(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidClerkCLSID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidClerkCLSID,
      );

  int OnCRMAbort(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidClerkCLSID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidClerkCLSID,
      );

  int OnCRMIndoubt(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidClerkCLSID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidClerkCLSID,
      );

  int OnCRMDone(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidClerkCLSID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidClerkCLSID,
      );

  int OnCRMRelease(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidClerkCLSID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidClerkCLSID,
      );

  int OnCRMAnalyze(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidClerkCLSID,
    int dwCrmRecordType,
    int dwRecordSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
            Uint32 dwCrmRecordType,
            Uint32 dwRecordSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
            int dwCrmRecordType,
            int dwRecordSize,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidClerkCLSID,
        dwCrmRecordType,
        dwRecordSize,
      );

  int OnCRMWrite(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidClerkCLSID,
    int fVariants,
    int dwRecordSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
            Int32 fVariants,
            Uint32 dwRecordSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
            int fVariants,
            int dwRecordSize,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidClerkCLSID,
        fVariants,
        dwRecordSize,
      );

  int OnCRMForget(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidClerkCLSID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidClerkCLSID,
      );

  int OnCRMForce(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidClerkCLSID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidClerkCLSID,
      );

  int OnCRMDeliver(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidClerkCLSID,
    int fVariants,
    int dwRecordSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
            Int32 fVariants,
            Uint32 dwRecordSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidClerkCLSID,
            int fVariants,
            int dwRecordSize,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidClerkCLSID,
        fVariants,
        dwRecordSize,
      );
}
