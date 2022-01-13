// IExecuteCommandHost.dart

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

import '../../system/com/IUnknown.dart';
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IExecuteCommandHost = '{4B6832A2-5F04-4C9D-B89D-727A15D103E7}';

/// {@category Interface}
/// {@category com}
class IExecuteCommandHost extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IExecuteCommandHost(Pointer<COMObject> ptr) : super(ptr);

  int GetUIMode(
    Pointer<Int32> pUIMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pUIMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pUIMode,
          )>()(
        ptr.ref.lpVtbl,
        pUIMode,
      );
}
