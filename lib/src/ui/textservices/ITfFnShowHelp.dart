// ITfFnShowHelp.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../ui/textservices/ITfFunction.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfFnShowHelp = '{5AB1D30C-094D-4C29-8EA5-0BF59BE87BF3}';

/// {@category Interface}
/// {@category com}
class ITfFnShowHelp extends ITfFunction {
  // vtable begins at 4, is 1 entries long.
  ITfFnShowHelp(Pointer<COMObject> ptr) : super(ptr);

  int Show(
    int hwndParent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
      );
}
