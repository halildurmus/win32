// ICrmCompensatorVariants.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_ICrmCompensatorVariants = '{F0BAF8E4-7804-11D1-82E9-00A0C91EEDE9}';

/// {@category Interface}
/// {@category com}
class ICrmCompensatorVariants extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  ICrmCompensatorVariants(Pointer<COMObject> ptr) : super(ptr);

  int SetLogControlVariants(
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

  int BeginPrepareVariants() => ptr.ref.lpVtbl.value
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

  int PrepareRecordVariants(
    Pointer<VARIANT> pLogRecord,
    Pointer<Int16> pbForget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pLogRecord,
            Pointer<Int16> pbForget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pLogRecord,
            Pointer<Int16> pbForget,
          )>()(
        ptr.ref.lpVtbl,
        pLogRecord,
        pbForget,
      );

  int EndPrepareVariants(
    Pointer<Int16> pbOkToPrepare,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbOkToPrepare,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbOkToPrepare,
          )>()(
        ptr.ref.lpVtbl,
        pbOkToPrepare,
      );

  int BeginCommitVariants(
    int bRecovery,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bRecovery,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bRecovery,
          )>()(
        ptr.ref.lpVtbl,
        bRecovery,
      );

  int CommitRecordVariants(
    Pointer<VARIANT> pLogRecord,
    Pointer<Int16> pbForget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pLogRecord,
            Pointer<Int16> pbForget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pLogRecord,
            Pointer<Int16> pbForget,
          )>()(
        ptr.ref.lpVtbl,
        pLogRecord,
        pbForget,
      );

  int EndCommitVariants() => ptr.ref.lpVtbl.value
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

  int BeginAbortVariants(
    int bRecovery,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bRecovery,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bRecovery,
          )>()(
        ptr.ref.lpVtbl,
        bRecovery,
      );

  int AbortRecordVariants(
    Pointer<VARIANT> pLogRecord,
    Pointer<Int16> pbForget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pLogRecord,
            Pointer<Int16> pbForget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pLogRecord,
            Pointer<Int16> pbForget,
          )>()(
        ptr.ref.lpVtbl,
        pLogRecord,
        pbForget,
      );

  int EndAbortVariants() => ptr.ref.lpVtbl.value
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
