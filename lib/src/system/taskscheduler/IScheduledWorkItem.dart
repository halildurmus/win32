// IScheduledWorkItem.dart

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
import '../../system/taskscheduler/ITaskTrigger.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IScheduledWorkItem = '{A6B952F0-A4B1-11D0-997D-00AA006887EC}';

/// {@category Interface}
/// {@category com}
class IScheduledWorkItem extends IUnknown {
  // vtable begins at 3, is 29 entries long.
  IScheduledWorkItem(Pointer<COMObject> ptr) : super(ptr);

  int CreateTrigger(
    Pointer<Uint16> piNewTrigger,
    Pointer<Pointer<COMObject>> ppTrigger,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> piNewTrigger,
            Pointer<Pointer<COMObject>> ppTrigger,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> piNewTrigger,
            Pointer<Pointer<COMObject>> ppTrigger,
          )>()(
        ptr.ref.lpVtbl,
        piNewTrigger,
        ppTrigger,
      );

  int DeleteTrigger(
    int iTrigger,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 iTrigger,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iTrigger,
          )>()(
        ptr.ref.lpVtbl,
        iTrigger,
      );

  int GetTriggerCount(
    Pointer<Uint16> pwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwCount,
          )>()(
        ptr.ref.lpVtbl,
        pwCount,
      );

  int GetTrigger(
    int iTrigger,
    Pointer<Pointer<COMObject>> ppTrigger,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 iTrigger,
            Pointer<Pointer<COMObject>> ppTrigger,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iTrigger,
            Pointer<Pointer<COMObject>> ppTrigger,
          )>()(
        ptr.ref.lpVtbl,
        iTrigger,
        ppTrigger,
      );

  int GetTriggerString(
    int iTrigger,
    Pointer<Pointer<Utf16>> ppwszTrigger,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 iTrigger,
            Pointer<Pointer<Utf16>> ppwszTrigger,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iTrigger,
            Pointer<Pointer<Utf16>> ppwszTrigger,
          )>()(
        ptr.ref.lpVtbl,
        iTrigger,
        ppwszTrigger,
      );

  int GetRunTimes(
    Pointer<SYSTEMTIME> pstBegin,
    Pointer<SYSTEMTIME> pstEnd,
    Pointer<Uint16> pCount,
    Pointer<Pointer<SYSTEMTIME>> rgstTaskTimes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYSTEMTIME> pstBegin,
            Pointer<SYSTEMTIME> pstEnd,
            Pointer<Uint16> pCount,
            Pointer<Pointer<SYSTEMTIME>> rgstTaskTimes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYSTEMTIME> pstBegin,
            Pointer<SYSTEMTIME> pstEnd,
            Pointer<Uint16> pCount,
            Pointer<Pointer<SYSTEMTIME>> rgstTaskTimes,
          )>()(
        ptr.ref.lpVtbl,
        pstBegin,
        pstEnd,
        pCount,
        rgstTaskTimes,
      );

  int GetNextRunTime(
    Pointer<SYSTEMTIME> pstNextRun,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYSTEMTIME> pstNextRun,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYSTEMTIME> pstNextRun,
          )>()(
        ptr.ref.lpVtbl,
        pstNextRun,
      );

  int SetIdleWait(
    int wIdleMinutes,
    int wDeadlineMinutes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wIdleMinutes,
            Uint16 wDeadlineMinutes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wIdleMinutes,
            int wDeadlineMinutes,
          )>()(
        ptr.ref.lpVtbl,
        wIdleMinutes,
        wDeadlineMinutes,
      );

  int GetIdleWait(
    Pointer<Uint16> pwIdleMinutes,
    Pointer<Uint16> pwDeadlineMinutes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwIdleMinutes,
            Pointer<Uint16> pwDeadlineMinutes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwIdleMinutes,
            Pointer<Uint16> pwDeadlineMinutes,
          )>()(
        ptr.ref.lpVtbl,
        pwIdleMinutes,
        pwDeadlineMinutes,
      );

  int Run() => ptr.ref.lpVtbl.value
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

  int Terminate() => ptr.ref.lpVtbl.value
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

  int EditWorkItem(
    int hParent,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hParent,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hParent,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        hParent,
        dwReserved,
      );

  int GetMostRecentRunTime(
    Pointer<SYSTEMTIME> pstLastRun,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYSTEMTIME> pstLastRun,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYSTEMTIME> pstLastRun,
          )>()(
        ptr.ref.lpVtbl,
        pstLastRun,
      );

  int GetStatus(
    Pointer<Int32> phrStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> phrStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> phrStatus,
          )>()(
        ptr.ref.lpVtbl,
        phrStatus,
      );

  int GetExitCode(
    Pointer<Uint32> pdwExitCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwExitCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwExitCode,
          )>()(
        ptr.ref.lpVtbl,
        pdwExitCode,
      );

  int SetComment(
    Pointer<Utf16> pwszComment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszComment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszComment,
          )>()(
        ptr.ref.lpVtbl,
        pwszComment,
      );

  int GetComment(
    Pointer<Pointer<Utf16>> ppwszComment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszComment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszComment,
          )>()(
        ptr.ref.lpVtbl,
        ppwszComment,
      );

  int SetCreator(
    Pointer<Utf16> pwszCreator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszCreator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszCreator,
          )>()(
        ptr.ref.lpVtbl,
        pwszCreator,
      );

  int GetCreator(
    Pointer<Pointer<Utf16>> ppwszCreator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszCreator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszCreator,
          )>()(
        ptr.ref.lpVtbl,
        ppwszCreator,
      );

  int SetWorkItemData(
    int cbData,
    Pointer<Uint8> rgbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 cbData,
            Pointer<Uint8> rgbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbData,
            Pointer<Uint8> rgbData,
          )>()(
        ptr.ref.lpVtbl,
        cbData,
        rgbData,
      );

  int GetWorkItemData(
    Pointer<Uint16> pcbData,
    Pointer<Pointer<Uint8>> prgbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pcbData,
            Pointer<Pointer<Uint8>> prgbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pcbData,
            Pointer<Pointer<Uint8>> prgbData,
          )>()(
        ptr.ref.lpVtbl,
        pcbData,
        prgbData,
      );

  int SetErrorRetryCount(
    int wRetryCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wRetryCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wRetryCount,
          )>()(
        ptr.ref.lpVtbl,
        wRetryCount,
      );

  int GetErrorRetryCount(
    Pointer<Uint16> pwRetryCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwRetryCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwRetryCount,
          )>()(
        ptr.ref.lpVtbl,
        pwRetryCount,
      );

  int SetErrorRetryInterval(
    int wRetryInterval,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wRetryInterval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wRetryInterval,
          )>()(
        ptr.ref.lpVtbl,
        wRetryInterval,
      );

  int GetErrorRetryInterval(
    Pointer<Uint16> pwRetryInterval,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwRetryInterval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwRetryInterval,
          )>()(
        ptr.ref.lpVtbl,
        pwRetryInterval,
      );

  int SetFlags(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
      );

  int GetFlags(
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
      );

  int SetAccountInformation(
    Pointer<Utf16> pwszAccountName,
    Pointer<Utf16> pwszPassword,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszAccountName,
            Pointer<Utf16> pwszPassword,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszAccountName,
            Pointer<Utf16> pwszPassword,
          )>()(
        ptr.ref.lpVtbl,
        pwszAccountName,
        pwszPassword,
      );

  int GetAccountInformation(
    Pointer<Pointer<Utf16>> ppwszAccountName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszAccountName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszAccountName,
          )>()(
        ptr.ref.lpVtbl,
        ppwszAccountName,
      );
}
