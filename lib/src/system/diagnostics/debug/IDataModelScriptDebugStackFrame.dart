// IDataModelScriptDebugStackFrame.dart

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
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../system/diagnostics/debug/IDataModelScript.dart';
import '../../../system/diagnostics/debug/IModelObject.dart';
import '../../../system/diagnostics/debug/IDataModelScriptDebugVariableSetEnumerator.dart';

/// @nodoc
const IID_IDataModelScriptDebugStackFrame =
    '{DEC6ED5E-6360-4941-AB4C-A26409DE4F82}';

/// {@category Interface}
/// {@category com}
class IDataModelScriptDebugStackFrame extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IDataModelScriptDebugStackFrame(Pointer<COMObject> ptr) : super(ptr);

  int GetName(
    Pointer<Pointer<Utf16>> name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> name,
          )>()(
        ptr.ref.lpVtbl,
        name,
      );

  int GetPosition(
    Pointer<ScriptDebugPosition> position,
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
            Pointer<ScriptDebugPosition> position,
            Pointer<ScriptDebugPosition> positionSpanEnd,
            Pointer<Pointer<Utf16>> lineText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ScriptDebugPosition> position,
            Pointer<ScriptDebugPosition> positionSpanEnd,
            Pointer<Pointer<Utf16>> lineText,
          )>()(
        ptr.ref.lpVtbl,
        position,
        positionSpanEnd,
        lineText,
      );

  int IsTransitionPoint(
    Pointer<Bool> isTransitionPoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Bool> isTransitionPoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Bool> isTransitionPoint,
          )>()(
        ptr.ref.lpVtbl,
        isTransitionPoint,
      );

  int GetTransition(
    Pointer<Pointer<COMObject>> transitionScript,
    Pointer<Bool> isTransitionContiguous,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> transitionScript,
            Pointer<Bool> isTransitionContiguous,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> transitionScript,
            Pointer<Bool> isTransitionContiguous,
          )>()(
        ptr.ref.lpVtbl,
        transitionScript,
        isTransitionContiguous,
      );

  int Evaluate(
    Pointer<Utf16> pwszExpression,
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszExpression,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszExpression,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        pwszExpression,
        ppResult,
      );

  int EnumerateLocals(
    Pointer<Pointer<COMObject>> variablesEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> variablesEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> variablesEnum,
          )>()(
        ptr.ref.lpVtbl,
        variablesEnum,
      );

  int EnumerateArguments(
    Pointer<Pointer<COMObject>> variablesEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> variablesEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> variablesEnum,
          )>()(
        ptr.ref.lpVtbl,
        variablesEnum,
      );
}
