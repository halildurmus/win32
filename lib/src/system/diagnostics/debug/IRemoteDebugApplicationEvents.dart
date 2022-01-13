// IRemoteDebugApplicationEvents.dart

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
import '../../../system/diagnostics/debug/IApplicationDebugger.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IRemoteDebugApplicationThread.dart';

/// @nodoc
const IID_IRemoteDebugApplicationEvents =
    '{51973C33-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IRemoteDebugApplicationEvents extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IRemoteDebugApplicationEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnConnectDebugger(
    Pointer<COMObject> pad,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int OnDisconnectDebugger() => ptr.ref.lpVtbl.value
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

  int OnSetName(
    Pointer<Utf16> pstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int OnDebugOutput(
    Pointer<Utf16> pstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int OnClose() => ptr.ref.lpVtbl.value
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

  int OnEnterBreakPoint(
    Pointer<COMObject> prdat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> prdat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> prdat,
          )>()(
        ptr.ref.lpVtbl,
        prdat,
      );

  int OnLeaveBreakPoint(
    Pointer<COMObject> prdat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> prdat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> prdat,
          )>()(
        ptr.ref.lpVtbl,
        prdat,
      );

  int OnCreateThread(
    Pointer<COMObject> prdat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> prdat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> prdat,
          )>()(
        ptr.ref.lpVtbl,
        prdat,
      );

  int OnDestroyThread(
    Pointer<COMObject> prdat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> prdat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> prdat,
          )>()(
        ptr.ref.lpVtbl,
        prdat,
      );

  int OnBreakFlagChange(
    int abf,
    Pointer<COMObject> prdatSteppingThread,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 abf,
            Pointer<COMObject> prdatSteppingThread,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int abf,
            Pointer<COMObject> prdatSteppingThread,
          )>()(
        ptr.ref.lpVtbl,
        abf,
        prdatSteppingThread,
      );
}
