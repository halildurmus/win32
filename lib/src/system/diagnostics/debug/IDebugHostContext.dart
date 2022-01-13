// IDebugHostContext.dart

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
import '../../../system/diagnostics/debug/IDebugHostContext.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugHostContext = '{A68C70D8-5EC0-46E5-B775-3134A48EA2E3}';

/// {@category Interface}
/// {@category com}
class IDebugHostContext extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDebugHostContext(Pointer<COMObject> ptr) : super(ptr);

  int IsEqualTo(
    Pointer<COMObject> pContext,
    Pointer<Bool> pIsEqual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pContext,
            Pointer<Bool> pIsEqual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pContext,
            Pointer<Bool> pIsEqual,
          )>()(
        ptr.ref.lpVtbl,
        pContext,
        pIsEqual,
      );
}
