// IDXGIOutput2.dart

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

import '../../graphics/dxgi/IDXGIOutput1.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGIOutput2 = '{595E39D1-2724-4663-99B1-DA969DE28364}';

/// {@category Interface}
/// {@category com}
class IDXGIOutput2 extends IDXGIOutput1 {
  // vtable begins at 23, is 1 entries long.
  IDXGIOutput2(Pointer<COMObject> ptr) : super(ptr);

  int SupportsOverlays() => ptr.ref.lpVtbl.value
          .elementAt(23)
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
