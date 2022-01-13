// ICrmCompensator.dart

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
import '../../system/componentservices/ICrmLogControl.dart';
import '../../foundation/structs.g.dart';
import '../../system/componentservices/structs.g.dart';

/// @nodoc
const IID_ICrmCompensator = '{BBC01830-8D3B-11D1-82EC-00A0C91EEDE9}';

/// {@category Interface}
/// {@category com}
class ICrmCompensator extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  ICrmCompensator(Pointer<COMObject> ptr) : super(ptr);

  int SetLogControl(
    Pointer<COMObject> pLogControl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pLogControl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pLogControl,
          )>()(
        ptr.ref.lpVtbl,
        pLogControl,
      );

  int BeginPrepare() => ptr.ref.lpVtbl.value
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

  int PrepareRecord(
    CrmLogRecordRead crmLogRec,
    Pointer<Int32> pfForget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            CrmLogRecordRead crmLogRec,
            Pointer<Int32> pfForget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            CrmLogRecordRead crmLogRec,
            Pointer<Int32> pfForget,
          )>()(
        ptr.ref.lpVtbl,
        crmLogRec,
        pfForget,
      );

  int EndPrepare(
    Pointer<Int32> pfOkToPrepare,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfOkToPrepare,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfOkToPrepare,
          )>()(
        ptr.ref.lpVtbl,
        pfOkToPrepare,
      );

  int BeginCommit(
    int fRecovery,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fRecovery,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fRecovery,
          )>()(
        ptr.ref.lpVtbl,
        fRecovery,
      );

  int CommitRecord(
    CrmLogRecordRead crmLogRec,
    Pointer<Int32> pfForget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            CrmLogRecordRead crmLogRec,
            Pointer<Int32> pfForget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            CrmLogRecordRead crmLogRec,
            Pointer<Int32> pfForget,
          )>()(
        ptr.ref.lpVtbl,
        crmLogRec,
        pfForget,
      );

  int EndCommit() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int BeginAbort(
    int fRecovery,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fRecovery,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fRecovery,
          )>()(
        ptr.ref.lpVtbl,
        fRecovery,
      );

  int AbortRecord(
    CrmLogRecordRead crmLogRec,
    Pointer<Int32> pfForget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            CrmLogRecordRead crmLogRec,
            Pointer<Int32> pfForget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            CrmLogRecordRead crmLogRec,
            Pointer<Int32> pfForget,
          )>()(
        ptr.ref.lpVtbl,
        crmLogRec,
        pfForget,
      );

  int EndAbort() => ptr.ref.lpVtbl.value
          .elementAt(12)
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
