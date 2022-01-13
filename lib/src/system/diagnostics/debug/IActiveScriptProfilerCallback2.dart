// IActiveScriptProfilerCallback2.dart

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

import '../../../system/diagnostics/debug/IActiveScriptProfilerCallback.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/structs.g.dart';

/// @nodoc
const IID_IActiveScriptProfilerCallback2 =
    '{31B7F8AD-A637-409C-B22F-040995B6103D}';

/// {@category Interface}
/// {@category com}
class IActiveScriptProfilerCallback2 extends IActiveScriptProfilerCallback {
  // vtable begins at 9, is 2 entries long.
  IActiveScriptProfilerCallback2(Pointer<COMObject> ptr) : super(ptr);

  int OnFunctionEnterByName(
    Pointer<Utf16> pwszFunctionName,
    int type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszFunctionName,
            Int32 type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszFunctionName,
            int type,
          )>()(
        ptr.ref.lpVtbl,
        pwszFunctionName,
        type,
      );

  int OnFunctionExitByName(
    Pointer<Utf16> pwszFunctionName,
    int type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszFunctionName,
            Int32 type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszFunctionName,
            int type,
          )>()(
        ptr.ref.lpVtbl,
        pwszFunctionName,
        type,
      );
}
