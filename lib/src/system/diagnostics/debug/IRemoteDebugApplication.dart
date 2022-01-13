// IRemoteDebugApplication.dart

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

import '../../../system/com/IUnknown.dart';
import '../../../system/diagnostics/debug/IRemoteDebugApplicationThread.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IApplicationDebugger.dart';
import '../../../specialTypes.dart';
import '../../../system/diagnostics/debug/IEnumRemoteDebugApplicationThreads.dart';
import '../../../system/diagnostics/debug/IDebugApplicationNode.dart';
import '../../../system/diagnostics/debug/IEnumDebugExpressionContexts.dart';

/// @nodoc
const IID_IRemoteDebugApplication = '{51973C30-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IRemoteDebugApplication extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IRemoteDebugApplication(Pointer<COMObject> ptr) : super(ptr);

  int ResumeFromBreakPoint(
    Pointer<COMObject> prptFocus,
    int bra,
    int era,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> prptFocus,
            Int32 bra,
            Int32 era,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> prptFocus,
            int bra,
            int era,
          )>()(
        ptr.ref.lpVtbl,
        prptFocus,
        bra,
        era,
      );

  int CauseBreak() => ptr.ref.lpVtbl.value
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

  int ConnectDebugger(
    Pointer<COMObject> pad,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pad,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pad,
          )>()(
        ptr.ref.lpVtbl,
        pad,
      );

  int DisconnectDebugger() => ptr.ref.lpVtbl.value
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

  int GetDebugger(
    Pointer<Pointer<COMObject>> pad,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pad,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pad,
          )>()(
        ptr.ref.lpVtbl,
        pad,
      );

  int CreateInstanceAtApplication(
    Pointer<GUID> rclsid,
    Pointer<COMObject> pUnkOuter,
    int dwClsContext,
    Pointer<GUID> riid,
    Pointer<Pointer<COMObject>> ppvObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<COMObject> pUnkOuter,
            Uint32 dwClsContext,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppvObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<COMObject> pUnkOuter,
            int dwClsContext,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppvObject,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        pUnkOuter,
        dwClsContext,
        riid,
        ppvObject,
      );

  int QueryAlive() => ptr.ref.lpVtbl.value
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

  int EnumThreads(
    Pointer<Pointer<COMObject>> pperdat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pperdat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pperdat,
          )>()(
        ptr.ref.lpVtbl,
        pperdat,
      );

  int GetName(
    Pointer<Pointer<Utf16>> pbstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrName,
          )>()(
        ptr.ref.lpVtbl,
        pbstrName,
      );

  int GetRootNode(
    Pointer<Pointer<COMObject>> ppdanRoot,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppdanRoot,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppdanRoot,
          )>()(
        ptr.ref.lpVtbl,
        ppdanRoot,
      );

  int EnumGlobalExpressionContexts(
    Pointer<Pointer<COMObject>> ppedec,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppedec,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppedec,
          )>()(
        ptr.ref.lpVtbl,
        ppedec,
      );
}
