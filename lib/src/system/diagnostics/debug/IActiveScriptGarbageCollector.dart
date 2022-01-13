// IActiveScriptGarbageCollector.dart

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
const IID_IActiveScriptGarbageCollector =
    '{6AA2C4A0-2B53-11D4-A2A0-00104BD35090}';

/// {@category Interface}
/// {@category com}
class IActiveScriptGarbageCollector extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IActiveScriptGarbageCollector(Pointer<COMObject> ptr) : super(ptr);

  int CollectGarbage(
    int scriptgctype,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 scriptgctype,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int scriptgctype,
          )>()(
        ptr.ref.lpVtbl,
        scriptgctype,
      );
}
