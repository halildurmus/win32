// IDebugSessionProvider.dart

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
import '../../../system/diagnostics/debug/IRemoteDebugApplication.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugSessionProvider = '{51973C29-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IDebugSessionProvider extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDebugSessionProvider(Pointer<COMObject> ptr) : super(ptr);

  int StartDebugSession(
    Pointer<COMObject> pda,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pda,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pda,
          )>()(
        ptr.ref.lpVtbl,
        pda,
      );
}
