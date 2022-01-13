// IShellDispatch6.dart

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

import '../../ui/shell/IShellDispatch5.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IShellDispatch6 = '{286E6F1B-7113-4355-9562-96B7E9D64C54}';

/// {@category Interface}
/// {@category com}
class IShellDispatch6 extends IShellDispatch5 {
  // vtable begins at 45, is 1 entries long.
  IShellDispatch6(Pointer<COMObject> ptr) : super(ptr);

  int SearchCommand() => ptr.ref.lpVtbl.value
          .elementAt(45)
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
