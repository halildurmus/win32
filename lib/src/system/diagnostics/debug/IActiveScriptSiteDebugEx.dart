// IActiveScriptSiteDebugEx.dart

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
import '../../../system/diagnostics/debug/IActiveScriptErrorDebug.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IActiveScriptSiteDebugEx = '{BB722CCB-6AD2-41C6-B780-AF9C03EE69F5}';

/// {@category Interface}
/// {@category com}
class IActiveScriptSiteDebugEx extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IActiveScriptSiteDebugEx(Pointer<COMObject> ptr) : super(ptr);

  int OnCanNotJITScriptErrorDebug(
    Pointer<COMObject> pErrorDebug,
    Pointer<Int32> pfCallOnScriptErrorWhenContinuing,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pErrorDebug,
            Pointer<Int32> pfCallOnScriptErrorWhenContinuing,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pErrorDebug,
            Pointer<Int32> pfCallOnScriptErrorWhenContinuing,
          )>()(
        ptr.ref.lpVtbl,
        pErrorDebug,
        pfCallOnScriptErrorWhenContinuing,
      );
}
