// IDataModelScriptDebugBreakpoint.dart

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

/// @nodoc
const IID_IDataModelScriptDebugBreakpoint =
    '{6BB27B35-02E6-47CB-90A0-5371244032DE}';

/// {@category Interface}
/// {@category com}
class IDataModelScriptDebugBreakpoint extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IDataModelScriptDebugBreakpoint(Pointer<COMObject> ptr) : super(ptr);

  int GetId() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  bool IsEnabled() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Bool Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              bool Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void Enable() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void Disable() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void Remove() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetPosition(
    Pointer<ScriptDebugPosition> position,
    Pointer<ScriptDebugPosition> positionSpanEnd,
    Pointer<Pointer<Utf16>> lineText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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
}
