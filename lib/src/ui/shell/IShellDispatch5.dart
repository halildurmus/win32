// IShellDispatch5.dart

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

import '../../ui/shell/IShellDispatch4.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IShellDispatch5 = '{866738B9-6CF2-4DE8-8767-F794EBE74F4E}';

/// {@category Interface}
/// {@category com}
class IShellDispatch5 extends IShellDispatch4 {
  // vtable begins at 44, is 1 entries long.
  IShellDispatch5(Pointer<COMObject> ptr) : super(ptr);

  int WindowSwitcher() => ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
