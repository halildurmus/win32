// IActiveScriptError.dart

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
import '../../../system/com/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IActiveScriptError = '{EAE1BA61-A4ED-11CF-8F20-00805F2CD064}';

/// {@category Interface}
/// {@category com}
class IActiveScriptError extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IActiveScriptError(Pointer<COMObject> ptr) : super(ptr);

  int GetExceptionInfo(
    Pointer<EXCEPINFO> pexcepinfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<EXCEPINFO> pexcepinfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<EXCEPINFO> pexcepinfo,
          )>()(
        ptr.ref.lpVtbl,
        pexcepinfo,
      );

  int GetSourcePosition(
    Pointer<Uint32> pdwSourceContext,
    Pointer<Uint32> pulLineNumber,
    Pointer<Int32> plCharacterPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwSourceContext,
            Pointer<Uint32> pulLineNumber,
            Pointer<Int32> plCharacterPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwSourceContext,
            Pointer<Uint32> pulLineNumber,
            Pointer<Int32> plCharacterPosition,
          )>()(
        ptr.ref.lpVtbl,
        pdwSourceContext,
        pulLineNumber,
        plCharacterPosition,
      );

  int GetSourceLineText(
    Pointer<Pointer<Utf16>> pbstrSourceLine,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrSourceLine,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrSourceLine,
          )>()(
        ptr.ref.lpVtbl,
        pbstrSourceLine,
      );
}
