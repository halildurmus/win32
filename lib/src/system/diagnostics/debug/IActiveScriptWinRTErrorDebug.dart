// IActiveScriptWinRTErrorDebug.dart

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

import '../../../system/diagnostics/debug/IActiveScriptError.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IActiveScriptWinRTErrorDebug =
    '{73A3F82A-0FE9-4B33-BA3B-FE095F697E0A}';

/// {@category Interface}
/// {@category com}
class IActiveScriptWinRTErrorDebug extends IActiveScriptError {
  // vtable begins at 6, is 3 entries long.
  IActiveScriptWinRTErrorDebug(Pointer<COMObject> ptr) : super(ptr);

  int GetRestrictedErrorString(
    Pointer<Pointer<Utf16>> errorString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> errorString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> errorString,
          )>()(
        ptr.ref.lpVtbl,
        errorString,
      );

  int GetRestrictedErrorReference(
    Pointer<Pointer<Utf16>> referenceString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> referenceString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> referenceString,
          )>()(
        ptr.ref.lpVtbl,
        referenceString,
      );

  int GetCapabilitySid(
    Pointer<Pointer<Utf16>> capabilitySid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> capabilitySid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> capabilitySid,
          )>()(
        ptr.ref.lpVtbl,
        capabilitySid,
      );
}
