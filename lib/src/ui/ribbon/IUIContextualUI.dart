// IUIContextualUI.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIContextualUI = '{EEA11F37-7C46-437C-8E55-B52122B29293}';

/// {@category Interface}
/// {@category com}
class IUIContextualUI extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIContextualUI(Pointer<COMObject> ptr) : super(ptr);

  int ShowAtLocation(
    int x,
    int y,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 x,
            Int32 y,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int x,
            int y,
          )>()(
        ptr.ref.lpVtbl,
        x,
        y,
      );
}
