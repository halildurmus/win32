// IDebugCookie.dart

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
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugCookie = '{51973C39-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IDebugCookie extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDebugCookie(Pointer<COMObject> ptr) : super(ptr);

  int SetDebugCookie(
    int dwDebugAppCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwDebugAppCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwDebugAppCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwDebugAppCookie,
      );
}
