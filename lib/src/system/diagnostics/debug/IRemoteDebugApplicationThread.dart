// IRemoteDebugApplicationThread.dart

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
import '../../../system/diagnostics/debug/IRemoteDebugApplication.dart';
import '../../../system/diagnostics/debug/IEnumDebugStackFrames.dart';
import '../../../system/diagnostics/debug/IDebugStackFrame.dart';
import '../../../system/diagnostics/debug/IDebugCodeContext.dart';

/// @nodoc
const IID_IRemoteDebugApplicationThread =
    '{51973C37-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IRemoteDebugApplicationThread extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IRemoteDebugApplicationThread(Pointer<COMObject> ptr) : super(ptr);

  int GetSystemThreadId(
    Pointer<Uint32> dwThreadId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> dwThreadId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> dwThreadId,
          )>()(
        ptr.ref.lpVtbl,
        dwThreadId,
      );

  int GetApplication(
    Pointer<Pointer<COMObject>> pprda,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pprda,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pprda,
          )>()(
        ptr.ref.lpVtbl,
        pprda,
      );

  int EnumStackFrames(
    Pointer<Pointer<COMObject>> ppedsf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppedsf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppedsf,
          )>()(
        ptr.ref.lpVtbl,
        ppedsf,
      );

  int GetDescription(
    Pointer<Pointer<Utf16>> pbstrDescription,
    Pointer<Pointer<Utf16>> pbstrState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDescription,
            Pointer<Pointer<Utf16>> pbstrState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDescription,
            Pointer<Pointer<Utf16>> pbstrState,
          )>()(
        ptr.ref.lpVtbl,
        pbstrDescription,
        pbstrState,
      );

  int SetNextStatement(
    Pointer<COMObject> pStackFrame,
    Pointer<COMObject> pCodeContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStackFrame,
            Pointer<COMObject> pCodeContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStackFrame,
            Pointer<COMObject> pCodeContext,
          )>()(
        ptr.ref.lpVtbl,
        pStackFrame,
        pCodeContext,
      );

  int GetState(
    Pointer<Uint32> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pState,
          )>()(
        ptr.ref.lpVtbl,
        pState,
      );

  int Suspend(
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwCount,
      );

  int Resume(
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwCount,
      );

  int GetSuspendCount(
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwCount,
      );
}
