// IDataModelScriptDebug.dart

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
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDataModelScriptDebugStack.dart';
import '../../../system/diagnostics/debug/IDataModelScriptDebugBreakpoint.dart';
import '../../../system/diagnostics/debug/IDataModelScriptDebugBreakpointEnumerator.dart';
import '../../../system/diagnostics/debug/IDataModelScriptDebugClient.dart';

/// @nodoc
const IID_IDataModelScriptDebug = '{DE8E0945-9750-4471-AB76-A8F79D6EC350}';

/// {@category Interface}
/// {@category com}
class IDataModelScriptDebug extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IDataModelScriptDebug(Pointer<COMObject> ptr) : super(ptr);

  int GetDebugState() => ptr.ref.lpVtbl.value
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

  int GetCurrentPosition(
    Pointer<ScriptDebugPosition> currentPosition,
    Pointer<ScriptDebugPosition> positionSpanEnd,
    Pointer<Pointer<Utf16>> lineText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ScriptDebugPosition> currentPosition,
            Pointer<ScriptDebugPosition> positionSpanEnd,
            Pointer<Pointer<Utf16>> lineText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ScriptDebugPosition> currentPosition,
            Pointer<ScriptDebugPosition> positionSpanEnd,
            Pointer<Pointer<Utf16>> lineText,
          )>()(
        ptr.ref.lpVtbl,
        currentPosition,
        positionSpanEnd,
        lineText,
      );

  int GetStack(
    Pointer<Pointer<COMObject>> stack,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> stack,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> stack,
          )>()(
        ptr.ref.lpVtbl,
        stack,
      );

  int SetBreakpoint(
    int linePosition,
    int columnPosition,
    Pointer<Pointer<COMObject>> breakpoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 linePosition,
            Uint32 columnPosition,
            Pointer<Pointer<COMObject>> breakpoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int linePosition,
            int columnPosition,
            Pointer<Pointer<COMObject>> breakpoint,
          )>()(
        ptr.ref.lpVtbl,
        linePosition,
        columnPosition,
        breakpoint,
      );

  int FindBreakpointById(
    int breakpointId,
    Pointer<Pointer<COMObject>> breakpoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 breakpointId,
            Pointer<Pointer<COMObject>> breakpoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int breakpointId,
            Pointer<Pointer<COMObject>> breakpoint,
          )>()(
        ptr.ref.lpVtbl,
        breakpointId,
        breakpoint,
      );

  int EnumerateBreakpoints(
    Pointer<Pointer<COMObject>> breakpointEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> breakpointEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> breakpointEnum,
          )>()(
        ptr.ref.lpVtbl,
        breakpointEnum,
      );

  int GetEventFilter(
    int eventFilter,
    Pointer<Bool> isBreakEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eventFilter,
            Pointer<Bool> isBreakEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eventFilter,
            Pointer<Bool> isBreakEnabled,
          )>()(
        ptr.ref.lpVtbl,
        eventFilter,
        isBreakEnabled,
      );

  int SetEventFilter(
    int eventFilter,
    int isBreakEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eventFilter,
            Uint8 isBreakEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eventFilter,
            int isBreakEnabled,
          )>()(
        ptr.ref.lpVtbl,
        eventFilter,
        isBreakEnabled,
      );

  int StartDebugging(
    Pointer<COMObject> debugClient,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> debugClient,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> debugClient,
          )>()(
        ptr.ref.lpVtbl,
        debugClient,
      );

  int StopDebugging(
    Pointer<COMObject> debugClient,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> debugClient,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> debugClient,
          )>()(
        ptr.ref.lpVtbl,
        debugClient,
      );
}
