// IBackgroundCopyGroup.dart

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
import '../../networking/backgroundintelligenttransferservice/structs.g.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyJob1.dart';
import '../../networking/backgroundintelligenttransferservice/IEnumBackgroundCopyJobs1.dart';

/// @nodoc
const IID_IBackgroundCopyGroup = '{1DED80A7-53EA-424F-8A04-17FEA9ADC4F5}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyGroup extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IBackgroundCopyGroup(Pointer<COMObject> ptr) : super(ptr);

  int GetProp(
    int propID,
    Pointer<VARIANT> pvarVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 propID,
            Pointer<VARIANT> pvarVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int propID,
            Pointer<VARIANT> pvarVal,
          )>()(
        ptr.ref.lpVtbl,
        propID,
        pvarVal,
      );

  int SetProp(
    int propID,
    Pointer<VARIANT> pvarVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 propID,
            Pointer<VARIANT> pvarVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int propID,
            Pointer<VARIANT> pvarVal,
          )>()(
        ptr.ref.lpVtbl,
        propID,
        pvarVal,
      );

  int GetProgress(
    int dwFlags,
    Pointer<Uint32> pdwProgress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Uint32> pdwProgress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Uint32> pdwProgress,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pdwProgress,
      );

  int GetStatus(
    Pointer<Uint32> pdwStatus,
    Pointer<Uint32> pdwJobIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
            Pointer<Uint32> pdwJobIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
            Pointer<Uint32> pdwJobIndex,
          )>()(
        ptr.ref.lpVtbl,
        pdwStatus,
        pdwJobIndex,
      );

  int GetJob(
    GUID jobID,
    Pointer<Pointer<COMObject>> ppJob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID jobID,
            Pointer<Pointer<COMObject>> ppJob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID jobID,
            Pointer<Pointer<COMObject>> ppJob,
          )>()(
        ptr.ref.lpVtbl,
        jobID,
        ppJob,
      );

  int SuspendGroup() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int ResumeGroup() => ptr.ref.lpVtbl.value
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

  int CancelGroup() => ptr.ref.lpVtbl.value
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

  int get Size {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwSize,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  GUID get GroupID {
    final retValuePtr = calloc<GUID>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidGroupID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidGroupID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int CreateJob(
    GUID guidJobID,
    Pointer<Pointer<COMObject>> ppJob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID guidJobID,
            Pointer<Pointer<COMObject>> ppJob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID guidJobID,
            Pointer<Pointer<COMObject>> ppJob,
          )>()(
        ptr.ref.lpVtbl,
        guidJobID,
        ppJob,
      );

  int EnumJobs(
    int dwFlags,
    Pointer<Pointer<COMObject>> ppEnumJobs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppEnumJobs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppEnumJobs,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        ppEnumJobs,
      );

  int SwitchToForeground() => ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int QueryNewJobInterface(
    Pointer<GUID> iid,
    Pointer<Pointer<COMObject>> pUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> iid,
            Pointer<Pointer<COMObject>> pUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> iid,
            Pointer<Pointer<COMObject>> pUnk,
          )>()(
        ptr.ref.lpVtbl,
        iid,
        pUnk,
      );

  int SetNotificationPointer(
    Pointer<GUID> iid,
    Pointer<COMObject> pUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> iid,
            Pointer<COMObject> pUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> iid,
            Pointer<COMObject> pUnk,
          )>()(
        ptr.ref.lpVtbl,
        iid,
        pUnk,
      );
}
