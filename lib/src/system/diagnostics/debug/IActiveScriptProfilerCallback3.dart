// IActiveScriptProfilerCallback3.dart

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

import '../../../system/diagnostics/debug/IActiveScriptProfilerCallback2.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IActiveScriptProfilerCallback3 =
    '{6AC5AD25-2037-4687-91DF-B59979D93D73}';

/// {@category Interface}
/// {@category com}
class IActiveScriptProfilerCallback3 extends IActiveScriptProfilerCallback2 {
  // vtable begins at 11, is 1 entries long.
  IActiveScriptProfilerCallback3(Pointer<COMObject> ptr) : super(ptr);

  int SetWebWorkerId(
    int webWorkerId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 webWorkerId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int webWorkerId,
          )>()(
        ptr.ref.lpVtbl,
        webWorkerId,
      );
}
