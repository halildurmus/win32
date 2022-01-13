// IBackgroundCopyJob.dart

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
import '../../foundation/structs.g.dart';
import '../../networking/backgroundintelligenttransferservice/IEnumBackgroundCopyFiles.dart';
import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyError.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IBackgroundCopyJob = '{37668D37-507E-4160-9316-26306D150B12}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyJob extends IUnknown {
  // vtable begins at 3, is 32 entries long.
  IBackgroundCopyJob(Pointer<COMObject> ptr) : super(ptr);

  int AddFileSet(
    int cFileCount,
    Pointer<BG_FILE_INFO> pFileSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cFileCount,
            Pointer<BG_FILE_INFO> pFileSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cFileCount,
            Pointer<BG_FILE_INFO> pFileSet,
          )>()(
        ptr.ref.lpVtbl,
        cFileCount,
        pFileSet,
      );

  int AddFile(
    Pointer<Utf16> RemoteUrl,
    Pointer<Utf16> LocalName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> RemoteUrl,
            Pointer<Utf16> LocalName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> RemoteUrl,
            Pointer<Utf16> LocalName,
          )>()(
        ptr.ref.lpVtbl,
        RemoteUrl,
        LocalName,
      );

  int EnumFiles(
    Pointer<Pointer<COMObject>> pEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pEnum,
          )>()(
        ptr.ref.lpVtbl,
        pEnum,
      );

  int Suspend() => ptr.ref.lpVtbl.value
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

  int Resume() => ptr.ref.lpVtbl.value
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

  int Cancel() => ptr.ref.lpVtbl.value
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

  int Complete() => ptr.ref.lpVtbl.value
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

  int GetId(
    Pointer<GUID> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );

  int GetType(
    Pointer<Int32> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );

  int GetProgress(
    Pointer<BG_JOB_PROGRESS> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BG_JOB_PROGRESS> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BG_JOB_PROGRESS> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );

  int GetTimes(
    Pointer<BG_JOB_TIMES> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BG_JOB_TIMES> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BG_JOB_TIMES> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );

  int GetState(
    Pointer<Int32> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );

  int GetError(
    Pointer<Pointer<COMObject>> ppError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppError,
          )>()(
        ptr.ref.lpVtbl,
        ppError,
      );

  int GetOwner(
    Pointer<Pointer<Utf16>> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );

  int SetDisplayName(
    Pointer<Utf16> Val,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Val,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Val,
          )>()(
        ptr.ref.lpVtbl,
        Val,
      );

  int GetDisplayName(
    Pointer<Pointer<Utf16>> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );

  int SetDescription(
    Pointer<Utf16> Val,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Val,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Val,
          )>()(
        ptr.ref.lpVtbl,
        Val,
      );

  int GetDescription(
    Pointer<Pointer<Utf16>> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );

  int SetPriority(
    int Val,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Val,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Val,
          )>()(
        ptr.ref.lpVtbl,
        Val,
      );

  int GetPriority(
    Pointer<Int32> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );

  int SetNotifyFlags(
    int Val,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Val,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Val,
          )>()(
        ptr.ref.lpVtbl,
        Val,
      );

  int GetNotifyFlags(
    Pointer<Uint32> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );

  int SetNotifyInterface(
    Pointer<COMObject> Val,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Val,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Val,
          )>()(
        ptr.ref.lpVtbl,
        Val,
      );

  int GetNotifyInterface(
    Pointer<Pointer<COMObject>> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );

  int SetMinimumRetryDelay(
    int Seconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Seconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Seconds,
          )>()(
        ptr.ref.lpVtbl,
        Seconds,
      );

  int GetMinimumRetryDelay(
    Pointer<Uint32> Seconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Seconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Seconds,
          )>()(
        ptr.ref.lpVtbl,
        Seconds,
      );

  int SetNoProgressTimeout(
    int Seconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Seconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Seconds,
          )>()(
        ptr.ref.lpVtbl,
        Seconds,
      );

  int GetNoProgressTimeout(
    Pointer<Uint32> Seconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Seconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Seconds,
          )>()(
        ptr.ref.lpVtbl,
        Seconds,
      );

  int GetErrorCount(
    Pointer<Uint32> Errors,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> Errors,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> Errors,
          )>()(
        ptr.ref.lpVtbl,
        Errors,
      );

  int SetProxySettings(
    int ProxyUsage,
    Pointer<Utf16> ProxyList,
    Pointer<Utf16> ProxyBypassList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ProxyUsage,
            Pointer<Utf16> ProxyList,
            Pointer<Utf16> ProxyBypassList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ProxyUsage,
            Pointer<Utf16> ProxyList,
            Pointer<Utf16> ProxyBypassList,
          )>()(
        ptr.ref.lpVtbl,
        ProxyUsage,
        ProxyList,
        ProxyBypassList,
      );

  int GetProxySettings(
    Pointer<Int32> pProxyUsage,
    Pointer<Pointer<Utf16>> pProxyList,
    Pointer<Pointer<Utf16>> pProxyBypassList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pProxyUsage,
            Pointer<Pointer<Utf16>> pProxyList,
            Pointer<Pointer<Utf16>> pProxyBypassList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pProxyUsage,
            Pointer<Pointer<Utf16>> pProxyList,
            Pointer<Pointer<Utf16>> pProxyBypassList,
          )>()(
        ptr.ref.lpVtbl,
        pProxyUsage,
        pProxyList,
        pProxyBypassList,
      );

  int TakeOwnership() => ptr.ref.lpVtbl.value
          .elementAt(34)
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
