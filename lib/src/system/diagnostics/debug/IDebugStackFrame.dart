// IDebugStackFrame.dart

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
import '../../../system/diagnostics/debug/IDebugCodeContext.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugApplicationThread.dart';
import '../../../system/diagnostics/debug/IDebugProperty.dart';

/// @nodoc
const IID_IDebugStackFrame = '{51973C17-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IDebugStackFrame extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDebugStackFrame(Pointer<COMObject> ptr) : super(ptr);

  int GetCodeContext(
    Pointer<Pointer<COMObject>> ppcc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppcc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppcc,
          )>()(
        ptr.ref.lpVtbl,
        ppcc,
      );

  int GetDescriptionString(
    int fLong,
    Pointer<Pointer<Utf16>> pbstrDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fLong,
            Pointer<Pointer<Utf16>> pbstrDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fLong,
            Pointer<Pointer<Utf16>> pbstrDescription,
          )>()(
        ptr.ref.lpVtbl,
        fLong,
        pbstrDescription,
      );

  int GetLanguageString(
    int fLong,
    Pointer<Pointer<Utf16>> pbstrLanguage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fLong,
            Pointer<Pointer<Utf16>> pbstrLanguage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fLong,
            Pointer<Pointer<Utf16>> pbstrLanguage,
          )>()(
        ptr.ref.lpVtbl,
        fLong,
        pbstrLanguage,
      );

  int GetThread(
    Pointer<Pointer<COMObject>> ppat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppat,
          )>()(
        ptr.ref.lpVtbl,
        ppat,
      );

  int GetDebugProperty(
    Pointer<Pointer<COMObject>> ppDebugProp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDebugProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDebugProp,
          )>()(
        ptr.ref.lpVtbl,
        ppDebugProp,
      );
}
