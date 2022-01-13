// IApplicationDebugger.dart

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
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';
import '../../../system/diagnostics/debug/IRemoteDebugApplicationThread.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../system/diagnostics/debug/IActiveScriptErrorDebug.dart';

/// @nodoc
const IID_IApplicationDebugger = '{51973C2A-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IApplicationDebugger extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IApplicationDebugger(Pointer<COMObject> ptr) : super(ptr);

  int QueryAlive() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int CreateInstanceAtDebugger(
    Pointer<GUID> rclsid,
    Pointer<COMObject> pUnkOuter,
    int dwClsContext,
    Pointer<GUID> riid,
    Pointer<Pointer<COMObject>> ppvObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int onDebugOutput(
    Pointer<Utf16> pstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int onHandleBreakPoint(
    Pointer<COMObject> prpt,
    int br,
    Pointer<COMObject> pError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> prpt,
            Int32 br,
            Pointer<COMObject> pError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> prpt,
            int br,
            Pointer<COMObject> pError,
          )>()(
        ptr.ref.lpVtbl,
        prpt,
        br,
        pError,
      );

  int onClose() => ptr.ref.lpVtbl.value
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

  int onDebuggerEvent(
    Pointer<GUID> riid,
    Pointer<COMObject> punk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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
}
