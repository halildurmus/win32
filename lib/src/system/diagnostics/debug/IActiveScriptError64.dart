// IActiveScriptError64.dart

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
const IID_IActiveScriptError64 = '{B21FB2A1-5B8F-4963-8C21-21450F84ED7F}';

/// {@category Interface}
/// {@category com}
class IActiveScriptError64 extends IActiveScriptError {
  // vtable begins at 6, is 1 entries long.
  IActiveScriptError64(Pointer<COMObject> ptr) : super(ptr);

  int GetSourcePosition64(
    Pointer<Uint64> pdwSourceContext,
    Pointer<Uint32> pulLineNumber,
    Pointer<Int32> plCharacterPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pdwSourceContext,
            Pointer<Uint32> pulLineNumber,
            Pointer<Int32> plCharacterPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pdwSourceContext,
            Pointer<Uint32> pulLineNumber,
            Pointer<Int32> plCharacterPosition,
          )>()(
        ptr.ref.lpVtbl,
        pdwSourceContext,
        pulLineNumber,
        plCharacterPosition,
      );
}
