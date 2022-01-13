// IDummyHICONIncluder.dart

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
import '../../../ui/windowsandmessaging/structs.g.dart';
import '../../../graphics/gdi/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDummyHICONIncluder = '{947990DE-CC28-11D2-A0F7-00805F858FB1}';

/// {@category Interface}
/// {@category com}
class IDummyHICONIncluder extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDummyHICONIncluder(Pointer<COMObject> ptr) : super(ptr);

  int Dummy(
    int h1,
    int h2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr h1,
            IntPtr h2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int h1,
            int h2,
          )>()(
        ptr.ref.lpVtbl,
        h1,
        h2,
      );
}
