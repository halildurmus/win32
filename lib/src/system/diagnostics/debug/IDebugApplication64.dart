// IDebugApplication64.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/diagnostics/debug/IRemoteDebugApplication.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../system/diagnostics/debug/IRemoteDebugApplicationThread.dart';
import '../../../system/diagnostics/debug/IDebugApplicationThread.dart';
import '../../../system/diagnostics/debug/IDebugSyncOperation.dart';
import '../../../system/diagnostics/debug/IDebugAsyncOperation.dart';
import '../../../system/diagnostics/debug/IDebugStackFrameSniffer.dart';
import '../../../system/diagnostics/debug/IDebugThreadCall64.dart';
import '../../../system/diagnostics/debug/IDebugApplicationNode.dart';
import '../../../specialTypes.dart';
import '../../../system/diagnostics/debug/IActiveScriptErrorDebug.dart';
import '../../../system/diagnostics/debug/IActiveScriptSite.dart';
import '../../../system/diagnostics/debug/IProvideExpressionContexts.dart';

/// @nodoc
const IID_IDebugApplication64 = '{4DEDC754-04C7-4F10-9E60-16A390FE6E62}';

/// {@category Interface}
/// {@category com}
class IDebugApplication64 extends IRemoteDebugApplication {
  // vtable begins at 14, is 20 entries long.
  IDebugApplication64(Pointer<COMObject> ptr) : super(ptr);

  int SetName(
    Pointer<Utf16> pstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pstrName,
          )>()(
        ptr.ref.lpVtbl,
        pstrName,
      );

  int StepOutComplete() => ptr.ref.lpVtbl.value
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

  int DebugOutput(
    Pointer<Utf16> pstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pstr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pstr,
          )>()(
        ptr.ref.lpVtbl,
        pstr,
      );

  int StartDebugSession() => ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int HandleBreakPoint(
    int br,
    Pointer<Int32> pbra,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 br,
            Pointer<Int32> pbra,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int br,
            Pointer<Int32> pbra,
          )>()(
        ptr.ref.lpVtbl,
        br,
        pbra,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(19)
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

  int GetBreakFlags(
    Pointer<Uint32> pabf,
    Pointer<Pointer<COMObject>> pprdatSteppingThread,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pabf,
            Pointer<Pointer<COMObject>> pprdatSteppingThread,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pabf,
            Pointer<Pointer<COMObject>> pprdatSteppingThread,
          )>()(
        ptr.ref.lpVtbl,
        pabf,
        pprdatSteppingThread,
      );

  int GetCurrentThread(
    Pointer<Pointer<COMObject>> pat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pat,
          )>()(
        ptr.ref.lpVtbl,
        pat,
      );

  int CreateAsyncDebugOperation(
    Pointer<COMObject> psdo,
    Pointer<Pointer<COMObject>> ppado,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psdo,
            Pointer<Pointer<COMObject>> ppado,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psdo,
            Pointer<Pointer<COMObject>> ppado,
          )>()(
        ptr.ref.lpVtbl,
        psdo,
        ppado,
      );

  int AddStackFrameSniffer(
    Pointer<COMObject> pdsfs,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pdsfs,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pdsfs,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        pdsfs,
        pdwCookie,
      );

  int RemoveStackFrameSniffer(
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
      );

  int QueryCurrentThreadIsDebuggerThread() => ptr.ref.lpVtbl.value
          .elementAt(25)
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

  int SynchronousCallInDebuggerThread(
    Pointer<COMObject> pptc,
    int dwParam1,
    int dwParam2,
    int dwParam3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pptc,
            Uint64 dwParam1,
            Uint64 dwParam2,
            Uint64 dwParam3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pptc,
            int dwParam1,
            int dwParam2,
            int dwParam3,
          )>()(
        ptr.ref.lpVtbl,
        pptc,
        dwParam1,
        dwParam2,
        dwParam3,
      );

  int CreateApplicationNode(
    Pointer<Pointer<COMObject>> ppdanNew,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppdanNew,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppdanNew,
          )>()(
        ptr.ref.lpVtbl,
        ppdanNew,
      );

  int FireDebuggerEvent(
    Pointer<GUID> riid,
    Pointer<COMObject> punk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<COMObject> punk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<COMObject> punk,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        punk,
      );

  int HandleRuntimeError(
    Pointer<COMObject> pErrorDebug,
    Pointer<COMObject> pScriptSite,
    Pointer<Int32> pbra,
    Pointer<Int32> perra,
    Pointer<Int32> pfCallOnScriptError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pErrorDebug,
            Pointer<COMObject> pScriptSite,
            Pointer<Int32> pbra,
            Pointer<Int32> perra,
            Pointer<Int32> pfCallOnScriptError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pErrorDebug,
            Pointer<COMObject> pScriptSite,
            Pointer<Int32> pbra,
            Pointer<Int32> perra,
            Pointer<Int32> pfCallOnScriptError,
          )>()(
        ptr.ref.lpVtbl,
        pErrorDebug,
        pScriptSite,
        pbra,
        perra,
        pfCallOnScriptError,
      );

  int FCanJitDebug() => ptr.ref.lpVtbl.value
          .elementAt(30)
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

  int FIsAutoJitDebugEnabled() => ptr.ref.lpVtbl.value
          .elementAt(31)
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

  int AddGlobalExpressionContextProvider(
    Pointer<COMObject> pdsfs,
    Pointer<Uint64> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pdsfs,
            Pointer<Uint64> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pdsfs,
            Pointer<Uint64> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        pdsfs,
        pdwCookie,
      );

  int RemoveGlobalExpressionContextProvider(
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 dwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
      );
}
