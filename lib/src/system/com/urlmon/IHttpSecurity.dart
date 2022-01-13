// IHttpSecurity.dart

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

import '../../../system/com/urlmon/IWindowForBindingUI.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IHttpSecurity = '{79EAC9D7-BAFA-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IHttpSecurity extends IWindowForBindingUI {
  // vtable begins at 4, is 1 entries long.
  IHttpSecurity(Pointer<COMObject> ptr) : super(ptr);

  int OnSecurityProblem(
    int dwProblem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwProblem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwProblem,
          )>()(
        ptr.ref.lpVtbl,
        dwProblem,
      );
}
